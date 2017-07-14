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

$__author__    = 'VMware, Inc.';
$__copyright__ = 'Copyright 2017 VMware, Inc. All rights reserved.';

#
# @class Vmdk
# Helper class with methods to get identifier of a datastore.
#
package Common::Vim::Vmdk;

#
# Perl Core Modules
#
use strict;
use List::MoreUtils qw(first_index);

#
# vApi runtime libraries
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# Sample helper modules
#
use Common::Vim::Inventory;

#
# Create vmdk in specific datacenter
#
# @param datacenter_mo datacenter moref
# @param datastorePath Datastore path
# @return None
#
sub create_vmdk {
   my (%args)         = @_;
   my $datacenter_mo  = $args{'datacenter_mo'};
   my $datastore_path = $args{'datastorePath'};
   my $mo_ref         = new ManagedObjectReference();
   $mo_ref->{type}  = 'Datacenter';
   $mo_ref->{value} = $datacenter_mo;
   my $service_content = Vim::get_service_content();
   my $vdm = Vim::get_view( mo_ref => $service_content->{virtualDiskManager} );
   my $vds = new SeSparseVirtualDiskSpec();
   $vds->{'capacityKb'}  = 1024 * 1024 * 4;
   $vds->{'diskType'}    = "seSparse";
   $vds->{'adapterType'} = 'lsiLogic';

   $vdm->CreateVirtualDisk(
      'name'       => $datastore_path,
      'datacenter' => $mo_ref,
      'spec'       => $vds
   );
   log_info(
      MSG => "Created VMDK $datastore_path in Datacenter $datacenter_mo" );
}

#
# Delete vmdk from specific datastore
#
# @param datacenter_mo datacenter moref
# @param datastorePath Datastore path
#
# @return None
#
sub delete_vmdk {
   my (%args)         = @_;
   my $datacenter_mo  = $args{'datacenter_mo'};
   my $datastore_path = $args{'datastorePath'};
   my $mo_ref         = new ManagedObjectReference();
   $mo_ref->{type}  = 'Datacenter';
   $mo_ref->{value} = $datacenter_mo;
   my $service_content = Vim::get_service_content();
   my $vdm  = Vim::get_view( mo_ref => $service_content->{virtualDiskManager} );
   my $task = $vdm->DeleteVirtualDisk_Task(
      'name'       => $datastore_path,
      'datacenter' => $mo_ref
   );
   waitForTask($task);
}

#
# waitForTask()
#
# @param task's moref of ManagedObjectReference type
#
# @return task info result
#
sub waitForTask {
   my ($taskRef) = @_;
   my $task_view = Vim::get_view( mo_ref => $taskRef );
   my $taskinfo  = $task_view->info->state->val;
   my $continue  = 1;
   while ($continue) {
      my $info = $task_view->info;
      if ( $info->state->val eq 'success' ) {
         return $info->result;
         $continue = 0;
      }
      elsif ( $info->state->val eq 'error' ) {
         my $soap_fault = SoapFault->new;
         $soap_fault->name( $info->error->fault );
         $soap_fault->detail( $info->error->fault );
         $soap_fault->fault_string( $info->error->localizedMessage );
         die "$soap_fault\n";
      }
      sleep 2;
      $task_view->ViewBase::update_view_data();
   }
}

#
# Find vmdk in specific datastore
#
# @param stubFactory Stub factory for the api endpoint
# @param sessionStubConfig stub configuration for the current session
# @param datacenterName name of the datacenter
# @param datastoreName name of the datastore
# @param datastorePath Datastore path
# @param dsRootPath Datastore path
#
# @return boolean value
#
sub detect_vmdk {
   my (%args)            = @_;
   my $stubFactory       = $args{'stubFactory'};
   my $sessionStubConfig = $args{'sessionStubConfig'};
   my $datacenter_name   = $args{'datacenterName'};
   my $datastore_name    = $args{'datastoreName'};
   my $datastore_path    = $args{'datastorePath'};
   my $dsRootPath        = $args{'dsRootPath'};

   my $datastore_mo = Common::Vim::Inventory::get_datastore_mo(
      'stubFactory'       => $stubFactory,
      'sessionStubConfig' => $sessionStubConfig,
      'datacenterName'    => $datacenter_name,
      'datastoreName'     => $datastore_name
   );
   if ( !defined $datastore_mo ) {
      return 0;
   }
   my $ds_view = Vim::find_entity_view(
      view_type => "Datastore",
      filter    => { 'name' => $datastore_name }
   );
   my $host_data_browser = Vim::get_view( mo_ref => $ds_view->browser() );
   my @ds_file_list = get_datastore_file_list(
      'mor'      => $host_data_browser,
      'filePath' => "[$datastore_name]",
      'level'    => 0,
      'dsPath'   => $dsRootPath
   );
   my ($dsfile) = $datastore_path =~ m#([^/]+)$#;
   my $search_index = first_index { $_ eq $dsfile } @ds_file_list;
   if ( $search_index != -1 ) {
      return 1;
   }
   else {
      return 0;
   }
}

#
# Get datastore's file list
#
# @param mor Stub factory for the api endpoint
# @param filePath stub configuration for the current session
# @param level name of the datacenter
# @param dsPath name of the datastore
#
# @return file list
#
sub get_datastore_file_list {
   my %args          = @_;
   my $datastore_mor = $args{mor};
   my $path          = $args{filePath};
   my $level         = $args{level};
   my $dsPath        = $args{dsPath};

   my $browse_task;
   eval {
      $browse_task =
        $datastore_mor->SearchDatastoreSubFolders( datastorePath => $path );
   };

   if ($@) {
      log_info( MSG => "Error occured : " );
      if ( ref($@) eq 'SoapFault' ) {
         if ( ref( $@->detail ) eq 'FileNotFound' ) {
            log_info( MSG =>
                 "The file or folder specified by datastorePath is not found" );
         }
         elsif ( ref( $@->detail ) eq 'InvalidDatastore' ) {
            log_info( MSG =>
                 "Operation cannot be performed on the target datastores" );
         }
         else {
            log_info( MSG => $@ );
         }
      }
      else {
         log_info( MSG => $@ );
      }
   }

   foreach (@$browse_task) {
      my $fPath = $_->folderPath;
      # remove whitespace and last forward slash from datastore's folder path
      $fPath =~ s/\s+//g;
      $fPath =~ s/\/$//;

      if ( $fPath eq $dsPath ) {
         if ( defined $_->file ) {
            my @files_path = ();
            foreach my $x ( @{ $_->file } ) {
               push( @files_path, $x->path );

            }
            return @files_path;
         }
      }
   }
   log_info( MSG => "Datastore root path $dsPath does not exist" );
   exit;
}

1;
