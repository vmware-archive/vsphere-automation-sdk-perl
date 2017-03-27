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
$__vcenter_version__ = '6.5+';

#
# @class FolderHelper
# Helper class with methods to get identifier of a folder.
#
package Vcenter::Helpers::FolderHelper;

#
# Perl Core Modules
#
use strict;

#
# vApi runtime libraries
#
use Com::Vmware::Vcenter::Folder;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Returns the identifier of a folder
#
# Note: The method assumes that there is only one folder and datacenter
# with the mentioned names.
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter
# @param folderName name of the folder
# @return identifier of a datacenter
#
sub getFolder {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenterName    = $args{'datacenterName'};
   my $folderName        = $args{'vmFolderName'};

   # Get the datacenter
   my $get_datacenter = Vcenter::Helpers::DatacenterHelper::getDatacenter(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenterName
   );
   my @datacenters = ($get_datacenter);

   # Get the folder
   my $folder_service = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Vcenter::Folder',
      'stub_config'  => $sessionStubConfig
   );
   my @vmFolders        = ($folderName);
   my $folderFilterSpec = new Com::Vmware::Vcenter::Folder::FilterSpec();
   $folderFilterSpec->set_names( 'names' => \@vmFolders );
   $folderFilterSpec->set_datacenters( 'datacenters' => \@datacenters );

   my $folderSummaries = $folder_service->list( 'filter' => $folderFilterSpec );
   if ( scalar(@$folderSummaries) == 0 ) {
      log_info( MSG => "Folder '"
           . $folderName
           . "' not found in datacenter: '"
           . $datacenterName
           . "'" );
      exit();
   }
   return $folderSummaries->[0]->get_folder();
}

1;
