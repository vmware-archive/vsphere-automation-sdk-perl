#!/usr/bin/perl

# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @SPDX-License-Identifier: MIT
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
use Vcenter::Helpers::NetworkHelper;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::Vm::Power;
use Com::Vmware::Vcenter::Vm::Hardware::Memory;
use Com::Vmware::Vcenter::Vm::Hardware::Ethernet;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,                    $sampleBase,
   $vm_name,                   $vmId,
   $datacenter_name,           $standardportgroup_name,
   $distributedportgroup_name, @createdNics,
   $stubFactory,               $stubConfig,
   $power_service,             $ethernet_service
) = ();

# Declare the mandatory parameter list
my @required_options = (
   'username',          'password',
   'lsurl',             'server',
   'vmname',            'datacenter',
   'standardportgroup', 'distributedportgroup',
   'cleanup'
);

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,              "server=s",
      "lsurl=s",             "username=s",
      "password=s",          "privatekey:s",
      "servercert:s",        "cert:s",
      "vmname:s",            "datacenter:s",
      "standardportgroup:s", "distributedportgroup:s",
      "mgmtnode:s",          "cleanup:s",
      "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --datacenter <datacenter name> --standardportgroup <standard portgroup name> --distributedportgroup <distributed portgroup name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"ethernet_configuration.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --datacenter <datacenter name> --standardportgroup <standard portgroup name> --distributedportgroup <distributed portgroup name> --cleanup <true or false>\n";
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

   $vm_name                   = $params{'vmname'};
   $datacenter_name           = $params{'datacenter'};
   $standardportgroup_name    = $params{'standardportgroup'};
   $distributedportgroup_name = $params{'distributedportgroup'};
   $sampleBase                = new Common::SampleBase( 'params' => \%params );
   $stubConfig                = $sampleBase->{'stub_config'};
   $stubFactory               = $sampleBase->{'stub_factory'};
}

sub setup {

   #
   # Get the Power Service
   #
   $power_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Power',
      'stub_config'  => $stubConfig
   );

   #
   # Get the Ethernet Service
   #
   $ethernet_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet',
      'stub_config'  => $stubConfig
   );
   log_info( MSG => "#### Example: Get the virtual machine id" );

   $vmId = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );
   log_info(
      MSG => "Using VM: " . $vm_name
        . "(vmId=" . $vmId . " ) for ethernet adapter configuration sample."
   );
}

