########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Ethernet.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet``   *interface*  provides 
#     *methods*  for configuring the virtual Ethernet adapters of a virtual machine.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for the virtual Ethernet adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet;

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
use Com::Vmware::Vcenter::Vm::Hardware::EthernetStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.hardware.ethernet';


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
# Returns commonly used information about the virtual Ethernet adapters belonging to the
# virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# List of commonly used information about virtual Ethernet adapters.
# The return type will be Array of Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Summary
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
# Returns information about a virtual Ethernet adapter.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param nic [REQUIRED] Virtual Ethernet adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Ethernet).
# . The value must be str.
#
# @retval 
# Information about the specified virtual Ethernet adapter.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual Ethernet adapter is not found.
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
   my $nic = $args {nic};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method create ()
# Adds a virtual Ethernet adapter to the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for the new virtual Ethernet adapter.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec.
#
# @retval 
# Virtual Ethernet adapter identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Ethernet).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reported that the Ethernet adapter was created but was unable to confirm
#     the creation because the identifier of the new adapter could not be determined.
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or network backing is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if the virtual machine already has the maximum number of supported Ethernet adapters.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the specified PCI address is out of bounds, HOST_DEVICE is specified as the type,
#     or a backing cannot be found in the case that backing is left  *null* .
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
# Updates the configuration of a virtual Ethernet adapter.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param nic [REQUIRED] Virtual Ethernet adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Ethernet).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the virtual Ethernet adapter.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if HOST_DEVICE is specified as the type.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine, virtual Ethernet adapter, or backing network is not found.
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
   my $nic = $args {nic};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method delete ()
# Removes a virtual Ethernet adapter from the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param nic [REQUIRED] Virtual Ethernet adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Ethernet).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual Ethernet adapter is not found.
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
   my $nic = $args {nic};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method connect ()
# Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing.
# Connecting the virtual device makes the backing accessible from the perspective of the
# guest operating system. <p>
# 
# For a powered-off virtual machine, the 
# :func:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet.update`   *method*  may be used to
# configure the virtual Ethernet adapter to start in the connected state when the virtual
# machine is powered on.</p>
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param nic [REQUIRED] Virtual Ethernet adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Ethernet).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual Ethernet adapter is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual Ethernet adapter is already connected.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered on.
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
sub connect {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $nic = $args {nic};

   $self->validate_args (method_name => 'connect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'connect',
                         method_args => \%args);
}

