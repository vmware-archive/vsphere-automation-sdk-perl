########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Operation.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Vapi::Metadata::Metamodel;

## @class Com::Vmware::Vapi::Metadata::Metamodel::Service::Operation
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Service::Operation``   *interface* 
#     provides  *methods*  to retrieve metamodel information of an operation element in the
#     interface definition language.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for operation element.

package Com::Vmware::Vapi::Metadata::Metamodel::Service::Operation;

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
use Com::Vmware::Vapi::Metadata::Metamodel::Service::OperationStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vapi.metadata.metamodel.service.operation';


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

## @method list ()
# Returns the identifiers for the operation elements that are defined in the scope of 
# ``service_id`` .
#
# @param service_id [REQUIRED] Identifier of the service element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.service).
# . The value must be str.
#
# @retval 
# The list of identifiers for the operation elements that are defined in the scope of 
#     ``service_id`` .
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.operation).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service element associated with  ``service_id``  does not exist in any of the
#     package elements.
#
sub list {
   my ($self, %args) = @_;
   my $service_id = $args {service_id};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method get ()
# Retrieves the metamodel information about an operation element corresponding to 
# ``operation_id``  contained in the service element corresponding to  ``service_id`` .
#
# @param service_id [REQUIRED] Identifier of the service element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.service).
# . The value must be str.
#
# @param operation_id [REQUIRED] Identifier of the operation element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.operation).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo  instance that
#     corresponds to  ``operation_id``  defined in scope  ``service_id`` .
# The return type will be Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service element associated with  ``service_id``  does not exist in any of the
#     package elements.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the operation element associated with  ``operation_id``  does not exist in the
#     service element.
#
sub get {
   my ($self, %args) = @_;
   my $service_id = $args {service_id};
   my $operation_id = $args {operation_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Service::Operation service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Service::Operation service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Metamodel::Service::Operation service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Metamodel::Service::Operation service
#########################################################################################