sub run {

   # List all ethernet adapters of the virtual machine
   my $nicSummaries = $ethernet_service->list( 'vm' => $vmId );
   my $nic_index = 1;

   log_info( MSG => "\n\n#### List of all Ethernet NICS on the VM:" );
   foreach my $nicSummary (@$nicSummaries) {
      log_info( MSG => $nic_index . ". nic: " . $nicSummary->get_nic() );
      $nic_index++;
   }

   #Get info for each ethernet on the VM
   log_info( MSG => "\n\n####Print info for each Ethernet NIC on the vm." );
   $nic_index = 1;
   foreach my $ethSummary (@$nicSummaries) {
      log_info( MSG => $nic_index . ". Ethernet NIC Summary:" );
      my $ethInfo = $ethernet_service->get(
         'vm'  => $vmId,
         'nic' => $ethSummary->get_nic()
      );
      &print_nic_info( 'nic_info' => $ethInfo );
      $nic_index++;
   }

   log_info( MSG =>
"\n\n#### Example: Create Ethernet NIC using STANDARD_PORTGROUP with default settings. "
   );
   my $stdNetworkId =
     Vcenter::Helpers::NetworkHelper::getStandardNetworkBacking(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'datacenterName'    => $datacenter_name,
      'stdPortgroupName'  => $standardportgroup_name
     );

   my $nicCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec();
   my $nicBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec();
   $nicBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::STANDARD_PORTGROUP
   );
   $nicBackingSpec->set_network( 'network' => $stdNetworkId );
   $nicCreateSpec->set_backing( 'backing' => $nicBackingSpec );
   $nicCreateSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::E1000 );
   $nicCreateSpec->set_mac_type( 'mac_type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::MANUAL );
   $nicCreateSpec->set_mac_address( 'mac_address' => '24:68:10:12:14:a8' );

   my $nicId =
     $ethernet_service->create( 'vm' => $vmId, 'spec' => $nicCreateSpec );
   @createdNics = ($nicId);
   log_info( MSG => $nicCreateSpec );
   my $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $nicId
   );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "Ethernet NIC ID=" . $nicId );
   &print_nic_info( 'nic_info' => $nicInfo );

   log_info( MSG =>
"\n\n#### Example: Create Ethernet NIC using DISTRIBUTED_PORTGROUP with default settings."
   );
   my $distNetworkId =
     Vcenter::Helpers::NetworkHelper::getDistributedNetworkBacking(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'datacenterName'    => $datacenter_name,
      'vdPortgroupName'   => $distributedportgroup_name
     );

   $nicCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec();
   $nicBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec();
   $nicBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::DISTRIBUTED_PORTGROUP
   );
   $nicBackingSpec->set_network( 'network' => $distNetworkId );
   $nicCreateSpec->set_backing( 'backing' => $nicBackingSpec );
   $nicCreateSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::E1000 );
   $nicCreateSpec->set_mac_type( 'mac_type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::MANUAL );
   $nicCreateSpec->set_mac_address( 'mac_address' => '24:68:10:12:14:b8' );
   $nicId =
     $ethernet_service->create( 'vm' => $vmId, 'spec' => $nicCreateSpec );
   push( @createdNics, $nicId );
   log_info( MSG => $nicCreateSpec );

   $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $nicId
   );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "Ethernet NIC ID=" . $nicId );
   &print_nic_info( 'nic_info' => $nicInfo );

   log_info( MSG =>
"\n\n#### Example: Create Ethernet NIC using standard portgroup and specifying start_connected=true, allow_guest_control=true, mac_type, mac_address, wake_on_lan=enabled."
   );
   $nicCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec();
   $nicBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec();
   $nicBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::STANDARD_PORTGROUP
   );
   $nicBackingSpec->set_network( 'network' => $stdNetworkId );
   $nicCreateSpec->set_backing( 'backing' => $nicBackingSpec );
   $nicCreateSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::E1000 );
   $nicCreateSpec->set_mac_type( 'mac_type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::MANUAL );
   $nicCreateSpec->set_mac_address( 'mac_address' => '24:68:10:12:b4:a8' );
   $nicCreateSpec->set_start_connected( 'start_connected' => 1 );
   $nicCreateSpec->set_allow_guest_control( 'allow_guest_control' => 1 );
   $nicCreateSpec->set_wake_on_lan_enabled( 'wake_on_lan_enabled' => 1 );
   $nicId =
     $ethernet_service->create( 'vm' => $vmId, 'spec' => $nicCreateSpec );
   push( @createdNics, $nicId );
   log_info( MSG => $nicCreateSpec );

   $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $nicId
   );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "Ethernet NIC ID=" . $nicId );
   &print_nic_info( 'nic_info' => $nicInfo );

   log_info( MSG =>
"\n\n#### Example: Create Ethernet NIC using distributed portgroup and specifying start_connected=true, allow_guest_control=true, mac_type, mac_address, wake_on_lan=enabled."
   );

   $nicCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec();
   $nicBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec();
   $nicBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::DISTRIBUTED_PORTGROUP
   );
   $nicBackingSpec->set_network( 'network' => $distNetworkId );
   $nicCreateSpec->set_backing( 'backing' => $nicBackingSpec );
   $nicCreateSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::E1000 );
   $nicCreateSpec->set_mac_type( 'mac_type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::MANUAL );
   $nicCreateSpec->set_mac_address( 'mac_address' => '24:68:b0:12:14:16' );
   $nicCreateSpec->set_start_connected( 'start_connected' => 1 );
   $nicCreateSpec->set_allow_guest_control( 'allow_guest_control' => 1 );
   $nicCreateSpec->set_wake_on_lan_enabled( 'wake_on_lan_enabled' => 1 );
   $nicId =
     $ethernet_service->create( 'vm' => $vmId, 'spec' => $nicCreateSpec );
   push( @createdNics, $nicId );
   log_info( MSG => $nicCreateSpec );

   $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $nicId
   );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "Ethernet NIC ID=" . $nicId );
   &print_nic_info( 'nic_info' => $nicInfo );

   my $lastNicId = $nicId;
   log_info(
      MSG => "\n\n#### Example: Update Ethernet NIC with different backing." );
   my $nicUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec();
   $nicBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec();
   $nicBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::STANDARD_PORTGROUP
   );
   $nicBackingSpec->set_network( 'network' => $stdNetworkId );
   $nicUpdateSpec->set_backing( 'backing' => $nicBackingSpec );
   $ethernet_service->update(
      'vm'   => $vmId,
      'nic'  => $lastNicId,
      'spec' => $nicUpdateSpec
   );
   log_info( MSG => $nicUpdateSpec );
   $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $lastNicId
   );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "Ethernet NIC ID=" . $lastNicId );
   &print_nic_info( 'nic_info' => $nicInfo );

   log_info( MSG =>
"\n\n#### Example: Update the Ethernet NIC, wake_on_lan = false, mac_type=GENERATED, startConnected = false, allowGuestControl = false."
   );

   $nicUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec();
   $nicUpdateSpec->set_wake_on_lan_enabled( 'wake_on_lan_enabled' => 0 );
   $nicUpdateSpec->set_mac_type( 'mac_type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::GENERATED
   );
   $nicUpdateSpec->set_start_connected( 'start_connected' => 0 );
   $nicUpdateSpec->set_allow_guest_control( 'allow_guest_control' => 0 );
   $ethernet_service->update(
      'vm'   => $vmId,
      'nic'  => $lastNicId,
      'spec' => $nicUpdateSpec
   );
   log_info( MSG => $nicUpdateSpec );
   $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $lastNicId
   );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "Ethernet NIC ID=" . $lastNicId );
   &print_nic_info( 'nic_info' => $nicInfo );

   log_info(
      MSG => "\n\n#### Powering on VM to run connect/disconnect example." );
   $power_service->start( 'vm' => $vmId );
   $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $lastNicId
   );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "Ethernet NIC ID=" . $lastNicId );
   &print_nic_info( 'nic_info' => $nicInfo );

   log_info(
      MSG => "\n\n#### Example: Connect Ethernet NIC after powering on VM." );
   $ethernet_service->connect( 'vm' => $vmId, 'nic' => $lastNicId );
   $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $lastNicId
   );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "Ethernet NIC ID=" . $lastNicId );
   &print_nic_info( 'nic_info' => $nicInfo );

   log_info( MSG =>
        "\n\n#### Example: Disconnect Ethernet NIC after powering on VM." );
   $ethernet_service->disconnect( 'vm' => $vmId, 'nic' => $lastNicId );
   $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $lastNicId
   );
   log_info( MSG => "VM ID=" . $vmId );
   log_info( MSG => "Ethernet NIC ID=" . $lastNicId );
   &print_nic_info( 'nic_info' => $nicInfo );

   # Power off the VM
   log_info(
      MSG => "\n\n#### Powering off the VM after connect/disconnect example." );
   $power_service->stop( 'vm' => $vmId );
   $nicInfo = $ethernet_service->get(
      'vm'  => $vmId,
      'nic' => $lastNicId
   );
   &print_nic_info( 'nic_info' => $nicInfo );
}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {
   log_info( MSG => "\n\n#### Cleanup: Revert memory configuration." );
   if ( $power_service->get( 'vm' => $vmId )->get_state() eq
      Com::Vmware::Vcenter::Vm::Power::State::POWERED_ON )
   {
      log_info( MSG => "Power off the vm" );
      $power_service->stop( 'vm' => $vmId );
   }

   # List all ethernet adapters of the virtual machine
   my $nicSummaryList = $ethernet_service->list( 'vm' => $vmId );

   log_info( MSG => "\n\n#### List of all Ethernet NICS on the VM:\n" );
   my $nic_index = 1;
   foreach my $nicSummary (@$nicSummaryList) {
      log_info( MSG => $nic_index . ". nic: " . $nicSummary->get_nic() );
      $nic_index++;
   }
   log_info( MSG => "\n\n#### Cleanup: Delete all the created Ethernet NICs." );
   foreach my $nicId ( values @createdNics ) {
      $ethernet_service->delete( 'vm' => $vmId, 'nic' => $nicId );

   }
   $nicSummaryList = $ethernet_service->list( 'vm' => $vmId );
   log_info( MSG => "\n\n#### List of all Ethernet NICS on the VM:\n" );
   $nic_index = 1;
   foreach my $nicSummary (@$nicSummaryList) {
      log_info( MSG => $nic_index . ". nic: " . $nicSummary->get_nic() );
      $nic_index++;
   }
}

#
# Helper method to print the nic infomation
#
sub print_nic_info {
   my (%args) = @_;
   my $nicInfo = $args{'nic_info'};
   log_info( MSG => "   Label: " . $nicInfo->get_label() );
   log_info( MSG => "   Type: " . $nicInfo->get_type() );
   log_info( MSG => "   Mac Type: " . $nicInfo->get_mac_type() );
   log_info( MSG => "   Mac Address: " . $nicInfo->get_mac_address() );
   log_info( MSG => "   State: " . $nicInfo->get_state() );
   log_info(
      MSG => "   Wake On Lan Enabled: " . $nicInfo->get_wake_on_lan_enabled() );
   log_info( MSG => "   Start Connected: " . $nicInfo->get_start_connected() );
   log_info(
      MSG => "   Allow Guest Control: " . $nicInfo->get_allow_guest_control() );
}

#
# Demonstrates how to configure virtual ethernet adapters of a virtual machine.
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
