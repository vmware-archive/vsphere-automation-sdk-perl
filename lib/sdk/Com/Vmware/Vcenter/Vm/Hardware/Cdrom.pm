########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Cdrom.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom``   *interface*  provides  *methods* 
#     for configuring the virtual CD-ROM devices of a virtual machine.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for the virtual CD-ROM device.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom;

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
use Com::Vmware::Vcenter::Vm::Hardware::CdromStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.hardware.cdrom';


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
# Returns commonly used information about the virtual CD-ROM devices belonging to the
# virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# List of commonly used information about virtual CD-ROM devices.
# The return type will be Array of Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Summary
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
# Returns information about a virtual CD-ROM device.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param cdrom [REQUIRED] Virtual CD-ROM device identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Cdrom).
# . The value must be str.
#
# @retval 
# Information about the specified virtual CD-ROM device.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual CD-ROM device is not found.
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
   my $cdrom = $args {cdrom};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method create ()
# Adds a virtual CD-ROM device to the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for the new virtual CD-ROM device.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec.
#
# @retval 
# Virtual CD-ROM device identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Cdrom).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reported that the CD-ROM device was created but was unable to confirm
#     the creation because the identifier of the new device could not be determined.
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is suspended or if the virtual machine is powered on and
#     virtual CD-ROM type is IDE.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if the specified storage address is unavailable; for example, if the SCSI adapter
#     requested does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInUse 
# if the specified storage address is in use.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the specified storage address is out of bounds.
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
# Updates the configuration of a virtual CD-ROM device.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param cdrom [REQUIRED] Virtual CD-ROM device identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Cdrom).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the virtual CD-ROM device.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual CD-ROM device is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if one or more of the  *fields*  specified in the  ``spec``   *parameter*  cannot be
#     modified due to the current power state of the virtual machine or the connection state
#     of the virtual CD-ROM device.
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
   my $cdrom = $args {cdrom};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method delete ()
# Removes a virtual CD-ROM device from the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param cdrom [REQUIRED] Virtual CD-ROM device identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Cdrom).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual CD-ROM device is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is suspended or if the virtual machine is powered on and
#     virtual CD-ROM type is IDE.
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
   my $cdrom = $args {cdrom};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method connect ()
# Connects a virtual CD-ROM device of a powered-on virtual machine to its backing.
# Connecting the virtual device makes the backing accessible from the perspective of the
# guest operating system. <p>
# 
# For a powered-off virtual machine, the 
# :func:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom.update`   *method*  may be used to
# configure the virtual CD-ROM device to start in the connected state when the virtual
# machine is powered on.</p>
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param cdrom [REQUIRED] Virtual CD-ROM device identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Cdrom).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual CD-ROM device is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual CD-ROM device is already connected.
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
   my $cdrom = $args {cdrom};

   $self->validate_args (method_name => 'connect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'connect',
                         method_args => \%args);
}

