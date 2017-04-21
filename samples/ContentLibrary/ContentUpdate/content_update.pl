#!/usr/bin/perl

#
##############################################################
# Copyright (c) VMware, Inc. 2016, 2017.  All Rights Reserved.
# SPDX-License-Identifier: MIT
##############################################################
#
# DISCLAIMER. THIS PROGRAM IS PROVIDED TO YOU "AS IS" WITHOUT
# WARRANTIES OR CONDITIONS # OF ANY KIND, WHETHER ORAL OR WRITTEN,
# EXPRESS OR IMPLIED. THE AUTHOR SPECIFICALLY # DISCLAIMS ANY IMPLIED
# WARRANTIES OR CONDITIONS OF MERCHANTABILITY, SATISFACTORY # QUALITY,
# NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
#

$__author__ = 'VMware, Inc.';
$__copyright__ = 'Copyright 2016, 2017 VMware, Inc. All rights reserved.';
$__vcenter_version__ = '6.0+';

#
# Perl Core Modules
#
use Getopt::Long;
use strict;
use Data::UUID;
use FindBin qw($Bin);
use File::Basename qw(dirname);
use File::Spec::Functions qw(catdir);

#
# VMware runtime library
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Sample helper module
#
use Common::SampleBase;
use ContentLibrary::Client::ClsApiClient;
use ContentLibrary::Helpers::ItemUploadHelper;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Content::Library::Item;
use Com::Vmware::Content::Library::ItemModel;
use Com::Vmware::Content::Library::Item::Downloadsession::File;
use Com::Vmware::Content::SubscribedLibrary;

use constant {
   OVF_ITEM_TYPE               => "ovf",
   ISO_ITEM_TYPE               => "iso",
   OVF_ITEM_ONE_FOLDER_NAME    => "simpleVmTemplate",
   OVF_ITEM_ONE_OVF_FILE_NAME  => "descriptor.ovf",
   OVF_ITEM_ONE_VMDK_FILE_NAME => "disk-0.vmdk",
   OVF_ITEM_TWO_FOLDER_NAME    => "plainVmTemplate",
   OVF_ITEM_TWO_OVF_FILE_NAME  => "plain-vm.ovf",
   OVF_ITEM_TWO_VMDK_FILE_NAME => "plain-vm.vmdk",
   ISO_ITEM_FOLDER_NAME        => "isoImages",
   ISO_ITEM_ONE_ISO_FILE_NAME  => "test.iso",
   ISO_ITEM_TWO_ISO_FILE_NAME  => "small.iso"
};

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,                      $sampleBase,
   $content_library_name,        $item_service,
   $stubFactory,                 $stubConfig,
   $library_service,             $update_session_service,
   $update_session_file_service, $library_id,
   $ovf_item_id,                 $iso_item_id
) = ();
my ( $ovf_item_name, $iso_item_name ) = ( "simple_vm_template", "small_iso" );
my $resource_dir = catdir( dirname($Bin), '..', 'resources' );

# Declare the mandatory parameter list
my @required_options =
  ( 'username', 'password', 'server', 'clname', 'cleanup' );

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,     "server=s",     "username=s",
      "password=s", "privatekey:s", "servercert:s", "cert:s",
      "clname:s",   "mgmtnode:s",   "cleanup:s",    "help:s"
     )

     or die
"\nValid options are --server <server> --username <user> --password <password>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --clname <content library name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"content_update.pl --server <server> --username <user> --password <password> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --clname <content library name> --cleanup <true or false>\n";
      exit;
   }

   my $mandatory_params_list = 'Missing mandatory parameter(s) i.e. ';
   my $flag                  = 0;
   foreach (@required_options) {
      if ( !defined( $params{$_} ) ) {
         $flag = 1;
         $mandatory_params_list =
           ' ' . $mandatory_params_list . '--' . $_ . ', ';
      }
   }
   if ( $flag == 1 ) {
      print $mandatory_params_list;
      exit;
   }

   $content_library_name = $params{'clname'};

   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   my $client = new ContentLibrary::Client::ClsApiClient(
      'stub_factory' => $stubFactory,
      'stub_config'  => $stubConfig
   );

   # Get the Item Service
   $item_service = $client->get_item_service();

   # Get the OVF Library Item Service
   $library_service = $client->get_library_service();

   # Get the Update Session Service
   $update_session_service = $client->get_update_session_service();

   # Get the Update Session File Service
   $update_session_file_service = $client->get_update_session_file_service();
}

