#!/usr/bin/perl

#
# Perl Core Modules
#
use strict;
use Getopt::Long;
use Data::Compare;

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
use Com::Vmware::Vcenter::Vm::Hardware;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata;
use Com::Vmware::Vcenter::Vm::Hardware::Disk;
use Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec;
use Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec;
use Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec;
use Com::Vmware::Vcenter::Vm::Power;

#
# Sample helper modules
#
use Common::Vim::Inventory;
use Common::Vim::Vmdk;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,         $sampleBase,          $vm_name,
   $vmId,           $stubFactory,         $stubConfig,
   $vm_service,     $datastore_root_path, $disk_service,
   $sata_service,   $datacenter_name,     $datastore_name,
   $datastore_mo,   $datacenter_mo,       $saved_disk_info,
   $datastore_path, @disks_to_delete,     $sata,
   $orig_disk_summaries
) = ();

# Declare the mandatory parameter list
my @required_options = (
   'username',          'password',
   'server',            'vmname',
   'datastorerootpath', 'datacentername',
   'datastorename',     'cleanup'
);

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,          "server=s",
      "username=s",      "password=s",
      "privatekey:s",    "cert:s",
      "vmname:s",        "datastorerootpath:s",
      "datastorename:s", "datacentername:s",
      "mgmtnode:s",      "cleanup:s",
      "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --datastorerootpath <datastore root path> --datacentername <datacenter name> --datastorename <datastore name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      getUsage();
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

   $vm_name             = $params{'vmname'};
   $datastore_root_path = $params{'datastorerootpath'};
   $datacenter_name     = $params{'datacentername'};
   $datastore_name      = $params{'datastorename'};

   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   #
   # Get the Disk Service
   #
   $disk_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk',
      'stub_config'  => $stubConfig
   );

   #
   # Get the SATA Service
   #
   $sata_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata',
      'stub_config'  => $stubConfig
   );

   log_info( MSG => "#### Setup: Get the virtual machine id" );

   $vmId = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );
   if ( !defined $vmId ) {
      log_info( MSG =>
"\nSample requires an existing vm with name ($vm_name). Please create the vm first."
      );
      exit();
   }

   $datastore_mo = Common::Vim::Inventory::get_datastore_mo(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'datacenterName'    => $datacenter_name,
      'datastoreName'     => $datastore_name
   );
   $datacenter_mo = Common::Vim::Inventory::get_datacenter_for_datastore(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'datacenterName'    => $datacenter_name
   );
}

