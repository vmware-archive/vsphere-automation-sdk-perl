
##########################################################
# Copyright 2016, 2017 VMware, Inc.  All rights reserved.
##########################################################
#
# @file DatastoreHelper.pm
# The file implements DatastoreHelper perl module.
#
# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @vcenter version: 6.5+

#
# @class DatastoreHelper
# Helper class with methods to get identifier of a datastore.
#
package Vcenter::Helpers::DatastoreHelper;

#
# Perl Core Modules
#
use strict;

#
# vApi runtime libraries
#
use Com::Vmware::Vcenter::Datastore;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Sample helper modules
#
use Vcenter::Helpers::DatacenterHelper;

#
# Returns the identifier of a datastore
#
# Note: The method assumes that there is only one datastore and datacenter
# with the mentioned names.
#
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter for the placement spec
# @param datastoreName name of the datastore for the placement spec
# @return identifier of a datastore
#
sub getDatastore {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};
   my $datastoreName     = $args{'datastoreName'};

   # Get the datacenter
   my $get_datacenter = Vcenter::Helpers::DatacenterHelper::getDatacenter(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName
   );
   my @datacenters = ($get_datacenter);

   # Get the datastore
   my $datastore_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Datastore',
      'stub_config'  => $sessionStubConfig
   );
   my @datastores          = ($datastoreName);
   my $datastoreFilterSpec = new Com::Vmware::Vcenter::Datastore::FilterSpec();
   $datastoreFilterSpec->set_names( 'names' => \@datastores );
   $datastoreFilterSpec->set_datacenters( 'datacenters' => \@datacenters );
   my $datastoreSummaries =
     $datastore_service->list( 'filter' => $datastoreFilterSpec );
   if ( scalar(@$datastoreSummaries) == 0 ) {
      log_info( MSG => "Datastore '"
           . $datastoreName
           . "' not found in datacenter: '"
           . $datacenterName
           . "'" );
      exit();
   }
   return $datastoreSummaries->[0]->get_datastore();
}

1;
