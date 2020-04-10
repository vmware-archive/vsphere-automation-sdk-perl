########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Floppy.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Floppy
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy``   *interface*  provides  *methods*
#      for configuring the virtual floppy drives of a virtual machine.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for the virtual floppy drive device.

package Com::Vmware::Vcenter::Vm::Hardware::Floppy;

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
use Com::Vmware::Vcenter::Vm::Hardware::FloppyStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.hardware.floppy';


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
# Returns commonly used information about the virtual floppy drives belonging to the virtual
# machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# List of commonly used information about virtual floppy drives.
# The return type will be Array of Com::Vmware::Vcenter::Vm::Hardware::Floppy::Summary
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
# Returns information about a virtual floppy drive.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param floppy [REQUIRED] Virtual floppy drive identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Floppy).
# . The value must be str.
#
# @retval 
# Information about the specified virtual floppy drive.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual floppy drive is not found.
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
   my $floppy = $args {floppy};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method create ()
# Adds a virtual floppy drive to the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for the new virtual floppy drive.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec.
#
# @retval 
# Virtual floppy drive identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Floppy).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reported that the floppy device was created but was unable to confirm
#     the creation because the identifier of the new device could not be determined.
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered off.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if the virtual machine already has the maximum number of supported floppy drives.
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
# Updates the configuration of a virtual floppy drive.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param floppy [REQUIRED] Virtual floppy drive identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Floppy).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the virtual floppy drive.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual floppy drive is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if one or more of the  *fields*  specified in the  ``spec``   *parameter*  cannot be
#     modified due to the current power state of the virtual machine or the connection state
#     of the virtual floppy drive.
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
   my $floppy = $args {floppy};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method delete ()
# Removes a virtual floppy drive from the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param floppy [REQUIRED] Virtual floppy drive identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Floppy).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual floppy drive is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered off.
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
   my $floppy = $args {floppy};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method connect ()
# Connects a virtual floppy drive of a powered-on virtual machine to its backing. Connecting
# the virtual device makes the backing accessible from the perspective of the guest
# operating system. <p>
# 
# For a powered-off virtual machine, the 
# :func:`Com::Vmware::Vcenter::Vm::Hardware::Floppy.update`   *method*  may be used to
# configure the virtual floppy drive to start in the connected state when the virtual
# machine is powered on.</p>
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param floppy [REQUIRED] Virtual floppy drive identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Floppy).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual floppy drive is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual floppy drive is already connected.
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
   my $floppy = $args {floppy};

   $self->validate_args (method_name => 'connect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'connect',
                         method_args => \%args);
}