sub run {
   my $GiB = 1024 * 1024 * 1024;
   log_info( MSG => "Using VM: " . $vm_name . "(vmId=" . $vmId . " ) for disk configuration sample." );

   my $diskSummaries = $disk_service->list( 'vm' => $vmId );
   log_info( MSG => "\n\n#### List of disks attached to vm: " );
   my $disk_index = 1;
   foreach my $diskSummary (@$diskSummaries) {
      log_info( MSG => $disk_index . " disk: " . $diskSummary->get_disk() );
      $disk_index++;
   }

   # Save current list of disks to verify that we have cleaned up properly
   $orig_disk_summaries = $diskSummaries;
   my @diskIds = ();

   # Get information for each Disk on the VM
   foreach my $diskSummary (@$diskSummaries) {
      my $get_disk = $diskSummary->get_disk();
      my $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $get_disk );
      log_info( MSG => "vm.hardware.Disk.get($vmId, $get_disk)" );
      print_disk_info($disk_info);
   }
 
   # Create a new Disk using default settings
   log_info( MSG => "Example: Create a new Disk using default settings" );
   my $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   my $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SATA );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   my $disk =
     $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );

   push( @disks_to_delete, $disk );
   my $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Create a new Disk specifying the capacity in bytes and that the flat format (ie. SeSparse format) should be used.
   log_info( MSG =>
"# Example: Create a new Disk specifying the capacity in bytes and that the flat format (ie. SeSparse format) should be used."
   );
   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdk_create_spec->set_capacity( 'capacity' => 10 * $GiB );
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SATA );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Create a new SCSI Disk
   log_info( MSG => "# Example: Create a new SCSI Disk" );
   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );
   $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdk_create_spec->set_capacity( 'capacity' => 10 * $GiB );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Create a new SCSI Disk on a specific bus
   log_info( MSG => "# Example: Create a new SCSI Disk on a specific bus" );
   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );
   my $scsi_address_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec();
   $scsi_address_spec->set_bus( 'bus' => 00 );
   $disk_create_spec->set_scsi( 'scsi' => $scsi_address_spec );
   $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdk_create_spec->set_capacity( 'capacity' => 10 * $GiB );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Create a new SCSI Disk on a specific bus and unit number
   log_info( MSG =>
        "# Example: Create a new SCSI Disk on a specific bus and unit number" );
   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );
   $scsi_address_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec();
   $scsi_address_spec->set_bus( 'bus' => 0 );
   $scsi_address_spec->set_unit( 'unit' => 10 );
   $disk_create_spec->set_scsi( 'scsi' => $scsi_address_spec );
   $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdk_create_spec->set_capacity( 'capacity' => 10 * $GiB );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Create a SATA controller
   log_info( MSG => "# Example: Create a SATA controller" );
   my $sata_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec();
   log_info( MSG => "# Adding SATA controller for SATA Disk" );
   $sata = $sata_service->create( 'vm' => $vmId, 'spec' => $sata_create_spec );
   log_info( MSG =>
        "vm.hardware.adapter.Sata.create($vmId, $sata_create_spec)->$sata" );

   # Create a new SATA disk
   log_info( MSG => "# Example: Create a new SATA disk" );
   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SATA );
   $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdk_create_spec->set_capacity( 'capacity' => 10 * $GiB );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Create a new SATA disk on a specific bus
   log_info( MSG => "# Example: Create a new SATA disk on a specific bus" );
   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SATA );
   my $sata_address_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec();
   $sata_address_spec->set_bus( 'bus' => 0 );
   $disk_create_spec->set_sata( 'sata' => $sata_address_spec );
   $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdk_create_spec->set_capacity( 'capacity' => 10 * $GiB );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Create a new SCSI Disk on a specific bus and unit number
   log_info( MSG =>
        "# Example: Create a new SCSI Disk on a specific bus and unit number" );
   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SATA );
   $sata_address_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec();
   $sata_address_spec->set_bus( 'bus' => 0 );
   $sata_address_spec->set_unit( 'unit' => 20 );
   $disk_create_spec->set_sata( 'scsi' => $sata_address_spec );
   $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdk_create_spec->set_capacity( 'capacity' => 10 * $GiB );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Create a new IDE disk
   log_info( MSG => "# Example: Create a new IDE disk" );
   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::IDE );
   $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdk_create_spec->set_capacity( 'capacity' => 10 * $GiB );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Create a new IDE disk on a specific bus and specific unit
   log_info( MSG =>
        "# Example: Create a new IDE disk on a specific bus and specific unit"
   );
   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::IDE );
   my $ide_address_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec();
   $ide_address_spec->set_primary( 'primary' => 0 );
   $ide_address_spec->set_master( 'master' => 0 );
   $disk_create_spec->set_ide( 'ide' => $ide_address_spec );
   $vmdk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec();
   $vmdk_create_spec->set_capacity( 'capacity' => 10 * $GiB );
   $disk_create_spec->set_new_vmdk( 'new_vmdk' => $vmdk_create_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info(
      MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)->$disk" );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   print_disk_info($disk_info);

   # Attach an existing VMDK using the default bus and unit
   log_info( MSG =>
        "# Example: Attach an existing VMDK using the default bus and unit" );
   $datastore_path = $datastore_root_path . '/attach-defaults.vmdk';

   delete_vmdk_if_exist(
      'sessionStubConfig' => $stubConfig,
      'stubFactory'       => $stubFactory,
      'datacenter_name'   => $datacenter_name,
      'datastore_name'    => $datastore_name,
      'datastore_path'    => $datastore_path
   );
   Common::Vim::Vmdk::create_vmdk(
      'datacenter_mo' => $datacenter_mo,
      'datastorePath' => $datastore_path
   );

   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   my $disk_backing_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec();
   $disk_backing_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType::VMDK_FILE );
   $disk_backing_spec->set_vmdk_file( 'vmdk_file' => $datastore_path );
   $disk_create_spec->set_backing( 'backing' => $disk_backing_spec );
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::IDE );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info( MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)" );
   log_dumper( MSG => $disk );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   log_dumper( MSG => $disk_info );

   # Attach an existing VMDK as a SCSI disk
   log_info( MSG => "# Example: Attach an existing VMDK as a SCSI disk" );
   $datastore_path = $datastore_root_path . '/attach-scsi.vmdk';

   delete_vmdk_if_exist(
      'sessionStubConfig' => $stubConfig,
      'stubFactory'       => $stubFactory,
      'datacenter_name'   => $datacenter_name,
      'datastore_name'    => $datastore_name,
      'datastore_path'    => $datastore_path
   );
   Common::Vim::Vmdk::create_vmdk(
      'datacenter_mo' => $datacenter_mo,
      'datastorePath' => $datastore_path
   );

   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_backing_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec();
   $disk_backing_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType::VMDK_FILE );
   $disk_backing_spec->set_vmdk_file( 'vmdk_file' => $datastore_path );
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );
   $disk_create_spec->set_backing( 'backing' => $disk_backing_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info( MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)" );
   log_dumper( MSG => $disk );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   log_dumper( MSG => $disk_info );

   # Attach an existing VMDK as a SCSI disk to a specific bus
   log_info( MSG =>
        "# Example: Attach an existing VMDK as a SCSI disk to a specific bus" );
   $datastore_path = $datastore_root_path . '/attach-scsi0.vmdk';
   delete_vmdk_if_exist(
      'sessionStubConfig' => $stubConfig,
      'stubFactory'       => $stubFactory,
      'datacenter_name'   => $datacenter_name,
      'datastore_name'    => $datastore_name,
      'datastore_path'    => $datastore_path
   );
   Common::Vim::Vmdk::create_vmdk(
      'datacenter_mo' => $datacenter_mo,
      'datastorePath' => $datastore_path
   );

   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_backing_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec();
   $disk_backing_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType::VMDK_FILE );
   $disk_backing_spec->set_vmdk_file( 'vmdk_file' => $datastore_path );
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );
   $scsi_address_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec();
   $scsi_address_spec->set_bus( 'bus' => 00 );
   $disk_create_spec->set_scsi( 'scsi' => $scsi_address_spec );
   $disk_create_spec->set_backing( 'backing' => $disk_backing_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info( MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)" );
   log_dumper( MSG => $disk );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   log_dumper( MSG => $disk_info );

   # Attach an existing VMDK as a SCSI disk to a specific bus and specific unit
   log_info( MSG =>
"# Example: Attach an existing VMDK as a SCSI disk to a specific bus and specific unit"
   );
   $datastore_path = $datastore_root_path . '/attach-scsi0:11.vmdk';

   delete_vmdk_if_exist(
      'sessionStubConfig' => $stubConfig,
      'stubFactory'       => $stubFactory,
      'datacenter_name'   => $datacenter_name,
      'datastore_name'    => $datastore_name,
      'datastore_path'    => $datastore_path
   );
   Common::Vim::Vmdk::create_vmdk(
      'datacenter_mo' => $datacenter_mo,
      'datastorePath' => $datastore_path
   );

   $disk_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec();
   $disk_backing_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec();
   $disk_backing_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType::VMDK_FILE );
   $disk_backing_spec->set_vmdk_file( 'vmdk_file' => $datastore_path );
   $disk_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI );
   $scsi_address_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressSpec();
   $scsi_address_spec->set_bus( 'bus' => 00 );
   $scsi_address_spec->set_unit( 'unit' => 11 );
   $disk_create_spec->set_scsi( 'scsi' => $scsi_address_spec );
   $disk_create_spec->set_backing( 'backing' => $disk_backing_spec );
   $disk = $disk_service->create( 'vm' => $vmId, 'spec' => $disk_create_spec );
   log_info( MSG => "vm.hardware.Disk.create($vmId, $disk_create_spec)" );
   log_dumper( MSG => $disk );
   push( @disks_to_delete, $disk );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   log_dumper( MSG => $disk_info );

   # Samples to update operation to change backing
   # Save the disk_info sothat we can delete the VMDK

   $saved_disk_info = $disk_info;
   
   # Change the backing of the last disk to a new VMDK file.
   log_info( MSG =>
        "# Example: Change the backing of the last disk to a new VMDK file." );

   $datastore_path = $datastore_root_path . '/update-scsi0:11.vmdk';

   delete_vmdk_if_exist(
      'sessionStubConfig' => $stubConfig,
      'stubFactory'       => $stubFactory,
      'datacenter_name'   => $datacenter_name,
      'datastore_name'    => $datastore_name,
      'datastore_path'    => $datastore_path
   );
   Common::Vim::Vmdk::create_vmdk(
      'datacenter_mo' => $datacenter_mo,
      'datastorePath' => $datastore_path
   );

   my $disk_update_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec();
   $disk_backing_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec();
   $disk_backing_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType::VMDK_FILE );
   $disk_backing_spec->set_vmdk_file( 'vmdk_file' => $datastore_path );
   $disk_update_spec->set_backing( 'backing' => $disk_backing_spec );
   log_info( MSG => "vm.hardware.Disk.update($vmId, $disk)" );
   log_dumper( MSG => $disk_update_spec );
   $disk_service->update(
      'vm'   => $vmId,
      'disk' => $disk,
      'spec' => $disk_update_spec
   );
   $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
   log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)" );
   log_dumper( MSG => $disk_info );
}

