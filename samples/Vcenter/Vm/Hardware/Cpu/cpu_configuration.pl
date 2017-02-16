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
use Com::Vmware::Vcenter::Vm::Hardware::Cpu;
use Com::Vmware::Vcenter::Vm::Power;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $sampleBase, $vm_name, $vmId, $stubFactory, $stubConfig,
   $cpu_service, $originalCpuInfo )
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
"cpu_configuration.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --cleanup <true or false> \n";
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
   # Get the Cpu Service
   #
   $cpu_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Cpu',
      'stub_config'  => $stubConfig
   );

   log_info( MSG => "#### Setup: Get the virtual machine id" );

   $vmId = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );
}

sub run {
   log_info(
      MSG => "Using VM: "
        . $vm_name . "(vmId=" . $vmId . " ) for CPU configuration sample.\n"
   );

   # Get the current cpu info
   log_info( MSG => "#### Example: Print original cpu info" );
   my $cpuInfo = $cpu_service->get( 'vm' => $vmId );
   log_info( MSG => "CPU Info:" );
   log_info( MSG => "   Count: " . $cpuInfo->get_count() );
   log_info( MSG => "   Hot add enabled: " . $cpuInfo->get_hot_add_enabled() );
   log_info(
      MSG => "   Hot remove enabled: " . $cpuInfo->get_hot_remove_enabled() );
   log_info( MSG => "   Cores Per Socket: "
        . $cpuInfo->get_cores_per_socket()
        . "\n" );

   # Save the current cpu info to verify that we have cleaned up properly
   $originalCpuInfo = $cpuInfo;

   log_info( MSG => "#### Example: Update count field of CPU configuration" );
   my $cpuUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec();
   $cpuUpdateSpec->set_count( 'count' => 2 );
   $cpu_service->update( 'vm' => $vmId, 'spec' => $cpuUpdateSpec );
   $cpuInfo = $cpu_service->get( 'vm' => $vmId );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "CPU Info:" );
   log_info( MSG => "   Count: " . $cpuInfo->get_count() . "\n" );

   log_info( MSG =>
"#### Example: Update cpu fields, number of cores per socket=2, enable hot add"
   );
   $cpuUpdateSpec = new Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec();
   $cpuUpdateSpec->set_cores_per_socket( 'cores_per_socket' => 2 );
   $cpuUpdateSpec->set_hot_add_enabled( 'hot_add_enabled' => 1 );
   $cpu_service->update( 'vm' => $vmId, 'spec' => $cpuUpdateSpec );
   $cpuInfo = $cpu_service->get( 'vm' => $vmId );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "CPU Info:" );
   log_info(
      MSG => "   Cores Per Socket: " . $cpuInfo->get_cores_per_socket() );
   log_info(
      MSG => "   Hot add enabled: " . $cpuInfo->get_hot_add_enabled() . "\n" );
}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {
   log_info( MSG => "#### Cleanup: Revert cpu configuration." );
   my $cpuUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec();
   $cpuUpdateSpec->set_cores_per_socket(
      'cores_per_socket' => $originalCpuInfo->get_cores_per_socket() );
   $cpuUpdateSpec->set_hot_add_enabled(
      'hot_add_enabled' => $originalCpuInfo->get_hot_add_enabled() );
   $cpuUpdateSpec->set_hot_remove_enabled(
      'hot_add_enabled' => $originalCpuInfo->get_hot_remove_enabled() );
   $cpu_service->update( 'vm' => $vmId, 'spec' => $cpuUpdateSpec );
   my $cpuInfomation = $cpu_service->get( 'vm' => $vmId );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "CPU Info:" );
   log_info( MSG => "   Count: " . $cpuInfomation->get_count() );
   log_info(
      MSG => "   Hot add enabled: " . $cpuInfomation->get_hot_add_enabled() );
   log_info( MSG => "   Hot remove enabled: "
        . $cpuInfomation->get_hot_remove_enabled() );
   log_info(
      MSG => "   Cores Per Socket: " . $cpuInfomation->get_cores_per_socket() );
}

#
# Demonstrates how to configure a CPU for a VM.
#
# Sample Prerequisites:
# The sample needs an existing VM.
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
