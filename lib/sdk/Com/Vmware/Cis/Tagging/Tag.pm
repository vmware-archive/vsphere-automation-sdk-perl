########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Tag.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Cis::Tagging::Tag
# The  ``Com::Vmware::Cis::Tagging::Tag``   *interface*  provides  *methods*  to create,
#     read, update, delete, and enumerate tags.
#

package Com::Vmware::Cis::Tagging::Tag;

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
use Com::Vmware::Cis::Tagging::TagStub;

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

## @method create ()
# Creates a tag. To invoke this  *method* , you need the create tag privilege on the input
# category.
#
# @param create_spec [REQUIRED]  Specification for the new tag to be created.
# . The value must be Com::Vmware::Cis::Tagging::Tag::CreateSpec.
#
# @retval 
# The identifier of the created tag.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the  :attr:`Com::Vmware::Cis::Tagging::Tag::CreateSpec.name`  provided in the 
#     ``create_spec``  is the name of an already existing tag in the input category.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if any of the input information in the  ``create_spec``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the category for in the given  ``create_spec``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to create tag.
#

sub create {
   my ($self, %args) = @_;
   my $create_spec = $args {create_spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method get ()
# Fetches the tag information for the given tag identifier. To invoke this  *method* , you
# need the read privilege on the tag in order to view the tag info.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Cis::Tagging::TagModel  that corresponds to  ``tag_id`` .
# The return type will be Com::Vmware::Cis::Tagging::TagModel
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if the user does not have the privilege to read the tag.
#

sub get {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method update ()
# Updates an existing tag. To invoke this  *method* , you need the edit privilege on the
# tag.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @param update_spec [REQUIRED]  Specification to update the tag.
# . The value must be Com::Vmware::Cis::Tagging::Tag::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the  :attr:`Com::Vmware::Cis::Tagging::Tag::UpdateSpec.name`  provided in the 
#     ``update_spec``  is the name of an already existing tag in the same category.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if any of the input information in the  ``update_spec``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to update the tag.
#

sub update {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};
   my $update_spec = $args {update_spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method delete ()
# Deletes an existing tag. To invoke this  *method* , you need the delete privilege on the
# tag.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to delete the tag.
#

sub delete {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method list ()
# Enumerates the tags in the system. To invoke this  *method* , you need read privilege on
# the individual tags. The  *list*  will only contain tags for which you have read
# privileges.
#
# @retval 
# The  *list*  of resource identifiers for the tags in the system.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# The return type will be Array of str
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method list_used_tags ()
# Enumerates all tags for which the  ``used_by_entity``  is part of the 
# :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`  subscribers  *set* . To invoke this 
# *method* , you need the read privilege on the individual tags.
#
# @param used_by_entity [REQUIRED]  The field on which the results will be filtered.
# . The value must be String.
#
# @retval 
# The  *list*  of resource identifiers for the tags in the system that are used by 
#     ``used_by_entity`` .
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# The return type will be Array of str
#

sub list_used_tags {
   my ($self, %args) = @_;
   my $used_by_entity = $args {used_by_entity};

   $self->validate_args (method_name => 'list_used_tags',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list_used_tags',
                         method_args => \%args);
}


## @method list_tags_for_category ()
# Enumerates all tags for the given category. To invoke this  *method* , you need the read
# privilege on the given category and the individual tags in that category.
#
# @param category_id [REQUIRED]  The identifier of the input category.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# . The value must be str.
#
# @retval 
# The  *list*  of resource identifiers for the tags in the given input category.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the category for the given  ``category_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to read the category.
#

sub list_tags_for_category {
   my ($self, %args) = @_;
   my $category_id = $args {category_id};

   $self->validate_args (method_name => 'list_tags_for_category',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list_tags_for_category',
                         method_args => \%args);
}


## @method add_to_used_by ()
# Adds the  ``used_by_entity``  to the  :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by` 
# subscribers  *set* . If the  ``used_by_entity``  is already in the  *set* , then this
# becomes a no-op. To invoke this  *method* , you need the modify 
# :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`  privilege on the tag.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @param used_by_entity [REQUIRED] The name of the user to be added to the 
#     :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`   *set* .
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if you do not have the privilege to add an entity to the 
#     :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`  field.
#

sub add_to_used_by {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};
   my $used_by_entity = $args {used_by_entity};

   $self->validate_args (method_name => 'add_to_used_by',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add_to_used_by',
                         method_args => \%args);
}


## @method remove_from_used_by ()
# Removes the  ``used_by_entity``  from the 
# :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`  subscribers set. If the 
# ``used_by_entity``  is not using this tag, then this becomes a no-op. To invoke this 
# *method* , you need modify  :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`  privilege
# on the tag.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @param used_by_entity [REQUIRED] The name of the user to be removed from the 
#     :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`   *set* .
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if you do not have the privilege to remove an entity from the 
#     :attr:`Com::Vmware::Cis::Tagging::TagModel.used_by`  field.
#

sub remove_from_used_by {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};
   my $used_by_entity = $args {used_by_entity};

   $self->validate_args (method_name => 'remove_from_used_by',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'remove_from_used_by',
                         method_args => \%args);
}


## @method revoke_propagating_permissions ()
# Revokes all propagating permissions on the given tag. You should then attach a direct
# permission with tagging privileges on the given tag. To invoke this  *method* , you need
# tag related privileges (direct or propagating) on the concerned tag.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to revoke propagating permissions on the tag.
#

sub revoke_propagating_permissions {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};

   $self->validate_args (method_name => 'revoke_propagating_permissions',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'revoke_propagating_permissions',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Cis::Tagging::Tag service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Cis::Tagging::Tag service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Cis::Tagging::Tag service
#########################################################################################

## @class Com::Vmware::Cis::Tagging::Tag::CreateSpec
#
#
# The  ``Com::Vmware::Cis::Tagging::Tag::CreateSpec``   *class*  describes a tag. <p>
# 
# Use the  :func:`Com::Vmware::Cis::Tagging::Tag.create`   *method*  to create a tag
#     defined by the create specification.</p>

package Com::Vmware::Cis::Tagging::Tag::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::Tag::CreateSpec structure
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
   $self->{description} = $args{'description'};
   $self->{category_id} = $args{'category_id'};
   $self->{tag_id} = $args{'tag_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tagging::Tag::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.cis.tagging.tag.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'category_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'tag_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The display name of the tag. The name must be unique within its category.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The display name of the tag. The name must be unique within its category.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# The description of the tag.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# The description of the tag.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_category_id ()
# Gets the value of 'category_id' property.
#
# @retval category_id - The current value of the field.
# The unique identifier of the parent category in which this tag will be created.
#
# ID#
sub get_category_id {
   my ($self, %args) = @_;
   return $self->{'category_id'}; 	
}

## @method set_category_id ()
# Sets the given value for 'category_id' property.
# 
# @param category_id  - New value for the field.
# The unique identifier of the parent category in which this tag will be created.
#
sub set_category_id {
   my ($self, %args) = @_;
   $self->{'category_id'} = $args{'category_id'}; 
   return;	
}

## @method get_tag_id ()
# Gets the value of 'tag_id' property.
#
# @retval tag_id - The current value of the field.
# This  *field*  was added in vSphere API 6.7
#
# Optional#
sub get_tag_id {
   my ($self, %args) = @_;
   return $self->{'tag_id'}; 	
}

## @method set_tag_id ()
# Sets the given value for 'tag_id' property.
# 
# @param tag_id  - New value for the field.
# This  *field*  was added in vSphere API 6.7
#
sub set_tag_id {
   my ($self, %args) = @_;
   $self->{'tag_id'} = $args{'tag_id'}; 
   return;	
}


1;


## @class Com::Vmware::Cis::Tagging::Tag::UpdateSpec
#
#
# The  ``Com::Vmware::Cis::Tagging::Tag::UpdateSpec``   *class*  describes the updates
#     to be made to an existing tag. <p>
# 
# Use the  :func:`Com::Vmware::Cis::Tagging::Tag.update`   *method*  to modify a tag.
#     When you call the  *method* , you specify the tag identifier. You obtain the tag
#     identifier when you call the  :func:`Com::Vmware::Cis::Tagging::Tag.create`   *method*
#     . You can also retrieve an identifier by using the 
#     :func:`Com::Vmware::Cis::Tagging::Tag.list`   *method* .</p>

package Com::Vmware::Cis::Tagging::Tag::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::Tag::UpdateSpec structure
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
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tagging::Tag::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.cis.tagging.tag.update_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The display name of the tag.
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
# The display name of the tag.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# The description of the tag.
#
# Optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# The description of the tag.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Cis::Tagging::Tag service
#########################################################################################