## @method disconnect ()
# Disconnects a virtual floppy drive of a powered-on virtual machine from its backing. The
# virtual device is still present and its backing configuration is unchanged, but from the
# perspective of the guest operating system, the floppy drive is not connected to its
# backing resource. <p>
# 
# For a powered-off virtual machine, the 
# :func:`Com::Vmware::Vcenter::Vm::Hardware::Floppy.update`   *method*  may be used to
# configure the virtual floppy floppy to start in the disconnected state when the virtual
# machine is powered on.</p>
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param floppy [REQUIRED] Virtual floppy drive identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.Floppy).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual floppy drive is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual floppy drive is already disconnected.
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
   my $floppy = $args {floppy};

   $self->validate_args (method_name => 'disconnect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'disconnect',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Floppy service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType``   *enumerated type* 
#     defines the valid backing types for a virtual floppy drive.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType::IMAGE_FILE #
#Virtual floppy drive is backed by an image file.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType::HOST_DEVICE #
#Virtual floppy drive is backed by a device on the host where the virtual machine is
# running.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType::CLIENT_DEVICE #
#Virtual floppy drive is backed by a device on the client that is connected to the virtual
# machine console.

package Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType;

use constant {
    IMAGE_FILE =>  'IMAGE_FILE',
    HOST_DEVICE =>  'HOST_DEVICE',
    CLIENT_DEVICE =>  'CLIENT_DEVICE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.floppy.backing_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Floppy service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Floppy service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingInfo``   *class*  contains
#     information about the physical resource backing a virtual floppy drive.

package Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingInfo structure
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
               'IMAGE_FILE' => ['image_file'],
               'HOST_DEVICE' => ['host_device', 'auto_detect'],
               'CLIENT_DEVICE' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{image_file} = $args{'image_file'};
   $self->{host_device} = $args{'host_device'};
   $self->{auto_detect} = $args{'auto_detect'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.floppy.backing_info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Floppy::BackingType'));
   $self->set_binding_field('key' => 'image_file', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_device', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'auto_detect', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual floppy drive.
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
# Backing type for the virtual floppy drive.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_image_file ()
# Gets the value of 'image_file' property.
#
# @retval image_file - The current value of the field.
# Path of the image file backing the virtual floppy drive.
#
# optional#
sub get_image_file {
   my ($self, %args) = @_;
   return $self->{'image_file'}; 	
}

## @method set_image_file ()
# Sets the given value for 'image_file' property.
# 
# @param image_file  - New value for the field.
# Path of the image file backing the virtual floppy drive.
#
sub set_image_file {
   my ($self, %args) = @_;
   $self->{'image_file'} = $args{'image_file'}; 
   return;	
}

## @method get_host_device ()
# Gets the value of 'host_device' property.
#
# @retval host_device - The current value of the field.
# Name of the host device backing the virtual floppy drive. <p>
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
# Name of the host device backing the virtual floppy drive. <p>
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
# Flag indicating whether the virtual floppy drive is configured to automatically detect
#     a suitable host device.
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
# Flag indicating whether the virtual floppy drive is configured to automatically detect
#     a suitable host device.
#
sub set_auto_detect {
   my ($self, %args) = @_;
   $self->{'auto_detect'} = $args{'auto_detect'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec``   *class*  provides a
#     specification of the physical resource backing a virtual floppy drive.

package Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec structure
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
               'IMAGE_FILE' => ['image_file'],
               'HOST_DEVICE' => ['host_device'],
               'CLIENT_DEVICE' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{image_file} = $args{'image_file'};
   $self->{host_device} = $args{'host_device'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Floppy::BackingSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.floppy.backing_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Floppy::BackingType'));
   $self->set_binding_field('key' => 'image_file', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_device', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual floppy drive.
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
# Backing type for the virtual floppy drive.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_image_file ()
# Gets the value of 'image_file' property.
#
# @retval image_file - The current value of the field.
# Path of the image file that should be used as the virtual floppy drive backing.
#
# optional#
sub get_image_file {
   my ($self, %args) = @_;
   return $self->{'image_file'}; 	
}

## @method set_image_file ()
# Sets the given value for 'image_file' property.
# 
# @param image_file  - New value for the field.
# Path of the image file that should be used as the virtual floppy drive backing.
#
sub set_image_file {
   my ($self, %args) = @_;
   $self->{'image_file'} = $args{'image_file'}; 
   return;	
}

## @method get_host_device ()
# Gets the value of 'host_device' property.
#
# @retval host_device - The current value of the field.
# Name of the device that should be used as the virtual floppy drive backing.
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
# Name of the device that should be used as the virtual floppy drive backing.
#
sub set_host_device {
   my ($self, %args) = @_;
   $self->{'host_device'} = $args{'host_device'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info``   *class*  contains
#     information about a virtual floppy drive.

package Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info structure
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
   $self->{backing} = $args{'backing'};
   $self->{state} = $args{'state'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Floppy::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.floppy.info');
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Floppy::BackingInfo'));
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

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual floppy drive.
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
# Physical resource backing for the virtual floppy drive.
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


## @class Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec``   *class*  provides a
#     specification for the configuration of a newly-created virtual floppy drive.

package Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Floppy::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.floppy.create_spec');
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Floppy::BackingSpec')));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual floppy drive.
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
# Physical resource backing for the virtual floppy drive.
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


## @class Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec``   *class*  describes
#     the updates to be made to the configuration of a virtual floppy drive.

package Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Floppy::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.floppy.update_spec');
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Floppy::BackingSpec')));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual floppy drive. <p>
# 
# This  *field*  may only be modified if the virtual machine is not powered on or the
#     virtual floppy drive is not connected.</p>
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
# Physical resource backing for the virtual floppy drive. <p>
# 
# This  *field*  may only be modified if the virtual machine is not powered on or the
#     virtual floppy drive is not connected.</p>
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


## @class Com::Vmware::Vcenter::Vm::Hardware::Floppy::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Floppy::Summary``   *class*  contains
#     commonly used information about a virtual floppy drive.

package Com::Vmware::Vcenter::Vm::Hardware::Floppy::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Floppy::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{floppy} = $args{'floppy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Floppy::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.floppy.summary');
   $self->set_binding_field('key' => 'floppy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_floppy ()
# Gets the value of 'floppy' property.
#
# @retval floppy - The current value of the field.
# Identifier of the virtual floppy drive.
#
# ID#
sub get_floppy {
   my ($self, %args) = @_;
   return $self->{'floppy'}; 	
}

## @method set_floppy ()
# Sets the given value for 'floppy' property.
# 
# @param floppy  - New value for the field.
# Identifier of the virtual floppy drive.
#
sub set_floppy {
   my ($self, %args) = @_;
   $self->{'floppy'} = $args{'floppy'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Floppy service
#########################################################################################