#
# Helper method to delete vmdk file if exist in datastore
#
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter
# @param datastore_path datastore path
#
# @return None
#
sub delete_vmdk_if_exist {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};
   my $datastore_path    = $args{'datastore_path'};
   my $detect_vmdk       = Common::Vim::Vmdk::detect_vmdk(
      'sessionStubConfig' => $sessionStubConfig,
      'stubFactory'       => $stubFactory,
      'datacenterName'    => $datacenter_name,
      'datastoreName'     => $datastore_name,
      'datastorePath'     => $datastore_path,
      'dsRootPath'        => $datastore_root_path
   );
   if ($detect_vmdk) {
      log_info( MSG => "Detected VMDK $datastore_name  $datastore_path" );
      Common::Vim::Vmdk::delete_vmdk(
         'datacenter_mo' => $datacenter_mo,
         'datastorePath' => $datastore_path
      );
      log_info( MSG => "Deleted VMDK $datastore_path" );
   }
}

#
# Helper method to print the disk infomation
#
sub print_disk_info {
   my $disk_info = shift;
   return
       "   { Type: "
     . $disk_info->get_type()
     . ", Label: "
     . $disk_info->get_label()
     . ", Backing: "
     . $disk_info->get_backing()->get_type()
     . ", Capacity: "
     . $disk_info->get_capacity() . " }";
}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {

   # Clean up the saved disk from the update sample
   my $vmdk_file = $saved_disk_info->get_backing()->get_vmdk_file();
   log_info( MSG => "# Cleanup: Delete VMDK $vmdk_file" );
   Common::Vim::Vmdk::delete_vmdk(
      'datacenter_mo' => $datacenter_mo,
      'datastorePath' => $vmdk_file
   );

   # List all Disks for a VM
   my $disk_summaries = $disk_service->list( 'vm' => $vmId );
   log_info( MSG => "vm.hardware.Disk.list($vmId)->"
        . print_disk_summary($disk_summaries) );

   log_info( MSG => "# Cleanup: Delete VM Disks that were added" );
   foreach my $disk (@disks_to_delete) {
      my $disk_info = $disk_service->get( 'vm' => $vmId, 'disk' => $disk );
      log_info( MSG => "vm.hardware.Disk.get($vmId, $disk)->"
           . print_disk_info($disk_info) );
      $vmdk_file = $disk_info->get_backing()->get_vmdk_file();
      $disk_service->delete( 'vm' => $vmId, 'disk' => $disk );
      log_info( MSG => "vm.hardware.Disk.delete($vmId, $disk)" );
      log_info( MSG => "# Cleanup: Delete VMDK $vmdk_file" );
      Common::Vim::Vmdk::delete_vmdk(
         'datacenter_mo' => $datacenter_mo,
         'datastorePath' => $vmdk_file
      );
   }
   log_info( MSG => "# Cleanup: Remove SATA controller" );
   log_info( MSG => "vm.hardware.adapter.Sata.delete($vmId, $sata)" );
   $sata_service->delete( 'vm' => $vmId, 'adapter' => $sata );

   $disk_summaries = $disk_service->list( 'vm' => $vmId );
   log_info( MSG => "vm.hardware.Disk.list($vmId)->"
        . print_disk_summary($disk_summaries) );
   log_info( MSG =>
        "vm.hardware.Disk WARNING: Final Disk info does not match original" )
     if !Compare $orig_disk_summaries, $disk_summaries;
}

