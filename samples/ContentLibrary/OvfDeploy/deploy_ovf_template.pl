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
$__vcenter_version__ = '6.0+';

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
use ContentLibrary::Client::ClsApiClient;
use ContentLibrary::Helpers::ClsApiHelper;

#
# Generated SDK's
#
use Com::Vmware::Cis::Session;
use Com::Vmware::Vcenter::Vm::Hardware::Cdrom;
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata;
use Com::Vmware::Vcenter::Vm::Power;
use Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec;
use Com::Vmware::Vcenter::Vm::Hardware::SataAddressSpec;
use Com::Vmware::Content::SubscribedLibrary;
use Com::Vmware::Vcenter::Ovf::LibraryItem;
use Com::Vmware::Vcenter::Ovf::OvfMessage;
use Com::Vmware::Content::Library::Item::Downloadsession::File;

# Set the logger level
set_verbosity( 'level' => 3 );

# Initialize the global variable
my (
   %params,       $sampleBase,        $vmName,
   $cluster_name, $client,            $stubFactory,
   $stubConfig,   $library_item_name, $vmId,
   $vm_power_service,  $vm_service
) = ();

# Declare the mandatory parameter list
my @required_options = (
   'server',          'username', 'password', 'clustername',
   'libraryitemname', 'cleanup'
);

sub init {

   #
   # User inputs
   #
   GetOptions(
      \%params,            "server=s",
      "username=s",        "password=s",
      "privatekey:s",      "cert:s",
      "clustername:s",     "libraryitemname:s",
      "mgmtnode:s",        "cleanup:s",
      "vmname:s",          "help:s"
     )

     or die
"\nValid options are --server <server> --username <user> --password <password>
                         --privatekey <private key> --cert <cert> --mgmtnode <management node> --clustername <cluster name> --libraryitemname <library item name> --vmname <vm name> --cleanup <true or false> or --help\n";

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

   $cluster_name      = $params{'clustername'};
   $library_item_name = $params{'libraryitemname'};
   $vmName            = $params{'vmname'};
   $sampleBase        = new Common::SampleBase( 'params' => \%params );
   $stubConfig        = $sampleBase->{'stub_config'};
   $stubFactory       = $sampleBase->{'stub_factory'};
}

sub setup {
   $client = new ContentLibrary::Client::ClsApiClient(
      'stub_factory' => $stubFactory,
      'stub_config'  => $stubConfig
   );

   #
   # Get the vm power Service
   #
   $vm_power_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Vm::Power',
      'stub_config'  => $stubConfig
   );

   #
   # Get the VM Service
   #
   $vm_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::VM',
      'stub_config'  => $stubConfig
   );

   # Generate a default VM name if it is not provided
   if ( !defined($vmName) ) {
      $vmName = "VM-" . time();
   }
}

