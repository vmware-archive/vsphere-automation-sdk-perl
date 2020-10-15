########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Tickets.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Console::Tickets
# The  ``Com::Vmware::Vcenter::Vm::Console::Tickets``   *interface*  provides  *methods*
#     for managing the virtual machine console tickets. This  *interface*  was added in
#     vSphere API 7.0.0.2.
#

package Com::Vmware::Vcenter::Vm::Console::Tickets;

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
use Com::Vmware::Vcenter::Vm::Console::TicketsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.console.tickets';


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
# Creates a virtual machine console ticket of a given ticket type. The created ticket is a
# one time use URI. The validity of the ticket is 30 minutes, if not used with in the time
# frame the ticket expires. <p>
# 
# The  :attr:`Com::Vmware::Vcenter::Vm::Console::Tickets::Type.VMRC`  ticket contains the IP
# address or the DNS resolvable name of the vCenter server. This ticket requires
# installation of VMware Workstation, VMware Fusion or VMRC to be installed on the machine
# where the ticket has to be opened. This ticket can be acquired even when the VM is turned
# off. </p>
# 
# <p>
# 
# The  :attr:`Com::Vmware::Vcenter::Vm::Console::Tickets::Type.WEBMKS`  ticket contains the
# IP address of the DNS resolvable name of the ESX server. This ticket requires user to
# embed this ticket in a HTML page using VMware HTML Console SDK -
# https://www.vmware.com/support/developer/html-console This ticket can be acquired only
# when the VM is turned on.</p>
# 
# . This  *method*  was added in vSphere API 7.0.0.2.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for the console ticket to be created.
# . The value must be Com::Vmware::Vcenter::Vm::Console::Tickets::CreateSpec.
#
# @retval 
# Commonly used information about the virtual machine console ticket.
# The return type will be Com::Vmware::Vcenter::Vm::Console::Tickets::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the {@link CreateSpec#type)  *field*  contains a value that is not supported by the
#     server.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is powered off and requested ticket type is 
#     :attr:`Com::Vmware::Vcenter::Vm::Console::Tickets::Type.WEBMKS` 
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
#
sub create {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Console::Tickets service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Console::Tickets::Type
#
# The  ``Com::Vmware::Vcenter::Vm::Console::Tickets::Type``   *enumerated type*  defines
#     the types of console tickets. This  *enumeration*  was added in vSphere API 7.0.0.2.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Console::Tickets::Type::VMRC #
#Virtual machine remote console ticket. This  *constant*  was added in vSphere API 7.0.0.2.
#
# Constant Com::Vmware::Vcenter::Vm::Console::Tickets::Type::WEBMKS #
#Web socket console ticket. This  *constant*  was added in vSphere API 7.0.0.2.

package Com::Vmware::Vcenter::Vm::Console::Tickets::Type;

use constant {
    VMRC =>  'VMRC',
    WEBMKS =>  'WEBMKS',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Console::Tickets::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.console.tickets.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Console::Tickets::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Console::Tickets service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Console::Tickets service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Console::Tickets::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Console::Tickets::CreateSpec``   *class*  defines the
#     information used to create the virtual machine console ticket. This  *class*  was
#     added in vSphere API 7.0.0.2.

package Com::Vmware::Vcenter::Vm::Console::Tickets::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Console::Tickets::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Console::Tickets::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.console.tickets.create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Console', 'type_name' => 'Tickets::Type'));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of virtual machine console ticket. This  *field*  was added in vSphere API
#     7.0.0.2.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type of virtual machine console ticket. This  *field*  was added in vSphere API
#     7.0.0.2.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Console::Tickets::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm::Console::Tickets::Summary``   *class*  contains
#     commonly used information about the virtual machine console ticket. This  *class*  was
#     added in vSphere API 7.0.0.2.

package Com::Vmware::Vcenter::Vm::Console::Tickets::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Console::Tickets::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ticket} = $args{'ticket'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Console::Tickets::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.console.tickets.summary');
   $self->set_binding_field('key' => 'ticket', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   bless $self, $class;
   return $self;
}

## @method get_ticket ()
# Gets the value of 'ticket' property.
#
# @retval ticket - The current value of the field.
# Console ticket URI. This  *field*  was added in vSphere API 7.0.0.2.
#
# URI#
sub get_ticket {
   my ($self, %args) = @_;
   return $self->{'ticket'}; 	
}

## @method set_ticket ()
# Sets the given value for 'ticket' property.
# 
# @param ticket  - New value for the field.
# Console ticket URI. This  *field*  was added in vSphere API 7.0.0.2.
#
sub set_ticket {
   my ($self, %args) = @_;
   $self->{'ticket'} = $args{'ticket'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Console::Tickets service
#########################################################################################
