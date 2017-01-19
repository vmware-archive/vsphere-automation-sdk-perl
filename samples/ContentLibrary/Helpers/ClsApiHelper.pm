
####################################################
# Copyright 2016 VMware, Inc.  All rights reserved.
####################################################
#
# @file ClsApiHelper.pm
# The file implements ClsApiHelper perl module.
#
# @copy 2016, VMware Inc.
#

#
# @class ClsApiHelper
# Helper class to perform the operation on content library
#
package ContentLibrary::Helpers::ClsApiHelper;

#
# Perl Core Modules
#
use warnings;
use strict;
use Time::HiRes qw/gettimeofday/;
use List::Util;

#
# vApi runtime libraries
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

## @method new ()
# Constructor
#
# @param client
#
# @retval self
#
sub new {
   my ( $class, %args ) = @_;
   $class = ref($class) || $class;
   my $self = {};
   $self->{'client'} = $args{'client'};
   bless $self, $class;
   return $self;
}

## @method get_client ()
# Get a client
#
# @param None
# @retval client Returns the client
# Can be null
sub get_client {
   my $self = shift;
   return $self->{'client'};
}

## @method wait_for_library_sync ()
# Wait for the synchronization of the subscribed library to complete or
# until the timeout is reached. The subscribed library is fully
# synchronized when it has the same library items and the same versions as
# the items in the source published library.
#
# @param published_lib_id
# @param subscribed_lib_id
# @param timeout
# @retval boolean Returns the boolean value 0 or 1
#
sub wait_for_library_sync {
   my ( $self, %args ) = @_;
   my $published_lib_id  = $args{'published_lib_id'};
   my $subscribed_lib_id = $args{'subscribed_lib_id'};
   my $timeout           = $args{'timeout'};

   my $sync_helper = Vcenter::Helpers::ClsApiHelper::SyncHelper->new(
      'client'  => $self->get_client(),
      'timeout' => $timeout
   );
   return $sync_helper->wait_for_library_sync(
      'published_lib_id'  => $published_lib_id,
      'subscribed_lib_id' => $subscribed_lib_id
   );
}

## @method wait_for_item_sync ()
# Wait for the synchronization of the subscribed library item to complete
# or until the timeout is reached. The subscribed item is fully
# synchronized when it has the same metadata and content version as the
# source published item.
#
# @param subscribed_item_id
# @param timeout
# @retval boolean Returns the boolean value 0 or 1
#
sub wait_for_item_sync {
   my ( $self, %args ) = @_;
   my $subscribed_item_id = $args{'subscribed_item_id'};
   my $timeout            = $args{'timeout'};

   my $sync_helper = Vcenter::Helpers::ClsApiHelper::SyncHelper->new(
      'client'  => $self->get_client(),
      'timeout' => $timeout
   );
   return $sync_helper->wait_for_item_sync(
      'subscribed_item_id' => $subscribed_item_id );
}
1;

package Vcenter::Helpers::ClsApiHelper::SyncHelper;

use Time::HiRes;

use constant { WAIT_INTERVAL_SEC => 1 };

## @method new ()
# Constructor
#
# @param client
# @param timeout
#
# @retval self
#
sub new {
   my ( $class, %args ) = @_;
   $class = ref($class) || $class;
   my $start_time = ( Time::HiRes::gettimeofday() )[0];
   my $client     = $args{'client'};
   my $timeout    = $args{'timeout'};
   my $self       = {};
   $self->{'start_time'} = $start_time;
   $self->{'timeout'}    = $timeout;
   $self->{'client'}     = $client;
   bless $self, $class;
   return $self;
}

## @method get_client ()
# Get a client
#
# @param None
# @retval client Returns the client
#
sub get_client {
   my $self = shift;
   return $self->{'client'};
}

## @method get_start_time ()
# Get the start time
#
# @param None
# @retval start_time Returns the start time
#
sub get_start_time {
   my $self = shift;
   return $self->{'start_time'};
}

## @method get_timeout ()
# Get the timeout
#
# @param None
# @retval timeout Returns the timeout
#
sub get_timeout {
   my $self = shift;
   return $self->{'timeout'};
}

## @method wait_for_library_sync ()
# Wait until the subscribed library and its items are synchronized with the published library.
#
# @param published_lib_id
# @param subscribed_lib_id
# @retval boolean Returns the boolean value 0 or 1
#
sub wait_for_library_sync {
   my ( $self, %args ) = @_;

   my $published_lib_id  = $args{'published_lib_id'};
   my $subscribed_lib_id = $args{'subscribed_lib_id'};

   if (
      !$self->wait_for_same_items(
         'published_lib_id'  => $published_lib_id,
         'subscribed_lib_id' => $subscribed_lib_id
      )
     )
   {
      return 0;
   }

   my $subscribed_item_ids =
     $self->get_client()->get_item_service()
     ->list( 'library_id' => $subscribed_lib_id );

   foreach my $item_id (@$subscribed_item_ids) {
      if ( !$self->wait_for_item_sync( 'subscribed_item_id' => $item_id ) ) {
         return 0;
      }
   }

   if (
      !$self->wait_for_library_last_sync_time(
         'subscribed_lib_id' => $subscribed_lib_id
      )
     )
   {
      return 0;
   }

   return 1;
}

