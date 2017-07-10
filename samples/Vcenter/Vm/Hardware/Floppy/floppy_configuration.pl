#!/usr/bin/perl

#
##############################################################
# Copyright (c) VMware, Inc. 2017.  All Rights Reserved.
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
$__copyright__ = 'Copyright 2017 VMware, Inc. All rights reserved.';
$__vcenter_version__ = '6.5+';

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
use Common::Vim::Inventory;
use Vcenter::Helpers::VmHelper;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::Vm::Power;
use Com::Vmware::Vcenter::Vm::Hardware::Floppy;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,             $sampleBase,  $vm_name,
   $vmId,               $stubFactory, $stubConfig,
   $img_datastore_path, $floppy,      $floppy_service,
   $vm_power_service,      $orig_floppy_summaries
) = ();

# Declare the mandatory parameter list
my @required_options = (
   'server', 'username',  'password', 'vmname',
   'floppydatastorepath', 'cleanup'
);

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,       "server=s",
      "username=s",   "password=s",
      "privatekey:s", "cert:s",
      "vmname:s",     "floppydatastorepath:s",
      "mgmtnode:s",   "cleanup:s",
      "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password> --vmname <vm name> --floppydatastorepath <floppy datastore path> --mgmtnode <management node>
                     --privatekey <private key> --cert <cert> --cleanup <true or false> or --help\n";

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
      $mandatory_params_list =~ s/, $//;
      print $mandatory_params_list;
      exit;
   }

   $vm_name            = $params{'vmname'};
   $img_datastore_path = $params{'floppydatastorepath'};

   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   #
   # Get the VM power Service
   #
   $vm_power_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Power',
      'stub_config'  => $stubConfig
   );

   #
   # Get the Floppy Service
   #
   $floppy_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Floppy',
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
}

