
##########################################################
# Copyright 2016, 2017 VMware, Inc.  All rights reserved.
# SODX-License-Identifier: MIT
##########################################################
#
# @file NetworkHelper.pm
# The file implements NetworkHelper perl module.
#
# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @vcenter version: 6.5+

#
# @class NetworkHelper
# Helper class with methods to get identifiers of standard or
# a distributed network.
#
package Vcenter::Helpers::NetworkHelper;

#
# Perl Core Modules
#
use strict;

#
# VMware Lookup and SSO libraries
#
use VMware::SSOConnection;
use VMware::LookupService;
use VMware::VIRuntime;

#
# vApi runtime libraries
#
use Com::Vmware::Vcenter::Network;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Sample helper modules
#
use Vcenter::Helpers::DatacenterHelper;

#
# Returns the identifier of a standard network.
#
# Note: The method assumes that there is only one standard portgroup
# and datacenter with the mentioned names.
#
# @param stubFactory stub factory of the API endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter on which the network exists
# @param stdPortgroupName name of the standard portgroup
# @return identifier of a standard network.
#
sub getStandardNetworkBacking {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};
   my $stdPortgroupName  = $args{'stdPortgroupName'};

   # Get the datacenter
   my $get_datacenter = Vcenter::Helpers::DatacenterHelper::getDatacenter(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName
   );
   my @datacenters = ($get_datacenter);

   # Get the network
   my $network_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Network',
      'stub_config'  => $sessionStubConfig
   );

   # Get the network id
   my @networkNames      = ($stdPortgroupName);
   my $networkFilterSpec = new Com::Vmware::Vcenter::Network::FilterSpec();
   $networkFilterSpec->set_names( 'names' => \@networkNames );
   $networkFilterSpec->set_datacenters( 'datacenters' => \@datacenters );
   my @networkTypes = (Com::Vmware::Vcenter::Network::Type::STANDARD_PORTGROUP);
   $networkFilterSpec->set_types( 'types' => \@networkTypes );
   my $networkSummaries =
     $network_service->list( 'filter' => $networkFilterSpec );

   if ( scalar(@$networkSummaries) == 0 ) {
      log_info( MSG => "Standard Portgroup with name '"
           . $stdPortgroupName
           . "' not found in datacenter: '"
           . $datacenterName
           . "'" );
      exit();
   }
   return $networkSummaries->[0]->get_network();
}

#
# Returns the identifier of a distributed network
#
# Note: The method assumes that there is only one distributed portgroup
# and datacenter with the mentioned names.
#
# @param stubFactory stub factory of the API endpoint
# @param sessionStubConfig stub configuration for the session
# @param datacenterName name of the datacenter on which the distributed
# network exists
# @param vdPortgroupName name of the distributed portgroup
# @return identifier of the distributed network
#
sub getDistributedNetworkBacking {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};
   my $vdPortgroupName   = $args{'vdPortgroupName'};

   # Get the datacenter
   my $get_datacenter = Vcenter::Helpers::DatacenterHelper::getDatacenter(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName
   );
   my @datacenters = ($get_datacenter);

   # Get the network
   my $network_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Network',
      'stub_config'  => $sessionStubConfig
   );

   # Get the network id
   my @networkNames      = ($vdPortgroupName);
   my $networkFilterSpec = new Com::Vmware::Vcenter::Network::FilterSpec();
   $networkFilterSpec->set_names( 'names' => \@networkNames );
   $networkFilterSpec->set_datacenters( 'datacenters' => \@datacenters );
   my @networkTypes =
     (Com::Vmware::Vcenter::Network::Type::DISTRIBUTED_PORTGROUP);
   $networkFilterSpec->set_types( 'types' => \@networkTypes );
   my $networkSummaries =
     $network_service->list( 'filter' => $networkFilterSpec );

   if ( scalar(@$networkSummaries) == 0 ) {
      log_info( MSG => "Distributed Portgroup with name '"
           . $vdPortgroupName
           . "' not found in datacenter: '"
           . $datacenterName
           . "'" );
      exit;
   }
   return $networkSummaries->[0]->get_network();
}

1;
