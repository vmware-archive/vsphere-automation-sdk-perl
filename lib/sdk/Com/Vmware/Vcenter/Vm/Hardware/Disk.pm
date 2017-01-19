########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Disk.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Disk
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk``   *interface*  provides  *methods* 
#     for configuring the virtual disks of a virtual machine. A virtual disk has a backing
#     such as a VMDK file. The backing has an independent lifecycle from the virtual machine
#     when it is detached from the virtual machine. The 
#     :func:`Com::Vmware::Vcenter::Vm::Hardware::Disk.create`   *method*  provides the
#     ability to create a new virtual disk. When creating a virtual disk, a new VMDK file
#     may be created or an existing VMDK file may used as a backing. Once a VMDK file is
#     associated with a virtual machine, its lifecycle will be bound to the virtual machine.
#     In other words, it will be deleted when the virtual machine is deleted. The 
#     :func:`Com::Vmware::Vcenter::Vm::Hardware::Disk.delete`   *method*  provides the
#     ability to detach a VMDK file from the virtual machine. The 
#     :func:`Com::Vmware::Vcenter::Vm::Hardware::Disk.delete`   *method*  does not delete
#     the VMDK file that backs the virtual disk. Once detached, the VMDK file will not be
#     destroyed when the virtual machine to which it was associated is deleted.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for the virtual disk.

package Com::Vmware::Vcenter::Vm::Hardware::Disk;

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
use Com::Vmware::Vcenter::Vm::Hardware::DiskStub;

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
# Returns commonly used information about the virtual disks belonging to the virtual
# machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# List of commonly used information about the virtual disks.
# The return type will be Array of Com::Vmware::Vcenter::Vm::Hardware::Disk::Summary
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
# Returns information about a virtual disk.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param disk [REQUIRED] Virtual disk identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Disk).
# . The value must be str.
#
# @retval 
# Information about the specified virtual disk.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Disk::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual disk is not found.
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
   my $disk = $args {disk};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method create ()
# Adds a virtual disk to the virtual machine. While adding the virtual disk, a new VMDK file
# may be created or an existing VMDK file may be used to back the virtual disk.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for the new virtual disk.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec.
#
# @retval 
# Virtual disk identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Disk).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if system reported that the disk device was created but was unable to confirm the
#     creation because the identifier of the new device could not be determined.
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is suspended or if the virtual machine is powered on and
#     virtual disk type is IDE.
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
# Updates the configuration of a virtual disk. An update  *method*  can be used to detach
# the existing VMDK file and attach another VMDK file to the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param disk [REQUIRED] Virtual disk identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Disk).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the virtual disk.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual disk is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if one or more of the  *fields*  specified in the  ``spec``   *parameter*  cannot be
#     modified due to the current power state of the virtual machine or the connection state
#     of the virtual disk.
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
   my $disk = $args {disk};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method delete ()
# Removes a virtual disk from the virtual machine. This  *method*  does not destroy the VMDK
# file that backs the virtual disk. It only detaches the VMDK file from the virtual machine.
# Once detached, the VMDK file will not be destroyed when the virtual machine to which it
# was associated is deleted.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param disk [REQUIRED] Virtual disk identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Disk).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual disk is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is suspended or if the virtual machine is powered on and
#     virtual disk type is IDE.
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
   my $disk = $args {disk};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Disk service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType``   *enumerated
#     type*  defines the valid types of host bus adapters that may be used for attaching a
#     virtual storage device to a virtual machine.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::IDE #
#Disk is attached to an IDE adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SCSI #
#Disk is attached to a SCSI adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType::SATA #
#Disk is attached to a SATA adapter.

package Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType;