sub run {

   my $cluster_view =
     $sampleBase->get_cluster_view( 'cluster_name' => $cluster_name );
   my $moref = $cluster_view->{'mo_ref'};
   if ($moref) {
      log_info(
         MSG => "Cluster MoRef : " . $moref->{type} . ":" . $moref->{value} );
   }
   my $respool_view  = $sampleBase->get_resourcepool_view();
   my $respool_moref = $respool_view->{'mo_ref'};
   if ($respool_moref) {
      log_info( MSG => "Resource pool MoRef : "
           . $respool_moref->{type} . ":"
           . $respool_moref->{value} );
   }

   # Find the library item by name
   my $findSpec = new Com::Vmware::Content::Library::Item::FindSpec();
   $findSpec->set_name( 'name' => $library_item_name );
   my $itemIds = $client->get_item_service()->find( 'spec' => $findSpec );
   if ( scalar(@$itemIds) == 0 ) {
      log_info( MSG => "Unable to find a library item with name: "
           . $library_item_name );
      exit();
   }
   my $itemId = $itemIds->[0];
   log_info( MSG => "Library item ID : " . $itemId );

   # Deploy a VM from the library item on the given cluster
   log_info( MSG => "Deploying Vm : " . $vmName );

   $vmId = deployVMFromOvfItem(
      'respool_moref' => $respool_moref,
      'vm_name'       => $vmName,
      'item_id'       => $itemId
   );
   if ( !$vmId ) {
      log_info( MSG => "Vm created : " . $vmId );
   }

   # Power on the VM
   $vm_power_service->start( 'vm' => $vmId );
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup() {
   if ( defined($vmId) ) {

      # Powers off a powered-on or suspended virtual machine
      $vm_power_service->stop( 'vm' => $vmId );

      # Delete the VM
      $vm_service->delete( 'vm' => $vmId );
   }
}

# Deploying a VM from the Content Library into a cluster.
#
# @param rootResPoolMoRef managed object reference of the root resource pool
# @param vmName the name of the VM to create
# @param libItemId identifier of the OVF library item to deploy
# @return the identifier of the created VM
#
sub deployVMFromOvfItem {
   my (%args)        = @_;
   my $respool_moref = $args{'respool_moref'};
   my $lib_item_id   = $args{'item_id'};

   # Creating the deployment.
   my $deploymentTarget =
     new Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget();

   # Setting the target resource pool.
   $deploymentTarget->set_resource_pool_id(
      'resource_pool_id' => $respool_moref->{value} );

   # Creating and setting the resource pool deployment spec.
   my $deploymentSpec =
     new Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec();
   $deploymentSpec->set_name( 'name' => $vmName );
   $deploymentSpec->set_accept_all_EULA( 'accept_all_EULA' => 1 );

   # Retrieve the library items OVF information and use it for populating deployment spec.
   my $library_item_service = $client->get_library_item_service();

   my $ovfSummary = $library_item_service->filter(
      'ovf_library_item_id' => $lib_item_id,
      'target'              => $deploymentTarget
   );

   # Setting the annotation retrieved from the OVF summary.
   $deploymentSpec->set_annotation(
      'annotation' => $ovfSummary->get_annotation() );

   # Calling the deploy and getting the deployment result.
   my $uuid = ContentLibrary::Helpers::ClsApiHelper::generate_uuid();

   my $deploymentResult = $library_item_service->deploy(
      'client_token'        => $uuid,
      'ovf_library_item_id' => $lib_item_id,
      'target'              => $deploymentTarget,
      'deployment_spec'     => $deploymentSpec
   );
   if ( $deploymentResult->get_succeeded() ) {
      return $deploymentResult->get_resource_id()->get_id();
   }
   else {
      log_info( MSG => $deploymentResult->get_error() );
   }
}

#
# Prints sample usage
#
sub getUsage{
   print "\nUsage:\n";
   print "deploy_ovf_template.pl --server <server> --username <user> --password <password> --mgmtnode <management node> --clustername <cluster name>\n";
   print "                                --libraryitemname <library item name> --vmname<vm name> --privatekey <private key> --cert <cert> --cleanup <true or false>\n";
   print "Sample Options:\n\n";

   print "  --server                      Hostname of vCenter Server\n";
   print "  --username                    Username to login to vCenter Server\n";
   print "  --password                    Password to login to vCenter Server\n";
   print "  --mgmtnode                    It is mandatory parameter if your VC setup has multiple Nodes\n";
   print "                                It can take only Node's host name. IP address is not allowed\n";
   print "  --clustername                 The name of cluster to be used\n";
   print "  --libraryitemname             The name of the library item to deploy. The library item should contain an OVF package.\n";
   print "  --vmname                      The name of VM\n";
   print "  --privatekey                  OPTIONAL: Private key file\n";
   print "  --cert                        OPTIONAL: vCenter Server's certificate file\n\n";
   print "  --cleanup                     Cleanup reverts the data updated by the sample run, if cleanup=true\n";
   print "  --help                        Display this help screen.\n";
   print "This is ONLY FOR THE PURPOSE OF DEVELOPMENT ENVIRONMENT.";
   exit;
}

#
# Demonstrates the workflow to deploy an OVF library item to a resource pool.
#
# Note: "the sample needs an existing OVF library item and an existing cluster
# with resources for creating the VM."
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
