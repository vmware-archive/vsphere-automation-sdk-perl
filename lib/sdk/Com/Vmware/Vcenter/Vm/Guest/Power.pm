########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Power.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Guest::Power
# The  ``Com::Vmware::Vcenter::Vm::Guest::Power``   *interface*  provides  *methods* 
#     for managing the guest operating system power state of a virtual machine.
#

package Com::Vmware::Vcenter::Vm::Guest::Power;

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
use Com::Vmware::Vcenter::Vm::Guest::PowerStub;

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
# Returns information about the guest operating system power state.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Guest OS powerstate information.
# The return type will be Com::Vmware::Vcenter::Vm::Guest::Power::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#

sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method shutdown ()
# Issues a request to the guest operating system asking it to perform a clean shutdown of
# all services. This request returns immediately and does not wait for the guest operating
# system to complete the operation.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual machine is not powered on.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if VMware Tools is not running.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is suspended.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the virtual machine does not support being powered on (e.g. marked as a template,
#     serving as a fault-tolerance secondary virtual machine).
#

sub shutdown {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'shutdown',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'shutdown',
                         method_args => \%args);
}


## @method reboot ()
# Issues a request to the guest operating system asking it to perform a reboot. This request
# returns immediately and does not wait for the guest operating system to complete the
# operation.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered on.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if VMware Tools is not running.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the virtual machine does not support being powered on (e.g. marked as a template,
#     serving as a fault-tolerance secondary virtual machine).
#

sub reboot {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'reboot',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'reboot',
                         method_args => \%args);
}


## @method standby ()
# Issues a request to the guest operating system asking it to perform a suspend operation.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual machine is suspended.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if VMware Tools is not running.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered on.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the virtual machine does not support being powered on (e.g. marked as a template,
#     serving as a fault-tolerance secondary virtual machine).
#

sub standby {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'standby',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'standby',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Guest::Power service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Guest::Power::State
#
# Possible guest power states.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Power::State::RUNNING #
#The guest OS is running.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Power::State::SHUTTING_DOWN #
#The guest OS is shutting down
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Power::State::RESETTING #
#The guest OS is resetting
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Power::State::STANDBY #
#The guest OS is in standby.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Power::State::NOT_RUNNING #
#The guest OS is not running.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Power::State::UNAVAILABLE #
#The guest OS power state is unknown.

package Com::Vmware::Vcenter::Vm::Guest::Power::State;

use constant {
    RUNNING =>  'RUNNING',
    SHUTTING_DOWN =>  'SHUTTING_DOWN',
    RESETTING =>  'RESETTING',
    STANDBY =>  'STANDBY',
    NOT_RUNNING =>  'NOT_RUNNING',
    UNAVAILABLE =>  'UNAVAILABLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Power::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.guest.power.state',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Power::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Guest::Power service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Guest::Power service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Guest::Power::Info
#
#
# Information about the guest operating system power state.

package Com::Vmware::Vcenter::Vm::Guest::Power::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Power::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{state} = $args{'state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Power::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.power.info');
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest', 'type_name' => 'Power::State'));
   bless $self, $class;
   return $self;
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# The power state of the guest operating system.
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
# The power state of the guest operating system.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Guest::Power service
#########################################################################################