sub run {
   log_info( MSG => "Using VM: " 
        . $vm_name 
        . "(vmId=" 
        . $vmId
        . " ) for floppy configuration sample." );

   log_info( MSG => "# Example: List all Floppys for a VM." );
   my $floppy_summaries = $floppy_service->list( 'vm' => $vmId );
   log_info( MSG => "vm.hardware.Floppy.list($vmId)->" . print_floppy_summary($floppy_summaries) );

   # Save current list of Floppys to verify that we have cleaned up properly
   $orig_floppy_summaries = $floppy_summaries;

   # Get information for each Floppy on the VM
   foreach my $floppy_summary (@$floppy_summaries) {
      $floppy = $floppy_summary->get_floppy();
      my $floppy_info = $floppy_service->get( 'vm' => $vmId, 'floppy' => $floppy );
      log_info( MSG => "vm.hardware.Floppy.get($vmId, $floppy)->" . print_floppy_info($floppy_info) );
   }

   # Maximum 2 Floppy devices allowed so delete them as they are created except
   # for the last one which will be deleted at the end
   log_info( MSG => "# Example: Create Floppy port with defaults" );
   my $floppy_create_spec = new Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec();
   $floppy = $floppy_service->create( 'vm' => $vmId, 'spec' => $floppy_create_spec );
   log_info( MSG => "vm.hardware.Floppy.create($vmId, $floppy_create_spec)->$floppy" );
   my $floppy_info = $floppy_service->get( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.get($vmId, $floppy)->" . print_floppy_info($floppy_info) );
   $floppy_service->delete( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.delete($vmId, $floppy)" );

   log_info( MSG => "# Example: Create Floppy with CLIENT_DEVICE backing" );
   my $floppy_create_spec1 = new Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec();
   my $backing_spec = new Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec();
   $backing_spec->set_type( 'type' => Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType::CLIENT_DEVICE );
   $floppy_create_spec1->set_backing( 'backing' => $backing_spec );
   $floppy = $floppy_service->create( 'vm' => $vmId, 'spec' => $floppy_create_spec1 );
   log_info( MSG => "vm.hardware.Floppy.create($vmId, $floppy_create_spec1)->$floppy" );
   $floppy_info = $floppy_service->get( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.get($vmId, $floppy)->" . print_floppy_info($floppy_info) );
   $floppy_service->delete( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.delete($vmId, $floppy)" );

   log_info( MSG =>
"# Example: Create Floppy with IMAGE_FILE backing, start_connected=True,  allow_guest_control=True"
   );
   my $floppy_create_spec2 = new Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec();
   $floppy_create_spec2->set_allow_guest_control( 'allow_guest_control' => 1 );
   $floppy_create_spec2->set_start_connected( 'start_connected' => 1 );
   $backing_spec->set_type( 'type' => Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType::IMAGE_FILE );
   $backing_spec->set_image_file( 'image_file' => $img_datastore_path );
   $floppy_create_spec2->set_backing( 'backing' => $backing_spec );
   $floppy = $floppy_service->create( 'vm' => $vmId, 'spec' => $floppy_create_spec2 );
   log_info( MSG => "vm.hardware.Floppy.create($vmId, $floppy_create_spec2)->$floppy" );
   $floppy_info = $floppy_service->get( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.get($vmId, $floppy)->" . print_floppy_info($floppy_info) );

   log_info( MSG => "# Example: Update start_connected=False, allow_guest_control=False" );
   my $floppy_update_spec = new Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec();
   $floppy_update_spec->set_start_connected( 'start_connected' => 0 );
   $floppy_update_spec->set_allow_guest_control( 'allow_guest_control' => 0 );
   log_info( MSG => "vm.hardware.Floppy.update($vmId, $floppy)->$floppy_update_spec" );
   $floppy_service->update(
      'vm'     => $vmId,
      'floppy' => $floppy,
      'spec'   => $floppy_update_spec
   );
   $floppy_info = $floppy_service->get( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.get($vmId, $floppy)->" . print_floppy_info($floppy_info) );

   log_info( MSG => "# Starting VM to run connect/disconnect sample" );
   log_info( MSG => "vm.Power.start($vmId)" );
   $vm_power_service->start( 'vm' => $vmId );
   $floppy_info = $floppy_service->get( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.get($vmId, $floppy)->" . print_floppy_info($floppy_info) );

   log_info( MSG => "# Example: Connect Floppy after powering on VM" );
   $floppy_service->connect( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.connect($vmId, $floppy)" );
   $floppy_info = $floppy_service->get( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.get($vmId, $floppy)->" . print_floppy_info($floppy_info) );

   log_info( MSG => "# Example: Disconnect Floppy while VM is powered on" );
   $floppy_service->disconnect( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.disconnect($vmId, $floppy)" );
   $floppy_info = $floppy_service->get( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.get($vmId, $floppy)->" . print_floppy_info($floppy_info) );

   log_info( MSG => "# Stopping VM after connect/disconnect sample" );
   log_info( MSG => "vm.Power.start($vmId)" );
   $vm_power_service->stop( 'vm' => $vmId );
   $floppy_info = $floppy_service->get( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.get($vmId, $floppy)->" . print_floppy_info($floppy_info) );

   # List all Floppys for a VM
   $floppy_summaries = $floppy_service->list( 'vm' => $vmId );
   log_info( MSG => "vm.hardware.Floppy.list($vmId)->" . print_floppy_summary($floppy_summaries) );
}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {
   log_info( MSG => "# Cleanup: Delete VM Floppys that were added" );
   $floppy_service->delete( 'vm' => $vmId, 'floppy' => $floppy );
   log_info( MSG => "vm.hardware.Floppy.delete($vmId, $floppy)" );

   my $floppy_summaries = $floppy_service->list( 'vm' => $vmId );
   log_info( MSG => "vm.hardware.Floppy.list($vmId)->" . print_floppy_summary($floppy_summaries) );
   log_info( MSG =>
        "vm.hardware.Floppy WARNING: Final Floppy info does not match original"
   ) if !Compare $orig_floppy_summaries, $floppy_summaries;
}

#
# Helper method to print the floppy infomation
#
sub print_floppy_info {
   my $floppy_info = shift;
   return
       "  { State: "
     . $floppy_info->get_state()
     . ", Label: "
     . $floppy_info->get_label()
     . ", Backing: "
     . $floppy_info->get_backing()->get_type()
     . ", Allow Guest Control: "
     . $floppy_info->get_allow_guest_control()
     . ", Start Connected: "
     . $floppy_info->get_start_connected() . " }";
}

#
# Helper method to print the floppy summary
#
sub print_floppy_summary {
   my $floppy_summaries = shift;
   my $temp_array       = "[";
   foreach my $floppy_summary (@$floppy_summaries) {
      $temp_array = $temp_array . $floppy_summary->get_floppy() . ", ";
   }
   $temp_array =~ s/, $//;
   return $temp_array . "]";
}

#
# Prints sample usage
#
sub getUsage{
   print "\nUsage:\n";
   print "floppy_configuration.pl --server <server> --username <user> --password <password> --vmname <vm name> --floppydatastorepath <floppy datastore path>\n";
   print "                                --mgmtnode <management node> --cleanup <true or false> --privatekey <private key> --cert <cert>\n";
   print "Sample Options:\n\n";

   print "  --server                      Hostname of vCenter Server\n";
   print "  --username                    Username to login to vCenter Server\n";
   print "  --password                    Password to login to vCenter Server\n";
   print "  --vmname                      An existing VM name\n";
   print "  --floppydatastorepath         Floppy datastore path i.e. '[datastore1]floppy/fdboot.img'\n";
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
# Demonstrates how to configure Floppy settings for a VM.
#
# Sample Prerequisites:
# The sample needs an existing VM and floppy datastore path.
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
