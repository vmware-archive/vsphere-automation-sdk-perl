
####################################################
# Copyright 2016 VMware, Inc.  All rights reserved.
####################################################
#
# @file PlacementHelper.pm
# The file implements PlacementHelper perl module.
#
# @copy 2016, VMware Inc.
#

#
# @class PlacementHelper
# Helper class with method to get a VM placement spec for a cluster
#
package Vcenter::Helpers::PlacementHelper;

#
# Perl Core Modules
#
use strict;

#
# vApi runtime libraries
#
use Com::Vmware::Vcenter::VM;

# Helper libraries
use Vcenter::Helpers::ClusterHelper;
use Vcenter::Helpers::DatastoreHelper;
use Vcenter::Helpers::FolderHelper;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Returns a VM placement spec for a cluster. Ensures that the
# cluster, resource pool, vm folder and datastore are all in the same
# datacenter which is specified.
#
# Note: The method assumes that there is only one of each resource type
# (i.e. datacenter, resource pool, cluster, folder, datastore) with the
# mentioned names.
#
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter for the placement spec
# @param resourcePoolName name of the resource pool for the placement spec
# @param clusterName name of the cluster for the placement spec
# @param vmFolderName name of the vm folder for the placement spec
# @param datastoreName name of the datastore for the placement spec
# @return a VM placement spec for the specified cluster
#/
sub getPlacementSpecForCluster {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};
   my $clusterName       = $args{'clusterName'};
   my $vmFolderName      = $args{'vmFolderName'};
   my $datastoreName     = $args{'datastoreName'};

   my $clusterId = Vcenter::Helpers::ClusterHelper::getCluster(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName,
      'clusterName'       => $clusterName
   );
   log_info( MSG => "Selecting cluster '"
        . $clusterName
        . "' (id= '"
        . $clusterId
        . "' )" );
   my $vmFolderId = Vcenter::Helpers::FolderHelper::getFolder(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName,
      'vmFolderName'      => $vmFolderName
   );
   log_info( MSG => "Selecting folder '"
        . $vmFolderName
        . "' (id= '"
        . $vmFolderId
        . "' )" );
   my $datastoreId = Vcenter::Helpers::DatastoreHelper::getDatastore(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName,
      'datastoreName'     => $datastoreName
   );
   log_info( MSG => "Selecting datastore '"
        . $datastoreName
        . "' (id= '"
        . $datastoreId
        . "' )" );

   # Create the vm placement spec with the datastore, cluster and vm folder
   my $vmPlacementSpec = new Com::Vmware::Vcenter::VM::PlacementSpec();
   $vmPlacementSpec->set_datastore( 'datastore' => $datastoreId );
   $vmPlacementSpec->set_cluster( 'cluster' => $clusterId );
   $vmPlacementSpec->set_folder( 'folder' => $vmFolderId );
   return $vmPlacementSpec;
}

1;
