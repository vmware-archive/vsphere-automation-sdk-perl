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
use Com::Vmware::Vcenter::Vm::Hardware::Cdrom;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata;
use Com::Vmware::Vcenter::Vm::Power;
use Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec;
use Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,       $sampleBase, $vm_name,        $vm_id,
   $stubFactory,  $stubConfig, $cdrom_service,  $power_service,
   $sata_service, $sata_id,    @created_cdroms, $iso_datastore_path
) = ();

# Declare the mandatory parameter list
my @required_options = (
   'username', 'password',         'lsurl', 'server',
   'vmname',   'isodatastorepath', 'cleanup'
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
      "vmname:s",  "isodatastorepath:s", "mgmtnode:s",
      "cleanup:s", "help:s"
     )

     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --isodatastorepath <ios datastore path> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"cdrom_configuration.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --isodatastorepath <iso datastore path> --cleanup <true or false>\n";
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

   $vm_name            = $params{'vmname'};
   $iso_datastore_path = $params{'isodatastorepath'};
   $sampleBase         = new Common::SampleBase( 'params' => \%params );
   $stubConfig         = $sampleBase->{'stub_config'};
   $stubFactory        = $sampleBase->{'stub_factory'};
}

sub setup {

   #
   # Get the Cdrom Service
   #
   $cdrom_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom',
      'stub_config'  => $stubConfig
   );

   #
   # Get the Power Service
   #
   $power_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Power',
      'stub_config'  => $stubConfig
   );

   log_info( MSG => "Got the Power Service" );

   #
   # Get the Sata Service
   #
   $sata_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata',
      'stub_config'  => $stubConfig
   );

   log_info( MSG => "Got the Sata Service" );

   log_info( MSG => "#### Setup: Get the virtual machine id" );

   $vm_id = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );

   log_info( MSG =>
"   Using VM = $vm_name (vm_id = ${vm_id}) for the CD-ROM configuration sample."
   );

   log_info( MSG => "#### Setup: Create SATA controller" );
   my $sata_create_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec->new();
   $sata_id =
     $sata_service->create( 'vm' => $vm_id, 'spec' => $sata_create_spec );
   log_info( MSG => "   Sata ID:${sata_id}" );
}

