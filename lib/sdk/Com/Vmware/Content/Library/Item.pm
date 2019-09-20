########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Item.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library::Item
# The  ``Com::Vmware::Content::Library::Item``   *interface*  provides  *methods*  for
#     managing library items.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for item.

package Com::Vmware::Content::Library::Item;

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
use Com::Vmware::Content::Library::ItemStub;

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

## @method copy ()
# Copies a library item. <p>
# 
# Copying a library item allows a duplicate to be made within the same or different library.
# The copy occurs by first creating a new library item, whose identifier is returned. The
# content of the library item is then copied asynchronously. This copy can be tracked as a
# task. </p>
# 
# <p>
# 
# If the copy fails, Content Library Service will roll back the copy by deleting any content
# that was already copied, and removing the new library item. A failure during rollback may
# require manual cleanup by an administrator. </p>
# 
# <p>
# 
#  A library item cannot be copied into a subscribed library.</p>
#
# Note:
# Privileges required for this operation are ContentLibrary.AddLibraryItem, System.Read.
#
# @param client_token [OPTIONAL] A unique token generated on the client for each copy request. The token should be a
#     universally unique identifier (UUID), for example: 
#     ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee
#     idempotent copy.
# If not specified copy is not idempotent.
# . The value must be String or None.
#
# @param source_library_item_id [REQUIRED]  Identifier of the existing library item from which the content will be copied.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param destination_create_spec [REQUIRED]  Specification for the new library item to be created.
# . The value must be Com::Vmware::Content::Library::ItemModel.
#
# @retval 
# The identifier of the new library item into which the content is being copied.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the library item with  ``source_library_item_id``  does not exist, or if the
#     library referenced by the  :attr:`Com::Vmware::Content::Library::ItemModel.library_id`
#      property of  ``destination_create_spec``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if one of the following is true for the new library item: <ul>
#  <li>name is empty</li>
#  <li>name exceeds 80 characters</li>
#  <li>description exceeds 2000 characters</li>
#  </ul>
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the  ``client_token``  does not conform to the UUID format.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
# if the  :attr:`Com::Vmware::Content::Library::ItemModel.library_id`  property of 
#     ``destination_create_spec``  refers to a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the copy operation failed because the source or destination library item is not
#     accessible.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the content of the source library item specified by  ``source_library_item_id`` ,
#     or the content of the target library specified by the library ID (see 
#     :attr:`Com::Vmware::Content::Library::ItemModel.library_id` ) property of 
#     ``destination_create_spec``  has been deleted from the storage backings (see null)
#     associated with it.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``source_library_item_id``  requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *field*  
#     :attr:`Com::Vmware::Content::Library::ItemModel.library_id`  requires 
#     ``ContentLibrary.AddLibraryItem`` . </li>
# </ul>
#

sub copy {
   my ($self, %args) = @_;
   my $client_token = $args {client_token};
   my $source_library_item_id = $args {source_library_item_id};
   my $destination_create_spec = $args {destination_create_spec};

   $self->validate_args (method_name => 'copy',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'copy',
                         method_args => \%args);
}


## @method create ()
# Creates a new library item. <p>
# 
# A new library item is created without any content. After creation, content can be added
# through the  class Com::Vmware::Content::Library::Item::UpdateSession  and  class
# Com::Vmware::Content::Library::Item::Updatesession::File   *interfaces* . </p>
# 
# <p>
# 
#  A library item cannot be created in a subscribed library.</p>
#
# Note:
# Privileges required for this operation are ContentLibrary.AddLibraryItem.
#
# @param client_token [OPTIONAL] A unique token generated on the client for each creation request. The token should be
#     a universally unique identifier (UUID), for example: 
#     ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee
#     idempotent creation.
# If not specified creation is not idempotent.
# . The value must be String or None.
#
# @param create_spec [REQUIRED]  Specification that defines the properties of the new library item.
# . The value must be Com::Vmware::Content::Library::ItemModel.
#
# @retval 
# Identifier of the new library item.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the  :attr:`Com::Vmware::Content::Library::ItemModel.library_id`  property of 
#     ``create_spec``  refers to a library that does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if one of the following is true for the new library item: <ul>
#  <li>name is empty</li>
#  <li>name exceeds 80 characters</li>
#  <li>description exceeds 2000 characters</li>
#  </ul>
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the  ``client_token``  does not conform to the UUID format.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
# if the  :attr:`Com::Vmware::Content::Library::ItemModel.library_id`  property of 
#     ``create_spec``  refers to a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the content of the library specified by the library ID (see 
#     :attr:`Com::Vmware::Content::Library::ItemModel.library_id` ) property of 
#     ``create_spec``  has been deleted from the storage backings (see null) associated with
#     it.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
#  if there is already a library item with same name in the library.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *field*  
#     :attr:`Com::Vmware::Content::Library::ItemModel.library_id`  requires 
#     ``ContentLibrary.AddLibraryItem`` . </li>
# </ul>
#

