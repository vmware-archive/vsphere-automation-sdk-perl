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

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::VM;
use Com::Vmware::Vcenter::Vm::GuestOS;
use Com::Vmware::Vcenter::Vm::Hardware;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi;
use Com::Vmware::Vcenter::Vm::Hardware::Boot;
use Com::Vmware::Vcenter::Vm::Hardware::Boot::Device;
use Com::Vmware::Vcenter::Vm::Hardware::Cdrom;
use Com::Vmware::Vcenter::Vm::Hardware::Cpu;
use Com::Vmware::Vcenter::Vm::Hardware::Disk;
use Com::Vmware::Vcenter::Vm::Hardware::Ethernet;
use Com::Vmware::Vcenter::Vm::Hardware::Memory;
use Com::Vmware::Vcenter::Vm::Hardware::Serial;
use Com::Vmware::Vcenter::Vm::Hardware::Parallel;
use Com::Vmware::Vcenter::Vm::Hardware::Floppy;
use Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec;
use Com::Vmware::Vcenter::Vm::Power;

#
# Sample helper modules
#
use Vcenter::Helpers::PlacementHelper;
use Vcenter::Helpers::NetworkHelper;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,                    $sampleBase,
   $vmfolder_name,             $cluster_name,
   $stubFactory,               $stubConfig,
   $datacenter_name,           $vm_service,
   $datastore_name,            $standardportgroup_name,
   $distributedportgroup_name, $isodatastorepath,
   $exhaustiveVMId
) = ();
my $EXHAUSTIVE_VM_NAME                   = "Sample-Exhaustive-VM";
my $SERIAL_PORT_NETWORK_SERVICE_LOCATION = "tcp://localhost:16000";
my $GB                                   = 1024 * 1024 * 1024;
my $vmGuestOS   = Com::Vmware::Vcenter::Vm::GuestOS::WINDOWS_9_64;
my $mac_address = '11:23:58:13:21:34';