sub run {
   log_info( MSG => "### Example: List all CD-ROMs" );
   list_all_cdroms();

   log_info( MSG => "### Example: Create CD-ROM with ISO_FILE backing" );
   create_cdrom( Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::ISO_FILE
   );

   log_info( MSG => "### Example: Create CD-ROM with CLIENT_DEVICE backing" );
   create_cdrom( Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::CLIENT_DEVICE
   );

   log_info(
      MSG => "### Example: Create SATA CD-ROM with CLIENT_DEVICE backing" );
   create_cdrom_for_adapter_type(
      Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType::SATA,
      Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::CLIENT_DEVICE
   );

   log_info( MSG =>
"### Example: Create SATA CD-ROM on specific bus with CLIENT_DEVICE backing"
   );
   create_sata_cdrom_at_specific_location(
      Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::CLIENT_DEVICE,
      0, undef );

   log_info( MSG =>
"### Example: Create SATA CD-ROM on specific bus and unit number with CLIENT_DEVICE backing"
   );
   create_sata_cdrom_at_specific_location(
      Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::CLIENT_DEVICE,
      0, 10 );

   log_info(
      MSG => "### Example: Create IDE CD-ROM with CLIENT_DEVICE backing" );
   create_cdrom_for_adapter_type(
      Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType::IDE,
      Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::CLIENT_DEVICE
   );

   log_info( MSG =>
"### Example: Create IDE CD-ROM as a slave device with HOST_DEVICE backing"
   );
   create_ide_cdrom_as_specific_device( Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::HOST_DEVICE,
      0 );

   # Change the last CD-ROM that was created
   my $last_cdrom_id = $created_cdroms[-1];

   log_info( MSG =>
"#### Example: Update backing from CLIENT_DEVICE to ISO_FILE for the last created CD-ROM"
   );
   my $backing_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec->new( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::ISO_FILE );
   my $cdrom_update_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec->new();
   $cdrom_update_spec->set_backing( 'backing' => $backing_spec );
   $cdrom_update_spec->get_backing->set_iso_file(
      'iso_file' => $iso_datastore_path );
   $cdrom_service->update(
      'vm'    => $vm_id,
      'cdrom' => $last_cdrom_id,
      'spec'  => $cdrom_update_spec
   );
   my $cdrom_info =
     $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $last_cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $last_cdrom_id );
   print_cdrom_info($cdrom_info);

   log_info( MSG =>
"#### Example: Update startConnected and allowGuestControl to false for the last created cdrom"
   );
   $cdrom_update_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec->new();
   $cdrom_update_spec->set_allow_guest_control( 'allow_guest_control' => 0 );
   $cdrom_update_spec->set_start_connected( 'start_connected' => 0 );
   $cdrom_service->update(
      'vm'    => $vm_id,
      'cdrom' => $last_cdrom_id,
      'spec'  => $cdrom_update_spec
   );
   $cdrom_info =
     $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $last_cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $last_cdrom_id );
   print_cdrom_info($cdrom_info);

   log_info( MSG => "#### Power on VM to run connect/disconnect sample" );
   $power_service->start( 'vm' => $vm_id );
   $cdrom_info =
     $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $last_cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $last_cdrom_id );
   print_cdrom_info($cdrom_info);

   log_info( MSG => "#### Example: Connect CD-ROM after powering on VM" );
   $cdrom_service->connect( 'vm' => $vm_id, 'cdrom' => $last_cdrom_id );
   $cdrom_info =
     $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $last_cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $last_cdrom_id );
   print_cdrom_info($cdrom_info);

   log_info( MSG => "#### Example: Disconnect cdrom while VM is powered on" );
   $cdrom_service->disconnect( 'vm' => $vm_id, 'cdrom' => $last_cdrom_id );
   $cdrom_info =
     $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $last_cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $last_cdrom_id );
   print_cdrom_info($cdrom_info);

   log_info( MSG => "#### Power off the VM after the connect/disconnect" );
   $power_service->stop( 'vm' => $vm_id );
   $cdrom_info =
     $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $last_cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $last_cdrom_id );
   print_cdrom_info($cdrom_info);

   log_info( MSG => "#### List all the CD-ROMs" );
   list_all_cdroms();
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup {
   my $power_info = $power_service->get( 'vm' => $vm_id );
   if ( $power_info->get_state eq
      Com::Vmware::Vcenter::Vm::Power::State::POWERED_ON )
   {
      log_info( MSG => "#### Cleanup: Powering off the VM" );
      $power_service->stop( 'vm' => $vm_id );
   }
   if ( defined $sata_id ) {
      log_info( MSG => "#### Cleanup: Deleting the SATA controller" );
      $sata_service->delete( 'vm' => $vm_id, 'adapter' => $sata_id );
   }
   log_info( MSG => "#### Cleanup: Deleting all the created CD-ROMs" );

   foreach my $cdrom_id (@created_cdroms) {
      $cdrom_service->delete( 'vm' => $vm_id, 'cdrom' => $cdrom_id );
   }
   list_all_cdroms();
}

# print all details of cdroms in list
sub list_all_cdroms {
   my $cdrom_summaries = $cdrom_service->list( 'vm' => $vm_id );
   foreach my $cdrom_summary (@$cdrom_summaries) {
      my $cdrom_id = $cdrom_summary->get_cdrom();
      my $cdrom_info =
        $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $cdrom_id );
      print_cdrom_info($cdrom_info);
   }
}