## @method disconnect ()
# Disconnects a virtual CD-ROM device of a powered-on virtual machine from its backing. The
# virtual device is still present and its backing configuration is unchanged, but from the
# perspective of the guest operating system, the CD-ROM device is not connected to its
# backing resource. <p>
# 
# For a powered-off virtual machine, the 
# :func:`Com::Vmware::Vcenter::Vm::Hardware::Cdrom.update`   *method*  may be used to
# configure the virtual CD-ROM device to start in the disconnected state when the virtual
# machine is powered on.</p>
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param cdrom [REQUIRED] Virtual CD-ROM device identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Cdrom).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual CD-ROM device is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual CD-ROM device is already disconnected.
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
   my $cdrom = $args {cdrom};

   $self->validate_args (method_name => 'disconnect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'disconnect',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Cdrom service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType``   *enumerated
#     type*  defines the valid types of host bus adapters that may be used for attaching a
#     Cdrom to a virtual machine.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType::IDE #
#Cdrom is attached to an IDE adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType::SATA #
#Cdrom is attached to a SATA adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType;

use constant {
    IDE =>  'IDE',
    SATA =>  'SATA',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.cdrom.host_bus_adapter_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom::HostBusAdapterType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType``   *enumerated type* 
#     defines the valid backing types for a virtual CD-ROM device.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::ISO_FILE #
#Virtual CD-ROM device is backed by an ISO file.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::HOST_DEVICE #
#Virtual CD-ROM device is backed by a device on the host where the virtual machine is
# running.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType::CLIENT_DEVICE #
#Virtual CD-ROM device is backed by a device on the client that is connected to the virtual
# machine console.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType;

use constant {
    ISO_FILE =>  'ISO_FILE',
    HOST_DEVICE =>  'HOST_DEVICE',
    CLIENT_DEVICE =>  'CLIENT_DEVICE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.cdrom.backing_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType``   *enumerated
#     type*  defines the valid device access types for a physical device packing of a
#     virtual CD-ROM device.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType::EMULATION #
#ATAPI or SCSI device emulation.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType::PASSTHRU #
#Raw passthru device access.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType::PASSTHRU_EXCLUSIVE #
#Raw passthru device access, with exclusive access to the device.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType;

use constant {
    EMULATION =>  'EMULATION',
    PASSTHRU =>  'PASSTHRU',
    PASSTHRU_EXCLUSIVE =>  'PASSTHRU_EXCLUSIVE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.cdrom.device_access_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom::DeviceAccessType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Cdrom service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Cdrom service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingInfo``   *class*  contains
#     information about the physical resource backing a virtual CD-ROM device.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingInfo structure
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
               'ISO_FILE' => ['iso_file'],
               'HOST_DEVICE' => ['host_device', 'auto_detect', 'device_access_type'],
               'CLIENT_DEVICE' => ['device_access_type'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{iso_file} = $args{'iso_file'};
   $self->{host_device} = $args{'host_device'};
   $self->{auto_detect} = $args{'auto_detect'};
   $self->{device_access_type} = $args{'device_access_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.cdrom.backing_info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::BackingType'));
   $self->set_binding_field('key' => 'iso_file', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_device', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'auto_detect', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'device_access_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::DeviceAccessType')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual CD-ROM device.
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
# Backing type for the virtual CD-ROM device.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_iso_file ()
# Gets the value of 'iso_file' property.
#
# @retval iso_file - The current value of the field.
# Path of the image file backing the virtual CD-ROM device.
#
# optional#
sub get_iso_file {
   my ($self, %args) = @_;
   return $self->{'iso_file'}; 	
}

## @method set_iso_file ()
# Sets the given value for 'iso_file' property.
# 
# @param iso_file  - New value for the field.
# Path of the image file backing the virtual CD-ROM device.
#
sub set_iso_file {
   my ($self, %args) = @_;
   $self->{'iso_file'} = $args{'iso_file'}; 
   return;	
}

## @method get_host_device ()
# Gets the value of 'host_device' property.
#
# @retval host_device - The current value of the field.
# Name of the host device backing the virtual CD-ROM device. <p>
# 
# </p>
#
# Optional#
sub get_host_device {
   my ($self, %args) = @_;
   return $self->{'host_device'}; 	
}

## @method set_host_device ()
# Sets the given value for 'host_device' property.
# 
# @param host_device  - New value for the field.
# Name of the host device backing the virtual CD-ROM device. <p>
# 
# </p>
#
sub set_host_device {
   my ($self, %args) = @_;
   $self->{'host_device'} = $args{'host_device'}; 
   return;	
}

## @method get_auto_detect ()
# Gets the value of 'auto_detect' property.
#
# @retval auto_detect - The current value of the field.
# Flag indicating whether the virtual CD-ROM device is configured to automatically
#     detect a suitable host device.
#
# optional#
sub get_auto_detect {
   my ($self, %args) = @_;
   return $self->{'auto_detect'}; 	
}

## @method set_auto_detect ()
# Sets the given value for 'auto_detect' property.
# 
# @param auto_detect  - New value for the field.
# Flag indicating whether the virtual CD-ROM device is configured to automatically
#     detect a suitable host device.
#
sub set_auto_detect {
   my ($self, %args) = @_;
   $self->{'auto_detect'} = $args{'auto_detect'}; 
   return;	
}

## @method get_device_access_type ()
# Gets the value of 'device_access_type' property.
#
# @retval device_access_type - The current value of the field.
# Access type for the device backing.
#
# optional#
sub get_device_access_type {
   my ($self, %args) = @_;
   return $self->{'device_access_type'}; 	
}

## @method set_device_access_type ()
# Sets the given value for 'device_access_type' property.
# 
# @param device_access_type  - New value for the field.
# Access type for the device backing.
#
sub set_device_access_type {
   my ($self, %args) = @_;
   $self->{'device_access_type'} = $args{'device_access_type'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec``   *class*  provides a
#     specification of the physical resource backing a virtual CD-ROM device.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec structure
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
               'ISO_FILE' => ['iso_file'],
               'HOST_DEVICE' => ['host_device', 'device_access_type'],
               'CLIENT_DEVICE' => ['device_access_type'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{iso_file} = $args{'iso_file'};
   $self->{host_device} = $args{'host_device'};
   $self->{device_access_type} = $args{'device_access_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom::BackingSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.cdrom.backing_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::BackingType'));
   $self->set_binding_field('key' => 'iso_file', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_device', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'device_access_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::DeviceAccessType')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual CD-ROM device.
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
# Backing type for the virtual CD-ROM device.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_iso_file ()
# Gets the value of 'iso_file' property.
#
# @retval iso_file - The current value of the field.
# Path of the image file that should be used as the virtual CD-ROM device backing.
#
# optional#
sub get_iso_file {
   my ($self, %args) = @_;
   return $self->{'iso_file'}; 	
}

## @method set_iso_file ()
# Sets the given value for 'iso_file' property.
# 
# @param iso_file  - New value for the field.
# Path of the image file that should be used as the virtual CD-ROM device backing.
#
sub set_iso_file {
   my ($self, %args) = @_;
   $self->{'iso_file'} = $args{'iso_file'}; 
   return;	
}

## @method get_host_device ()
# Gets the value of 'host_device' property.
#
# @retval host_device - The current value of the field.
# Name of the device that should be used as the virtual CD-ROM device backing.
#
# Optional#
sub get_host_device {
   my ($self, %args) = @_;
   return $self->{'host_device'}; 	
}

## @method set_host_device ()
# Sets the given value for 'host_device' property.
# 
# @param host_device  - New value for the field.
# Name of the device that should be used as the virtual CD-ROM device backing.
#
sub set_host_device {
   my ($self, %args) = @_;
   $self->{'host_device'} = $args{'host_device'}; 
   return;	
}

## @method get_device_access_type ()
# Gets the value of 'device_access_type' property.
#
# @retval device_access_type - The current value of the field.
# Access type for the device backing.
#
# Optional#
sub get_device_access_type {
   my ($self, %args) = @_;
   return $self->{'device_access_type'}; 	
}

## @method set_device_access_type ()
# Sets the given value for 'device_access_type' property.
# 
# @param device_access_type  - New value for the field.
# Access type for the device backing.
#
sub set_device_access_type {
   my ($self, %args) = @_;
   $self->{'device_access_type'} = $args{'device_access_type'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info``   *class*  contains
#     information about a virtual CD-ROM device.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info structure
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
               'IDE' => ['ide'],
               'SATA' => ['sata'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{label} = $args{'label'};
   $self->{ide} = $args{'ide'};
   $self->{sata} = $args{'sata'};
   $self->{backing} = $args{'backing'};
   $self->{state} = $args{'state'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.cdrom.info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::HostBusAdapterType'));
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ide', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'IdeAddressInfo')));
   $self->set_binding_field('key' => 'sata', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'SataAddressInfo')));
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::BackingInfo'));
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'ConnectionState'));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of host bus adapter to which the device is attached.
#
# HostBusAdapterType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of host bus adapter to which the device is attached.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
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

## @method get_ide ()
# Gets the value of 'ide' property.
#
# @retval ide - The current value of the field.
# Address of device attached to a virtual IDE adapter.
#
# optional#
sub get_ide {
   my ($self, %args) = @_;
   return $self->{'ide'}; 	
}

## @method set_ide ()
# Sets the given value for 'ide' property.
# 
# @param ide  - New value for the field.
# Address of device attached to a virtual IDE adapter.
#
sub set_ide {
   my ($self, %args) = @_;
   $self->{'ide'} = $args{'ide'}; 
   return;	
}

## @method get_sata ()
# Gets the value of 'sata' property.
#
# @retval sata - The current value of the field.
# Address of device attached to a virtual SATA adapter.
#
# optional#
sub get_sata {
   my ($self, %args) = @_;
   return $self->{'sata'}; 	
}

## @method set_sata ()
# Sets the given value for 'sata' property.
# 
# @param sata  - New value for the field.
# Address of device attached to a virtual SATA adapter.
#
sub set_sata {
   my ($self, %args) = @_;
   $self->{'sata'} = $args{'sata'}; 
   return;	
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual CD-ROM device.
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
# Physical resource backing for the virtual CD-ROM device.
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


## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec``   *class*  provides a
#     specification for the configuration of a newly-created virtual CD-ROM device.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec structure
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
               'IDE' => ['ide'],
               'SATA' => ['sata'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{ide} = $args{'ide'};
   $self->{sata} = $args{'sata'};
   $self->{backing} = $args{'backing'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.cdrom.create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::HostBusAdapterType')));
   $self->set_binding_field('key' => 'ide', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'IdeAddressSpec')));
   $self->set_binding_field('key' => 'sata', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'SataAddressSpec')));
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::BackingSpec')));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of host bus adapter to which the device should be attached.
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
# Type of host bus adapter to which the device should be attached.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_ide ()
# Gets the value of 'ide' property.
#
# @retval ide - The current value of the field.
# Address for attaching the device to a virtual IDE adapter.
#
# Optional#
sub get_ide {
   my ($self, %args) = @_;
   return $self->{'ide'}; 	
}

## @method set_ide ()
# Sets the given value for 'ide' property.
# 
# @param ide  - New value for the field.
# Address for attaching the device to a virtual IDE adapter.
#
sub set_ide {
   my ($self, %args) = @_;
   $self->{'ide'} = $args{'ide'}; 
   return;	
}

## @method get_sata ()
# Gets the value of 'sata' property.
#
# @retval sata - The current value of the field.
# Address for attaching the device to a virtual SATA adapter.
#
# Optional#
sub get_sata {
   my ($self, %args) = @_;
   return $self->{'sata'}; 	
}

## @method set_sata ()
# Sets the given value for 'sata' property.
# 
# @param sata  - New value for the field.
# Address for attaching the device to a virtual SATA adapter.
#
sub set_sata {
   my ($self, %args) = @_;
   $self->{'sata'} = $args{'sata'}; 
   return;	
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual CD-ROM device.
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
# Physical resource backing for the virtual CD-ROM device.
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


## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec``   *class*  describes
#     the updates to be made to the configuration of a virtual CD-ROM device.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{backing} = $args{'backing'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.cdrom.update_spec');
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::BackingSpec')));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual CD-ROM device. <p>
# 
# This  *field*  may only be modified if the virtual machine is not powered on or the
#     virtual CD-ROM device is not connected.</p>
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
# Physical resource backing for the virtual CD-ROM device. <p>
# 
# This  *field*  may only be modified if the virtual machine is not powered on or the
#     virtual CD-ROM device is not connected.</p>
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


## @class Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Summary``   *class*  contains
#     commonly used information about a virtual CD-ROM device.

package Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cdrom} = $args{'cdrom'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cdrom::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.cdrom.summary');
   $self->set_binding_field('key' => 'cdrom', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_cdrom ()
# Gets the value of 'cdrom' property.
#
# @retval cdrom - The current value of the field.
# Identifier of the virtual CD-ROM device.
#
# ID#
sub get_cdrom {
   my ($self, %args) = @_;
   return $self->{'cdrom'}; 	
}

## @method set_cdrom ()
# Sets the given value for 'cdrom' property.
# 
# @param cdrom  - New value for the field.
# Identifier of the virtual CD-ROM device.
#
sub set_cdrom {
   my ($self, %args) = @_;
   $self->{'cdrom'} = $args{'cdrom'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Cdrom service
#########################################################################################
