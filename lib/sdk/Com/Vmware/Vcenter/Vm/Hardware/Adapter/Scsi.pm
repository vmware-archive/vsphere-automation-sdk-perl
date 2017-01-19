########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Scsi.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Vm::Hardware;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi``   *interface*  provides 
#     *methods*  for configuring the virtual SCSI adapters of a virtual machine.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for the virtual SCSI adapter device.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi;

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
use Com::Vmware::Vcenter::Vm::Hardware::Adapter::ScsiStub;

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
# Returns commonly used information about the virtual SCSI adapters belonging to the virtual
# machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# List of commonly used information about virtual SCSI adapters.
# The return type will be Array of
# Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Summary
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
# Returns information about a virtual SCSI adapter.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param adapter [REQUIRED] Virtual SCSI adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.ScsiAdapter).
# . The value must be str.
#
# @retval 
# Information about the specified virtual SCSI adapter.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual SCSI adapter is not found.
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
# Adds a virtual SCSI adapter to the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for the new virtual SCSI adapter.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec.
#
# @retval 
# Virtual SCSI adapter identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.ScsiAdapter).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reported that the SCSI adapter was created but was unable to confirm the
#     creation because the identifier of the new adapter could not be determined.
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is suspended
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if there are no more available SCSI buses on the virtual machine.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInUse 
# if the specified SCSI bus is in use.
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


## @method update ()
# Updates the configuration of a virtual SCSI adapter.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param adapter [REQUIRED] Virtual SCSI adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.ScsiAdapter).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the virtual SCSI adapter.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual SCSI adapter is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if one or more of the  *fields*  specified in the  ``spec``   *parameter*  cannot be
#     modified due to the current power state of the virtual machine or the connection state
#     of the virtual SCSI adapter.
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

