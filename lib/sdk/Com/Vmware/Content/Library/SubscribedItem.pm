########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file SubscribedItem.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library::SubscribedItem
# The  ``Com::Vmware::Content::Library::SubscribedItem``   *interface*  manages the
#     unique features of library items that are members of a subscribed library.
#

package Com::Vmware::Content::Library::SubscribedItem;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Content::Library::SubscribedItemStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method evict ()
# Evicts the cached content of a library item in a subscribed library. <p>
# 
# This  *method*  allows the cached content of a library item to be removed to free up
# storage capacity. This  *method*  will only work when a library item is synchronized
# on-demand. When a library is not synchronized on-demand, it always attempts to keep its
# cache up-to-date with the published source. Evicting the library item will set 
# :attr:`Com::Vmware::Content::Library::ItemModel.cached`  to false.</p>
#
# @param library_item_id [REQUIRED]  Identifier of the library item whose content should be evicted.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item specified by  ``library_item_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
# if the library item specified by  ``library_item_id``  is not a member of a subscribed
#     library.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration 
# if the library item specified by  ``library_item_id``  is a member of a subscribed
#     library that does not synchronize on-demand.
#

sub evict {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};

   $self->validate_args (method_name => 'evict',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'evict',
                         method_args => \%args);
}


## @method sync ()
# Forces the synchronization of an individual library item in a subscribed library. <p>
# 
# Synchronizing an individual item will update that item&apos;s metadata from the remote
# source. If the source library item on the remote library has been deleted, this  *method* 
# will delete the library item from the subscribed library as well. </p>
# 
# <p>
# 
# The default behavior of the synchronization is determined by the  class
# Com::Vmware::Content::Library::SubscriptionInfo  of the library which owns the library
# item. </p>
# 
# <ul>
# <li>If  :attr:`Com::Vmware::Content::Library::SubscriptionInfo.on_demand`  is true, then
# the file content is not synchronized by default. In this case, only the library item
# metadata is synchronized. The file content may still be forcefully synchronized by passing
# true for the  ``force_sync_content``   *parameter* .</li>
# <li>If  :attr:`Com::Vmware::Content::Library::SubscriptionInfo.on_demand`  is false, then
# this call will always synchronize the file content. The  ``force_sync_content``  
# *parameter*  is ignored when the subscription is not on-demand.</li>
# </ul> When the file content has been synchronized, the 
# :attr:`Com::Vmware::Content::Library::ItemModel.cached`   *field*  will be true. <p>
# 
# This  *method*  will return immediately and create an asynchronous task to perform the
# synchronization.</p>
#
# @param library_item_id [REQUIRED]  Identifier of the library item to synchronize.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param force_sync_content [REQUIRED] Whether to synchronize file content as well as metadata. This  *parameter*  applies
#     only if the subscription is on-demand.
# . The value must be Boolean.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item specified by  ``library_item_id``  could not be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
# if the library item specified by  ``library_item_id``  is not a member of a subscribed
#     library.
#

sub sync {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};
   my $force_sync_content = $args {force_sync_content};

   $self->validate_args (method_name => 'sync',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'sync',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library::SubscribedItem service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::SubscribedItem service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::SubscribedItem service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Content::Library::SubscribedItem service
#########################################################################################