## @method wait_for_item_sync ()
# Wait until the subscribed item is synchronized with the published item.
#
# @param subscribed_item_id
# @retval boolean Returns the boolean value 0 or 1
#
sub wait_for_item_sync {
   my ( $self, %args ) = @_;
   my $subscribed_item_id = $args{'subscribed_item_id'};
   my $is_synced          = 0;

   my $published_item_id =
     $self->get_client()->get_item_service()
     ->get( 'library_item_id' => $subscribed_item_id )->get_source_id();
   my $published_item =
     $self->get_client()->get_item_service()
     ->get( 'library_item_id' => $published_item_id );
   while ( $self->not_timed_out() ) {
      my $subscribed_item =
        $self->get_client()->get_item_service()
        ->get( 'library_item_id' => $subscribed_item_id );
      if (
         $self->is_subscribed_item_latest(
            'published_item'  => $published_item,
            'subscribed_item' => $subscribed_item
         )
        )
      {
         $is_synced = 1;
         last;
      }

      sleep(WAIT_INTERVAL_SEC);
   }

   return $is_synced;
}

## @method wait_for_same_items ()
# Wait until the subscribed library has the same source item IDs as the published library.
#
# @param published_lib_id
# @param subscribed_lib_id
# @retval boolean Returns the boolean value 0 or 1
#
sub wait_for_same_items {
   my ( $self, %args ) = @_;
   my $published_lib_id  = $args{'published_lib_id'};
   my $subscribed_lib_id = $args{'subscribed_lib_id'};

   my $is_synced = 0;
   my $published_item_ids =
     $self->get_client()->get_item_service()
     ->list( 'library_id' => $published_lib_id );

   while ( $self->not_timed_out() ) {
      my $subscribed_item_ids =
        $self->get_client()->get_item_service()
        ->list( 'library_id' => $subscribed_lib_id );
      if (
         $self->has_same_items(
            'published_items_ids'  => $published_item_ids,
            'subscribed_items_ids' => $subscribed_item_ids
         )
        )
      {
         $is_synced = 1;
         last;
      }

      sleep(WAIT_INTERVAL_SEC);
   }
   return $is_synced;
}

## @method has_same_items ()
# Check if the subscribed library contains the same items as the source
# published library. The item versions are not checked
#
# @param published_items_ids
# @param subscribed_items_ids
# @retval boolean Returns the boolean value 0 or 1
#
sub has_same_items {
   my ( $self, %args ) = @_;
   my $published_item_ids  = $args{'published_items_ids'};
   my $subscribed_item_ids = $args{'subscribed_items_ids'};

   if ( scalar(@$published_item_ids) != scalar(@$subscribed_item_ids) ) {
      return 0;
   }

   my $synced_ids = [];
   foreach my $item_id (@$subscribed_item_ids) {
      my $subscribed_item =
        $self->get_client()->get_item_service()
        ->get( 'library_item_id' => $item_id );
      my $source_id = $subscribed_item->get_source_id();
      if ( !( List::Util::any { $_ eq $item_id } @$synced_ids )
         && ( List::Util::any { $_ eq $source_id } @$published_item_ids ) )
      {
         push @$synced_ids, $item_id;
      }
   }

   return ( scalar(@$synced_ids) == scalar(@$published_item_ids) );
}

## @method wait_for_library_last_sync_time ()
# Wait until the subscribed library's last sync time is populated.
#
# @param subscribed_lib_id
# @retval boolean Returns the boolean value 0 or 1
#
sub wait_for_library_last_sync_time {
   my ( $self, %args ) = @_;
   my $subscribed_lib_id = $args{'subscribed_lib_id'};
   my $is_synced         = 0;

   while ( $self->not_timed_out() ) {
      my $library_model =
        $self->get_client()->get_subscribed_library_service()
        ->get( 'library_id' => $subscribed_lib_id );
      if ( defined $library_model->get_last_sync_time() ) {
         $is_synced = 1;
         last;
      }

      sleep(WAIT_INTERVAL_SEC);
   }

   return $is_synced;
}

## @method is_subscribed_item_latest ()
# Check if the subscribed item has the same metadata and content version as the source published item.
#
# @param published_item
# @param subscribed_item
# @retval boolean Returns the boolean value 0 or 1
#
sub is_subscribed_item_latest {
   my ( $self, %args ) = @_;
   my $published_item  = $args{'published_item'};
   my $subscribed_item = $args{'subscribed_item'};

   my $metadata_version = $published_item->get_metadata_version();
   my $content_version  = $published_item->get_content_version();

   return (( $subscribed_item->get_metadata_version() eq $metadata_version )
        && ( $subscribed_item->get_content_version() eq $content_version ) );
}

## @method not_timed_out ()
# Check if we have not timed out yet.
#
# @param None
# @retval boolean Returns the boolean value 0 or 1
#
sub not_timed_out {
   my ( $self, %args ) = @_;
   my $current_time = ( Time::HiRes::gettimeofday() )[0];
   my $start_time   = $self->get_start_time();
   my $elapsed_time = $current_time - $start_time;
   return ( $elapsed_time < $self->get_timeout() );
}

1;
