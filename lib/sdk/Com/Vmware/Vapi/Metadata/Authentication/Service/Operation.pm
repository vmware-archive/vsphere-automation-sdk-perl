########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Operation.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Vapi::Metadata::Authentication;

## @class Com::Vmware::Vapi::Metadata::Authentication::Service::Operation
# The  ``Com::Vmware::Vapi::Metadata::Authentication::Service::Operation``   *interface*
#     provides  *methods*  to retrieve authentication information of an operation element.
#     <p>
# 
# An operation element is said to contain authentication information if authentication
#     schemes are specified in the authentication definition file.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for operation.

package Com::Vmware::Vapi::Metadata::Authentication::Service::Operation;

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
use Com::Vmware::Vapi::Metadata::Authentication::Service::OperationStub;

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

## @method list ()
# Returns the identifiers for the operation elements contained in the service element
# corresponding to  ``service_id``  that have authentication information.
#
# @param service_id [REQUIRED] Identifier of the service element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.service).
# . The value must be str.
#
# @retval 
# List of identifiers for the operation elements contained in the service element that
#     have authentication information.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.operation).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service element associated with  ``service_id``  does not have any operation
#     elements that have authentication information.
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
# Retrieves the authentication information about an operation element corresponding to 
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
# The  class Com::Vmware::Vapi::Metadata::Authentication::OperationInfo  instance that
#     corresponds to  ``operation_id`` .
# The return type will be Com::Vmware::Vapi::Metadata::Authentication::OperationInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service element associated with  ``service_id``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the operation element associated with  ``operation_id``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the operation element associated with  ``operation_id``  does not have any
#     authentication information.
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
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Authentication::Service::Operation service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Authentication::Service::Operation service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Authentication::Service::Operation service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Authentication::Service::Operation service
#########################################################################################
