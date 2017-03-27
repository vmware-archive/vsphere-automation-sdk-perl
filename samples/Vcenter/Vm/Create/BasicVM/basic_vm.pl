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
$__vcenter_version__ = '6.5+';

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

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::Vm::GuestOS;
use Com::Vmware::Vcenter::VM;
use Com::Vmware::Vcenter::Vm::Power;
use Com::Vmware::Vcenter::Vm::Hardware;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi;
use Com::Vmware::Vcenter::Vm::Hardware::Disk;
use Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec;
use Com::Vmware::Vcenter::Vm::Hardware::Ethernet;
use Com::Vmware::Vcenter::Vm::Hardware::Boot;
use Com::Vmware::Vcenter::Vm::Hardware::Boot::Device;
use Com::Vmware::Vcenter::Vm::Hardware::Cdrom;
use Com::Vmware::Vcenter::Vm::Hardware::Cpu;
use Com::Vmware::Vcenter::Vm::Hardware::Memory;
use Com::Vmware::Vcenter::Vm::Hardware::Serial;
use Com::Vmware::Vcenter::Vm::Hardware::Parallel;
use Com::Vmware::Vcenter::Vm::Hardware::Floppy;

#
# Sample helper modules
#
use Vcenter::Helpers::PlacementHelper;
use Vcenter::Helpers::NetworkHelper;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,         $sampleBase,             $vm_name,
   $vmfolder_name,  $cluster_name,           $stubFactory,
   $stubConfig,     $datacenter_name,        $vm_service,
   $datastore_name, $standardportgroup_name, $basicVMId
) = ();

my $vmGuestOS   = Com::Vmware::Vcenter::Vm::GuestOS::WINDOWS_9_64;
my $mac_address = '11:23:58:13:21:34';

# Declare the mandatory parameter list
my @required_options = (
   'username',  'password',          'lsurl',       'server',
   'vmname',    'datacenter',        'clustername', 'vmfolder',
   'datastore', 'standardportgroup', 'cleanup'
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
      "vmname:s",     "vmfolder:s",
      "datastore:s",  "clustername:s",
      "datacenter:s", "standardportgroup:s",
      "mgmtnode:s",   "cleanup:s",
      "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <basic vm name> --vmfolder <vmfolder name> --datastore <datastore name> --clustername <cluster name> --datacenter <datacenter name> --standardportgroup <standard portgroup name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"basic_vm.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <basic vm name> --vmfolder <vmfolder name> --datastore <datastore name> --clustername <cluster name> --datacenter <datacenter name> --standardportgroup <standard portgroup name> --cleanup <true or false>\n";
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

   $vm_name                = $params{'vmname'};
   $datacenter_name        = $params{'datacenter'};
   $cluster_name           = $params{'clustername'};
   $vmfolder_name          = $params{'vmfolder'};
   $datastore_name         = $params{'datastore'};
   $standardportgroup_name = $params{'standardportgroup'};

   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   #
   # Get the VM Service
   #
   log_info( MSG => "Creating VM Service..." );
   $vm_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::VM',
      'stub_config'  => $stubConfig
   );
}

sub run {

   #Get a placement spec
   my $vmPlacementSpec =
     Vcenter::Helpers::PlacementHelper::getPlacementSpecForCluster(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'datacenterName'    => $datacenter_name,
      'clusterName'       => $cluster_name,
      'vmFolderName'      => $vmfolder_name,
      'datastoreName'     => $datastore_name
     );

   # Get a standard network backing
   my $standardNetworkBacking =
     Vcenter::Helpers::NetworkHelper::getStandardNetworkBacking(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'datacenterName'    => $datacenter_name,
      'stdPortgroupName'  => $standardportgroup_name
     );

   # Create the VMs
   createBasicVM(
      'vmPlacementSpec'        => $vmPlacementSpec,
      'standardNetworkBacking' => $standardNetworkBacking
   );
}

