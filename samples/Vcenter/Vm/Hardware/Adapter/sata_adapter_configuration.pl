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
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata;
use Com::Vmware::Vcenter::Vm::Power;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,              $sampleBase, $vm_name,      $vmId,
   $stubFactory,         $stubConfig, $sata_service, $vm_service,
   @createdSataAdapters, $sataSummaries
) = ();

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
"sata_adapter_configuration.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
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

   $vm_name = $params{'vmname'};

   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   #
   # Get the Sata Service
   #
   $sata_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata',
      'stub_config'  => $stubConfig
   );
   log_info( MSG => "\n\n#### Setup: Get the virtual machine id" );

   $vmId = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );
}

sub run {

   log_info( MSG => "Using VM: " 
        . $vm_name 
        . "(vmId=" 
        . $vmId
        . " ) for SATA adapter configuration sample.\n" );
   log_info( MSG => "\n\n#### Example: List of all SATA adapters on the VM." );
   $sataSummaries = $sata_service->list( 'vm' => $vmId );

   if (scalar(@$sataSummaries) == 0){
      print "\n\nThere is no more SATA buses available on virtual machine.";
      exit;
   }
   my $sata_index = 1;
   foreach my $sataSummary (@$sataSummaries) {
      log_info(
         MSG => $sata_index . ". Adapter: " . $sataSummary->get_adapter() );
      $sata_index++;
   }
   log_info( MSG => "\n\n#### Display information about each adapter." );
   $sata_index = 1;
   foreach my $sataSummary (@$sataSummaries) {
      my $sataInfo = $sata_service->get(
         'vm'      => $vmId,
         'adapter' => $sataSummary->get_adapter()
      );
      log_info( MSG => $sata_index . ". Sata Summary:" );
      &print_sata_info( 'sata_info' => $sataInfo );
      $sata_index++;
   }
   log_info( MSG => "\n\n#### Example: Create SATA adapter with defaults." );
   my $sataCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec();
   my $sataId =
     $sata_service->create( 'vm' => $vmId, 'spec' => $sataCreateSpec );
   log_info( MSG => $sataCreateSpec );
   my $sataInfo = $sata_service->get( 'vm' => $vmId, 'adapter' => $sataId );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "SATA Adapter ID=" . $sataId );
   &print_sata_info( 'sata_info' => $sataInfo );
   push( @createdSataAdapters, $sataId );
   log_info( MSG => "\n\n#### Create SATA adapter with a specific bus" );
   $sataCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec();
   $sataCreateSpec->set_bus( 'bus' => 2 );
   log_info( MSG => $sataCreateSpec );
   $sataId = $sata_service->create( 'vm' => $vmId, 'spec' => $sataCreateSpec );
   $sataInfo = $sata_service->get( 'vm' => $vmId, 'adapter' => $sataId );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "SATA Adapter ID=" . $sataId );
   &print_sata_info( 'sata_info' => $sataInfo );
   push( @createdSataAdapters, $sataId );

   # List all SATA adapters for a VM
   log_info( MSG => "\n\n#### List of all SATA adapters on the VM." );
   $sataSummaries = $sata_service->list( 'vm' => $vmId );
   $sata_index = 1;
   foreach my $sataSummary (@$sataSummaries) {
      log_info(
         MSG => $sata_index . " Adapter: " . $sataSummary->get_adapter() );
      $sata_index++;
   }
}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {
   log_info(
      MSG => "\n\n#### Cleanup: Deleting all the adapters that were created." );
   foreach my $sataId (@createdSataAdapters) {
      $sata_service->delete(
         'vm'      => $vmId,
         'adapter' => $sataId
      );
   }
   $sataSummaries = $sata_service->list( 'vm' => $vmId );
   log_info( MSG => "\n\n#### List of all SATA adapters on the VM." );
   my $sata_index = 1;
   foreach my $sataSummary (@$sataSummaries) {
      log_info(
         MSG => $sata_index . " Adapter: " . $sataSummary->get_adapter() );
      $sata_index++;
   }
}

#
# Helper method to print the sata info
#
sub print_sata_info {
   my (%args) = @_;
   my $sataInfo = $args{'sata_info'};
   log_info( MSG => "   Label: " . $sataInfo->get_label() );
   log_info( MSG => "   Type: " . $sataInfo->get_type() );
   if ( defined( $sataInfo->get_pci_slot_number() ) ) {
      log_info(
         MSG => "   Pci Slot Number: " . $sataInfo->get_pci_slot_number() );
   }
   log_info( MSG => "   Bus: " . $sataInfo->get_bus() );
}

#
# Demonstrates how to configure virtual SATA adapters of a virtual machine.
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
