########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Service.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Authentication::Service
# The  ``Com::Vmware::Vapi::Metadata::Authentication::Service``   *interface*  provides 
#     *methods*  to retrieve authentication information of a service element. <p>
# 
# A service element is said to contain authentication information if there is a default
#     authentication assigned to all operation elements contained in a service element or if
#     one of the operation elements contained in this service element has authentication
#     information.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for service.

package Com::Vmware::Vapi::Metadata::Authentication::Service;

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
use Com::Vmware::Vapi::Metadata::Authentication::ServiceStub;

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
# Returns the identifiers for the service elements that have authentication information.
#
# @retval 
# The list of identifiers for the service elements that have authentication information.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.service).
# The return type will be Array of str
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Retrieves authentication information about the service element corresponding to 
# ``service_id`` .
#
# @param service_id [REQUIRED] Identifier of the service element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.service).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo  instance that
#     corresponds to  ``service_id`` 
# The return type will be Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service element associated with  ``service_id``  does not have any
#     authentication information.
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
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Authentication::Service service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Authentication::Service service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Authentication::Service service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Authentication::Service service
#########################################################################################
