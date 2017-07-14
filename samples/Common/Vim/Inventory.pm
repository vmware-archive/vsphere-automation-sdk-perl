#
##############################################################
# Copyright (c) VMware, Inc. 2017.  All Rights Reserved.
# SPDX-License-Identifier: MIT
##############################################################
#
# DISCLAIMER. THIS PROGRAM IS PROVIDED TO YOU "AS IS" WITHOUT
# WARRANTIES OR CONDITIONS # OF ANY KIND, WHETHER ORAL OR WRITTEN,
# EXPRESS OR IMPLIED. THE AUTHOR SPECIFICALLY # DISCLAIMS ANY IMPLIED
# WARRANTIES OR CONDITIONS OF MERCHANTABILITY, SATISFACTORY # QUALITY,
# NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
#

$__author__          = 'VMware, Inc.';
$__copyright__       = 'Copyright 2017 VMware, Inc. All rights reserved.';
$__vcenter_version__ = '6.0+';

#
# @class Inventory
# Helper class with methods to get identifier of a datastore/datacenter.
#
package Common::Vim::Inventory;

#
# Perl Core Modules
#
use strict;

#
# Sample helper modules
#
use Common::SampleBase;
use Vcenter::Helpers::DatastoreHelper;

#
# Return datastore managed object with specific datacenter and datastore name
#
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter
# @param datastoreName name of the datastore
# @return moref of a datastore
#
sub get_datastore_mo {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};
   my $datastoreName     = $args{'datastoreName'};
   my $datastore         = Vcenter::Helpers::DatastoreHelper::getDatastore(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName,
      'datastoreName'     => $datastoreName
   );

   if ( !defined $datastore ) {
      return undef;
   }
   my $datastore_view = Common::SampleBase::get_datastore_view(
      'datastore_name' => $datastoreName );
   return $datastore_view->{'mo_ref'};
}

#
# Return datacenter managed object
#
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter
# @return moref of a datacenter
#
sub get_datacenter_for_datastore {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};
   my $datacenter_mo     = Vcenter::Helpers::DatacenterHelper::getDatacenter(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName
   );
   return $datacenter_mo;
}

1;
