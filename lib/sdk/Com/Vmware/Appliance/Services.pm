########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Services.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Services
# The  ``Service``   *interface*  provides  *methods*  to manage a single/set of
#     appliance services. This  *interface*  was added in vSphere API 6.7
#

package Com::Vmware::Appliance::Services;

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
use Com::Vmware::Appliance::ServicesStub;

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

## @method start ()
# Starts a service. This  *method*  was added in vSphere API 6.7
#
# @param service [REQUIRED] identifier of the service to start
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.services).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service associated with  ``service``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the operation is denied in the current state of the service. If a stop or restart
#     operation is in progress, the start operation will not be allowed.
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if start operation is issued on a service which has startup type null.
#
# @throw Com::Vmware::Vapi::Std::Errors::TimedOut 
# if any timeout occurs during the execution of the start operation. Timeout occurs when
#     the service takes longer than StartTimeout to start.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any other error occurs during the execution of the operation.
#

sub start {
   my ($self, %args) = @_;
   my $service = $args {service};

   $self->validate_args (method_name => 'start',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'start',
                         method_args => \%args);
}


## @method stop ()
# Stops a service. This  *method*  was added in vSphere API 6.7
#
# @param service [REQUIRED] identifier of the service to stop
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.services).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service associated with  ``service``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any other error occurs during the execution of the operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the operation is denied in the current state of the service. If a stop operation is
#     in progress, issuing another stop operation will lead to this error.
#

sub stop {
   my ($self, %args) = @_;
   my $service = $args {service};

   $self->validate_args (method_name => 'stop',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'stop',
                         method_args => \%args);
}


## @method restart ()
# Restarts a service. This  *method*  was added in vSphere API 6.7
#
# @param service [REQUIRED] identifier of the service to restart
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.services).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service associated with  ``service``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::TimedOut 
# if any timeout occurs during the execution of the restart operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the operation is denied in the current state of the service. If a stop or start
#     operation is in progress, issuing a restart operation will lead to this error.
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if a restart operation is issued on a service which has startup type null
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any other error occurs during the execution of the operation.
#

sub restart {
   my ($self, %args) = @_;
   my $service = $args {service};

   $self->validate_args (method_name => 'restart',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'restart',
                         method_args => \%args);
}


## @method get ()
# Returns the state of a service. This  *method*  was added in vSphere API 6.7
#
# @param service [REQUIRED] identifier of the service whose state is being queried.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.services).
# . The value must be str.
#
# @retval 
# Service Info structure.
# The return type will be Com::Vmware::Appliance::Services::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service associated with  ``service``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any other error occurs during the execution of the operation.
#

sub get {
   my ($self, %args) = @_;
   my $service = $args {service};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Lists details of vCenter services. This  *method*  was added in vSphere API 6.7
#
# @retval 
# Map of service identifiers to service Info structures.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.services).
# The return type will be Dictionary of str and Com::Vmware::Appliance::Services::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Services service
#########################################################################################

## @class Com::Vmware::Appliance::Services::State
#
# The  ``Com::Vmware::Appliance::Services::State``   *enumerated type*  defines valid
#     Run State for services. This  *enumeration*  was added in vSphere API 6.7
#
#
#
# Constant Com::Vmware::Appliance::Services::State::STARTING #
#Service Run State is Starting, it is still not functional. This  *constant*  was added in
# vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Services::State::STOPPING #
#Service Run State is Stopping, it is not functional. This  *constant*  was added in
# vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Services::State::STARTED #
#Service Run State is Started, it is fully functional. This  *constant*  was added in
# vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Services::State::STOPPED #
#Service Run State is Stopped. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Services::State;

use constant {
    STARTING =>  'STARTING',
    STOPPING =>  'STOPPING',
    STARTED =>  'STARTED',
    STOPPED =>  'STOPPED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Services::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.services.state',
                           'binding_class' => 'Com::Vmware::Appliance::Services::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Services service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Services service
#########################################################################################

## @class Com::Vmware::Appliance::Services::Info
#
#
# The  ``Com::Vmware::Appliance::Services::Info``   *class*  contains information about
#     a service. This  *class*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Services::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Services::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{state} = $args{'state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Services::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.services.info');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Services::State'));
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Service description. This  *field*  was added in vSphere API 6.7
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
# Service description. This  *field*  was added in vSphere API 6.7
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# Running State. This  *field*  was added in vSphere API 6.7
#
# State#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# Running State. This  *field*  was added in vSphere API 6.7
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Services service
#########################################################################################