## @method disconnect ()
# Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing.
# The virtual device is still present and its backing configuration is unchanged, but from
# the perspective of the guest operating system, the Ethernet adapter is not connected to
# its backing resource. <p>
# 
# For a powered-off virtual machine, the 
# :func:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet.update`   *method*  may be used to
# configure the virtual Ethernet adapter to start in the disconnected state when the virtual
# machine is powered on.</p>
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param nic [REQUIRED] Virtual Ethernet adapter identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Ethernet).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual Ethernet adapter is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual Ethernet adapter is already disconnected.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered on.
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
sub disconnect {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $nic = $args {nic};

   $self->validate_args (method_name => 'disconnect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'disconnect',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Ethernet service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType``   *enumerated
#     type*  defines the valid emulation types for a virtual Ethernet adapter.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::E1000 #
#E1000 ethernet adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::E1000E #
#E1000e ethernet adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::PCNE_T32 #
#AMD Lance PCNet32 Ethernet adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::VMXNET #
#VMware Vmxnet virtual Ethernet adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::VMXNE_T2 #
#VMware Vmxnet2 virtual Ethernet adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType::VMXNE_T3 #
#VMware Vmxnet3 virtual Ethernet adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType;

use constant {
    E1000 =>  'E1000',
    E1000E =>  'E1000E',
    PCNET32 =>  'PCNET32',
    VMXNET =>  'VMXNET',
    VMXNET2 =>  'VMXNET2',
    VMXNET3 =>  'VMXNET3',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.ethernet.emulation_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet::EmulationType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType``   *enumerated
#     type*  defines the valid MAC address origins for a virtual Ethernet adapter.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::MANUAL #
#MAC address is assigned statically.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::GENERATED #
#MAC address is generated automatically.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType::ASSIGNED #
#MAC address is assigned by vCenter Server.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType;

use constant {
    MANUAL =>  'MANUAL',
    GENERATED =>  'GENERATED',
    ASSIGNED =>  'ASSIGNED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.ethernet.mac_address_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet::MacAddressType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType``   *enumerated type*
#      defines the valid backing types for a virtual Ethernet adapter.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::STANDARD_PORTGROUP #
#vSphere standard portgroup network backing.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::HOST_DEVICE #
#Legacy host device network backing. Imported VMs may have virtual Ethernet adapters with
# this type of backing, but this type of backing cannot be used to create or to update a
# virtual Ethernet adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::DISTRIBUTED_PORTGROUP #
#Distributed virtual switch backing.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType::OPAQUE_NETWORK #
#Opaque network backing.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType;

use constant {
    STANDARD_PORTGROUP =>  'STANDARD_PORTGROUP',
    HOST_DEVICE =>  'HOST_DEVICE',
    DISTRIBUTED_PORTGROUP =>  'DISTRIBUTED_PORTGROUP',
    OPAQUE_NETWORK =>  'OPAQUE_NETWORK',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.ethernet.backing_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Ethernet service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Ethernet service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingInfo``   *class*  contains
#     information about the physical resource backing a virtual Ethernet adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingInfo structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'STANDARD_PORTGROUP' => ['network', 'network_name'],
               'DISTRIBUTED_PORTGROUP' => ['network', 'distributed_switch_uuid', 'distributed_port', 'connection_cookie'],
               'OPAQUE_NETWORK' => ['network', 'opaque_network_type', 'opaque_network_id'],
               'HOST_DEVICE' => ['host_device'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{network} = $args{'network'};
   $self->{network_name} = $args{'network_name'};
   $self->{host_device} = $args{'host_device'};
   $self->{distributed_switch_uuid} = $args{'distributed_switch_uuid'};
   $self->{distributed_port} = $args{'distributed_port'};
   $self->{connection_cookie} = $args{'connection_cookie'};
   $self->{opaque_network_type} = $args{'opaque_network_type'};
   $self->{opaque_network_id} = $args{'opaque_network_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.ethernet.backing_info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::BackingType'));
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'network_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_device', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'distributed_switch_uuid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'distributed_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'connection_cookie', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'opaque_network_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'opaque_network_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual Ethernet adapter.
#
# BackingType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Backing type for the virtual Ethernet adapter.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Identifier of the network backing the virtual Ethernet adapter.
#
# Optional#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# Identifier of the network backing the virtual Ethernet adapter.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}

## @method get_network_name ()
# Gets the value of 'network_name' property.
#
# @retval network_name - The current value of the field.
# Name of the standard portgroup backing the virtual Ethernet adapter.
#
# optional#
sub get_network_name {
   my ($self, %args) = @_;
   return $self->{'network_name'}; 	
}

## @method set_network_name ()
# Sets the given value for 'network_name' property.
# 
# @param network_name  - New value for the field.
# Name of the standard portgroup backing the virtual Ethernet adapter.
#
sub set_network_name {
   my ($self, %args) = @_;
   $self->{'network_name'} = $args{'network_name'}; 
   return;	
}

## @method get_host_device ()
# Gets the value of 'host_device' property.
#
# @retval host_device - The current value of the field.
# Name of the device backing the virtual Ethernet adapter.
#
# optional#
sub get_host_device {
   my ($self, %args) = @_;
   return $self->{'host_device'}; 	
}

## @method set_host_device ()
# Sets the given value for 'host_device' property.
# 
# @param host_device  - New value for the field.
# Name of the device backing the virtual Ethernet adapter.
#
sub set_host_device {
   my ($self, %args) = @_;
   $self->{'host_device'} = $args{'host_device'}; 
   return;	
}

## @method get_distributed_switch_uuid ()
# Gets the value of 'distributed_switch_uuid' property.
#
# @retval distributed_switch_uuid - The current value of the field.
# UUID of the distributed virtual switch that backs the virtual Ethernet adapter.
#
# optional#
sub get_distributed_switch_uuid {
   my ($self, %args) = @_;
   return $self->{'distributed_switch_uuid'}; 	
}

## @method set_distributed_switch_uuid ()
# Sets the given value for 'distributed_switch_uuid' property.
# 
# @param distributed_switch_uuid  - New value for the field.
# UUID of the distributed virtual switch that backs the virtual Ethernet adapter.
#
sub set_distributed_switch_uuid {
   my ($self, %args) = @_;
   $self->{'distributed_switch_uuid'} = $args{'distributed_switch_uuid'}; 
   return;	
}

## @method get_distributed_port ()
# Gets the value of 'distributed_port' property.
#
# @retval distributed_port - The current value of the field.
# Key of the distributed virtual port that backs the virtual Ethernet adapter.
#
# Optional#
sub get_distributed_port {
   my ($self, %args) = @_;
   return $self->{'distributed_port'}; 	
}

## @method set_distributed_port ()
# Sets the given value for 'distributed_port' property.
# 
# @param distributed_port  - New value for the field.
# Key of the distributed virtual port that backs the virtual Ethernet adapter.
#
sub set_distributed_port {
   my ($self, %args) = @_;
   $self->{'distributed_port'} = $args{'distributed_port'}; 
   return;	
}

## @method get_connection_cookie ()
# Gets the value of 'connection_cookie' property.
#
# @retval connection_cookie - The current value of the field.
# Server-generated cookie that identifies the connection to the port. This ookie may be
#     used to verify that the virtual machine is the rightful owner of the port.
#
# Optional#
sub get_connection_cookie {
   my ($self, %args) = @_;
   return $self->{'connection_cookie'}; 	
}

## @method set_connection_cookie ()
# Sets the given value for 'connection_cookie' property.
# 
# @param connection_cookie  - New value for the field.
# Server-generated cookie that identifies the connection to the port. This ookie may be
#     used to verify that the virtual machine is the rightful owner of the port.
#
sub set_connection_cookie {
   my ($self, %args) = @_;
   $self->{'connection_cookie'} = $args{'connection_cookie'}; 
   return;	
}

## @method get_opaque_network_type ()
# Gets the value of 'opaque_network_type' property.
#
# @retval opaque_network_type - The current value of the field.
# Type of the opaque network that backs the virtual Ethernet adapter.
#
# optional#
sub get_opaque_network_type {
   my ($self, %args) = @_;
   return $self->{'opaque_network_type'}; 	
}

## @method set_opaque_network_type ()
# Sets the given value for 'opaque_network_type' property.
# 
# @param opaque_network_type  - New value for the field.
# Type of the opaque network that backs the virtual Ethernet adapter.
#
sub set_opaque_network_type {
   my ($self, %args) = @_;
   $self->{'opaque_network_type'} = $args{'opaque_network_type'}; 
   return;	
}

## @method get_opaque_network_id ()
# Gets the value of 'opaque_network_id' property.
#
# @retval opaque_network_id - The current value of the field.
# Identifier of the opaque network that backs the virtual Ethernet adapter.
#
# optional#
sub get_opaque_network_id {
   my ($self, %args) = @_;
   return $self->{'opaque_network_id'}; 	
}

## @method set_opaque_network_id ()
# Sets the given value for 'opaque_network_id' property.
# 
# @param opaque_network_id  - New value for the field.
# Identifier of the opaque network that backs the virtual Ethernet adapter.
#
sub set_opaque_network_id {
   my ($self, %args) = @_;
   $self->{'opaque_network_id'} = $args{'opaque_network_id'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec``   *class*  provides
#     a specification of the physical resource that backs a virtual Ethernet adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'STANDARD_PORTGROUP' => ['network'],
               'DISTRIBUTED_PORTGROUP' => ['network', 'distributed_port'],
               'OPAQUE_NETWORK' => ['network'],
               'HOST_DEVICE' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{network} = $args{'network'};
   $self->{distributed_port} = $args{'distributed_port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.ethernet.backing_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::BackingType'));
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'distributed_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual Ethernet adapter.
#
# BackingType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Backing type for the virtual Ethernet adapter.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Identifier of the network that backs the virtual Ethernet adapter.
#
# optional#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# Identifier of the network that backs the virtual Ethernet adapter.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}

## @method get_distributed_port ()
# Gets the value of 'distributed_port' property.
#
# @retval distributed_port - The current value of the field.
# Key of the distributed virtual port that backs the virtual Ethernet adapter. Depending
#     on the type of the Portgroup, the port may be specified using this field. If the
#     portgroup type is early-binding (also known as static), a port is assigned when the
#     Ethernet adapter is configured to use the port. The port may be either automatically
#     or specifically assigned based on the value of this  *field* . If the portgroup type
#     is ephemeral, the port is created and assigned to a virtual machine when it is powered
#     on and the Ethernet adapter is connected. This  *field*  cannot be specified as no
#     free ports exist before use.
#
# Optional#
sub get_distributed_port {
   my ($self, %args) = @_;
   return $self->{'distributed_port'}; 	
}

## @method set_distributed_port ()
# Sets the given value for 'distributed_port' property.
# 
# @param distributed_port  - New value for the field.
# Key of the distributed virtual port that backs the virtual Ethernet adapter. Depending
#     on the type of the Portgroup, the port may be specified using this field. If the
#     portgroup type is early-binding (also known as static), a port is assigned when the
#     Ethernet adapter is configured to use the port. The port may be either automatically
#     or specifically assigned based on the value of this  *field* . If the portgroup type
#     is ephemeral, the port is created and assigned to a virtual machine when it is powered
#     on and the Ethernet adapter is connected. This  *field*  cannot be specified as no
#     free ports exist before use.
#
sub set_distributed_port {
   my ($self, %args) = @_;
   $self->{'distributed_port'} = $args{'distributed_port'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info``   *class*  contains
#     information about a virtual Ethernet adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'VMXNET3' => ['upt_compatibility_enabled'],
               'E1000' => [],
               'E1000E' => [],
               'PCNET32' => [],
               'VMXNET' => [],
               'VMXNET2' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{label} = $args{'label'};
   $self->{type} = $args{'type'};
   $self->{upt_compatibility_enabled} = $args{'upt_compatibility_enabled'};
   $self->{mac_type} = $args{'mac_type'};
   $self->{mac_address} = $args{'mac_address'};
   $self->{pci_slot_number} = $args{'pci_slot_number'};
   $self->{wake_on_lan_enabled} = $args{'wake_on_lan_enabled'};
   $self->{backing} = $args{'backing'};
   $self->{state} = $args{'state'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.ethernet.info');
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::EmulationType'));
   $self->set_binding_field('key' => 'upt_compatibility_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'mac_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::MacAddressType'));
   $self->set_binding_field('key' => 'mac_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'pci_slot_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'wake_on_lan_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::BackingInfo'));
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'ConnectionState'));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
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
# Ethernet adapter emulation type.
#
# EmulationType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Ethernet adapter emulation type.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_upt_compatibility_enabled ()
# Gets the value of 'upt_compatibility_enabled' property.
#
# @retval upt_compatibility_enabled - The current value of the field.
# Flag indicating whether Universal Pass-Through (UPT) compatibility is enabled on this
#     virtual Ethernet adapter.
#
# optional#
sub get_upt_compatibility_enabled {
   my ($self, %args) = @_;
   return $self->{'upt_compatibility_enabled'}; 	
}

## @method set_upt_compatibility_enabled ()
# Sets the given value for 'upt_compatibility_enabled' property.
# 
# @param upt_compatibility_enabled  - New value for the field.
# Flag indicating whether Universal Pass-Through (UPT) compatibility is enabled on this
#     virtual Ethernet adapter.
#
sub set_upt_compatibility_enabled {
   my ($self, %args) = @_;
   $self->{'upt_compatibility_enabled'} = $args{'upt_compatibility_enabled'}; 
   return;	
}

## @method get_mac_type ()
# Gets the value of 'mac_type' property.
#
# @retval mac_type - The current value of the field.
# MAC address type.
#
# MacAddressType#
sub get_mac_type {
   my ($self, %args) = @_;
   return $self->{'mac_type'}; 	
}

## @method set_mac_type ()
# Sets the given value for 'mac_type' property.
# 
# @param mac_type  - New value for the field.
# MAC address type.
#
sub set_mac_type {
   my ($self, %args) = @_;
   $self->{'mac_type'} = $args{'mac_type'}; 
   return;	
}

## @method get_mac_address ()
# Gets the value of 'mac_address' property.
#
# @retval mac_address - The current value of the field.
# MAC address.
#
# Optional#
sub get_mac_address {
   my ($self, %args) = @_;
   return $self->{'mac_address'}; 	
}

## @method set_mac_address ()
# Sets the given value for 'mac_address' property.
# 
# @param mac_address  - New value for the field.
# MAC address.
#
sub set_mac_address {
   my ($self, %args) = @_;
   $self->{'mac_address'} = $args{'mac_address'}; 
   return;	
}

## @method get_pci_slot_number ()
# Gets the value of 'pci_slot_number' property.
#
# @retval pci_slot_number - The current value of the field.
# Address of the virtual Ethernet adapter on the PCI bus. If the PCI address is invalid,
#     the server will change it when the VM is started or as the device is hot added.
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
# Address of the virtual Ethernet adapter on the PCI bus. If the PCI address is invalid,
#     the server will change it when the VM is started or as the device is hot added.
#
sub set_pci_slot_number {
   my ($self, %args) = @_;
   $self->{'pci_slot_number'} = $args{'pci_slot_number'}; 
   return;	
}

## @method get_wake_on_lan_enabled ()
# Gets the value of 'wake_on_lan_enabled' property.
#
# @retval wake_on_lan_enabled - The current value of the field.
# Flag indicating whether wake-on-LAN is enabled on this virtual Ethernet adapter.
#
# boolean#
sub get_wake_on_lan_enabled {
   my ($self, %args) = @_;
   return $self->{'wake_on_lan_enabled'}; 	
}

## @method set_wake_on_lan_enabled ()
# Sets the given value for 'wake_on_lan_enabled' property.
# 
# @param wake_on_lan_enabled  - New value for the field.
# Flag indicating whether wake-on-LAN is enabled on this virtual Ethernet adapter.
#
sub set_wake_on_lan_enabled {
   my ($self, %args) = @_;
   $self->{'wake_on_lan_enabled'} = $args{'wake_on_lan_enabled'}; 
   return;	
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual Ethernet adapter.
#
# BackingInfo#
sub get_backing {
   my ($self, %args) = @_;
   return $self->{'backing'}; 	
}

## @method set_backing ()
# Sets the given value for 'backing' property.
# 
# @param backing  - New value for the field.
# Physical resource backing for the virtual Ethernet adapter.
#
sub set_backing {
   my ($self, %args) = @_;
   $self->{'backing'} = $args{'backing'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# Connection status of the virtual device.
#
# ConnectionState#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# Connection status of the virtual device.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_start_connected ()
# Gets the value of 'start_connected' property.
#
# @retval start_connected - The current value of the field.
# Flag indicating whether the virtual device should be connected whenever the virtual
#     machine is powered on.
#
# boolean#
sub get_start_connected {
   my ($self, %args) = @_;
   return $self->{'start_connected'}; 	
}

## @method set_start_connected ()
# Sets the given value for 'start_connected' property.
# 
# @param start_connected  - New value for the field.
# Flag indicating whether the virtual device should be connected whenever the virtual
#     machine is powered on.
#
sub set_start_connected {
   my ($self, %args) = @_;
   $self->{'start_connected'} = $args{'start_connected'}; 
   return;	
}

## @method get_allow_guest_control ()
# Gets the value of 'allow_guest_control' property.
#
# @retval allow_guest_control - The current value of the field.
# Flag indicating whether the guest can connect and disconnect the device.
#
# boolean#
sub get_allow_guest_control {
   my ($self, %args) = @_;
   return $self->{'allow_guest_control'}; 	
}

## @method set_allow_guest_control ()
# Sets the given value for 'allow_guest_control' property.
# 
# @param allow_guest_control  - New value for the field.
# Flag indicating whether the guest can connect and disconnect the device.
#
sub set_allow_guest_control {
   my ($self, %args) = @_;
   $self->{'allow_guest_control'} = $args{'allow_guest_control'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec``   *class*  provides
#     a specification for the configuration of a newly-created virtual Ethernet adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'VMXNET3' => ['upt_compatibility_enabled'],
               'E1000' => [],
               'E1000E' => [],
               'PCNET32' => [],
               'VMXNET' => [],
               'VMXNET2' => [],
            }),
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'mac_type',
         'case_map' => {
               'MANUAL' => ['mac_address'],
               'GENERATED' => [],
               'ASSIGNED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{upt_compatibility_enabled} = $args{'upt_compatibility_enabled'};
   $self->{mac_type} = $args{'mac_type'};
   $self->{mac_address} = $args{'mac_address'};
   $self->{pci_slot_number} = $args{'pci_slot_number'};
   $self->{wake_on_lan_enabled} = $args{'wake_on_lan_enabled'};
   $self->{backing} = $args{'backing'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.ethernet.create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::EmulationType')));
   $self->set_binding_field('key' => 'upt_compatibility_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'mac_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::MacAddressType')));
   $self->set_binding_field('key' => 'mac_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'pci_slot_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'wake_on_lan_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::BackingSpec')));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Ethernet adapter emulation type.
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
# Ethernet adapter emulation type.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_upt_compatibility_enabled ()
# Gets the value of 'upt_compatibility_enabled' property.
#
# @retval upt_compatibility_enabled - The current value of the field.
# Flag indicating whether Universal Pass-Through (UPT) compatibility is enabled on this
#     virtual Ethernet adapter.
#
# Optional#
sub get_upt_compatibility_enabled {
   my ($self, %args) = @_;
   return $self->{'upt_compatibility_enabled'}; 	
}

## @method set_upt_compatibility_enabled ()
# Sets the given value for 'upt_compatibility_enabled' property.
# 
# @param upt_compatibility_enabled  - New value for the field.
# Flag indicating whether Universal Pass-Through (UPT) compatibility is enabled on this
#     virtual Ethernet adapter.
#
sub set_upt_compatibility_enabled {
   my ($self, %args) = @_;
   $self->{'upt_compatibility_enabled'} = $args{'upt_compatibility_enabled'}; 
   return;	
}

## @method get_mac_type ()
# Gets the value of 'mac_type' property.
#
# @retval mac_type - The current value of the field.
# MAC address type.
#
# Optional#
sub get_mac_type {
   my ($self, %args) = @_;
   return $self->{'mac_type'}; 	
}

## @method set_mac_type ()
# Sets the given value for 'mac_type' property.
# 
# @param mac_type  - New value for the field.
# MAC address type.
#
sub set_mac_type {
   my ($self, %args) = @_;
   $self->{'mac_type'} = $args{'mac_type'}; 
   return;	
}

## @method get_mac_address ()
# Gets the value of 'mac_address' property.
#
# @retval mac_address - The current value of the field.
# MAC address.
#
# optional#
sub get_mac_address {
   my ($self, %args) = @_;
   return $self->{'mac_address'}; 	
}

## @method set_mac_address ()
# Sets the given value for 'mac_address' property.
# 
# @param mac_address  - New value for the field.
# MAC address.
#
sub set_mac_address {
   my ($self, %args) = @_;
   $self->{'mac_address'} = $args{'mac_address'}; 
   return;	
}

## @method get_pci_slot_number ()
# Gets the value of 'pci_slot_number' property.
#
# @retval pci_slot_number - The current value of the field.
# Address of the virtual Ethernet adapter on the PCI bus. If the PCI address is invalid,
#     the server will change when it the VM is started or as the device is hot added.
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
# Address of the virtual Ethernet adapter on the PCI bus. If the PCI address is invalid,
#     the server will change when it the VM is started or as the device is hot added.
#
sub set_pci_slot_number {
   my ($self, %args) = @_;
   $self->{'pci_slot_number'} = $args{'pci_slot_number'}; 
   return;	
}

## @method get_wake_on_lan_enabled ()
# Gets the value of 'wake_on_lan_enabled' property.
#
# @retval wake_on_lan_enabled - The current value of the field.
# Flag indicating whether wake-on-LAN is enabled on this virtual Ethernet adapter.
#
# Optional#
sub get_wake_on_lan_enabled {
   my ($self, %args) = @_;
   return $self->{'wake_on_lan_enabled'}; 	
}

## @method set_wake_on_lan_enabled ()
# Sets the given value for 'wake_on_lan_enabled' property.
# 
# @param wake_on_lan_enabled  - New value for the field.
# Flag indicating whether wake-on-LAN is enabled on this virtual Ethernet adapter.
#
sub set_wake_on_lan_enabled {
   my ($self, %args) = @_;
   $self->{'wake_on_lan_enabled'} = $args{'wake_on_lan_enabled'}; 
   return;	
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual Ethernet adapter.
#
# Optional#
sub get_backing {
   my ($self, %args) = @_;
   return $self->{'backing'}; 	
}

## @method set_backing ()
# Sets the given value for 'backing' property.
# 
# @param backing  - New value for the field.
# Physical resource backing for the virtual Ethernet adapter.
#
sub set_backing {
   my ($self, %args) = @_;
   $self->{'backing'} = $args{'backing'}; 
   return;	
}

## @method get_start_connected ()
# Gets the value of 'start_connected' property.
#
# @retval start_connected - The current value of the field.
# Flag indicating whether the virtual device should be connected whenever the virtual
#     machine is powered on.
#
# Optional#
sub get_start_connected {
   my ($self, %args) = @_;
   return $self->{'start_connected'}; 	
}

## @method set_start_connected ()
# Sets the given value for 'start_connected' property.
# 
# @param start_connected  - New value for the field.
# Flag indicating whether the virtual device should be connected whenever the virtual
#     machine is powered on.
#
sub set_start_connected {
   my ($self, %args) = @_;
   $self->{'start_connected'} = $args{'start_connected'}; 
   return;	
}

## @method get_allow_guest_control ()
# Gets the value of 'allow_guest_control' property.
#
# @retval allow_guest_control - The current value of the field.
# Flag indicating whether the guest can connect and disconnect the device.
#
# Optional#
sub get_allow_guest_control {
   my ($self, %args) = @_;
   return $self->{'allow_guest_control'}; 	
}

## @method set_allow_guest_control ()
# Sets the given value for 'allow_guest_control' property.
# 
# @param allow_guest_control  - New value for the field.
# Flag indicating whether the guest can connect and disconnect the device.
#
sub set_allow_guest_control {
   my ($self, %args) = @_;
   $self->{'allow_guest_control'} = $args{'allow_guest_control'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec``   *class*  describes
#     the updates to be made to the configuration of a virtual Ethernet adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{upt_compatibility_enabled} = $args{'upt_compatibility_enabled'};
   $self->{mac_type} = $args{'mac_type'};
   $self->{mac_address} = $args{'mac_address'};
   $self->{wake_on_lan_enabled} = $args{'wake_on_lan_enabled'};
   $self->{backing} = $args{'backing'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.ethernet.update_spec');
   $self->set_binding_field('key' => 'upt_compatibility_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'mac_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::MacAddressType')));
   $self->set_binding_field('key' => 'mac_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'wake_on_lan_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::BackingSpec')));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_upt_compatibility_enabled ()
# Gets the value of 'upt_compatibility_enabled' property.
#
# @retval upt_compatibility_enabled - The current value of the field.
# Flag indicating whether Universal Pass-Through (UPT) compatibility should be enabled
#     on this virtual Ethernet adapter. <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
# Optional#
sub get_upt_compatibility_enabled {
   my ($self, %args) = @_;
   return $self->{'upt_compatibility_enabled'}; 	
}

## @method set_upt_compatibility_enabled ()
# Sets the given value for 'upt_compatibility_enabled' property.
# 
# @param upt_compatibility_enabled  - New value for the field.
# Flag indicating whether Universal Pass-Through (UPT) compatibility should be enabled
#     on this virtual Ethernet adapter. <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
sub set_upt_compatibility_enabled {
   my ($self, %args) = @_;
   $self->{'upt_compatibility_enabled'} = $args{'upt_compatibility_enabled'}; 
   return;	
}

## @method get_mac_type ()
# Gets the value of 'mac_type' property.
#
# @retval mac_type - The current value of the field.
# MAC address type. <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
# Optional#
sub get_mac_type {
   my ($self, %args) = @_;
   return $self->{'mac_type'}; 	
}

## @method set_mac_type ()
# Sets the given value for 'mac_type' property.
# 
# @param mac_type  - New value for the field.
# MAC address type. <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
sub set_mac_type {
   my ($self, %args) = @_;
   $self->{'mac_type'} = $args{'mac_type'}; 
   return;	
}

## @method get_mac_address ()
# Gets the value of 'mac_address' property.
#
# @retval mac_address - The current value of the field.
# MAC address. <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
# Optional#
sub get_mac_address {
   my ($self, %args) = @_;
   return $self->{'mac_address'}; 	
}

## @method set_mac_address ()
# Sets the given value for 'mac_address' property.
# 
# @param mac_address  - New value for the field.
# MAC address. <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
sub set_mac_address {
   my ($self, %args) = @_;
   $self->{'mac_address'} = $args{'mac_address'}; 
   return;	
}

## @method get_wake_on_lan_enabled ()
# Gets the value of 'wake_on_lan_enabled' property.
#
# @retval wake_on_lan_enabled - The current value of the field.
# Flag indicating whether wake-on-LAN shoud be enabled on this virtual Ethernet adapter.
#     <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
# Optional#
sub get_wake_on_lan_enabled {
   my ($self, %args) = @_;
   return $self->{'wake_on_lan_enabled'}; 	
}

## @method set_wake_on_lan_enabled ()
# Sets the given value for 'wake_on_lan_enabled' property.
# 
# @param wake_on_lan_enabled  - New value for the field.
# Flag indicating whether wake-on-LAN shoud be enabled on this virtual Ethernet adapter.
#     <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
sub set_wake_on_lan_enabled {
   my ($self, %args) = @_;
   $self->{'wake_on_lan_enabled'} = $args{'wake_on_lan_enabled'}; 
   return;	
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual Ethernet adapter. <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
# Optional#
sub get_backing {
   my ($self, %args) = @_;
   return $self->{'backing'}; 	
}

## @method set_backing ()
# Sets the given value for 'backing' property.
# 
# @param backing  - New value for the field.
# Physical resource backing for the virtual Ethernet adapter. <p>
# 
# This  *field*  may be modified at any time, and changes will be applied the next time
#     the virtual machine is powered on.</p>
#
sub set_backing {
   my ($self, %args) = @_;
   $self->{'backing'} = $args{'backing'}; 
   return;	
}

## @method get_start_connected ()
# Gets the value of 'start_connected' property.
#
# @retval start_connected - The current value of the field.
# Flag indicating whether the virtual device should be connected whenever the virtual
#     machine is powered on.
#
# Optional#
sub get_start_connected {
   my ($self, %args) = @_;
   return $self->{'start_connected'}; 	
}

## @method set_start_connected ()
# Sets the given value for 'start_connected' property.
# 
# @param start_connected  - New value for the field.
# Flag indicating whether the virtual device should be connected whenever the virtual
#     machine is powered on.
#
sub set_start_connected {
   my ($self, %args) = @_;
   $self->{'start_connected'} = $args{'start_connected'}; 
   return;	
}

## @method get_allow_guest_control ()
# Gets the value of 'allow_guest_control' property.
#
# @retval allow_guest_control - The current value of the field.
# Flag indicating whether the guest can connect and disconnect the device.
#
# Optional#
sub get_allow_guest_control {
   my ($self, %args) = @_;
   return $self->{'allow_guest_control'}; 	
}

## @method set_allow_guest_control ()
# Sets the given value for 'allow_guest_control' property.
# 
# @param allow_guest_control  - New value for the field.
# Flag indicating whether the guest can connect and disconnect the device.
#
sub set_allow_guest_control {
   my ($self, %args) = @_;
   $self->{'allow_guest_control'} = $args{'allow_guest_control'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Summary``   *class*  contains
#     commonly used information about a virtual Ethernet adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{nic} = $args{'nic'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Ethernet::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.ethernet.summary');
   $self->set_binding_field('key' => 'nic', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_nic ()
# Gets the value of 'nic' property.
#
# @retval nic - The current value of the field.
# Identifier of the virtual Ethernet adapter.
#
# ID#
sub get_nic {
   my ($self, %args) = @_;
   return $self->{'nic'}; 	
}

## @method set_nic ()
# Sets the given value for 'nic' property.
# 
# @param nic  - New value for the field.
# Identifier of the virtual Ethernet adapter.
#
sub set_nic {
   my ($self, %args) = @_;
   $self->{'nic'} = $args{'nic'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Ethernet service
#########################################################################################
