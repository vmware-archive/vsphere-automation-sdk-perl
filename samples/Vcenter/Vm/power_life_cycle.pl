#!/usr/bin/perl

# @author: VMware, Inc.
# @copyright: copyright 2017 VMware, Inc.  All rights reserved.
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

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $sampleBase, $vm_name, $vmId, $stubFactory, $stubConfig,
   $vm_power_service )
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
"power_life_cycle.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
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

   $vmId = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );
   if ( !defined $vmId ) {
      exit(
"Sample requires an existing vm with name $vm_name. Please create the vm first."
      );
   }
   log_info( MSG => "Using VM: " 
        . $vm_name 
        . "(vmId=" 
        . $vmId
        . " ) for vm's power life cycle sample.\n" );

   #
   # Get the vm power Service
   #
   $vm_power_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Power',
      'stub_config'  => $stubConfig
   );
}

sub run {

   # Get the vm power state
   log_info( MSG => "# Example: Get current vm power state" );
   my $status = $vm_power_service->get( 'vm' => $vmId );

   # Power off the vm if it is on
   if ( $status->get_state() eq
      Com::Vmware::Vcenter::Vm::Power::State::POWERED_ON )
   {
      log_info( MSG => "# Example: VM is powered on, power it off" );
      $vm_power_service->stop( 'vm' => $vmId );
   }

   # Power on the vm
   log_info( MSG => "# Example: Power on the vm" );
   $vm_power_service->start( 'vm' => $vmId );
   log_info( MSG => "vm.power->start()" );

   # Suspend the vm
   log_info( MSG => "# Example: Suspend the vm" );
   $vm_power_service->suspend( 'vm' => $vmId );
   log_info( MSG => "vm.power->suspend()" );

   # Resume the vm
   log_info( MSG => "# Example: Resume the vm" );
   $vm_power_service->start( 'vm' => $vmId );
   log_info( MSG => "vm.power->resume()" );

   # Reset the vm
   log_info( MSG => "# Example: Reset the vm" );
   $vm_power_service->reset( 'vm' => $vmId );
   log_info( MSG => "vm.power->reset()" );
}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {

   # Power off the vm
   log_info( MSG => "# Cleanup: Power off the vm" );
   $vm_power_service->stop( 'vm' => $vmId );
   log_info( MSG => "vm.power->stop()" );
   my $status = $vm_power_service->get( 'vm' => $vmId );

   # Power off the vm if it is on
   if ( $status->get_state() eq
      Com::Vmware::Vcenter::Vm::Power::State::POWERED_OFF )
   {
      log_info( MSG => "VM is powered off" );
   }
   else {
      log_info( MSG => "vm.Power Warning: Could not power off vm" );
   }
}

#
# Demonstrates the virtual machine power lifecycle.
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
