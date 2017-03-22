#!/usr/bin/perl

# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @SODX-License-Identifier: MIT
# @vcenter version: 6.0+

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

#
# Perl CPAN Modules
#
use UUID::Random;

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
   %params,  $sampleBase,  $vmName,     $cluster_name,
   $client,  $stubFactory, $stubConfig, $library_item_name,
   $vmMoRef, $vm_views
) = ();

# Declare the mandatory parameter list
my @required_options = (
   'username',    'password',        'lsurl', 'server',
   'clustername', 'libraryitemname', 'cleanup'
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
      "clustername:s", "libraryitemname:s", "mgmtnode:s",
      "cleanup:s",     "help:s"
     )

     or die
"\nValid options are --server <server> --username <user> --password <password> --lsurl <lookup service url>
                         --privatekey <private key> --servercert <server cert> --cert <cert> --clustername <cluster name> --libraryitemname <library item name> --cleanup <true or false> or --help\n";

   if ( defined( $params{'help'} ) ) {
      print "\nCommand to execute sample:\n";
      print
"deploy_ovf_template.pl --server <server> --username <user> --password <password> --lsurl <lookup service url> \n";
      print
"               --privatekey <private key> --servercert <server cert> --cert <cert> --clustername <cluster name> --libraryitemname <library item name> --cleanup <true or false>\n";
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

   $cluster_name      = $params{'clustername'};
   $library_item_name = $params{'libraryitemname'};
   $sampleBase        = new Common::SampleBase( 'params' => \%params );
   $stubConfig        = $sampleBase->{'stub_config'};
   $stubFactory       = $sampleBase->{'stub_factory'};
}

sub setup {
   $client = new ContentLibrary::Client::ClsApiClient(
      'stub_factory' => $stubFactory,
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

   my $vmId = deployVMFromOvfItem(
      'respool_moref' => $respool_moref,
      'vm_name'       => $vmName,
      'item_id'       => $itemId
   );
   if ( !$vmId ) {
      log_info( MSG => "Vm created : " . $vmId );
   }

   # Power on the VM and wait for the power on operation to complete
   $vmMoRef = ManagedObjectReference->new(
      type  => 'VirtualMachine',
      value => $vmId
   );
   $vm_views = Vim::find_entity_views(
      view_type => 'VirtualMachine',
      filter    => { 'config.name' => $vmName }
   );
   &poweron_vm();
}

#
# Cleanup any data created by the sample run, if cleanup=true
#
sub cleanup() {
   if ( defined($vmMoRef) ) {

      # Power off the VM and wait for the power off operation to complete
      &poweroff_vm();

      # Delete the VM
      &vmdelete();
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
   use Data::UUID;
   my $uuid = Data::UUID->new();

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

# This is required to delete the VM
sub vmdelete() {
   if ( !@$vm_views ) {
      Util::trace( 0,
         "\nThere is no virtual machine with name '$vmName' registered\n" );
      return;
   }
   foreach (@$vm_views) {
      my $mor_host = $_->runtime->host;
      my $hostname = Vim::get_view( mo_ref => $mor_host )->name;
      eval {
         $_->Destroy();
         Util::trace( 0,
                "\nDeletion of VM '$vmName' successfully"
              . " completed under host $hostname." );
      };
      if ($@) {
         if ( ref($@) eq 'SoapFault' ) {
            if ( ref( $@->detail ) eq 'InvalidPowerState' ) {
               Util::trace( 0,
                      "\nVM '$vmName' under host $hostname must be powered off"
                    . " for this operation\n" );
            }
            elsif ( ref( $@->detail ) eq 'HostNotConnected' ) {
               Util::trace( 0,
                      "\nUnable to communicate with the remote host,"
                    . " since it is disconnected\n" );
            }
            else {
               Util::trace( 0, "\nFault: " . $@ . "\n" );
            }
         }
         else {
            Util::trace( 0, "\nFault: " . $@ . "\n" );
         }
      }
   }
}

sub poweron_vm {
   foreach (@$vm_views) {
      my $mor_host = $_->runtime->host;
      my $hostname = Vim::get_view( mo_ref => $mor_host )->name;
      eval {
         $_->PowerOnVM();
         Util::trace( 0,
                "\nvirtual machine '"
              . $_->name
              . "' under host $hostname powered on." );
      };
      if ($@) {
         if ( ref($@) eq 'SoapFault' ) {
            Util::trace( 0,
               "\nError in '" . $_->name . "' under host $hostname: " );
            if ( ref( $@->detail ) eq 'NotSupported' ) {
               Util::trace( 0, "Virtual machine is marked as a template " );
            }
            elsif ( ref( $@->detail ) eq 'InvalidPowerState' ) {
               Util::trace( 0,
                      "The attempted operation"
                    . " cannot be performed in the current state" );
            }
            elsif ( ref( $@->detail ) eq 'InvalidState' ) {
               Util::trace( 0,
                      "Current State of the "
                    . " virtual machine is not supported for this operation" );
            }
            else {
               Util::trace( 0,
                  "VM '" . $_->name . "' can't be powered on \n" . $@ . "" );
            }
         }
         else {
            Util::trace( 0,
               "VM '" . $_->name . "' can't be powered on \n" . $@ . "" );
         }
      }
   }
}

sub poweroff_vm {
   foreach (@$vm_views) {
      my $mor_host = $_->runtime->host;
      my $hostname = Vim::get_view( mo_ref => $mor_host )->name;
      eval {
         $_->PowerOffVM();
         Util::trace( 0,
                "\nvirtual machine '"
              . $_->name
              . "' under host $hostname powered off. " );
      };

      if ($@) {
         if ( ref($@) eq 'SoapFault' ) {
            Util::trace( 0,
               "\nError in '" . $_->name . "' under host $hostname: " );
            if ( ref( $@->detail ) eq 'InvalidPowerState' ) {
               Util::trace( 0,
                      "The attempted operation"
                    . " cannot be performed in the current state" );
            }
            elsif ( ref( $@->detail ) eq 'InvalidState' ) {
               Util::trace( 0,
                      "Current State of the"
                    . " virtual machine is not supported for this operation" );
            }
            elsif ( ref( $@->detail ) eq 'NotSupported' ) {
               Util::trace( 0, "Virtual machine is marked as template" );
            }
            else {
               Util::trace( 0,
                  "VM '" . $_->name . "' can't be powered off \n" . $@ . "" );
            }
         }
         else {
            Util::trace( 0,
               "VM '" . $_->name . "' can't be powered off \n" . $@ . "" );
         }
      }
   }
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
