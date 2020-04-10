########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Power.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Power
# The  ``Com::Vmware::Vcenter::Vm::Power``   *interface*  provides  *methods*  for
#     managing the power state of a virtual machine.
#

package Com::Vmware::Vcenter::Vm::Power;

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
use Com::Vmware::Vcenter::Vm::PowerStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.power';


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
# Returns the power state information of a virtual machine.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Power state information for the specified virtual machine.
# The return type will be Com::Vmware::Vcenter::Vm::Power::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration or execution state cannot be accessed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``System.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method start ()
# Powers on a powered-off or suspended virtual machine.
#
# Note:
# Privileges required for this operation are VirtualMachine.Interact.PowerOn.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual machine is already powered on.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the virtual machine does not support being powered on (e.g. marked as a template,
#     serving as a fault-tolerance secondary virtual machine).
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if resources cannot be allocated for the virtual machine (e.g. physical resource
#     allocation policy cannot be satisfied, insufficient licenses are available to run the
#     virtual machine).
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if resources required by the virtual machine are not accessible (e.g. virtual machine
#     configuration files or virtual disks are on inaccessible storage, no hosts are
#     available to run the virtual machine).
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInUse 
# if resources required by the virtual machine are in use (e.g. virtual machine
#     configuration files or virtual disks are locked, host containing the virtual machine
#     is an HA failover host).
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``VirtualMachine.Interact.PowerOn`` . </li>
# </ul>
#
sub start {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'start',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'start',
                         method_args => \%args);
}

## @method stop ()
# Powers off a powered-on or suspended virtual machine.
#
# Note:
# Privileges required for this operation are VirtualMachine.Interact.PowerOff.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual machine is already powered off.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``VirtualMachine.Interact.PowerOff`` . </li>
# </ul>
#
sub stop {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'stop',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'stop',
                         method_args => \%args);
}

## @method suspend ()
# Suspends a powered-on virtual machine.
#
# Note:
# Privileges required for this operation are VirtualMachine.Interact.Suspend.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual machine is already suspended.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is powered off.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``VirtualMachine.Interact.Suspend`` . </li>
# </ul>
#
sub suspend {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'suspend',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'suspend',
                         method_args => \%args);
}

## @method reset ()
# Resets a powered-on virtual machine.
#
# Note:
# Privileges required for this operation are VirtualMachine.Interact.Reset.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is powered off or suspended.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is performing another operation
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``VirtualMachine.Interact.Reset`` . </li>
# </ul>
#
sub reset {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'reset',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'reset',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Power service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Power::State
#
# The  ``Com::Vmware::Vcenter::Vm::Power::State``   *enumerated type*  defines the valid
#     power states for a virtual machine.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Power::State::POWERED_OFF #
#The virtual machine is powered off.
#
# Constant Com::Vmware::Vcenter::Vm::Power::State::POWERED_ON #
#The virtual machine is powered on.
#
# Constant Com::Vmware::Vcenter::Vm::Power::State::SUSPENDED #
#The virtual machine is suspended.

package Com::Vmware::Vcenter::Vm::Power::State;

use constant {
    POWERED_OFF =>  'POWERED_OFF',
    POWERED_ON =>  'POWERED_ON',
    SUSPENDED =>  'SUSPENDED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Power::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.power.state',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Power::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Power service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Power service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Power::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Power::Info``   *class*  contains information about
#     the power state of a virtual machine.

package Com::Vmware::Vcenter::Vm::Power::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Power::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'state',
         'case_map' => {
               'POWERED_OFF' => ['clean_power_off'],
               'POWERED_ON' => [],
               'SUSPENDED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{state} = $args{'state'};
   $self->{clean_power_off} = $args{'clean_power_off'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Power::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.power.info');
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Power::State'));
   $self->set_binding_field('key' => 'clean_power_off', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# Power state of the virtual machine.
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
# Power state of the virtual machine.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_clean_power_off ()
# Gets the value of 'clean_power_off' property.
#
# @retval clean_power_off - The current value of the field.
# Flag indicating whether the virtual machine was powered off cleanly. This  *field* 
#     may be used to detect that the virtual machine crashed unexpectedly and should be
#     restarted.
#
# optional#
sub get_clean_power_off {
   my ($self, %args) = @_;
   return $self->{'clean_power_off'}; 	
}

## @method set_clean_power_off ()
# Sets the given value for 'clean_power_off' property.
# 
# @param clean_power_off  - New value for the field.
# Flag indicating whether the virtual machine was powered off cleanly. This  *field* 
#     may be used to detect that the virtual machine crashed unexpectedly and should be
#     restarted.
#
sub set_clean_power_off {
   my ($self, %args) = @_;
   $self->{'clean_power_off'} = $args{'clean_power_off'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Power service
#########################################################################################