use constant {
    IDE =>  'IDE',
    SCSI =>  'SCSI',
    SATA =>  'SATA',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.disk.host_bus_adapter_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk::HostBusAdapterType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType``   *enumerated type* 
#     defines the valid backing types for a virtual disk.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType::VMDK_FILE #
#Virtual disk is backed by a VMDK file.

package Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType;

use constant {
    VMDK_FILE =>  'VMDK_FILE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.disk.backing_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Disk service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Disk service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingInfo``   *class*  contains
#     information about the physical resource backing a virtual disk.

package Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingInfo structure
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
               'VMDK_FILE' => ['vmdk_file'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{vmdk_file} = $args{'vmdk_file'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.disk.backing_info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::BackingType'));
   $self->set_binding_field('key' => 'vmdk_file', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual disk.
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
# Backing type for the virtual disk.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_vmdk_file ()
# Gets the value of 'vmdk_file' property.
#
# @retval vmdk_file - The current value of the field.
# Path of the VMDK file backing the virtual disk.
#
# optional#
sub get_vmdk_file {
   my ($self, %args) = @_;
   return $self->{'vmdk_file'}; 	
}

## @method set_vmdk_file ()
# Sets the given value for 'vmdk_file' property.
# 
# @param vmdk_file  - New value for the field.
# Path of the VMDK file backing the virtual disk.
#
sub set_vmdk_file {
   my ($self, %args) = @_;
   $self->{'vmdk_file'} = $args{'vmdk_file'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec``   *class*  provides a
#     specification of the physical resource backing a virtual disk.

package Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec structure
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
               'VMDK_FILE' => ['vmdk_file'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{vmdk_file} = $args{'vmdk_file'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk::BackingSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.disk.backing_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::BackingType'));
   $self->set_binding_field('key' => 'vmdk_file', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual disk.
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
# Backing type for the virtual disk.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_vmdk_file ()
# Gets the value of 'vmdk_file' property.
#
# @retval vmdk_file - The current value of the field.
# Path of the VMDK file backing the virtual disk.
#
# optional#
sub get_vmdk_file {
   my ($self, %args) = @_;
   return $self->{'vmdk_file'}; 	
}

## @method set_vmdk_file ()
# Sets the given value for 'vmdk_file' property.
# 
# @param vmdk_file  - New value for the field.
# Path of the VMDK file backing the virtual disk.
#
sub set_vmdk_file {
   my ($self, %args) = @_;
   $self->{'vmdk_file'} = $args{'vmdk_file'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec``   *class*  provides
#     a specification for creating a new VMDK file to be used as a backing for a virtual
#     disk. The virtual disk will be stored in the same directory as the virtual
#     machine&apos;s configuration file.

package Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{capacity} = $args{'capacity'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk::VmdkCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.disk.vmdk_create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Base name of the VMDK file. The name should not include the &apos;.vmdk&apos; file
#     extension.
#
# Optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Base name of the VMDK file. The name should not include the &apos;.vmdk&apos; file
#     extension.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_capacity ()
# Gets the value of 'capacity' property.
#
# @retval capacity - The current value of the field.
# Capacity of the virtual disk backing in bytes.
#
# Optional#
sub get_capacity {
   my ($self, %args) = @_;
   return $self->{'capacity'}; 	
}

## @method set_capacity ()
# Sets the given value for 'capacity' property.
# 
# @param capacity  - New value for the field.
# Capacity of the virtual disk backing in bytes.
#
sub set_capacity {
   my ($self, %args) = @_;
   $self->{'capacity'} = $args{'capacity'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Disk::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::Info``   *class*  contains
#     information about a virtual disk.

package Com::Vmware::Vcenter::Vm::Hardware::Disk::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Disk::Info structure
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
               'SCSI' => ['scsi'],
               'SATA' => ['sata'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{label} = $args{'label'};
   $self->{type} = $args{'type'};
   $self->{ide} = $args{'ide'};
   $self->{scsi} = $args{'scsi'};
   $self->{sata} = $args{'sata'};
   $self->{backing} = $args{'backing'};
   $self->{capacity} = $args{'capacity'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.disk.info');
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::HostBusAdapterType'));
   $self->set_binding_field('key' => 'ide', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'IdeAddressInfo')));
   $self->set_binding_field('key' => 'scsi', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'ScsiAddressInfo')));
   $self->set_binding_field('key' => 'sata', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'SataAddressInfo')));
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::BackingInfo'));
   $self->set_binding_field('key' => 'capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
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

## @method get_scsi ()
# Gets the value of 'scsi' property.
#
# @retval scsi - The current value of the field.
# Address of device attached to a virtual SCSI adapter.
#
# optional#
sub get_scsi {
   my ($self, %args) = @_;
   return $self->{'scsi'}; 	
}

## @method set_scsi ()
# Sets the given value for 'scsi' property.
# 
# @param scsi  - New value for the field.
# Address of device attached to a virtual SCSI adapter.
#
sub set_scsi {
   my ($self, %args) = @_;
   $self->{'scsi'} = $args{'scsi'}; 
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
# Physical resource backing for the virtual disk.
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
# Physical resource backing for the virtual disk.
#
sub set_backing {
   my ($self, %args) = @_;
   $self->{'backing'} = $args{'backing'}; 
   return;	
}

## @method get_capacity ()
# Gets the value of 'capacity' property.
#
# @retval capacity - The current value of the field.
# Capacity of the virtual disk in bytes.
#
# Optional#
sub get_capacity {
   my ($self, %args) = @_;
   return $self->{'capacity'}; 	
}

## @method set_capacity ()
# Sets the given value for 'capacity' property.
# 
# @param capacity  - New value for the field.
# Capacity of the virtual disk in bytes.
#
sub set_capacity {
   my ($self, %args) = @_;
   $self->{'capacity'} = $args{'capacity'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec``   *class*  provides a
#     specification for the configuration of a newly-created virtual disk.

package Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec structure
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
               'SCSI' => ['scsi'],
               'SATA' => ['sata'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{ide} = $args{'ide'};
   $self->{scsi} = $args{'scsi'};
   $self->{sata} = $args{'sata'};
   $self->{backing} = $args{'backing'};
   $self->{new_vmdk} = $args{'new_vmdk'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.disk.create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::HostBusAdapterType')));
   $self->set_binding_field('key' => 'ide', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'IdeAddressSpec')));
   $self->set_binding_field('key' => 'scsi', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'ScsiAddressSpec')));
   $self->set_binding_field('key' => 'sata', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'SataAddressSpec')));
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::BackingSpec')));
   $self->set_binding_field('key' => 'new_vmdk', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::VmdkCreateSpec')));
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

## @method get_scsi ()
# Gets the value of 'scsi' property.
#
# @retval scsi - The current value of the field.
# Address for attaching the device to a virtual SCSI adapter.
#
# Optional#
sub get_scsi {
   my ($self, %args) = @_;
   return $self->{'scsi'}; 	
}

## @method set_scsi ()
# Sets the given value for 'scsi' property.
# 
# @param scsi  - New value for the field.
# Address for attaching the device to a virtual SCSI adapter.
#
sub set_scsi {
   my ($self, %args) = @_;
   $self->{'scsi'} = $args{'scsi'}; 
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
# Existing physical resource backing for the virtual disk. Exactly one of  ``backing`` 
#     or  ``newVmdk``  must be specified.
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
# Existing physical resource backing for the virtual disk. Exactly one of  ``backing`` 
#     or  ``newVmdk``  must be specified.
#
sub set_backing {
   my ($self, %args) = @_;
   $self->{'backing'} = $args{'backing'}; 
   return;	
}

## @method get_new_vmdk ()
# Gets the value of 'new_vmdk' property.
#
# @retval new_vmdk - The current value of the field.
# Specification for creating a new VMDK backing for the virtual disk. Exactly one of 
#     ``backing``  or  ``newVmdk``  must be specified.
#
# Optional#
sub get_new_vmdk {
   my ($self, %args) = @_;
   return $self->{'new_vmdk'}; 	
}

## @method set_new_vmdk ()
# Sets the given value for 'new_vmdk' property.
# 
# @param new_vmdk  - New value for the field.
# Specification for creating a new VMDK backing for the virtual disk. Exactly one of 
#     ``backing``  or  ``newVmdk``  must be specified.
#
sub set_new_vmdk {
   my ($self, %args) = @_;
   $self->{'new_vmdk'} = $args{'new_vmdk'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec``   *class*  describes the
#     updates to be made to the configuration of a virtual disk.

package Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.disk.update_spec');
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::BackingSpec')));
   bless $self, $class;
   return $self;
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual disk. <p>
# 
#  This  *field*  may only be modified if the virtual machine is not powered on.</p>
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
# Physical resource backing for the virtual disk. <p>
# 
#  This  *field*  may only be modified if the virtual machine is not powered on.</p>
#
sub set_backing {
   my ($self, %args) = @_;
   $self->{'backing'} = $args{'backing'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Disk::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Disk::Summary``   *class*  contains
#     commonly used information about a virtual disk.

package Com::Vmware::Vcenter::Vm::Hardware::Disk::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Disk::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{disk} = $args{'disk'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Disk::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.disk.summary');
   $self->set_binding_field('key' => 'disk', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_disk ()
# Gets the value of 'disk' property.
#
# @retval disk - The current value of the field.
# Identifier of the virtual Disk.
#
# ID#
sub get_disk {
   my ($self, %args) = @_;
   return $self->{'disk'}; 	
}

## @method set_disk ()
# Sets the given value for 'disk' property.
# 
# @param disk  - New value for the field.
# Identifier of the virtual Disk.
#
sub set_disk {
   my ($self, %args) = @_;
   $self->{'disk'} = $args{'disk'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Disk service
#########################################################################################
