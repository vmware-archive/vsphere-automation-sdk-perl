#!/usr/bin/perl

# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @SODX-License-Identifier: MIT
# @vcenter version: 6.0+

#
# Perl Core Modules
#
use Getopt::Long;
use strict;
use Data::UUID;

#
# VMware runtime library
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Sample helper module
#
use Common::SampleBase;
use Vcenter::Helpers::VmHelper;
use Vcenter::Helpers::DatastoreHelper;
use ContentLibrary::Client::ClsApiClient;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::Vm::Power;
use Com::Vmware::Content::LibraryModel;
use Com::Vmware::Content::Library::Item;
use Com::Vmware::Content::Library::StorageBacking;
use Com::Vmware::Vcenter::Ovf::LibraryItem;
use Com::Vmware::Content::SubscribedLibrary;
use Com::Vmware::Content::Library::Item::Downloadsession::File;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,            $sampleBase,           $content_library_name,
   $library_item_name, $client,               $stubFactory,
   $stubConfig,        $library_item_service, $local_library_service,
   $vm_id,             $vm_name,              $item_service,
   $library_id,        $datastore_name,       $datacenter_name,
   $datastore_id
) = ();

# Declare the mandatory parameter list
my @required_options = (
   'username', 'password',  'lsurl',      'server',
   'vmname',   'datastore', 'datacenter', 'cleanup'
);

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,     "server=s",     "lsurl=s",      "username=s",
      "password=s", "privatekey:s", "servercert:s", "cert:s",
      "vmname:s",   "datastore:s",  "datacenter:s", "cleanup:s",
      "help:s"
     )

     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --datastore <datastore name> --datacenter <datacenter name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"vm_template_capture.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --datastore <datastore name> --datacenter <datacenter name> --cleanup <true or false>\n";
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

   $vm_name         = $params{'vmname'};
   $datastore_name  = $params{'datastore'};
   $datacenter_name = $params{'datacenter'};
   $sampleBase      = new Common::SampleBase( 'params' => \%params );
   $stubConfig      = $sampleBase->{'stub_config'};
   $stubFactory     = $sampleBase->{'stub_factory'};
}

sub setup {
   ( $content_library_name, $library_item_name ) =
     ( 'LocalLibraryToCapture', 'CapturedItem' );
   my $client = new ContentLibrary::Client::ClsApiClient(
      'stub_factory' => $stubFactory,
      'stub_config'  => $stubConfig
   );

   # Get the OVF Library Item Service
   $library_item_service = $client->get_library_item_service();

   # Get the Local Library Service
   $local_library_service = $client->get_local_library_service();

   # Get the Item Service
   $item_service = $client->get_item_service();

   log_info( MSG => "#### Setup: Get the virtual machine id" );
   $vm_id = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );

   log_info( MSG => "#### Setup: Get the datastore id" );
   $datastore_id = Vcenter::Helpers::DatastoreHelper::getDatastore(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'datacenterName'    => $datacenter_name,
      'datastoreName'     => $datastore_name
   );
}

sub run {

   # Create content library
   $library_id = create_local_lib($datastore_id);

   # Capture the vm to content library
   capture_vm();

# Find the library item by name and verify capture_vm() created new vm template.
   my $item_spec = new Com::Vmware::Content::Library::Item::FindSpec();
   $item_spec->set_name( 'name' => $library_item_name );
   my $items = $item_service->find( 'spec' => $item_spec );
   my $item_id = $items->[0];
   log_info( MSG =>
"The VM : $vm_name is captured as library item: $item_id of type vm-template."
   );
}

#
# Capture the VM to the local library provided
#
sub capture_vm {
   my $entity_type = 'VirtualMachine';
   my $identity =
     new Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity();
   $identity->set_type( 'type' => $entity_type );
   $identity->set_id( 'id' => $vm_id );

   my $target = new Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget();
   $target->set_library_id( 'library_id' => $library_id );

   my $spec = new Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec();
   $spec->set_name( 'name' => $library_item_name );
   $spec->set_description(
      'description' => 'VM template created from a VM capture' );

   # Create OVF library item
   my $result = $library_item_service->create(
      'client_token' => undef,
      'source'       => $identity,
      'target'       => $target,
      'create_spec'  => $spec
   );
   if ( $result->get_succeeded ) {
      log_info( MSG => 'The vm capture to content library succeeded' );
   }
   else {
      log_info( MSG => 'The vm capture to content library failed' );
   }
}

#
# Create Local Library on the input datastore provided.
#
sub create_local_lib {

   # Build the storage backing for the library to be created
   my $storage = new Com::Vmware::Content::Library::StorageBacking();
   $storage->set_type( 'type' =>
        Com::Vmware::Content::Library::StorageBacking::Type::DATASTORE );
   $storage->set_datastore_id( 'datastore_id' => $datastore_id );

   # Build the specification for the library to be created
   my $create_spec = new Com::Vmware::Content::LibraryModel();
   $create_spec->set_name( 'name' => $content_library_name );
   $create_spec->set_description(
      'description' => 'Local library backed by VC datastore' );
   $create_spec->set_type(
      'type' => Com::Vmware::Content::LibraryModel::LibraryType::LOCAL );
   $create_spec->set_storage_backings( 'storage_backings' => [$storage] );

   # Create a local content library backed the VC datastore
   my $client_token = Data::UUID->new();
   my $library_id   = $local_library_service->create(
      'client_token' => $client_token,
      'create_spec'  => $create_spec
   );
   log_info( MSG => "Local library created: $library_id" );
   return $library_id;
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup {
   if ( defined $library_id ) {
      $local_library_service->delete( 'library_id' => $library_id );
      log_info( MSG => "Deleted library: $library_id" );
   }
}

#
# Demonstrates how to capture a VM template and add it to content library.
#
# Sample Prerequisites:
# This sample needs an existing VM.
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