#
# Creates a basic VM on a cluster with the following configuration:
# - Create 2 disks and specify one of them on scsi0:0 since
#   it's the boot disk.
# - Specify 1 ethernet adapter using a Standard Portgroup backing.
# - Setup for PXE install by selecting network as first boot device.
# - Use guest and system provided defaults for most configuration settings.
#
sub createBasicVM() {
   my (%args)                 = @_;
   my $vmPlacementSpec        = $args{'vmPlacementSpec'};
   my $standardNetworkBacking = $args{'standardNetworkBacking'};

   # Create the scsi disk as a boot disk
   my $bootDiskCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $bootDiskCreateSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );
   my $scsiAddressSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec();
   $scsiAddressSpec->set_bus( 'bus' => 00 );
   $scsiAddressSpec->set_unit( 'unit' => 01 );
   $bootDiskCreateSpec->set_scsi( 'scsi' => $scsiAddressSpec );
   $bootDiskCreateSpec->set_new_vmdk( 'new_vmdk' =>
        new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec() );

   # Create a data disk
   my $dataDiskCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $dataDiskCreateSpec->set_new_vmdk( 'new_vmdk' =>
        new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec() );
   $dataDiskCreateSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );
   my @disks = ( $bootDiskCreateSpec, $dataDiskCreateSpec );

   # Create a nic with standard network backing
   my $nicBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec();
   $nicBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::STANDARD_PORTGROUP
   );
   $nicBackingSpec->set_network( 'network' => $standardNetworkBacking );
   my $nicCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec();
   $nicCreateSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::E1000 );
   $nicCreateSpec->set_mac_type( 'mac_type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::MANUAL );

   $nicCreateSpec->set_start_connected( 'start_connected' => 1 );
   $nicCreateSpec->set_backing( 'backing' => $nicBackingSpec );
   $nicCreateSpec->set_mac_address( 'mac_address' => $mac_address );
   my @nics = ($nicCreateSpec);

   # Specify the boot order
   my $ethernetCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec();
   $ethernetCreateSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::ETHERNET );

   my $diskCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec();
   $diskCreateSpec->set_type(
      'type' => Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::DISK );
   my @bootDevices = ( $ethernetCreateSpec, $diskCreateSpec );

   my $vm_createspec = new Com::Vmware::Vcenter::VM::CreateSpec();
   $vm_createspec->set_name( 'name' => $vm_name );
   $vm_createspec->set_guest_OS( 'guest_OS' => $vmGuestOS );
   $vm_createspec->set_boot_devices( 'boot_devices' => \@bootDevices );
   $vm_createspec->set_placement( 'placement' => $vmPlacementSpec );
   $vm_createspec->set_disks( 'disks' => \@disks );
   $vm_createspec->set_nics( 'nics' => \@nics );

   log_info( MSG => "#### Example: Creating basic VM with spec: '"
        . $vm_createspec
        . "'" );

   $basicVMId = $vm_service->create( spec => $vm_createspec );
   log_info( MSG => "Created basic VM : '"
        . $vm_name
        . "' with id: '"
        . $basicVMId
        . "'" );
   my $vmInfo = $vm_service->get( 'vm' => $basicVMId );

   log_info( MSG => "Basic VM Info:" );
   log_info( MSG => "   VM name:'" . $vmInfo->get_name() . "'" );
   log_info( MSG => "   VM Guest OS:'" . $vmInfo->get_guest_OS() . "'" );
   my $getDisks = $vmInfo->get_disks();
   my $disk_no  = 1;
   foreach my $disk ( values %$getDisks ) {
      log_info(
         MSG => "   $disk_no. Hard disk's name: '" . $disk->get_label() . "'" );
      log_info(
         MSG => "      Hard disk's capacity: '" . $disk->get_capacity() . "'" );
      $disk_no++;
   }
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup() {
   log_info( MSG => "#### Deleting the Basic VM" );
   if ( defined($basicVMId) ) {
      $vm_service->delete( 'vm' => $basicVMId );
   }
}

#
# Demonstrates how to create a basic VM with following configuration:
# Basic VM (2 disks, 1 nic)
#
# Sample Prerequisites:
# The sample needs a datacenter and the following resources:
# - vm folder
# - datastore
# - cluster
# - A standard switch network
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
