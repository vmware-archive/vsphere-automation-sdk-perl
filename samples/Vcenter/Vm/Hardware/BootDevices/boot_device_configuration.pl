#!/usr/bin/perl

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
use Com::Vmware::Vcenter::Vm::Hardware;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata;
use Com::Vmware::Vcenter::Vm::Hardware::Boot;
use Com::Vmware::Vcenter::Vm::Hardware::Boot::Device;
use Com::Vmware::Vcenter::Vm::Hardware::Cdrom;
use Com::Vmware::Vcenter::Vm::Hardware::Cpu;
use Com::Vmware::Vcenter::Vm::Hardware::Disk;
use Com::Vmware::Vcenter::Vm::Hardware::Ethernet;
use Com::Vmware::Vcenter::Vm::Hardware::Floppy;
use Com::Vmware::Vcenter::Vm::Hardware::Memory;
use Com::Vmware::Vcenter::Vm::Power;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,              $sampleBase,
   $vm_name,             $vmId,
   $stubFactory,         $stubConfig,
   $vm_service,          $boot_service,
   $boot_device_service, $disk_service,
   $ethernet_service,    @originalBootDeviceEntries
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
"boot_device_configuration.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
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
   # Get the Disk Service
   #
   $disk_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk',
      'stub_config'  => $stubConfig
   );

   #
   # Get the Ethernet Service
   #
   $ethernet_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet',
      'stub_config'  => $stubConfig
   );

   #
   # Get the Boot Device Service
   #
   $boot_device_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot::Device',
      'stub_config'  => $stubConfig
   );

   #
   # Get the VM Service
   #
   $vm_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::VM',
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
      MSG => "Using VM: " . $vm_name
        . "(vmId=" . $vmId . " ) for boot device configuration sample."
   );

   # Print the current boot configuration
   log_info( MSG =>
        "\n\n####Validate whether the vm has required minimum number of devices"
   );
   my $vmInfo = $vm_service->get( 'vm' => $vmId );
   if (  scalar( $vmInfo->get_cdroms() ) < 1
      || scalar( $vmInfo->get_floppies() ) < 1
      || scalar( $vmInfo->get_disks() ) < 3
      || scalar( $vmInfo->get_nics() ) < 1 )
   {
      log_info( MSG =>
"\nSelected VM does not have the required minimum number of devices: i.e. 1 Ethernet adapter, 1 CD-ROM, 1 Floppy drive, 3 disks"
      );
      exit();
   }

   log_info(
      MSG => "\n\n#### Example: Print the current boot device configuration" );
   my $bootDeviceEntries = $boot_device_service->get( 'vm' => $vmId );
   &print_boot_device_entries( 'boot_device_entries' => $bootDeviceEntries );

   # Save the current boot info to verify that we have cleaned up properly
   @originalBootDeviceEntries = @$bootDeviceEntries;
   log_info( MSG =>
"\n\n#### Example: Set boot order to be Floppy, Disk1, Disk2, Disk3, Ethernet NIC, CD-ROM"
   );

   # Get device identifiers for disks
   my $diskSummaries = $disk_service->list( 'vm' => $vmId );
   log_info( MSG => "\n\n#### List of disks attached to vm: " );
   my $disk_index = 1;
   foreach my $diskSummary (@$diskSummaries) {
      log_info( MSG => $disk_index . " disk: " . $diskSummary->get_disk() );
      $disk_index++;
   }
   my @diskIds = ();
   foreach my $diskSummary (@$diskSummaries) {
      push( @diskIds, $diskSummary->get_disk() );
   }

   # Get device identifiers for ethernet nics
   my $ethernetSummaries = $ethernet_service->list( 'vm' => $vmId );
   log_info( MSG => "\n\n#### List of ethernet nics attached to vm: " );
   my $ethernet_index = 1;
   foreach my $ethernetSummary (@$ethernetSummaries) {
      log_info(
         MSG => $ethernet_index . " nic: " . $ethernetSummary->get_nic() );
      $ethernet_index++;
   }
   my @ethernetIds = ();
   foreach my $ethernetSummary (@$ethernetSummaries) {
      push( @ethernetIds, $ethernetSummary->get_nic() );
   }

   my $deviceEntryFloppy =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry();
   $deviceEntryFloppy->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::FLOPPY );
   my $deviceEntryDisk =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry();
   $deviceEntryDisk->set_type(
      'type' => Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::DISK );
   $deviceEntryDisk->set_disks( 'disks' => \@diskIds );
   my $deviceEntryEthernet =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry();
   $deviceEntryEthernet->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::ETHERNET );
   $deviceEntryEthernet->set_nic( 'nic' => $ethernetIds[0] );
   my $deviceEntryCDROM =
     new Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry();
   $deviceEntryCDROM->set_type(
      'type' => Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::CDROM );
   my @devices = (
      $deviceEntryFloppy,   $deviceEntryDisk,
      $deviceEntryEthernet, $deviceEntryCDROM
   );
   $boot_device_service->set( 'vm' => $vmId, 'devices' => \@devices );

   $bootDeviceEntries = $boot_device_service->get( 'vm' => $vmId );
   log_info( MSG => "\n\n#### New boot device configuration" );
   &print_boot_device_entries( 'boot_device_entries' => $bootDeviceEntries );

}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {
   log_info( MSG => "\n\n#### Cleanup: Revert boot device configuration" );
   $boot_device_service->set(
      'vm'      => $vmId,
      'devices' => \@originalBootDeviceEntries
   );
   my $bootDeviceEntries = $boot_device_service->get( 'vm' => $vmId );
   print_boot_device_entries( 'boot_device_entries' => $bootDeviceEntries );
}

#
# Helper method to print the boot device entries
#
sub print_boot_device_entries {
   my (%args)            = @_;
   my $bootDeviceEntries = $args{'boot_device_entries'};
   my $boot_index        = 1;
   foreach my $bootDeviceEntry (@$bootDeviceEntries) {
      log_info(
         MSG => $boot_index . ". Type: " . $bootDeviceEntry->get_type() );
      if ( defined( $bootDeviceEntry->get_nic() ) ) {
         log_info( MSG => "   NIC: " . $bootDeviceEntry->get_nic() );
      }
      if ( defined( $bootDeviceEntry->get_disks() ) ) {
         log_info( MSG => "   Disks: " );
         my $disk_index = 1;
         my $disks      = $bootDeviceEntry->get_disks();
         foreach my $disk (@$disks) {
            log_info( MSG => "   " . $disk_index . ". " . $disk );
            $disk_index++;
         }
      }
      $boot_index++;
   }
}

#
# Demonstrates how to modify the boot devices used by a virtual machine, and in what order they are tried.
#
# Sample Prerequisites:
# The sample needs an existing VM with the following minimum number of devices:
# - 1 Ethernet adapter
# - 1 CD-ROM
# - 1 Floppy drive
# - 3 Disks
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
