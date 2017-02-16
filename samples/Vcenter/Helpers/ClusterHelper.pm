
##########################################################
# Copyright 2016, 2017 VMware, Inc.  All rights reserved.
##########################################################
#
# @file ClusterHelper.pm
# The file implements ClusterHelper perl module.
#
# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @vcenter version: 6.5+

#
# @class ClusterHelper
# Helper class with methods to get identifier of a cluster.
#
package Vcenter::Helpers::ClusterHelper;

#
# Perl Core Modules
#
use strict;

#
# vApi runtime libraries
#
use Com::Vmware::Vcenter::Cluster;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Sample helper modules
#
use Vcenter::Helpers::DatacenterHelper;

#
# Returns the identifier of a cluster
#
# Note: The method assumes that there is only one cluster and datacenter
# with the mentioned names.
#
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter
# @param clusterName name of the cluster
# @return identifier of a cluster
#
sub getCluster {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};
   my $clusterName       = $args{'clusterName'};

   # Get the datacenter
   my $get_datacenter = Vcenter::Helpers::DatacenterHelper::getDatacenter(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName
   );
   my @datacenters = ($get_datacenter);

   # Get the cluster
   my $cluster_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Cluster',
      'stub_config'  => $sessionStubConfig
   );
   my @clusters          = ($clusterName);
   my $clusterFilterSpec = new Com::Vmware::Vcenter::Cluster::FilterSpec();
   $clusterFilterSpec->set_names( 'names' => \@clusters );
   $clusterFilterSpec->set_datacenters( 'datacenters' => \@datacenters );
   my $clusterSummaries =
     $cluster_service->list( 'filter' => $clusterFilterSpec );
   if ( scalar(@$clusterSummaries) == 0 ) {
      log_info( MSG => "Cluster '"
           . $clusterName
           . "' not found in datacenter: '"
           . $datacenterName
           . "'" );
      exit();
   }
   return $clusterSummaries->[0]->get_cluster();
}

1;

