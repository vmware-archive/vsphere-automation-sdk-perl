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
use Vcenter::Helpers::VmHelper;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi;
use Com::Vmware::Vcenter::Vm::Power;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $sampleBase, $vm_name, $vm_id, $stubFactory, $stubConfig,
   $scsi_service, @created_scsi_adapters )
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
"scsi_adapter_configuration.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
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
   # Get the SCSI Service
   #
   $scsi_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi',
      'stub_config'  => $stubConfig
   );

   log_info( MSG => "#### Setup: Get the virtual machine id" );

   $vm_id = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );
}

sub run {

   log_info( MSG =>
"Using VM: ${vm_name} (vm_id=${vm_id}) for SCSI adapter configuration sample."
   );
   list_all_scsi_adapters();

   log_info( MSG => "#### Example: Create SCSI adapter with defaults" );
   my $scsi_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec();
   my $scsi_id =
     $scsi_service->create( 'vm' => $vm_id, 'spec' => $scsi_create_spec );
   my $scsi_info = $scsi_service->get( 'vm' => $vm_id, 'adapter' => $scsi_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   SCSI Adapter ID=" . $scsi_id );
   print_scsi_info($scsi_info);
   push( @created_scsi_adapters, $scsi_id );

   log_info(
      MSG => "#### Create SCSI adapter with specific bus and sharing=true" );
   $scsi_create_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec();
   $scsi_create_spec->set_bus( 'bus' => 2 );
   $scsi_create_spec->set_sharing( 'sharing' =>
        Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing::VIRTUAL );
   $scsi_id =
     $scsi_service->create( 'vm' => $vm_id, 'spec' => $scsi_create_spec );
   $scsi_info = $scsi_service->get( 'vm' => $vm_id, 'adapter' => $scsi_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   SCSI Adapter ID=" . $scsi_id );
   print_scsi_info($scsi_info);
   push( @created_scsi_adapters, $scsi_id );

   log_info( MSG => "#### Update SCSI adapter by setting sharing=false" );
   my $scsi_update_spec =
     new Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::UpdateSpec();
   $scsi_update_spec->set_sharing( 'sharing' =>
        Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing::NONE );
   $scsi_service->update(
      'vm'      => $vm_id,
      'adapter' => $scsi_id,
      'spec'    => $scsi_update_spec
   );
   $scsi_info = $scsi_service->get( 'vm' => $vm_id, 'adapter' => $scsi_id );
   log_info( MSG => "   VM ID=" . $vm_id );
   log_info( MSG => "   SCSI Adapter ID=" . $scsi_id );
   print_scsi_info($scsi_info);

   list_all_scsi_adapters();

}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup {
   log_info(
      MSG => "#### Cleanup: Deleting all the adapters that were created" );
   foreach my $scsi_adapter_id (@created_scsi_adapters) {
      $scsi_service->delete( 'vm' => $vm_id, 'adapter' => $scsi_adapter_id );
   }
   list_all_scsi_adapters();
}

# List all SCSI adapters on the VM
sub list_all_scsi_adapters {
   log_info( MSG => "#### Example: List of all SCSI adapters on the VM." );
   my $scsi_summaries = $scsi_service->list( 'vm' => $vm_id );

   if (scalar(@$scsi_summaries) == 0){
      print "\n\nThere is no more SCSI buses available on virtual machine.";
      exit;
   }
   foreach my $scsi_summary (@$scsi_summaries) {
      my $scsi_id = $scsi_summary->get_adapter();
      my $scsi_info =
        $scsi_service->get( 'vm' => $vm_id, 'adapter' => $scsi_id );
      print_scsi_info($scsi_info);
   }
}

#
# Helper method to print the scsi infomation
#
sub print_scsi_info {
   my $scsi_info = shift;
   log_info( MSG => "   { Type: "
        . $scsi_info->get_type()
        . ", Label: "
        . $scsi_info->get_label()
        . ", sharing: "
        . $scsi_info->get_sharing()
        . " }" );
}

#
# Demonstrates how to configure virtual SCSI adapters of a virtual machine.
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
