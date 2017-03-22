
##########################################################
# Copyright 2016, 2017 VMware, Inc.  All rights reserved.
# SODX-License-Identifier: MIT
##########################################################
#
# @file DatacenterHelper.pm
# The file implements DatacenterHelper perl module.
#
# @author: VMware, Inc.
# @copyright: copyright 2016, 2017 VMware, Inc.  All rights reserved.
# @vcenter version: 6.5+

#
# @class DatacenterHelper
# Helper class with methods to get identifier of a datacenter.
#
package Vcenter::Helpers::DatacenterHelper;

#
# Perl Core Modules
#
use Exception::Class;
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
use Com::Vmware::Vapi::Protocol::HttpConfiguration;
use Com::Vmware::Vcenter::VM;
use Com::Vmware::Vcenter::Datacenter;
use Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory;
use Com::Vmware::Vapi::Bindings::StubConfiguration;
use Com::Vmware::Vapi::Bindings::StubFactory;
use Com::Vmware::Vapi::Dsig::SecurityContextFactory;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Returns the identifier of a datacenter
#
# Note: The method assumes only one datacenter with the
# mentioned name.
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter for the placement spec
# @return identifier of a datacenter
#
sub getDatacenter {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};

   # Get the datacenter
   my $datacenter_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Datacenter',
      'stub_config'  => $sessionStubConfig
   );
   my @datacenterNames = ($datacenterName);
   my $datacenterFilterSpec =
     new Com::Vmware::Vcenter::Datacenter::FilterSpec();
   $datacenterFilterSpec->set_names( 'names' => \@datacenterNames );
   my $dcSummaries =
     $datacenter_service->list( 'filter' => $datacenterFilterSpec );

   if ( scalar(@$dcSummaries) == 0 ) {
      log_info(
         MSG => "Datacenter with name '" . $datacenterName . "' not found." );
      exit();
   }
   return $dcSummaries->[0]->{'datacenter'};
}

1;