sub run {

   # Find the content library id by name
   my $library_spec = new Com::Vmware::Content::Library::FindSpec();
   $library_spec->set_name( 'name' => $content_library_name );
   $library_id = ( $library_service->find( 'spec' => $library_spec ) )->[0];
   if ( !defined($library_id) ) {
      log_info( MSG => "Not Found library id" );
      exit();
   }
   log_info( MSG => "Found library with id: $library_id" );

# Content update scenario 1:
# Update OVF library item by creating an update session for the OVF item,
# removing all existing files in the session, then adding all new files into the same update session,
# and completing the session to finish the content update.

   # Create an OVF item and upload initial content
   $ovf_item_id = create_ovf_item();
   my $ovf_item = $item_service->get( 'library_item_id' => $ovf_item_id );
   my $content_version_before_update = $ovf_item->get_content_version();
   log_info( MSG =>
"OVF library item created: $ovf_item_id, content version: $content_version_before_update"
   );

   # Update the OVF item with new OVF template via UpdateSession API
   my $update_session_model =
     new Com::Vmware::Content::Library::Item::UpdateSessionModel();
   $update_session_model->set_library_item_id(
      'library_item_id' => $ovf_item_id );
   my $session_id = $update_session_service->create(
      client_token => Data::UUID->new(),
      create_spec  => $update_session_model
   );

   # Delete all existing files
   del_existing_files($session_id);

   # Upload new files and complete the update session
   my $file_path_hash = get_vm_template_files( OVF_ITEM_TWO_FOLDER_NAME,
      OVF_ITEM_TWO_OVF_FILE_NAME, OVF_ITEM_TWO_VMDK_FILE_NAME );

   ContentLibrary::Helpers::ItemUploadHelper::upload_file(
      'update_session_file_service' => $update_session_file_service,
      'session_id'                  => $session_id,
      'filename'                    => File::Basename::basename(
         $file_path_hash->{ (OVF_ITEM_TWO_OVF_FILE_NAME) }
      ),
      'file_location' => $file_path_hash->{ (OVF_ITEM_TWO_OVF_FILE_NAME) }
   );

   ContentLibrary::Helpers::ItemUploadHelper::upload_file(
      'update_session_file_service' => $update_session_file_service,
      'session_id'                  => $session_id,
      'filename'                    => File::Basename::basename(
         $file_path_hash->{ (OVF_ITEM_TWO_VMDK_FILE_NAME) }
      ),
      'file_location' => $file_path_hash->{ (OVF_ITEM_TWO_VMDK_FILE_NAME) }
   );

   $update_session_service->complete( 'update_session_id' => $session_id );

   # Verify that the item content version increases by one
   $ovf_item = $item_service->get( 'library_item_id' => $ovf_item_id );
   my $content_version_after_update = $ovf_item->get_content_version();
   log_info( MSG =>
"OVF library item updated: $ovf_item_id, content version: $content_version_after_update"
   );

   # Content update scenario 2:
   # Update ISO library item by creating an update session for the
   # item, then adding the new ISO file using the same session file
   # name into the update session, which will update the existing
   # ISO file upon session complete.

 # Create a new ISO item in the content library and upload the initial ISO file.
   $iso_item_id = create_iso_item();
   my $iso_item = $item_service->get( 'library_item_id' => $iso_item_id );
   $content_version_before_update = $iso_item->get_content_version();
   log_info( MSG =>
"ISO library item created: $iso_item_id, content version: $content_version_before_update"
   );

   # Replace the existing ISO file in the ISO item with a new ISO
   # file with the same session file name via UpdateSession API.
   $update_session_model =
     new Com::Vmware::Content::Library::Item::UpdateSessionModel();
   $update_session_model->set_library_item_id(
      'library_item_id' => $iso_item_id );

   $session_id = $update_session_service->create(
      client_token => Data::UUID->new(),
      create_spec  => $update_session_model
   );

   # Delete all existing files
   del_existing_files($session_id);

   my $iso_file_path =
     get_iso_file( ISO_ITEM_FOLDER_NAME, ISO_ITEM_TWO_ISO_FILE_NAME );

   my $file_info = ContentLibrary::Helpers::ItemUploadHelper::upload_file(
      'update_session_file_service' => $update_session_file_service,
      'session_id'                  => $session_id,
      'filename'                    => File::Basename::basename($iso_file_path),
      'file_location'               => $iso_file_path
   );

   $update_session_service->complete( 'update_session_id' => $session_id );

   # Verify that item content version increases by one
   $iso_item = $item_service->get( 'library_item_id' => $iso_item_id );
   $content_version_after_update = $iso_item->get_content_version();
   log_info( MSG =>
"ISO library item updated: $iso_item_id, content version: $content_version_after_update"
   );
}

# Clean resources created from this sample
sub cleanup {
   if ( defined $ovf_item_id ) {
      log_info( MSG => "Deleting library item: $ovf_item_id" );
      $item_service->delete( 'library_item_id' => $ovf_item_id );
   }
   if ( defined $iso_item_id ) {
      log_info( MSG => "Deleting library item: $iso_item_id" );
      $item_service->delete( 'library_item_id' => $iso_item_id );
   }
}

