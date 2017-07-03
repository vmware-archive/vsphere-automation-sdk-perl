#!/usr/bin/perl

#
########################################################
# Copyright (c) VMware, Inc. 2017.  All Rights Reserved.
# SPDX-License-Identifier: MIT
########################################################
#
# DISCLAIMER. THIS PROGRAM IS PROVIDED TO YOU "AS IS" WITHOUT
# WARRANTIES OR CONDITIONS # OF ANY KIND, WHETHER ORAL OR WRITTEN,
# EXPRESS OR IMPLIED. THE AUTHOR SPECIFICALLY # DISCLAIMS ANY IMPLIED
# WARRANTIES OR CONDITIONS OF MERCHANTABILITY, SATISFACTORY # QUALITY,
# NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
#

$__author__          = 'VMware, Inc.';
$__copyright__       = 'Copyright 2017 VMware, Inc. All rights reserved.';
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
use Com::Vmware::Vcenter::VM;
use Com::Vmware::Vcenter::Vm::Power;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $sampleBase, $vm_name, $vmId, $stubFactory, $stubConfig,
   $vm_power_service, $vm_service )
  = ();

# Declare the mandatory parameter list
my @required_options =
  ( 'username', 'password', 'server', 'vmname' );

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,       "server=s",     "username=s", "password=s",
      "privatekey:s", "servercert:s", "cert:s",     "vmname:s",
      "mgmtnode:s",   "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password>
                         --privatekey <private key> --cert <cert> --vmname <vm name> --mgmtnode <management node> or --help\n";

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

   $vm_name     = $params{'vmname'};
   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   $vmId = Vcenter::Helpers::VmHelper::getVM(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $stubConfig,
      'vmName'            => $vm_name
   );
   if ( !defined $vmId ) {
      exit(
"Sample requires an existing vm with name $vm_name. Please create the vm first."
      );
   }

   #
   # Get the VM Service
   #
   $vm_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::VM',
      'stub_config'  => $stubConfig
   );

   #
   # Get the VM Power Service
   #
   $vm_power_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Power',
      'stub_config'  => $stubConfig
   );
}

sub run {

   log_info( MSG => "Deleting VM -- " . $vm_name . "-($vmId)" );

   # Get the vm power state
   my $status = $vm_power_service->get( 'vm' => $vmId );

   # Power off the vm if it is on
   if ( $status->get_state() eq
      Com::Vmware::Vcenter::Vm::Power::State::POWERED_ON )
   {
      log_info( MSG => "VM is powered on, power it off" );
      $vm_power_service->stop( 'vm' => $vmId );
   }
   elsif ( $status->get_state() eq
      Com::Vmware::Vcenter::Vm::Power::State::SUSPENDED )
   {
      $vm_power_service->start( 'vm' => $vmId );
      $vm_power_service->stop( 'vm' => $vmId );
   }
   $vm_service->delete( 'vm' => $vmId );
   log_info( MSG => "Deleted VM -- " . $vm_name . "-($vmId)" );
}

#
# Prints sample usage
#
sub getUsage {
   print "\nUsage:\n";
   print "delete_vm.pl --server <server> --username <user> --password <password> --vmname <vm name>\n";
   print "                                --privatekey <private key> --cert <cert> --mgmtnode <management node>\n";
   print "Sample Options:\n\n";

   print "  --server                      Hostname of vCenter Server\n";
   print "  --username                    Username to login to vCenter Server\n";
   print "  --password                    Password to login to vCenter Server\n";
   print "  --vmname                      Existing VM name to delete\n";
   print "  --privatekey                  OPTIONAL: Private key file\n";
   print "  --cert                        OPTIONAL: vCenter Server's certificate file\n";
   print "  --mgmtnode                    It is mandatory parameter if your VC setup has multiple Nodes\n";
   print "                                It can take only Node's host name. IP address is not allowed\n\n";
   print "  --help                        Display this help screen.\n";
   print "This is ONLY FOR THE PURPOSE OF DEVELOPMENT ENVIRONMENT.";
   exit;
}

#
# Demonstrates Deleting User specified Virtual Machine (VM).
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
   log_info( MSG => "#### Done!" );
}

# END