# Declare the mandatory parameter list
my @required_options = (
   'username',          'password',
   'lsurl',             'server',
   'datacenter',        'clustername',
   'vmfolder',          'datastore',
   'standardportgroup', 'distributedportgroup',
   'isodatastorepath',  'cleanup'
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
      "vmfolder:s",   "cleanup:s",
      "datastore:s",  "clustername:s",
      "datacenter:s", "standardportgroup:s",
      "distributedportgroup:s", "isodatastorepath:s", "mgmtnode:s",
      "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmfolder <vmfolder name> --datastore <datastore name> --clustername <cluster name> --datacenter <datacenter name> --standardportgroup <standard portgroup name> --distributedportgroup <distributed portgroup name> --isodatastorepath <iso datastore path> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"exhaustive_vm.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --vmfolder <vmfolder name> --datastore <datastore name> --clustername <cluster name> --datacenter <datacenter name> --standardportgroup <standard portgroup name> --distributedportgroup <distributed portgroup name> --isodatastorepath <iso datastore path> --cleanup <true or false> \n";
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

   $datacenter_name           = $params{'datacenter'};
   $cluster_name              = $params{'clustername'};
   $vmfolder_name             = $params{'vmfolder'};
   $datastore_name            = $params{'datastore'};
   $standardportgroup_name    = $params{'standardportgroup'};
   $distributedportgroup_name = $params{'distributedportgroup'};
   $isodatastorepath          = $params{'isodatastorepath'};

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

   # Get a distributed network backing
   my $distributedNetworkBacking =
     Vcenter::Helpers::NetworkHelper::getDistributedNetworkBacking(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'datacenterName'    => $datacenter_name,
      'vdPortgroupName'   => $distributedportgroup_name
     );

   # Create the VMs
   createExhaustiveVM(
      'vmPlacementSpec'           => $vmPlacementSpec,
      'standardNetworkBacking'    => $standardNetworkBacking,
      'distributedNetworkBacking' => $distributedNetworkBacking
   );
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup() {
   log_info( MSG => "#### Deleting the Exhaustive VM" );
   if ( defined($exhaustiveVMId) ) {
      $vm_service->delete( 'vm' => $exhaustiveVMId );
   }
}

#
# Create an exhaustive VM with the following configuration:
# - Hardware Version = VMX_11 (for 6.0)
# - CPU (count = 2, coresPerSocket = 2, hotAddEnabled = false,
#   hotRemoveEnabled = false)
# - Memory (size_mib = 2 GB, hotAddEnabled = false)
# - 3 Disks and specify each of the HBAs and the unit numbers
#   (capacity=40 GB, name=<some value>, spaceEfficient=true)
# - Specify 2 ethernet adapters, one using a Standard Portgroup backing
#   and the other using a DISTRIBUTED_PORTGROUP networking backing.
#        # nic1: Specify Ethernet (macType=MANUAL, macAddress=<some value>)
#        # nic2: Specify Ethernet (macType=GENERATED)
# - 1 CDROM (type=ISO_FILE, file="small.iso", startConnected=true)
# - 1 Serial Port (type=NETWORK_SERVER, file="tcp://localhost/16000",
#   startConnected=true)
# - 1 Parallel Port  (type=HOST_DEVICE, startConnected=false)
# - 1 Floppy Drive (type=CLIENT_DEVICE)
# - Boot, type=BIOS
# - BootDevice order: CDROM, DISK, ETHERNET
#/
sub createExhaustiveVM() {
   my (%args)                    = @_;
   my $vmPlacementSpec           = $args{'vmPlacementSpec'};
   my $standardNetworkBacking    = $args{'standardNetworkBacking'};
   my $distributedNetworkBacking = $args{'distributedNetworkBacking'};

   # CPU UpdateSpec
   my $cpuUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec();
   $cpuUpdateSpec->set_cores_per_socket( 'cores_per_socket' => 1 );
   $cpuUpdateSpec->set_hot_add_enabled( 'hot_add_enabled' => 0 );
   $cpuUpdateSpec->set_hot_remove_enabled( 'hot_remove_enabled' => 0 );

   # Memory UpdateSpec
   my $memoryUpdateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec();
   $memoryUpdateSpec->set_size_MiB( 'size_MiB' => 2 * 1024 );
   $memoryUpdateSpec->set_hot_add_enabled( 'hot_add_enabled' => 0 );

   # Disk CreateSpec
   my $disk_createspec1 =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_createspec1->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );
   my $scsiAddressSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec();
   $scsiAddressSpec->set_bus( 'bus' => 00 );
   $scsiAddressSpec->set_unit( 'unit' => 01 );
   $disk_createspec1->set_scsi( 'type' => $scsiAddressSpec );

   my $vmdkCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdkCreateSpec->set_name( 'name' => 'boot' );
   $vmdkCreateSpec->set_capacity( 'capacity' => 40 * $GB );
   $disk_createspec1->set_new_vmdk( 'new_vmdk' => $vmdkCreateSpec );

   my $disk_createspec2 =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_createspec2->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );

   my $vmdkCreateSpec1 =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdkCreateSpec1->set_name( 'name' => 'data1' );
   $vmdkCreateSpec1->set_capacity( 'capacity' => 10 * $GB );
   $disk_createspec2->set_new_vmdk( 'new_vmdk' => $vmdkCreateSpec1 );

   my $disk_createspec3 =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_createspec3->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );

   my $vmdkCreateSpec2 =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdkCreateSpec2->set_name( 'name' => 'data2' );
   $vmdkCreateSpec2->set_capacity( 'capacity' => 10 * $GB );
   $disk_createspec3->set_new_vmdk( 'new_vmdk' => $vmdkCreateSpec2 );

   # Ethernet CreateSpec
   my $manualEthernetSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec();

   $manualEthernetSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::E1000 );
   $manualEthernetSpec->set_start_connected( 'start_connected' => 1 );
   $manualEthernetSpec->set_mac_type( 'mac_type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::MANUAL );
   $manualEthernetSpec->set_mac_address( 'mac_address' => $mac_address );
   my $backingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec();
   $backingSpec->set_network( 'network' => $standardNetworkBacking );
   $backingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::STANDARD_PORTGROUP
   );
   $manualEthernetSpec->set_backing( 'backing' => $backingSpec );

   my $generatedEthernetSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec();

   $generatedEthernetSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::E1000 );
   $generatedEthernetSpec->set_start_connected( 'start_connected' => 1 );
   $generatedEthernetSpec->set_mac_type( 'mac_type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::GENERATED
   );

   my $backingSpec1 =
     new Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec();
   $backingSpec1->set_network( 'network' => $distributedNetworkBacking );
   $backingSpec1->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::DISTRIBUTED_PORTGROUP
   );
   $generatedEthernetSpec->set_backing( 'backing' => $backingSpec1 );

   # Cdrom CreateSpec
   my $cdromCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec();
   my $cdromBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec();
   $cdromBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::ISO_FILE );
   $cdromBackingSpec->set_iso_file( 'iso_file' => $isodatastorepath );
   $cdromCreateSpec->set_backing( 'backing' => $cdromBackingSpec );
   $cdromCreateSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType::SATA );

   # Serial Port CreateSpec
   my $serialCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec();
   my $serialBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec();
   $serialBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType::NETWORK_SERVER
   );
   $serialBackingSpec->set_network_location(
      'network_location' => $SERIAL_PORT_NETWORK_SERVICE_LOCATION );
   $serialCreateSpec->set_start_connected( 'start_connected' => 0 );
   $serialCreateSpec->set_backing( 'backing' => $serialBackingSpec );

   # Parallel port CreateSpec
   my $parallelCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Parallel::CreateSpec();
   $parallelCreateSpec->set_start_connected( 'start_connected' => 0 );
   my $parallelBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingSpec();
   $parallelBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Parallel::BackingType::HOST_DEVICE
   );
   $parallelCreateSpec->set_backing( 'backing' => $parallelBackingSpec );

   # Floppy CreateSpec
   my $floppyCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec();
   my $floppyBackingSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec();
   $floppyBackingSpec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType::CLIENT_DEVICE
   );
   $floppyCreateSpec->set_backing( 'backing' => $floppyBackingSpec );

   # Specify the boot order
   my $deviceEntryCreateSpec =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec();
   $deviceEntryCreateSpec->set_type(
      'type' => Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::CDROM );
   my $deviceEntryCreateSpec1 =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec();
   $deviceEntryCreateSpec1->set_type(
      'type' => Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::DISK );
   my $deviceEntryCreateSpec2 =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec();
   $deviceEntryCreateSpec2->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::ETHERNET );

   my @bootDevices = (
      $deviceEntryCreateSpec, $deviceEntryCreateSpec1, $deviceEntryCreateSpec2
   );
   my @disk_list = ( $disk_createspec1, $disk_createspec2, $disk_createspec3 );
   my @cdroms_list      = ($cdromCreateSpec);
   my @nics_list        = ( $manualEthernetSpec, $generatedEthernetSpec );
   my @floppies_list    = ($floppyCreateSpec);
   my @parrel_port_list = ($parallelCreateSpec);
   my @serial_port_list = ($serialCreateSpec);

   # Create a VM with above configuration
   my $vm_createspec = new Com::Vmware::Vcenter::VM::CreateSpec();
   $vm_createspec->set_name( 'name' => $EXHAUSTIVE_VM_NAME );
   $vm_createspec->set_guest_OS( 'guest_OS' => $vmGuestOS );
   $vm_createspec->set_boot_devices( 'boot_devices' => \@bootDevices );
   $vm_createspec->set_placement( 'placement' => $vmPlacementSpec );
   $vm_createspec->set_disks( 'disks' => \@disk_list );
   $vm_createspec->set_nics( 'nics' => \@nics_list );
   $vm_createspec->set_cdroms( 'cdroms' => \@cdroms_list );
   $vm_createspec->set_cpu( 'cpu' => $cpuUpdateSpec );
   $vm_createspec->set_floppies( 'floppies' => \@floppies_list );
   $vm_createspec->set_hardware_version( 'hardware_version' =>
        Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_11 );
   $vm_createspec->set_memory( 'memory' => $memoryUpdateSpec );
   $vm_createspec->set_parallel_ports( 'parallel_ports' => \@parrel_port_list );
   $vm_createspec->set_serial_ports( 'serial_ports' => \@serial_port_list );

   log_info( MSG => "#### Example: Creating exhaustive VM with spec: '"
        . $vm_createspec
        . "'" );
   $exhaustiveVMId = $vm_service->create( 'spec' => $vm_createspec );

   log_info( MSG => "Created exhaustive VM : '"
        . $EXHAUSTIVE_VM_NAME
        . "' with id: '"
        . $exhaustiveVMId
        . "'" );
   my $vmInfo = $vm_service->get( 'vm' => $exhaustiveVMId );

   log_info( MSG => "Exhaustive VM Info:" );
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
# Demonstrates how to create a exhaustive VM with the below configuration:
# 3 disks, 2 nics, 2 vcpu, 2 GB memory, boot=BIOS, 1 cdrom, 1 serial port,
# 1 parallel port, 1 floppy, boot_device=[CDROM, DISK, ETHERNET])
#
# Sample Prerequisites:
# The sample needs a datacenter and the following resources:
# - vm folder
# - datastore
# - cluster
# - A standard switch network
# - A distributed switch network
# - An iso file on the datastore mentioned above
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
