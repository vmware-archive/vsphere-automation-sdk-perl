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
use Com::Vmware::Vcenter::Vm::Hardware::Boot;
use Com::Vmware::Vcenter::Vm::Power;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $sampleBase, $vm_name, $vmId, $stubFactory, $stubConfig,
   $boot_service, $originalBootInfo )
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
      "vmname:s",   "cleanup:s",    "mgmtnode:s",   "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"boot_configuration.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
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

   $vm_name = $params{'vmname'};

   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   #
   # Get the Boot Service
   #
   $boot_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot',
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
        . $vm_name . "(vmId=" . $vmId . " ) for boot configuration sample.\n"
   );

   # Print the current boot configuration
   log_info( MSG => "\n\n#### Print the original Boot Info" );
   my $bootInfo = $boot_service->get( 'vm' => $vmId );
   &print_boot_info( 'boot_info' => $bootInfo );

   # Save the current boot info to verify that we have cleaned up properly
   $originalBootInfo = $bootInfo;

   log_info( MSG =>
        "\n\n#### Example: Update firmware to EFI for boot configuration." );
   my $bootUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec();
   $bootUpdateSpec->set_type(
      'type' => Com::Vmware::Vcenter::Vm::Hardware::Boot::Type::EFI );
   $boot_service->update( 'vm' => $vmId, 'spec' => $bootUpdateSpec );
   log_info( MSG => $bootUpdateSpec );
   $bootInfo = $boot_service->get( 'vm' => $vmId );
   &print_boot_info( 'boot_info' => $bootInfo );

   log_info( MSG =>
"\n\n#### Example: Update boot firmware to tell it to enter setup mode on next boot."
   );
   $bootUpdateSpec = new Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec();
   $bootUpdateSpec->set_type(
      'type' => Com::Vmware::Vcenter::Vm::Hardware::Boot::Type::EFI );
   $bootUpdateSpec->set_enter_setup_mode( 'enter_setup_mode' => 1 );
   $boot_service->update( 'vm' => $vmId, 'spec' => $bootUpdateSpec );
   log_info( MSG => $bootUpdateSpec );
   $bootInfo = $boot_service->get( 'vm' => $vmId );
   &print_boot_info( 'boot_info' => $bootInfo );

   log_info( MSG =>
"\n\n#### Example: Update firmware to introduce a delay in boot process and automatically reboot after a failure to boot, retry delay = 30000 ms."
   );
   $bootUpdateSpec = new Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec();
   $bootUpdateSpec->set_type(
      'type' => Com::Vmware::Vcenter::Vm::Hardware::Boot::Type::EFI );
   $bootUpdateSpec->set_delay( 'delay' => 10000 );
   $bootUpdateSpec->set_retry( 'retry' => 1 );
   $bootUpdateSpec->set_retry_delay( 'retry_delay' => 30000 );
   $boot_service->update( 'vm' => $vmId, 'spec' => $bootUpdateSpec );

   $bootInfo = $boot_service->get( 'vm' => $vmId );
   &print_boot_info( 'boot_info' => $bootInfo );

}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {
   log_info( MSG => "\n\n#### Cleanup: Revert the boot configuration." );

   my $bootUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec();
   $bootUpdateSpec->set_delay( 'delay' => $originalBootInfo->get_delay() );
   $bootUpdateSpec->set_enter_setup_mode(
      'enter_setup_mode' => $originalBootInfo->get_enter_setup_mode() );
   $bootUpdateSpec->set_type( 'type' => $originalBootInfo->get_type() );
   $bootUpdateSpec->set_retry( 'retry' => $originalBootInfo->get_retry() );
   $bootUpdateSpec->set_retry_delay(
      'retry_delay' => $originalBootInfo->get_retry_delay() );
   $boot_service->update( 'vm' => $vmId, 'spec' => $bootUpdateSpec );

   my $bootInfo = $boot_service->get( 'vm' => $vmId );
   log_info( MSG => "VM ID=" . $vmId );
   &print_boot_info( 'boot_info' => $bootInfo );
}

#
# Helper method to print the boot infomation
#
sub print_boot_info {
   my (%args) = @_;
   my $bootInfo = $args{'boot_info'};
   log_info( MSG => "Boot Info:" );
   log_info(
      MSG => "   Enter Setup Mode: " . $bootInfo->get_enter_setup_mode() );
   log_info( MSG => "   Delay: " . $bootInfo->get_delay() );
   log_info( MSG => "   Type: " . $bootInfo->get_type() );
   log_info( MSG => "   Retry: " . $bootInfo->get_retry() );
   log_info( MSG => "   Retry Delay: " . $bootInfo->get_retry_delay() );

   if ( defined( $bootInfo->get_network_protocol() ) ) {
      log_info(
         MSG => "   Network Protocol: " . $bootInfo->get_network_protocol() );
   }
   if ( defined( $bootInfo->get_efi_legacy_boot() ) ) {
      log_info(
         MSG => "   efi_legacy_boot: " . $bootInfo->get_efi_legacy_boot() );
   }
}

#
# Demonstrates how to configure the settings used when booting a virtual machine.
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
