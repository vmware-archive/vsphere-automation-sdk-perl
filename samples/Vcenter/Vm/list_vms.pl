#!/usr/bin/perl

# @author: VMware, Inc.
# @copyright: copyright 2017 VMware, Inc.  All rights reserved.
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

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::VM;
use Com::Vmware::Vcenter::Vm::Power;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my ( %params, $sampleBase, $stubFactory, $stubConfig, $vm_service ) = ();

# Declare the mandatory parameter list
my @required_options = ( 'username', 'password', 'lsurl', 'server' );

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,     "server=s",     "lsurl=s",      "username=s",
      "password=s", "privatekey:s", "servercert:s", "cert:s",
      "mgmtnode:s", "help:s"
     )
     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"list_vms.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert>\n";
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

   # List VMs present in server
   log_info( MSG => "----------------------------" );
   log_info( MSG => "       List Of VMs" );
   log_info( MSG => "----------------------------" );
   my $vm_list  = $vm_service->list();
   my $vm_index = 1;
   foreach my $vm (@$vm_list) {
      log_info( MSG => $vm_index . ". VM Summary" );
      log_info( MSG => "      name: " . $vm->get_name() );
      log_info( MSG => "      power state: " . $vm->get_power_state() );
      log_info( MSG => "      memory size (bytes): " . $vm->get_memory_size_MiB() );
      log_info( MSG => "      id: " . $vm->get_vm() );
      log_info( MSG => "      cpu count: " . $vm->get_cpu_count() );
      $vm_index++;
   }
}

#
# Demonstrates getting list of VMs present in vCenter.
#
# Sample Prerequisites:
# vCenter/ESX
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