#
# Helper method to print the disk summary
#
sub print_disk_summary {
   my $disk_summaries = shift;
   my $temp_array     = "[";
   foreach my $disk_summary (@$disk_summaries) {
      $temp_array = $temp_array . $disk_summary->get_disk() . ", ";
   }
   $temp_array =~ s/, $//;
   return $temp_array . "]";
}

#
# Prints sample usage
#
sub getUsage{
   print "\nUsage:\n";
   print "disk_configuration.pl --server <server> --username <user> --password <password> --vmname <vm name> --datastorerootpath <datastore root path> --datacentername <datacenter name>\n";
   print "                                --datastorename <datastore name> --mgmtnode <management node> --cleanup <true or false> --privatekey <private key> --cert <cert>\n";
   print "Sample Options:\n\n";

   print "  --server                      Hostname of vCenter Server\n";
   print "  --username                    Username to login to vCenter Server\n";
   print "  --password                    Password to login to vCenter Server\n";
   print "  --vmname                      An existing VM name\n";
   print "  --datastorerootpath           Datastore root path i.e. '[datastore1]', '[datastore1]testvm'\n";
   print "  --datacentername              Name of datacenter\n";
   print "  --datastorename               Name of datastore\n";
   print "  --mgmtnode                    It is mandatory parameter if your VC setup has multiple Nodes\n";
   print "                                It can take only Node's host name. IP address is not allowed\n";
   print "  --cleanup                     Cleanup reverts the data updated by the sample run, if cleanup=true\n";
   print "  --privatekey                  OPTIONAL: Private key file\n";
   print "  --cert                        OPTIONAL: vCenter Server's certificate file\n\n";
   print "  --help                        Display this help screen.\n";
   print "This is ONLY FOR THE PURPOSE OF DEVELOPMENT ENVIRONMENT.";
   exit;
}

#
# Demonstrates how to configure disk settings for a VM.
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
