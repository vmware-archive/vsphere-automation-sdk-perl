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

$__author__ = 'TODO: <your name and email>';
$__vcenter_version__ = 'TODO: <compatible vcenter versions>';

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
use Com::Vmware::Vcenter::Vm::Power;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $sampleBase, $stubFactory, $stubConfig, $vm_service, $vm_name ) = ();

# Declare the mandatory parameter list
my @required_options = ( 'server', 'username', 'password', 'cleanup' );

sub init {

   #
   # Add your custom input arguments
   #
   GetOptions(
      \%params,     "server=s",     "username=s",
      "password=s", "privatekey:s", "servercert:s", "cert:s",
      "mgmtnode:s", "vmname:s",     "cleanup:s", "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --vmname <vm name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      getUsage();
   }

   # Prints missing mandatory parameter's list to execute the sample, if any
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

   $vm_name = $params{'vmname'};

   # Set the default VM name
   if (! $vm_name) {
      $vm_name = 'Sample_Default_VM_for_Simple_Testbed';
   }

   # Parse the arguments required by the sample and login to the server
   $sampleBase  = new Common::SampleBase( 'params' => \%params );
   $stubConfig  = $sampleBase->{'stub_config'};
   $stubFactory = $sampleBase->{'stub_factory'};
}

sub setup {

   # Get the VM Service
   $vm_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::VM',
      'stub_config'  => $stubConfig
   );
}

sub run {

   # TODO: Add your sample code here

   # Listing VMs using filter
   log_info( MSG => "----------------------------" );
   log_info( MSG => "    Listing VMs using filter" );
   log_info( MSG => "----------------------------" );
   my $filter_spec = new Com::Vmware::Vcenter::VM::FilterSpec();
   $filter_spec->set_names('names' => [$vm_name]);
   my $vm_list  = $vm_service->list('filter' => $filter_spec);

   foreach my $vm (@$vm_list) {
      log_info( MSG => "VM Summary" );
      log_info( MSG => "   name: " . $vm->get_name() );
      log_info( MSG => "   power state: " . $vm->get_power_state() );
      log_info( MSG => "   memory size (bytes): " . $vm->get_memory_size_MiB() );
      log_info( MSG => "   id: " . $vm->get_vm() );
      log_info( MSG => "   cpu count: " . $vm->get_cpu_count() );
   }
}

#
# Cleanup revert the data updated by the sample run, if cleanup=true
#
sub cleanup() {
   # TODO: Add cleanup here
}

#
# Prints sample usage
#
sub getUsage{
   print "\nUsage:\n";
   print "sample_template.pl --server <server> --username <user> --password <password> --vmname <vm name> \n";
   print "                                --privatekey <private key> --cert <cert>\n";
   print "Sample Options:\n\n";
   # TODO: Add Sample Options with description
   print "  --server                      Hostname of vCenter Server\n";
   print "  --username                    Username to login to vCenter Server\n";
   print "  --password                    Password to login to vCenter Server\n";
   print "  --privatekey                  OPTIONAL: Private key file\n";
   print "  --cert                        OPTIONAL: vCenter Server's certificate file\n";
   print "  --vmname                      OPTIONAL: Name of testing VM. default vmname is 'Sample_Default_VM_for_Simple_Testbed'\n";
   print "  --cleanup                     It reverts the data updated by the sample run, if cleanup=true\n";
   print "  --help                        Display this help screen.\n";
   print "This is ONLY FOR THE PURPOSE OF DEVELOPMENT ENVIRONMENT.";
   exit;
}

#
# TODO: Sample description and prerequisites.
#
# e.g. Demonstrates getting list of VMs present in vCenter
# Sample Prerequisites:
# - vCenter
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