sub update {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $adapter = $args {adapter};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method delete ()
# Removes a virtual SCSI adapter from the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param adapter [REQUIRED] Virtual SCSI adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.ScsiAdapter).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is suspended
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual SCSI adapter is not found.
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
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Type
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Type``   *enumerated type* 
#     defines the valid emulation types for a virtual SCSI adapter.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Type::BUSLOGIC #
#BusLogic host bus adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Type::LSILOGIC #
#LSI Logic host bus adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Type::LSILOGICSAS #
#LSI Logic SAS 1068 host bus adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Type::PVSCSI #
#Paravirtualized host bus adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Type;

use constant {
    BUSLOGIC =>  'BUSLOGIC',
    LSILOGIC =>  'LSILOGIC',
    LSILOGICSAS =>  'LSILOGICSAS',
    PVSCSI =>  'PVSCSI',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.adapter.scsi.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing``   *enumerated
#     type*  defines the valid bus sharing modes for a virtual SCSI adapter.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing::NONE #
#The virtual SCSI bus is not shared.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing::VIRTUAL #
#The virtual SCSI bus is shared between two or more virtual machines. In this case, no
# physical machine is involved.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing::PHYSICAL #
#The virtual SCSI bus is shared between two or more virtual machines residing on different
# physical hosts.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing;

use constant {
    NONE =>  'NONE',
    VIRTUAL =>  'VIRTUAL',
    PHYSICAL =>  'PHYSICAL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.adapter.scsi.sharing',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Sharing');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Info``   *class*  contains
#     information about a virtual SCSI adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Info structure
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
   $self->{scsi} = $args{'scsi'};
   $self->{pci_slot_number} = $args{'pci_slot_number'};
   $self->{sharing} = $args{'sharing'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.adapter.scsi.info');
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Scsi::Type'));
   $self->set_binding_field('key' => 'scsi', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'ScsiAddressInfo'));
   $self->set_binding_field('key' => 'pci_slot_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'sharing', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Scsi::Sharing'));
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

## @method get_scsi ()
# Gets the value of 'scsi' property.
#
# @retval scsi - The current value of the field.
# Address of the SCSI adapter on the SCSI bus.
#
# ScsiAddressInfo#
sub get_scsi {
   my ($self, %args) = @_;
   return $self->{'scsi'}; 	
}

## @method set_scsi ()
# Sets the given value for 'scsi' property.
# 
# @param scsi  - New value for the field.
# Address of the SCSI adapter on the SCSI bus.
#
sub set_scsi {
   my ($self, %args) = @_;
   $self->{'scsi'} = $args{'scsi'}; 
   return;	
}

## @method get_pci_slot_number ()
# Gets the value of 'pci_slot_number' property.
#
# @retval pci_slot_number - The current value of the field.
# Address of the SCSI adapter on the PCI bus. If the PCI address is invalid, the server
#     will change it when the VM is started or as the device is hot added.
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
# Address of the SCSI adapter on the PCI bus. If the PCI address is invalid, the server
#     will change it when the VM is started or as the device is hot added.
#
sub set_pci_slot_number {
   my ($self, %args) = @_;
   $self->{'pci_slot_number'} = $args{'pci_slot_number'}; 
   return;	
}

## @method get_sharing ()
# Gets the value of 'sharing' property.
#
# @retval sharing - The current value of the field.
# Bus sharing mode.
#
# Sharing#
sub get_sharing {
   my ($self, %args) = @_;
   return $self->{'sharing'}; 	
}

## @method set_sharing ()
# Sets the given value for 'sharing' property.
# 
# @param sharing  - New value for the field.
# Bus sharing mode.
#
sub set_sharing {
   my ($self, %args) = @_;
   $self->{'sharing'} = $args{'sharing'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec``   *class* 
#     provides a specification for the configuration of a newly-created virtual SCSI
#     adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec structure
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
   $self->{sharing} = $args{'sharing'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.adapter.scsi.create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Scsi::Type')));
   $self->set_binding_field('key' => 'bus', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'pci_slot_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'sharing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Scsi::Sharing')));
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
# SCSI bus number.
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
# SCSI bus number.
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
# Address of the SCSI adapter on the PCI bus. If the PCI address is invalid, the server
#     will change it when the VM is started or as the device is hot added.
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
# Address of the SCSI adapter on the PCI bus. If the PCI address is invalid, the server
#     will change it when the VM is started or as the device is hot added.
#
sub set_pci_slot_number {
   my ($self, %args) = @_;
   $self->{'pci_slot_number'} = $args{'pci_slot_number'}; 
   return;	
}

## @method get_sharing ()
# Gets the value of 'sharing' property.
#
# @retval sharing - The current value of the field.
# Bus sharing mode.
#
# Optional#
sub get_sharing {
   my ($self, %args) = @_;
   return $self->{'sharing'}; 	
}

## @method set_sharing ()
# Sets the given value for 'sharing' property.
# 
# @param sharing  - New value for the field.
# Bus sharing mode.
#
sub set_sharing {
   my ($self, %args) = @_;
   $self->{'sharing'} = $args{'sharing'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::UpdateSpec``   *class* 
#     describes the updates to be made to the configuration of a virtual SCSI adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{sharing} = $args{'sharing'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.adapter.scsi.update_spec');
   $self->set_binding_field('key' => 'sharing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Scsi::Sharing')));
   bless $self, $class;
   return $self;
}

## @method get_sharing ()
# Gets the value of 'sharing' property.
#
# @retval sharing - The current value of the field.
# Bus sharing mode. <p>
# 
#  This  *field*  may only be modified if the virtual machine is not powered on.</p>
#
# Optional#
sub get_sharing {
   my ($self, %args) = @_;
   return $self->{'sharing'}; 	
}

## @method set_sharing ()
# Sets the given value for 'sharing' property.
# 
# @param sharing  - New value for the field.
# Bus sharing mode. <p>
# 
#  This  *field*  may only be modified if the virtual machine is not powered on.</p>
#
sub set_sharing {
   my ($self, %args) = @_;
   $self->{'sharing'} = $args{'sharing'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Summary``   *class* 
#     contains commonly used information about a Virtual SCSI adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Summary structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.adapter.scsi.summary');
   $self->set_binding_field('key' => 'adapter', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_adapter ()
# Gets the value of 'adapter' property.
#
# @retval adapter - The current value of the field.
# Identifier of the virtual SCSI adapter.
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
# Identifier of the virtual SCSI adapter.
#
sub set_adapter {
   my ($self, %args) = @_;
   $self->{'adapter'} = $args{'adapter'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Adapter::Scsi service
#########################################################################################
