########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Sata.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata``   *interface*  provides 
#     *methods*  for configuring the virtual SATA adapters of a virtual machine.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for the virtual SATA adapter device.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata;

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
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::SataStub;

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
# Returns commonly used information about the virtual SATA adapters belonging to the virtual
# machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# List of commonly used information about virtual SATA adapters.
# The return type will be Array of
# Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
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

sub list {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method get ()
# Returns information about a virtual SATA adapter.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param adapter [REQUIRED] Virtual SATA adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.SataAdapter).
# . The value must be str.
#
# @retval 
# Information about the specified virtual SATA adapter.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual SATA adapter is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
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

sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $adapter = $args {adapter};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method create ()
# Adds a virtual SATA adapter to the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for the new virtual SATA adapter.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec.
#
# @retval 
# Virtual SATA adapter identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.SataAdapter).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reported that the SATA adapter was created but was unable to confirm the
#     creation because the identifier of the new adapter could not be determined.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is suspended
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if there are no more available SATA buses on the virtual machine.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInUse 
# if the specified SATA bus or PCI address is in use.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the specified SATA bus or PCI address is out of bounds.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is busy performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
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
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the guest operating system of the virtual machine is not supported and  *spec* 
#     includes  *null*   *fields*  that default to guest-specific values.
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


## @method delete ()
# Removes a virtual SATA adapter from the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param adapter [REQUIRED] Virtual SATA adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.SataAdapter).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is suspended
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual SATA adapter is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is busy performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
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

sub delete {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $adapter = $args {adapter};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Type
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Type``   *enumerated type* 
#     defines the valid emulation types for a virtual SATA adapter.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Type::AHCI #
#AHCI host bus adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Type;

use constant {
    AHCI =>  'AHCI',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.adapter.sata.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Info``   *class*  contains
#     information about a virtual SATA adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{label} = $args{'label'};
   $self->{type} = $args{'type'};
   $self->{bus} = $args{'bus'};
   $self->{pci_slot_number} = $args{'pci_slot_number'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.adapter.sata.info');
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Sata::Type'));
   $self->set_binding_field('key' => 'bus', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'pci_slot_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_label ()
# Gets the value of 'label' property.
#
# @retval label - The current value of the field.
# Device label.
#
# String#
sub get_label {
   my ($self, %args) = @_;
   return $self->{'label'}; 	
}

## @method set_label ()
# Sets the given value for 'label' property.
# 
# @param label  - New value for the field.
# Device label.
#
sub set_label {
   my ($self, %args) = @_;
   $self->{'label'} = $args{'label'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Adapter type.
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
# Adapter type.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_bus ()
# Gets the value of 'bus' property.
#
# @retval bus - The current value of the field.
# SATA bus number.
#
# long#
sub get_bus {
   my ($self, %args) = @_;
   return $self->{'bus'}; 	
}

## @method set_bus ()
# Sets the given value for 'bus' property.
# 
# @param bus  - New value for the field.
# SATA bus number.
#
sub set_bus {
   my ($self, %args) = @_;
   $self->{'bus'} = $args{'bus'}; 
   return;	
}

## @method get_pci_slot_number ()
# Gets the value of 'pci_slot_number' property.
#
# @retval pci_slot_number - The current value of the field.
# Address of the SATA adapter on the PCI bus.
#
# Optional#
sub get_pci_slot_number {
   my ($self, %args) = @_;
   return $self->{'pci_slot_number'}; 	
}

## @method set_pci_slot_number ()
# Sets the given value for 'pci_slot_number' property.
# 
# @param pci_slot_number  - New value for the field.
# Address of the SATA adapter on the PCI bus.
#
sub set_pci_slot_number {
   my ($self, %args) = @_;
   $self->{'pci_slot_number'} = $args{'pci_slot_number'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec``   *class* 
#     provides a specification for the configuration of a newly-created virtual SATA
#     adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec structure
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
   $self->{bus} = $args{'bus'};
   $self->{pci_slot_number} = $args{'pci_slot_number'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.adapter.sata.create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Sata::Type')));
   $self->set_binding_field('key' => 'bus', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'pci_slot_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Adapter type.
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
# Adapter type.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_bus ()
# Gets the value of 'bus' property.
#
# @retval bus - The current value of the field.
# SATA bus number.
#
# Optional#
sub get_bus {
   my ($self, %args) = @_;
   return $self->{'bus'}; 	
}

## @method set_bus ()
# Sets the given value for 'bus' property.
# 
# @param bus  - New value for the field.
# SATA bus number.
#
sub set_bus {
   my ($self, %args) = @_;
   $self->{'bus'} = $args{'bus'}; 
   return;	
}

## @method get_pci_slot_number ()
# Gets the value of 'pci_slot_number' property.
#
# @retval pci_slot_number - The current value of the field.
# Address of the SATA adapter on the PCI bus.
#
# Optional#
sub get_pci_slot_number {
   my ($self, %args) = @_;
   return $self->{'pci_slot_number'}; 	
}

## @method set_pci_slot_number ()
# Sets the given value for 'pci_slot_number' property.
# 
# @param pci_slot_number  - New value for the field.
# Address of the SATA adapter on the PCI bus.
#
sub set_pci_slot_number {
   my ($self, %args) = @_;
   $self->{'pci_slot_number'} = $args{'pci_slot_number'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Summary``   *class* 
#     contains commonly used information about a Virtual SATA adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{adapter} = $args{'adapter'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.adapter.sata.summary');
   $self->set_binding_field('key' => 'adapter', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_adapter ()
# Gets the value of 'adapter' property.
#
# @retval adapter - The current value of the field.
# Identifier of the virtual SATA adapter.
#
# ID#
sub get_adapter {
   my ($self, %args) = @_;
   return $self->{'adapter'}; 	
}

## @method set_adapter ()
# Sets the given value for 'adapter' property.
# 
# @param adapter  - New value for the field.
# Identifier of the virtual SATA adapter.
#
sub set_adapter {
   my ($self, %args) = @_;
   $self->{'adapter'} = $args{'adapter'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Sata service
#########################################################################################