# Creates a CD-ROM device with the specified backing type
sub create_cdrom {
   my ($backing_type) = @_;
   my $backing_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec->new(
      'type' => $backing_type );
   my $cdrom_create_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec->new();
   $cdrom_create_spec->set_backing( 'backing' => $backing_spec );
   $cdrom_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType::IDE );
   if ( $backing_type eq
      Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::ISO_FILE )
   {
      $cdrom_create_spec->get_backing->set_iso_file(
         'iso_file' => $iso_datastore_path );
   }
   my $cdrom_id =
     $cdrom_service->create( 'vm' => $vm_id, 'spec' => $cdrom_create_spec );
   push( @created_cdroms, $cdrom_id );
   my $cdrom_info = $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $cdrom_id );
   print_cdrom_info($cdrom_info);
}

# Creates a CD-ROM device for the specified host bus adapter type and backing type.
sub create_cdrom_for_adapter_type {
   my ( $host_bus_adapter_type, $backing_type ) = @_;
   my $backing_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec->new(
      'type' => $backing_type );
   my $cdrom_create_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec->new();
   $cdrom_create_spec->set_backing( 'backing' => $backing_spec );
   $cdrom_create_spec->set_type( 'type' => $host_bus_adapter_type );
   my $cdrom_id =
     $cdrom_service->create( 'vm' => $vm_id, 'spec' => $cdrom_create_spec );
   push( @created_cdroms, $cdrom_id );
   my $cdrom_info = $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $cdrom_id );
   print_cdrom_info($cdrom_info);
}

# Creates an IDE CD-ROM as either a master or a slave device with the specified backing type.
sub create_ide_cdrom_as_specific_device {
   my ( $backing_type, $is_master ) = @_;
   my $backing_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec->new(
      'type' => $backing_type );
   my $cdrom_create_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec->new();
   $cdrom_create_spec->set_backing( 'backing' => $backing_spec );
   $cdrom_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType::IDE );
   my $ide_address_spec =
     Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec->new();
   $ide_address_spec->set_master( 'master' => $is_master );
   $cdrom_create_spec->set_ide( 'ide' => $ide_address_spec );
   my $cdrom_id =
     $cdrom_service->create( 'vm' => $vm_id, 'spec' => $cdrom_create_spec );
   push( @created_cdroms, $cdrom_id );
   my $cdrom_info = $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $cdrom_id );
   print_cdrom_info($cdrom_info);
}

# Creates a SATA CD-ROM on a specific bus/unit number with the specified
sub create_sata_cdrom_at_specific_location {
   my ( $backing_type, $bus, $unit ) = @_;
   my $backing_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec->new(
      'type' => $backing_type );
   my $cdrom_create_spec =
     Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec->new();
   $cdrom_create_spec->set_backing( 'backing' => $backing_spec );
   $cdrom_create_spec->set_type( 'type' =>
        Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType::SATA );
   my $sata_address_spec;

   unless ( defined $unit ) {
      $sata_address_spec =
        Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec->new(
         'bus' => $bus );
   }
   else {
      $sata_address_spec =
        Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec->new(
         'bus'  => $bus,
         'unit' => $unit
        );
   }
   $cdrom_create_spec->set_sata( 'sata' => $sata_address_spec );
   my $cdrom_id =
     $cdrom_service->create( 'vm' => $vm_id, 'spec' => $cdrom_create_spec );
   my $cdrom_info = $cdrom_service->get( 'vm' => $vm_id, 'cdrom' => $cdrom_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   CD-ROM ID=" . $cdrom_id );
   print_cdrom_info($cdrom_info);
   push( @created_cdroms, $cdrom_id );
}

#
# Helper method to print the cdrom infomation
#
sub print_cdrom_info {
   my $cdrom_info = shift;
   log_info( MSG => "   { Type: "
        . $cdrom_info->get_type()
        . ", Label: "
        . $cdrom_info->get_label()
        . ", Backing: "
        . $cdrom_info->get_backing()->get_type()
        . ", State: "
        . $cdrom_info->get_state()
        . ", Start_Connected: "
        . $cdrom_info->get_start_connected()
        . ", Allow_Guest_Control: "
        . $cdrom_info->get_allow_guest_control()
        . " }" );
}

#
# Demonstrates how to configure a CD-ROM device for a VM.
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