sub create {
   my ($self, %args) = @_;
   my $client_token = $args {client_token};
   my $create_spec = $args {create_spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method delete ()
# Deletes a library item. <p>
# 
# This  *method*  will immediately remove the item from the library that owns it. The
# content of the item will be asynchronously removed from the storage backings. The content
# deletion can be tracked with a task. In the event that the task fails, an administrator
# may need to manually remove the files from the storage backing. </p>
# 
# <p>
# 
# This  *method*  cannot be used to delete a library item that is a member of a subscribed
# library. Removing an item from a subscribed library requires deleting the item from the
# original published local library and syncing the subscribed library.</p>
#
# Note:
# Privileges required for this operation are ContentLibrary.DeleteLibraryItem.
#
# @param library_item_id [REQUIRED]  Identifier of the library item to delete.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
# if the library item with the given  ``library_item_id``  is a member of a subscribed
#     library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item with the specified  ``library_item_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the library item contains a virtual machine template and a virtual machine is
#     checked out of the library item.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``library_item_id``  requires  ``ContentLibrary.DeleteLibraryItem`` . </li>
# </ul>
#

sub delete {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method get ()
# Returns the  class Com::Vmware::Content::Library::ItemModel  with the given identifier.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param library_item_id [REQUIRED]  Identifier of the library item to return.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Content::Library::ItemModel  instance with the given 
#     ``library_item_id`` .
# The return type will be Com::Vmware::Content::Library::ItemModel
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if no item with the given  ``library_item_id``  exists.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``library_item_id``  requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Returns the identifiers of all items in the given library.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param library_id [REQUIRED]  Identifier of the library whose items should be returned.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @retval 
# The  *list*  of identifiers of the items in the library specified by  ``library_id`` .
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library associated with  ``library_id``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library_id``  requires  ``System.Read`` . </li>
# </ul>
#

sub list {
   my ($self, %args) = @_;
   my $library_id = $args {library_id};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method find ()
# Returns identifiers of all the visible (as determined by authorization policy) library
# items matching the requested  class Com::Vmware::Content::Library::Item::FindSpec .
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param spec [REQUIRED]  Specification describing what properties to filter on.
# . The value must be Com::Vmware::Content::Library::Item::FindSpec.
#
# @retval 
# The  *list*  of identifiers of all the visible library items matching the given 
#     ``spec`` .
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if no properties are specified in the  ``spec`` .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *field*  
#     :attr:`Com::Vmware::Content::Library::Item::FindSpec.library_id`  requires 
#     ``System.Read`` . </li>
# </ul>
#

sub find {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'find',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'find',
                         method_args => \%args);
}


## @method update ()
# Updates the specified properties of a library item. <p>
# 
# This is an incremental update to the library item.  *Fields*  that are  *null*  in the
# update specification are left unchanged. </p>
# 
# <p>
# 
# This  *method*  cannot update a library item that is a member of a subscribed library.
# Those items must be updated in the source published library and synchronized to the
# subscribed library.</p>
#
# Note:
# Privileges required for this operation are ContentLibrary.UpdateLibraryItem.
#
# @param library_item_id [REQUIRED]  Identifier of the library item to update.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param update_spec [REQUIRED]  Specification of the properties to set.
# . The value must be Com::Vmware::Content::Library::ItemModel.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item specified by  ``library_item_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
# if the library item corresponding to  ``library_item_id``  is a member of a subscribed
#     library.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if one of the following is true for the  ``update_spec`` : <ul>
#  <li>name is empty</li>
#  <li>name exceeds 80 characters</li>
#  <li>description exceeds 2000 characters</li>
#  <li>version is not equal to the current version of the library item</li>
#  </ul>
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the library item belongs to a published library with JSON persistence enabled (see 
#     :attr:`Com::Vmware::Content::Library::PublishInfo.persist_json_enabled` ) and the
#     content of the library item specified by  ``library_item_id``  has been deleted from
#     the storage backings (see null) associated with it.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
#  if there is already a library item with same name in the library.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``library_item_id``  requires  ``ContentLibrary.UpdateLibraryItem`` . </li>
# </ul>
#

sub update {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};
   my $update_spec = $args {update_spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method publish ()
# Publishes the library item to specified subscriptions of the library. If no subscriptions
# are specified, then publishes the library item to all subscriptions of the library. This 
# *method*  was added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are ContentLibrary.PublishLibraryItem.
#
# @param library_item_id [REQUIRED] Library item identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param force_sync_content [REQUIRED] Whether to synchronize file content as well as metadata. This  *parameter*  applies
#     only if the subscription is on-demand.
# . The value must be Boolean.
#
# @param subscriptions [OPTIONAL] The list of subscriptions to publish this library item to.
# . The value must be Array of Com::Vmware::Content::Library::Item::DestinationSpec or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  If the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  If the library item specified by  ``library_item_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  If one or more arguments in  ``subscriptions``  is not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
# If the library item specified by  ``library_item_id``  is a member of a subscribed
#     library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# If the library item specified by  ``library_item_id``  does not belong to a published
#     library.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  If the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user that requested the  *method*  is not authorized to perform the  *method* .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``library_item_id``  requires  ``ContentLibrary.PublishLibraryItem`` . </li>
# </ul>
#

sub publish {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};
   my $force_sync_content = $args {force_sync_content};
   my $subscriptions = $args {subscriptions};

   $self->validate_args (method_name => 'publish',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'publish',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library::Item service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::Item service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::Item service
#########################################################################################

## @class Com::Vmware::Content::Library::Item::FindSpec
#
#
# The  ``Com::Vmware::Content::Library::Item::FindSpec``   *class*  specifies the
#     properties that can be used as a filter to find library items. When multiple  *fields*
#      are specified, all properties of the item must match the specification.

package Com::Vmware::Content::Library::Item::FindSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::FindSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{library_id} = $args{'library_id'};
   $self->{source_id} = $args{'source_id'};
   $self->{type} = $args{'type'};
   $self->{cached} = $args{'cached'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::FindSpec');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.find_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'library_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'source_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cached', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the library item. The name is case-insensitive. See 
#     :attr:`Com::Vmware::Content::Library::ItemModel.name` .
#
# Optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The name of the library item. The name is case-insensitive. See 
#     :attr:`Com::Vmware::Content::Library::ItemModel.name` .
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_library_id ()
# Gets the value of 'library_id' property.
#
# @retval library_id - The current value of the field.
# The identifier of the library containing the item. See 
#     :attr:`Com::Vmware::Content::Library::ItemModel.library_id` .
#
# Optional#
sub get_library_id {
   my ($self, %args) = @_;
   return $self->{'library_id'}; 	
}

## @method set_library_id ()
# Sets the given value for 'library_id' property.
# 
# @param library_id  - New value for the field.
# The identifier of the library containing the item. See 
#     :attr:`Com::Vmware::Content::Library::ItemModel.library_id` .
#
sub set_library_id {
   my ($self, %args) = @_;
   $self->{'library_id'} = $args{'library_id'}; 
   return;	
}

## @method get_source_id ()
# Gets the value of 'source_id' property.
#
# @retval source_id - The current value of the field.
# The identifier of the library item as reported by the publisher. See 
#     :attr:`Com::Vmware::Content::Library::ItemModel.source_id` .
#
# Optional#
sub get_source_id {
   my ($self, %args) = @_;
   return $self->{'source_id'}; 	
}

## @method set_source_id ()
# Sets the given value for 'source_id' property.
# 
# @param source_id  - New value for the field.
# The identifier of the library item as reported by the publisher. See 
#     :attr:`Com::Vmware::Content::Library::ItemModel.source_id` .
#
sub set_source_id {
   my ($self, %args) = @_;
   $self->{'source_id'} = $args{'source_id'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of the library item. The type is case-insensitive. See 
#     :attr:`Com::Vmware::Content::Library::ItemModel.type` .
#
# Optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type of the library item. The type is case-insensitive. See 
#     :attr:`Com::Vmware::Content::Library::ItemModel.type` .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_cached ()
# Gets the value of 'cached' property.
#
# @retval cached - The current value of the field.
# Whether the item is cached. Possible values are &apos;true&apos; or &apos;false&apos;.
#     See  :attr:`Com::Vmware::Content::Library::ItemModel.cached` .
#
# Optional#
sub get_cached {
   my ($self, %args) = @_;
   return $self->{'cached'}; 	
}

## @method set_cached ()
# Sets the given value for 'cached' property.
# 
# @param cached  - New value for the field.
# Whether the item is cached. Possible values are &apos;true&apos; or &apos;false&apos;.
#     See  :attr:`Com::Vmware::Content::Library::ItemModel.cached` .
#
sub set_cached {
   my ($self, %args) = @_;
   $self->{'cached'} = $args{'cached'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Item::DestinationSpec
#
#
# The  ``Com::Vmware::Content::Library::Item::DestinationSpec``   *class*  contains
#     information required to publish the library item to a specific subscription. This 
#     *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Item::DestinationSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::DestinationSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{subscription} = $args{'subscription'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::DestinationSpec');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.destination_spec');
   $self->set_binding_field('key' => 'subscription', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_subscription ()
# Gets the value of 'subscription' property.
#
# @retval subscription - The current value of the field.
# Identifier of the subscription associated with the subscribed library. This  *field* 
#     was added in vSphere API 6.7.2.
#
# ID#
sub get_subscription {
   my ($self, %args) = @_;
   return $self->{'subscription'}; 	
}

## @method set_subscription ()
# Sets the given value for 'subscription' property.
# 
# @param subscription  - New value for the field.
# Identifier of the subscription associated with the subscribed library. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_subscription {
   my ($self, %args) = @_;
   $self->{'subscription'} = $args{'subscription'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Content::Library::Item service
#########################################################################################
