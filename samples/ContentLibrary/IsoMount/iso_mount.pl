#!/usr/bin/perl

# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @vcenter version: 6.5+

#
# Perl Core Modules
#
use strict;
use Getopt::Long;

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

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::Vm::Power;
use Com::Vmware::Content::Library::Item;
use ContentLibrary::Client::ClsApiClient;
use Com::Vmware::Content::SubscribedLibrary;
use Com::Vmware::Content::Library::Item::Downloadsession::File;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,            $sampleBase,   $vm_name,    $vm_id,
   $client,            $stubFactory,  $stubConfig, $item_name,
   $iso_image_service, $item_service, $item_id
) = ();
my $item_type = "iso";

# Declare the mandatory parameter list
my @required_options = (
   'username', 'password',           'lsurl', 'server',
   'vmname',   'isoitemnametomount', 'cleanup'
);

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,       "server=s",
      "lsurl=s",      "username=s",
      "password=s",   "privatekey:s",
      "servercert:s", "cert:s",
      "vmname:s",     "isoitemnametomount:s",
      "mgmtnode:s",   "cleanup:s",
      "help:s"
     )

     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --isoitemnametomount <iso library item> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"iso_mount.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --isoitemnametomount <iso library item> --cleanup <true or false>\n";
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

   $vm_name     = $params{'vmname'};
   $item_name   = $params{'isoitemnametomount'};
   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {
   $client = new ContentLibrary::Client::ClsApiClient(
      'stub_factory' => $stubFactory,
      'stub_config'  => $stubConfig
   );

   # Get the ISO Image Service
   $iso_image_service = $client->get_image_service();

   # Get the Item Service
   $item_service = $client->get_item_service();

   log_info( MSG => "#### Setup: Get the ISO item id" );
   my $item_spec = new Com::Vmware::Content::Library::Item::FindSpec();
   $item_spec->set_name( 'name' => $item_name );
   $item_spec->set_type( 'type' => $item_type );
   $item_id = ( $item_service->find( 'spec' => $item_spec ) )->[0];
   if ( !defined($item_id) ) {
      log_info( MSG => "Not found library item '$item_name' to mount" );
      exit;
   }
   log_info( MSG => "#### Setup: Get the virtual machine id" );
   $vm_id = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );

   log_info( MSG =>
"Mounting ISO item $item_name (item_id = $item_id) on VM $vm_name (vm_id = $vm_id)"
   );
}

sub run {
   my $device_id = mount( $item_id, $vm_id );
   unmount( $vm_id, $device_id );
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup {

   # No clean up necessary as no new items are created
   # Also the mounted device has been unmounted
}

sub mount {
   my ( $item_id, $vm_id ) = @_;
   my $device_id =
     $iso_image_service->mount( 'library_item' => $item_id, 'vm' => $vm_id );
   log_info( MSG => "Mounted device = $device_id" );
   return $device_id;
}

sub unmount {
   my ( $vm_id, $device_id ) = @_;
   $iso_image_service->unmount( 'cdrom' => $device_id, 'vm' => $vm_id );
   log_info( MSG => "Unmounted device = $device_id" );
}

#
# Demonstrates how to mount/unmount an ISO image on a VM.
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
