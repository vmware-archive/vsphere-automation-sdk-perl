#!/usr/bin/perl

# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @SODX-License-Identifier: MIT
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
use Com::Vmware::Vcenter::Vm::Hardware::Memory;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $sampleBase, $vm_name, $vmId, $stubFactory, $stubConfig,
   $memory_service, $originalMemoryInfo )
  = ();

# Declare the mandatory parameter list
my @required_options =
  ( 'username', 'password', 'lsurl', 'server', 'vmname', 'cleanup' );

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,     "server=s",     "lsurl=s",      "username=s",
      "password=s", "privatekey:s", "servercert:s", "cert:s",
      "vmname:s",   "mgmtnode:s",   "cleanup:s",    "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"memory_configuration.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --cleanup <true or false>\n";
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
   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   #
   # Get the Memory Service
   #
   $memory_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Memory',
      'stub_config'  => $stubConfig
   );
   log_info( MSG => "#### Example: Get the virtual machine id" );

   $vmId = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );
   log_info(
      MSG => "Using VM: "
        . $vm_name . "(vmId=" . $vmId . " ) for memory configuration sample.\n"
   );
}

sub run {
   my $memoryInfo = $memory_service->get( 'vm' => $vmId );

   # Get the current memory info
   log_info( MSG => "#### Print original memory info." );
   log_info(
      MSG => "   hot_add_enabled: " . $memoryInfo->get_hot_add_enabled() );
   log_info( MSG => "   size_MiB: " . $memoryInfo->get_size_MiB() . "\n" );

   #
   # Save the current memory info to verify that we have cleaned up
   # properly.
   #
   $originalMemoryInfo = $memoryInfo;
   log_info(
      MSG => "#### Example: Update memory size field of memory configuration" );

   my $memoryUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec();
   $memoryUpdateSpec->set_size_MiB( 'size_MiB' => 7 * 1024 );
   $memory_service->update( 'vm' => $vmId, 'spec' => $memoryUpdateSpec );

   my $updatedMemoryInfo = $memory_service->get( 'vm' => $vmId );
   log_info( MSG => "   hot_add_enabled: "
        . $updatedMemoryInfo->get_hot_add_enabled() );
   log_info(
      MSG => "   size_MiB:" . $updatedMemoryInfo->get_size_MiB() . "\n" );

   log_info( MSG =>
        "#### Example: Update hot add enabled field of memory configuration." );
   my $memUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec();
   $memUpdateSpec->set_hot_add_enabled( 'hot_add_enabled' => 1 );
   $memory_service->update( 'vm' => $vmId, 'spec' => $memUpdateSpec );

   $memoryInfo = $memory_service->get( 'vm' => $vmId );
   log_info( MSG => "   hot_add_enabled: "
        . $memoryInfo->get_hot_add_enabled()
        . "\n" );
}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {
   log_info( MSG => "#### Cleanup: Revert memory configuration." );
   my $memoryUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec();
   $memoryUpdateSpec->set_hot_add_enabled(
      'hot_add_enabled' => $originalMemoryInfo->get_hot_add_enabled() );
   $memoryUpdateSpec->set_size_MiB(
      'size_MiB' => $originalMemoryInfo->get_size_MiB() );
   $memory_service->update( 'vm' => $vmId, 'spec' => $memoryUpdateSpec );

   my $memoryInfo = $memory_service->get( 'vm' => $vmId );

   log_info(
      MSG => "   hot_add_enabled: " . $memoryInfo->get_hot_add_enabled() );
   log_info( MSG => "   size_MiB: " . $memoryInfo->get_size_MiB() );

}

#
# Demonstrates how to configure the memory related settings of a virtual machine.
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
