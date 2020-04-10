########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Category.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Cis::Tagging::Category
# The  ``Com::Vmware::Cis::Tagging::Category``   *interface*  provides  *methods*  to
#     create, read, update, delete, and enumerate categories.
#

package Com::Vmware::Cis::Tagging::Category;

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
use Com::Vmware::Cis::Tagging::CategoryStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.cis.tagging.category';


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
# Creates a category. To invoke this  *method* , you need the create category privilege.
#
# @param create_spec [REQUIRED]  Specification for the new category to be created.
# . The value must be Com::Vmware::Cis::Tagging::Category::CreateSpec.
#
# @retval 
# The identifier of the created category.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the  :attr:`Com::Vmware::Cis::Tagging::Category::CreateSpec.name`  provided in the 
#     ``create_spec``  is the name of an already existing category.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if any of the information in the  ``create_spec``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to create a category.
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
# Fetches the category information for the given category identifier. In order to view the
# category information, you need the read privilege on the category.
#
# @param category_id [REQUIRED]  The identifier of the input category.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Cis::Tagging::CategoryModel  that corresponds to 
#     ``category_id`` .
# The return type will be Com::Vmware::Cis::Tagging::CategoryModel
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the category for the given  ``category_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to read the category.
#
sub get {
   my ($self, %args) = @_;
   my $category_id = $args {category_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method update ()
# Updates an existing category. To invoke this  *method* , you need the edit privilege on
# the category.
#
# @param category_id [REQUIRED]  The identifier of the category to be updated.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# . The value must be str.
#
# @param update_spec [REQUIRED]  Specification to update the category.
# . The value must be Com::Vmware::Cis::Tagging::Category::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the  :attr:`Com::Vmware::Cis::Tagging::Category::UpdateSpec.name`  provided in the 
#     ``update_spec``  is the name of an already existing category.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if any of the information in the  ``update_spec``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the category for the given  ``category_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to update the category.
#
sub update {
   my ($self, %args) = @_;
   my $category_id = $args {category_id};
   my $update_spec = $args {update_spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method delete ()
# Deletes an existing category. To invoke this  *method* , you need the delete privilege on
# the category.
#
# @param category_id [REQUIRED]  The identifier of category to be deleted.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the category for the given  ``category_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to delete the category.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user can not be authenticated.
#
sub delete {
   my ($self, %args) = @_;
   my $category_id = $args {category_id};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method list ()
# Enumerates the categories in the system. To invoke this  *method* , you need the read
# privilege on the individual categories. The  *list*  will only contain those categories
# for which you have read privileges.
#
# @retval 
# The  *list*  of resource identifiers for the categories in the system.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# The return type will be Array of str
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method list_used_categories ()
# Enumerates all categories for which the  ``used_by_entity``  is part of the 
# :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`  subscribers  *set* . To invoke
# this  *method* , you need the read privilege on the individual categories.
#
# @param used_by_entity [REQUIRED]  The field on which the results will be filtered.
# . The value must be String.
#
# @retval 
# The  *list*  of resource identifiers for the categories in the system that are used by
#      ``used_by_entity`` .
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# The return type will be Array of str
#
sub list_used_categories {
   my ($self, %args) = @_;
   my $used_by_entity = $args {used_by_entity};

   $self->validate_args (method_name => 'list_used_categories',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list_used_categories',
                         method_args => \%args);
}

## @method add_to_used_by ()
# Adds the  ``used_by_entity``  to the 
# :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`  subscribers  *set*  for the
# specified category. If the  ``used_by_entity``  is already in the  *set* , then this
# becomes an idempotent no-op. To invoke this  *method* , you need the modify 
# :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`  privilege on the category.
#
# @param category_id [REQUIRED]  The identifier of the input category.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# . The value must be str.
#
# @param used_by_entity [REQUIRED] The name of the user to be added to the 
#     :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`   *set* .
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the category for the given  ``category_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if you do not have the privilege to add an entity to the 
#     :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`  field.
#
sub add_to_used_by {
   my ($self, %args) = @_;
   my $category_id = $args {category_id};
   my $used_by_entity = $args {used_by_entity};

   $self->validate_args (method_name => 'add_to_used_by',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add_to_used_by',
                         method_args => \%args);
}

## @method remove_from_used_by ()
# Removes the  ``used_by_entity``  from the 
# :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`  subscribers  *set* . If the 
# ``used_by_entity``  is not using this category, then this becomes a no-op. To invoke this 
# *method* , you need the modify  :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by` 
# privilege on the category.
#
# @param category_id [REQUIRED]  The identifier of the input category.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# . The value must be str.
#
# @param used_by_entity [REQUIRED] The name of the user to be removed from the 
#     :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`   *set* .
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the category for the given  ``category_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if you do not have the privilege to remove an entity from the 
#     :attr:`Com::Vmware::Cis::Tagging::CategoryModel.used_by`  field.
#
sub remove_from_used_by {
   my ($self, %args) = @_;
   my $category_id = $args {category_id};
   my $used_by_entity = $args {used_by_entity};

   $self->validate_args (method_name => 'remove_from_used_by',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'remove_from_used_by',
                         method_args => \%args);
}

## @method revoke_propagating_permissions ()
# Revokes all propagating permissions on the given category. You should then attach a direct
# permission with tagging privileges on the given category. To invoke this  *method* , you
# need category related privileges (direct or propagating) on the concerned category.
#
# @param category_id [REQUIRED]  The identifier of the input category.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Category).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the category for the given  ``category_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to revoke propagating permissions on the category.
#
sub revoke_propagating_permissions {
   my ($self, %args) = @_;
   my $category_id = $args {category_id};

   $self->validate_args (method_name => 'revoke_propagating_permissions',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'revoke_propagating_permissions',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Cis::Tagging::Category service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Cis::Tagging::Category service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Cis::Tagging::Category service
#########################################################################################

## @class Com::Vmware::Cis::Tagging::Category::CreateSpec
#
#
# The  ``Com::Vmware::Cis::Tagging::Category::CreateSpec``   *class*  is used to create
#     a category. <p>
# 
# Use the  :func:`Com::Vmware::Cis::Tagging::Category.create`   *method*  to create a
#     category defined by the create specification.</p>

package Com::Vmware::Cis::Tagging::Category::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::Category::CreateSpec structure
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
   $self->{cardinality} = $args{'cardinality'};
   $self->{associable_types} = $args{'associable_types'};
   $self->{category_id} = $args{'category_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tagging::Category::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.cis.tagging.category.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cardinality', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'CategoryModel::Cardinality'));
   $self->set_binding_field('key' => 'associable_types', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'category_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The display name of the category.
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
# The display name of the category.
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
# The description of the category.
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
# The description of the category.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_cardinality ()
# Gets the value of 'cardinality' property.
#
# @retval cardinality - The current value of the field.
# The associated cardinality (SINGLE, MULTIPLE) of the category.
#
# Cardinality#
sub get_cardinality {
   my ($self, %args) = @_;
   return $self->{'cardinality'}; 	
}

## @method set_cardinality ()
# Sets the given value for 'cardinality' property.
# 
# @param cardinality  - New value for the field.
# The associated cardinality (SINGLE, MULTIPLE) of the category.
#
sub set_cardinality {
   my ($self, %args) = @_;
   $self->{'cardinality'} = $args{'cardinality'}; 
   return;	
}

## @method get_associable_types ()
# Gets the value of 'associable_types' property.
#
# @retval associable_types - The current value of the field.
# Object types to which this category&apos;s tags can be attached.
#
# Set#
sub get_associable_types {
   my ($self, %args) = @_;
   return $self->{'associable_types'}; 	
}

## @method set_associable_types ()
# Sets the given value for 'associable_types' property.
# 
# @param associable_types  - New value for the field.
# Object types to which this category&apos;s tags can be attached.
#
sub set_associable_types {
   my ($self, %args) = @_;
   $self->{'associable_types'} = $args{'associable_types'}; 
   return;	
}

## @method get_category_id ()
# Gets the value of 'category_id' property.
#
# @retval category_id - The current value of the field.
# This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_category_id {
   my ($self, %args) = @_;
   return $self->{'category_id'}; 	
}

## @method set_category_id ()
# Sets the given value for 'category_id' property.
# 
# @param category_id  - New value for the field.
# This  *field*  was added in vSphere API 6.7.
#
sub set_category_id {
   my ($self, %args) = @_;
   $self->{'category_id'} = $args{'category_id'}; 
   return;	
}


1;


## @class Com::Vmware::Cis::Tagging::Category::UpdateSpec
#
#
# The  ``Com::Vmware::Cis::Tagging::Category::UpdateSpec``   *class*  describes the
#     updates to be made to an existing category. <p>
# 
# Use the  :func:`Com::Vmware::Cis::Tagging::Category.update`   *method*  to modify a
#     category. When you call the  *method* , specify the category identifier. You obtain
#     the category identifier when you call the 
#     :func:`Com::Vmware::Cis::Tagging::Category.create`   *method* . You can also retrieve
#     an identifier by using the  :func:`Com::Vmware::Cis::Tagging::Category.list`  
#     *method* .</p>

package Com::Vmware::Cis::Tagging::Category::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::Category::UpdateSpec structure
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
   $self->{cardinality} = $args{'cardinality'};
   $self->{associable_types} = $args{'associable_types'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tagging::Category::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.cis.tagging.category.update_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cardinality', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'CategoryModel::Cardinality')));
   $self->set_binding_field('key' => 'associable_types', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The display name of the category.
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
# The display name of the category.
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
# The description of the category.
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
# The description of the category.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_cardinality ()
# Gets the value of 'cardinality' property.
#
# @retval cardinality - The current value of the field.
# The associated cardinality (SINGLE, MULTIPLE) of the category.
#
# Optional#
sub get_cardinality {
   my ($self, %args) = @_;
   return $self->{'cardinality'}; 	
}

## @method set_cardinality ()
# Sets the given value for 'cardinality' property.
# 
# @param cardinality  - New value for the field.
# The associated cardinality (SINGLE, MULTIPLE) of the category.
#
sub set_cardinality {
   my ($self, %args) = @_;
   $self->{'cardinality'} = $args{'cardinality'}; 
   return;	
}

## @method get_associable_types ()
# Gets the value of 'associable_types' property.
#
# @retval associable_types - The current value of the field.
# Object types to which this category&apos;s tags can be attached. <p>
# 
# The  *set*  of associable types cannot be updated incrementally. For example, if 
#     :attr:`Com::Vmware::Cis::Tagging::Category::UpdateSpec.associable_types`  originally
#     contains {A,B,C} and you want to add D, then you need to pass {A,B,C,D} in your update
#     specification. You also cannot remove any item from this  *set* . For example, if you
#     have {A,B,C}, then you cannot remove say {A} from it. Similarly, if you start with an
#     empty  *set* , then that implies that you can tag any object and hence you cannot
#     later pass say {A}, because that would be restricting the type of objects you want to
#     tag. Thus, associable types can only grow and not shrink.</p>
#
# Optional#
sub get_associable_types {
   my ($self, %args) = @_;
   return $self->{'associable_types'}; 	
}

## @method set_associable_types ()
# Sets the given value for 'associable_types' property.
# 
# @param associable_types  - New value for the field.
# Object types to which this category&apos;s tags can be attached. <p>
# 
# The  *set*  of associable types cannot be updated incrementally. For example, if 
#     :attr:`Com::Vmware::Cis::Tagging::Category::UpdateSpec.associable_types`  originally
#     contains {A,B,C} and you want to add D, then you need to pass {A,B,C,D} in your update
#     specification. You also cannot remove any item from this  *set* . For example, if you
#     have {A,B,C}, then you cannot remove say {A} from it. Similarly, if you start with an
#     empty  *set* , then that implies that you can tag any object and hence you cannot
#     later pass say {A}, because that would be restricting the type of objects you want to
#     tag. Thus, associable types can only grow and not shrink.</p>
#
sub set_associable_types {
   my ($self, %args) = @_;
   $self->{'associable_types'} = $args{'associable_types'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Cis::Tagging::Category service
#########################################################################################