# Create an OVF item with OVF files uploaded
sub create_ovf_item {
   my $ovf_lib_item =
     create_library_item( $library_id, $ovf_item_name, OVF_ITEM_TYPE );

   my $file_path_hash = get_vm_template_files( OVF_ITEM_ONE_FOLDER_NAME,
      OVF_ITEM_ONE_OVF_FILE_NAME, OVF_ITEM_ONE_VMDK_FILE_NAME );

   my $file_locations = [
      $file_path_hash->{ (OVF_ITEM_ONE_OVF_FILE_NAME) },
      $file_path_hash->{ (OVF_ITEM_ONE_VMDK_FILE_NAME) }
   ];

   ContentLibrary::Helpers::ItemUploadHelper::perform_upload(
      'update_session_service'      => $update_session_service,
      'update_session_file_service' => $update_session_file_service,
      'item_service'                => $item_service,
      'lib_item_id'                 => $ovf_lib_item->get_id(),
      'file_locations'              => $file_locations
   );
   return $ovf_lib_item->get_id();
}

# Create an ISO item with ISO file uploaded
sub create_iso_item {
   my $iso_file_path =
     get_iso_file( ISO_ITEM_FOLDER_NAME, ISO_ITEM_ONE_ISO_FILE_NAME );
   my $iso_lib_item =
     create_library_item( $library_id, $iso_item_name, ISO_ITEM_TYPE );
   ContentLibrary::Helpers::ItemUploadHelper::perform_upload(
      'update_session_service'      => $update_session_service,
      'update_session_file_service' => $update_session_file_service,
      'item_service'                => $item_service,
      'lib_item_id'                 => $iso_lib_item->get_id(),
      'file_locations'              => [$iso_file_path]
   );
   return $iso_lib_item->get_id();
}

# Generate and return OVF and VMDK files from class resources with the
# given OVF and VMDK file names
sub get_vm_template_files {
   my ( $folder_name, $ovf_file_name, $disk_file_name ) = @_;
   my $file_path_hash = {};
   my $temp_dir = ContentLibrary::Helpers::ItemUploadHelper::create_temp_dir(
      'prefix' => $folder_name );

   my $ovf_file =
     ContentLibrary::Helpers::ItemUploadHelper::copy_resource_to_file(
      "resource_name" => "${resource_dir}/${folder_name}/${ovf_file_name}",
      "dir"           => $temp_dir,
      "filename"      => $ovf_file_name
     );

   $file_path_hash->{$ovf_file_name} = $ovf_file;

   my $vmdk_file =
     ContentLibrary::Helpers::ItemUploadHelper::copy_resource_to_file(
      "resource_name" => "${resource_dir}/${folder_name}/${disk_file_name}",
      "dir"           => $temp_dir,
      "filename"      => $disk_file_name
     );

   $file_path_hash->{$disk_file_name} = $vmdk_file;

   log_info( MSG => "OVF path: $ovf_file" );
   log_info( MSG => "VMDK path: $vmdk_file" );

   return $file_path_hash;
}

# Generate and return the ISO file from the class resources with the given ISO file name
sub get_iso_file {
   my ( $folder_name, $iso_file_name ) = @_;
   my $temp_dir = ContentLibrary::Helpers::ItemUploadHelper::create_temp_dir(
      'prefix' => $folder_name );
   my $iso_file =
     ContentLibrary::Helpers::ItemUploadHelper::copy_resource_to_file(
      'resource_name' => "${resource_dir}/${folder_name}/${iso_file_name}",
      'dir'           => $temp_dir,
      'filename'      => $iso_file_name
     );
   log_info( MSG => "ISO image path: $iso_file" );
   return $iso_file;
}

# Create a library item in the specified library
sub create_library_item {
   my ( $library_id, $library_item_name, $item_type ) = @_;
   my $lib_item_spec =
     get_library_item_spec( $library_id, $library_item_name, 'item update',
      $item_type );
   my $client_token = Data::UUID->new();
   my $lib_item_id  = $item_service->create(
      'client_token' => $client_token,
      'create_spec'  => $lib_item_spec
   );
   return $item_service->get( 'library_item_id' => $lib_item_id );
}

# Construct a library item spec
sub get_library_item_spec {
   my ( $library_id, $name, $description, $type ) = @_;
   my $lib_item_spec = new Com::Vmware::Content::Library::ItemModel();
   $lib_item_spec->set_name( 'name' => $name );
   $lib_item_spec->set_description( 'description' => $description );
   $lib_item_spec->set_library_id( 'library_id' => $library_id );
   $lib_item_spec->set_type( 'type' => $type );
   return $lib_item_spec;
}

# Delete all existing files from library item
sub del_existing_files {
   my ($session_id) = @_;

   my $existing_files =
     $update_session_file_service->list( 'update_session_id' => $session_id );
   foreach my $file (@$existing_files) {
      $update_session_file_service->remove(
         'update_session_id' => $session_id,
         'file_name'         => $file->get_name()
      );
   }
   return;
}

#
# Demonstrates content library item content updates using UpdateSession API.
#
# Sample Prerequisites:
# This sample needs an existing content library to create and update library item.
#

# Call main
&main();

sub main() {
   init();
   setup();
   run();
   if ( $params{cleanup} eq 'true' ) {
      cleanup();
   }
   log_info( MSG => "#### Done!" );
}

# END
