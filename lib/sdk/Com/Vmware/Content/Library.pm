########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Library.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library
# The  ``Com::Vmware::Content::Library``   *interface*  provides  *methods*  to manage
#     and find  class Com::Vmware::Content::LibraryModel  entities. <p>
# 
# The  ``Com::Vmware::Content::Library``   *interface*  provides support for generic
#     functionality which can be applied equally to all types of libraries. The
#     functionality provided by this  *interface*  will not affect the properties specific
#     to the type of library. See also  class Com::Vmware::Content::LocalLibrary  and  class
#     Com::Vmware::Content::SubscribedLibrary .</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for library.

package Com::Vmware::Content::Library;

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
use Com::Vmware::Content::LibraryStub;

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

## @method get ()
# Returns a given  class Com::Vmware::Content::LibraryModel .
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param library_id [REQUIRED]  Identifier of the library to return.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Content::LibraryModel  instance with the specified 
#     ``library_id`` .
# The return type will be Com::Vmware::Content::LibraryModel
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the specified library does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library_id``  requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $library_id = $args {library_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Returns the identifiers of all libraries of any type in the Content Library.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @retval 
# The  *list*  of all identifiers of all libraries in the Content Library.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# The return type will be Array of str
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method find ()
# Returns a list of all the visible (as determined by authorization policy) libraries
# matching the requested  class Com::Vmware::Content::Library::FindSpec .
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param spec [REQUIRED]  Specification describing what properties to filter on.
# . The value must be Com::Vmware::Content::Library::FindSpec.
#
# @retval 
# The  *list*  of identifiers of all the visible libraries matching the given  ``spec``
#     .
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if no properties are specified in the  ``spec`` .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
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
# Updates the properties of a library. <p>
# 
# This is an incremental update to the library. Any  *field*  in the  class
# Com::Vmware::Content::LibraryModel   *class*  that is  *null*  will not be modified. </p>
# 
# <p>
# 
# This  *method*  will only update the common properties for all library types. This will
# not, for example, update the  :attr:`Com::Vmware::Content::LibraryModel.publish_info`  of
# a local library, nor the  :attr:`Com::Vmware::Content::LibraryModel.subscription_info`  of
# a subscribed library. Specific properties are updated in 
# :func:`Com::Vmware::Content::LocalLibrary.update`  and 
# :func:`Com::Vmware::Content::SubscribedLibrary.update` .</p>
#
# Note:
# Privileges required for this operation are ContentLibrary.UpdateLibrary.
#
# @param library_id [REQUIRED]  Identifier of the library to update.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @param update_spec [REQUIRED]  Specification of the new property values to set on the library.
# . The value must be Com::Vmware::Content::LibraryModel.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library associated with  ``library_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the  ``update_spec``  is not valid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Content::LibraryModel.version`  of  ``update_spec``  is
#     not equal to the current version of the library.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library_id``  requires  ``ContentLibrary.UpdateLibrary`` . </li>
# </ul>
#

sub update {
   my ($self, %args) = @_;
   my $library_id = $args {library_id};
   my $update_spec = $args {update_spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library service
#########################################################################################

## @class Com::Vmware::Content::Library::FindSpec
#
#
# Specifies the properties that can be used as a filter to find libraries. When multiple
#      *fields*  are specified, all properties of the library must match the specification.

package Com::Vmware::Content::Library::FindSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::FindSpec structure
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
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::FindSpec');
   $self->set_binding_name('name' => 'com.vmware.content.library.find_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content', 'type_name' => 'LibraryModel::LibraryType')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the library to search. The name is case-insensitive. See 
#     :attr:`Com::Vmware::Content::LibraryModel.name` .
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
# Name of the library to search. The name is case-insensitive. See 
#     :attr:`Com::Vmware::Content::LibraryModel.name` .
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Library type to search. See  :attr:`Com::Vmware::Content::LibraryModel.type` .
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
# Library type to search. See  :attr:`Com::Vmware::Content::LibraryModel.type` .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Content::Library service
#########################################################################################
