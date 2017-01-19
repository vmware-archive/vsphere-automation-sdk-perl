########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Service.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Metamodel::Service
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Service``   *interface*  provides 
#     *methods*  to retrieve metamodel information about a service element in the interface
#     definition language. <p>
# 
# A service is a logical grouping of operations that operate on some entity. A service
#     element describes a service. It contains operation elements that describe the
#     operations grouped in the service. It also contains structure elements and enumeration
#     elements corresponding to the structures and enumerations defined in the service.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for service.

package Com::Vmware::Vapi::Metadata::Metamodel::Service;

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
use Com::Vmware::Vapi::Metadata::Metamodel::ServiceStub;

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
# Returns the identifiers for the service elements that are currently registered with the
# infrastructure. <p>
# 
# The list of service elements is an aggregate list of all the service elements contained in
# all the package elements.</p>
#
# @retval 
# The list of identifiers for the service elements that are currently registered with
#     the infrastructure.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.service).
# The return type will be Array of str
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Retrieves information about the service element corresponding to  ``service_id`` . <p>
# 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo  contains the metamodel
# information for the operation elements, structure elements and enumeration elements
# contained in the service element.</p>
#
# @param service_id [REQUIRED] Identifier of the service element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.service).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo  instance that
#     corresponds to  ``service_id`` 
# The return type will be Com::Vmware::Vapi::Metadata::Metamodel::ServiceInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service element associated with  ``service_id``  is not registered with the
#     infrastructure.
#

sub get {
   my ($self, %args) = @_;
   my $service_id = $args {service_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Service service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Service service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Metamodel::Service service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Metamodel::Service service
#########################################################################################
