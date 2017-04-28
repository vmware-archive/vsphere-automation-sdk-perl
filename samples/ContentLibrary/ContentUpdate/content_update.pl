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

   # Get the Library Item Service
   $item_service = $client->get_item_service();

   # Get the Library Service
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

   delete_and_upload_scenario();
   replace_scenario();
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

# Get the content version
sub get_item_version {
   my (%args) = @_;
   my $item_id = $args{'item_id'};
   my $item_model = $item_service->get( 'library_item_id' => $item_id );
   return $item_model->get_content_version();
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

sub delete_and_upload_scenario {

   # Content update scenario 1:
   # Update OVF library item by creating an update session for the OVF item,
   # removing all existing files in the session, then adding all new files into the same update session,
   # and completing the session to finish the content update.

   # Create a new library item in the content library for uploading the files
   my $ovf_item_id =
     ContentLibrary::Helpers::ItemUploadHelper::create_library_item(
      item_service      => $item_service,
      library_id        => $library_id,
      name              => 'demo-ovf-item',
      library_item_type => 'ovf'
     );

   log_info( MSG =>
"Library item created id: $ovf_item_id, OVF Library item version (at creation): "
        . get_item_version( 'item_id' => $ovf_item_id ) );

   # Upload a VM template to the CL
   my $file_path_hash = get_vm_template_files( OVF_ITEM_ONE_FOLDER_NAME,
      OVF_ITEM_ONE_OVF_FILE_NAME, OVF_ITEM_ONE_VMDK_FILE_NAME );

   my $file_locations = [
      $file_path_hash->{ (OVF_ITEM_ONE_OVF_FILE_NAME) },
      $file_path_hash->{ (OVF_ITEM_ONE_VMDK_FILE_NAME) }
   ];

   ContentLibrary::Helpers::ItemUploadHelper::upload_files(
      'update_session_service'      => $update_session_service,
      'update_session_file_service' => $update_session_file_service,
      'item_service'                => $item_service,
      'lib_item_id'                 => $ovf_item_id,
      'file_locations'              => $file_locations
   );
   log_info(
      MSG => "Uploaded ovf and vmdk files to library item: $ovf_item_id" );
   my $original_version =
     get_item_version( 'item_id' => $ovf_item_id );
   log_info( MSG =>
"OVF Library item version (on original content upload): $original_version"
   );

   # Create a new session and perform content update
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
   $file_path_hash = get_vm_template_files( OVF_ITEM_TWO_FOLDER_NAME,
      OVF_ITEM_TWO_OVF_FILE_NAME, OVF_ITEM_TWO_VMDK_FILE_NAME );

   $file_locations = [
      $file_path_hash->{ (OVF_ITEM_TWO_OVF_FILE_NAME) },
      $file_path_hash->{ (OVF_ITEM_TWO_VMDK_FILE_NAME) }
   ];
   ContentLibrary::Helpers::ItemUploadHelper::upload_files_in_session(
      'update_session_file_service' => $update_session_file_service,
      'session_id'                  => $session_id,
      'filenames'                   => [
         File::Basename::basename(
            $file_path_hash->{ (OVF_ITEM_TWO_OVF_FILE_NAME) }
         ),
         File::Basename::basename(
            $file_path_hash->{ (OVF_ITEM_TWO_VMDK_FILE_NAME) }
         )
      ],
      'file_locations' => $file_locations
   );

   $update_session_service->complete( 'update_session_id' => $session_id );
   $update_session_service->delete( 'update_session_id' => $session_id );

   # Verify that the item content version increases by one
   my $updated_version =
     get_item_version( 'item_id' => $ovf_item_id );
   log_info( MSG =>
        "OVF Library item version (after content update): $updated_version" );
   if ( $updated_version < $original_version ) {
      log_info( MSG => "Content update should increase the version" );
      exit;
   }
}

sub replace_scenario {

   # Content update scenario 2:
   # Update ISO library item by creating an update session for the
   # item, then adding the new ISO file using the same session file
   # name into the update session, which will update the existing
   # ISO file upon session complete.

   my $iso_file_path =
     get_iso_file( ISO_ITEM_FOLDER_NAME, ISO_ITEM_ONE_ISO_FILE_NAME );

   my $iso_lib_item =
     ContentLibrary::Helpers::ItemUploadHelper::create_library_item(
      item_service      => $item_service,
      library_id        => $library_id,
      name              => $iso_item_name,
      library_item_type => ISO_ITEM_TYPE
     );

   log_info( MSG => "ISO Library item version (on creation) : "
        . get_item_version( 'item_id' => $iso_lib_item ) );

   # Upload an iso file to the CL
   ContentLibrary::Helpers::ItemUploadHelper::upload_files(
      'update_session_service'      => $update_session_service,
      'update_session_file_service' => $update_session_file_service,
      'item_service'                => $item_service,
      'lib_item_id'                 => $iso_lib_item,
      'file_locations'              => [$iso_file_path]
   );

   my $original_version =
     get_item_version( 'item_id' => $iso_lib_item );
   log_info( MSG =>
"ISO Library item version (on original content upload): $original_version"
   );

   # Replace the existing ISO file in the ISO item with a new ISO
   # file with the same session file name via UpdateSession API.
   my $update_session_model =
     new Com::Vmware::Content::Library::Item::UpdateSessionModel();
   $update_session_model->set_library_item_id(
      'library_item_id' => $iso_lib_item );

   my $session_id = $update_session_service->create(
      client_token => Data::UUID->new(),
      create_spec  => $update_session_model
   );

   # Delete all existing files
   del_existing_files($session_id);

   $iso_file_path =
     get_iso_file( ISO_ITEM_FOLDER_NAME, ISO_ITEM_TWO_ISO_FILE_NAME );

   ContentLibrary::Helpers::ItemUploadHelper::upload_files_in_session(
      'update_session_file_service' => $update_session_file_service,
      'session_id'                  => $session_id,
      'filenames'      => [ File::Basename::basename($iso_file_path) ],
      'file_locations' => [$iso_file_path]
   );

   $update_session_service->complete( 'update_session_id' => $session_id );
   $update_session_service->delete( 'update_session_id' => $session_id );

   # Verify that the item content version increases by one
   my $updated_version =
     get_item_version( 'item_id' => $iso_lib_item );
   log_info( MSG =>
        "ISO Library item version (after content update): $updated_version" );
   if ( $updated_version < $original_version ) {
      log_info( MSG => "Content update should increase the version" );
      exit;
   }
}

# Delete all existing files from library item
sub del_existing_files {
   my ($session_id) = @_;

   my $existing_files =
     $update_session_file_service->list( 'update_session_id' => $session_id );
   foreach my $file (@$existing_files) {
      log_info( MSG => "deleting " . $file->get_name() );
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
