########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Serial.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Serial
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial``   *interface*  provides  *methods*
#      for configuring the virtual serial ports of a virtual machine.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for the virtual serial port device.

package Com::Vmware::Vcenter::Vm::Hardware::Serial;

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
use Com::Vmware::Vcenter::Vm::Hardware::SerialStub;

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
# Returns commonly used information about the virtual serial ports belonging to the virtual
# machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# List of commonly used information about virtual serial ports.
# The return type will be Array of Com::Vmware::Vcenter::Vm::Hardware::Serial::Summary
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
# Returns information about a virtual serial port.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param port [REQUIRED] Virtual serial port identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.SerialPort).
# . The value must be str.
#
# @retval 
# Information about the specified virtual serial port.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Serial::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual serial port is not found.
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
   my $port = $args {port};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method create ()
# Adds a virtual serial port to the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for the new virtual serial port.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec.
#
# @retval 
# Virtual serial port identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.SerialPort).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reported that the serial port device was created but was unable to
#     confirm the creation because the identifier of the new device could not be determined.
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
# if the virtual machine already has the maximum number of supported serial ports.
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
# Updates the configuration of a virtual serial port.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param port [REQUIRED] Virtual serial port identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.SerialPort).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the virtual serial port.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Serial::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual serial port is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if one or more of the  *fields*  specified in the  ``spec``   *parameter*  cannot be
#     modified due to the current power state of the virtual machine or the connection state
#     of the virtual serial port.
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
   my $port = $args {port};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method delete ()
# Removes a virtual serial port from the virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param port [REQUIRED] Virtual serial port identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.SerialPort).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual serial port is not found.
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
   my $port = $args {port};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method connect ()
# Connects a virtual serial port of a powered-on virtual machine to its backing. Connecting
# the virtual device makes the backing accessible from the perspective of the guest
# operating system. <p>
# 
# For a powered-off virtual machine, the 
# :func:`Com::Vmware::Vcenter::Vm::Hardware::Serial.update`   *method*  may be used to
# configure the virtual serial port to start in the connected state when the virtual machine
# is powered on.</p>
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param port [REQUIRED] Virtual serial port identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.SerialPort).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual serial port is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual serial port is already connected.
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
   my $port = $args {port};

   $self->validate_args (method_name => 'connect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'connect',
                         method_args => \%args);
}


## @method disconnect ()
# Disconnects a virtual serial port of a powered-on virtual machine from its backing. The
# virtual device is still present and its backing configuration is unchanged, but from the
# perspective of the guest operating system, the serial port is not connected to its
# backing. <p>
# 
# For a powered-off virtual machine, the 
# :func:`Com::Vmware::Vcenter::Vm::Hardware::Serial.update`   *method*  may be used to
# configure the virtual serial port to start in the disconnected state when the virtual
# machine is powered on.</p>
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param port [REQUIRED] Virtual serial port identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.vm.hardware.SerialPort).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine or virtual serial port is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual serial port is already disconnected.
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
   my $port = $args {port};

   $self->validate_args (method_name => 'disconnect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'disconnect',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Serial service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType``   *enumerated type* 
#     defines the valid backing types for a virtual serial port.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType::FILE #
#Virtual serial port is backed by a file.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType::HOST_DEVICE #
#Virtual serial port is backed by a device on the host where the virtual machine is
# running.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType::PIPE_SERVER #
#Virtual serial port is backed by a named pipe server. The virtual machine will accept a
# connection from a host application or another virtual machine on the same host. This is
# useful for capturing debugging information sent through the virtual serial port.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType::PIPE_CLIENT #
#Virtual serial port is backed by a named pipe client. The virtual machine will connect to
# the named pipe provided by a host application or another virtual machine on the same host.
# This is useful for capturing debugging information sent through the virtual serial port.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType::NETWORK_SERVER #
#Virtual serial port is backed by a network server. This backing may be used to create a
# network-accessible serial port on the virtual machine, accepting a connection from a
# remote system.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType::NETWORK_CLIENT #
#Virtual serial port is backed by a network client. This backing may be used to create a
# network-accessible serial port on the virtual machine, initiating a connection to a remote
# system.

package Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType;

use constant {
    FILE =>  'FILE',
    HOST_DEVICE =>  'HOST_DEVICE',
    PIPE_SERVER =>  'PIPE_SERVER',
    PIPE_CLIENT =>  'PIPE_CLIENT',
    NETWORK_SERVER =>  'NETWORK_SERVER',
    NETWORK_CLIENT =>  'NETWORK_CLIENT',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.serial.backing_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Serial service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Serial service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo``   *class*  contains
#     information about the physical resource backing a virtual serial port.

package Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo structure
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
               'FILE' => ['file'],
               'HOST_DEVICE' => ['host_device', 'auto_detect'],
               'PIPE_SERVER' => ['pipe', 'no_rx_loss'],
               'PIPE_CLIENT' => ['pipe', 'no_rx_loss'],
               'NETWORK_SERVER' => ['network_location', 'proxy'],
               'NETWORK_CLIENT' => ['network_location', 'proxy'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{file} = $args{'file'};
   $self->{host_device} = $args{'host_device'};
   $self->{auto_detect} = $args{'auto_detect'};
   $self->{pipe} = $args{'pipe'};
   $self->{no_rx_loss} = $args{'no_rx_loss'};
   $self->{network_location} = $args{'network_location'};
   $self->{proxy} = $args{'proxy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.serial.backing_info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Serial::BackingType'));
   $self->set_binding_field('key' => 'file', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_device', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'auto_detect', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'pipe', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'no_rx_loss', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'network_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'proxy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual serial port.
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
# Backing type for the virtual serial port.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_file ()
# Gets the value of 'file' property.
#
# @retval file - The current value of the field.
# Path of the file backing the virtual serial port.
#
# optional#
sub get_file {
   my ($self, %args) = @_;
   return $self->{'file'}; 	
}

## @method set_file ()
# Sets the given value for 'file' property.
# 
# @param file  - New value for the field.
# Path of the file backing the virtual serial port.
#
sub set_file {
   my ($self, %args) = @_;
   $self->{'file'} = $args{'file'}; 
   return;	
}

## @method get_host_device ()
# Gets the value of 'host_device' property.
#
# @retval host_device - The current value of the field.
# Name of the device backing the virtual serial port. <p>
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
# Name of the device backing the virtual serial port. <p>
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
# Flag indicating whether the virtual serial port is configured to automatically detect
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
# Flag indicating whether the virtual serial port is configured to automatically detect
#     a suitable host device.
#
sub set_auto_detect {
   my ($self, %args) = @_;
   $self->{'auto_detect'} = $args{'auto_detect'}; 
   return;	
}

## @method get_pipe ()
# Gets the value of 'pipe' property.
#
# @retval pipe - The current value of the field.
# Name of the pipe backing the virtual serial port.
#
# optional#
sub get_pipe {
   my ($self, %args) = @_;
   return $self->{'pipe'}; 	
}

## @method set_pipe ()
# Sets the given value for 'pipe' property.
# 
# @param pipe  - New value for the field.
# Name of the pipe backing the virtual serial port.
#
sub set_pipe {
   my ($self, %args) = @_;
   $self->{'pipe'} = $args{'pipe'}; 
   return;	
}

## @method get_no_rx_loss ()
# Gets the value of 'no_rx_loss' property.
#
# @retval no_rx_loss - The current value of the field.
# Flag that enables optimized data transfer over the pipe. When the value is true, the
#     host buffers data to prevent data overrun. This allows the virtual machine to read all
#     of the data transferred over the pipe with no data loss.
#
# optional#
sub get_no_rx_loss {
   my ($self, %args) = @_;
   return $self->{'no_rx_loss'}; 	
}

## @method set_no_rx_loss ()
# Sets the given value for 'no_rx_loss' property.
# 
# @param no_rx_loss  - New value for the field.
# Flag that enables optimized data transfer over the pipe. When the value is true, the
#     host buffers data to prevent data overrun. This allows the virtual machine to read all
#     of the data transferred over the pipe with no data loss.
#
sub set_no_rx_loss {
   my ($self, %args) = @_;
   $self->{'no_rx_loss'} = $args{'no_rx_loss'}; 
   return;	
}

## @method get_network_location ()
# Gets the value of 'network_location' property.
#
# @retval network_location - The current value of the field.
# URI specifying the location of the network service backing the virtual serial port.
#     <ul>
# <li>If  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo.type`  is 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_SERVER` , this 
#     *field*  is the location used by clients to connect to this server. The hostname part
#     of the URI should either be empty or should specify the address of the host on which
#     the virtual machine is running.</li>
# <li>If  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo.type`  is 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_CLIENT` , this 
#     *field*  is the location used by the virtual machine to connect to the remote
#     server.</li>
#  </ul>
#
# optional#
sub get_network_location {
   my ($self, %args) = @_;
   return $self->{'network_location'}; 	
}

## @method set_network_location ()
# Sets the given value for 'network_location' property.
# 
# @param network_location  - New value for the field.
# URI specifying the location of the network service backing the virtual serial port.
#     <ul>
# <li>If  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo.type`  is 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_SERVER` , this 
#     *field*  is the location used by clients to connect to this server. The hostname part
#     of the URI should either be empty or should specify the address of the host on which
#     the virtual machine is running.</li>
# <li>If  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingInfo.type`  is 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_CLIENT` , this 
#     *field*  is the location used by the virtual machine to connect to the remote
#     server.</li>
#  </ul>
#
sub set_network_location {
   my ($self, %args) = @_;
   $self->{'network_location'} = $args{'network_location'}; 
   return;	
}

## @method get_proxy ()
# Gets the value of 'proxy' property.
#
# @retval proxy - The current value of the field.
# Proxy service that provides network access to the network backing. If set, the virtual
#     machine initiates a connection with the proxy service and forwards the traffic to the
#     proxy.
#
# Optional#
sub get_proxy {
   my ($self, %args) = @_;
   return $self->{'proxy'}; 	
}

## @method set_proxy ()
# Sets the given value for 'proxy' property.
# 
# @param proxy  - New value for the field.
# Proxy service that provides network access to the network backing. If set, the virtual
#     machine initiates a connection with the proxy service and forwards the traffic to the
#     proxy.
#
sub set_proxy {
   my ($self, %args) = @_;
   $self->{'proxy'} = $args{'proxy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec``   *class*  provides a
#     specification of the physical resource backing a virtual serial port.

package Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec structure
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
               'FILE' => ['file'],
               'HOST_DEVICE' => ['host_device'],
               'PIPE_SERVER' => ['pipe', 'no_rx_loss'],
               'PIPE_CLIENT' => ['pipe', 'no_rx_loss'],
               'NETWORK_SERVER' => ['network_location', 'proxy'],
               'NETWORK_CLIENT' => ['network_location', 'proxy'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{file} = $args{'file'};
   $self->{host_device} = $args{'host_device'};
   $self->{pipe} = $args{'pipe'};
   $self->{no_rx_loss} = $args{'no_rx_loss'};
   $self->{network_location} = $args{'network_location'};
   $self->{proxy} = $args{'proxy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.serial.backing_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Serial::BackingType'));
   $self->set_binding_field('key' => 'file', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_device', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'pipe', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'no_rx_loss', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'network_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'proxy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Backing type for the virtual serial port.
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
# Backing type for the virtual serial port.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_file ()
# Gets the value of 'file' property.
#
# @retval file - The current value of the field.
# Path of the file backing the virtual serial port.
#
# optional#
sub get_file {
   my ($self, %args) = @_;
   return $self->{'file'}; 	
}

## @method set_file ()
# Sets the given value for 'file' property.
# 
# @param file  - New value for the field.
# Path of the file backing the virtual serial port.
#
sub set_file {
   my ($self, %args) = @_;
   $self->{'file'} = $args{'file'}; 
   return;	
}

## @method get_host_device ()
# Gets the value of 'host_device' property.
#
# @retval host_device - The current value of the field.
# Name of the device backing the virtual serial port. <p>
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
# Name of the device backing the virtual serial port. <p>
# 
# </p>
#
sub set_host_device {
   my ($self, %args) = @_;
   $self->{'host_device'} = $args{'host_device'}; 
   return;	
}

## @method get_pipe ()
# Gets the value of 'pipe' property.
#
# @retval pipe - The current value of the field.
# Name of the pipe backing the virtual serial port.
#
# optional#
sub get_pipe {
   my ($self, %args) = @_;
   return $self->{'pipe'}; 	
}

## @method set_pipe ()
# Sets the given value for 'pipe' property.
# 
# @param pipe  - New value for the field.
# Name of the pipe backing the virtual serial port.
#
sub set_pipe {
   my ($self, %args) = @_;
   $self->{'pipe'} = $args{'pipe'}; 
   return;	
}

## @method get_no_rx_loss ()
# Gets the value of 'no_rx_loss' property.
#
# @retval no_rx_loss - The current value of the field.
# Flag that enables optimized data transfer over the pipe. When the value is true, the
#     host buffers data to prevent data overrun. This allows the virtual machine to read all
#     of the data transferred over the pipe with no data loss.
#
# Optional#
sub get_no_rx_loss {
   my ($self, %args) = @_;
   return $self->{'no_rx_loss'}; 	
}

## @method set_no_rx_loss ()
# Sets the given value for 'no_rx_loss' property.
# 
# @param no_rx_loss  - New value for the field.
# Flag that enables optimized data transfer over the pipe. When the value is true, the
#     host buffers data to prevent data overrun. This allows the virtual machine to read all
#     of the data transferred over the pipe with no data loss.
#
sub set_no_rx_loss {
   my ($self, %args) = @_;
   $self->{'no_rx_loss'} = $args{'no_rx_loss'}; 
   return;	
}

## @method get_network_location ()
# Gets the value of 'network_location' property.
#
# @retval network_location - The current value of the field.
# URI specifying the location of the network service backing the virtual serial port.
#     <ul>
# <li>If  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec.type`  is 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_SERVER` , this 
#     *field*  is the location used by clients to connect to this server. The hostname part
#     of the URI should either be empty or should specify the address of the host on which
#     the virtual machine is running.</li>
# <li>If  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec.type`  is 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_CLIENT` , this 
#     *field*  is the location used by the virtual machine to connect to the remote
#     server.</li>
#  </ul>
#
# optional#
sub get_network_location {
   my ($self, %args) = @_;
   return $self->{'network_location'}; 	
}

## @method set_network_location ()
# Sets the given value for 'network_location' property.
# 
# @param network_location  - New value for the field.
# URI specifying the location of the network service backing the virtual serial port.
#     <ul>
# <li>If  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec.type`  is 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_SERVER` , this 
#     *field*  is the location used by clients to connect to this server. The hostname part
#     of the URI should either be empty or should specify the address of the host on which
#     the virtual machine is running.</li>
# <li>If  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingSpec.type`  is 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Serial::BackingType.NETWORK_CLIENT` , this 
#     *field*  is the location used by the virtual machine to connect to the remote
#     server.</li>
#  </ul>
#
sub set_network_location {
   my ($self, %args) = @_;
   $self->{'network_location'} = $args{'network_location'}; 
   return;	
}

## @method get_proxy ()
# Gets the value of 'proxy' property.
#
# @retval proxy - The current value of the field.
# Proxy service that provides network access to the network backing. If set, the virtual
#     machine initiates a connection with the proxy service and forwards the traffic to the
#     proxy.
#
# Optional#
sub get_proxy {
   my ($self, %args) = @_;
   return $self->{'proxy'}; 	
}

## @method set_proxy ()
# Sets the given value for 'proxy' property.
# 
# @param proxy  - New value for the field.
# Proxy service that provides network access to the network backing. If set, the virtual
#     machine initiates a connection with the proxy service and forwards the traffic to the
#     proxy.
#
sub set_proxy {
   my ($self, %args) = @_;
   $self->{'proxy'} = $args{'proxy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Serial::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::Info``   *class*  contains
#     information about a virtual serial port.

package Com::Vmware::Vcenter::Vm::Hardware::Serial::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Serial::Info structure
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
   $self->{yield_on_poll} = $args{'yield_on_poll'};
   $self->{backing} = $args{'backing'};
   $self->{state} = $args{'state'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Serial::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.serial.info');
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'yield_on_poll', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Serial::BackingInfo'));
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

## @method get_yield_on_poll ()
# Gets the value of 'yield_on_poll' property.
#
# @retval yield_on_poll - The current value of the field.
# CPU yield behavior. If set to true, the virtual machine will periodically relinquish
#     the processor if its sole task is polling the virtual serial port. The amount of time
#     it takes to regain the processor will depend on the degree of other virtual machine
#     activity on the host.
#
# boolean#
sub get_yield_on_poll {
   my ($self, %args) = @_;
   return $self->{'yield_on_poll'}; 	
}

## @method set_yield_on_poll ()
# Sets the given value for 'yield_on_poll' property.
# 
# @param yield_on_poll  - New value for the field.
# CPU yield behavior. If set to true, the virtual machine will periodically relinquish
#     the processor if its sole task is polling the virtual serial port. The amount of time
#     it takes to regain the processor will depend on the degree of other virtual machine
#     activity on the host.
#
sub set_yield_on_poll {
   my ($self, %args) = @_;
   $self->{'yield_on_poll'} = $args{'yield_on_poll'}; 
   return;	
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual serial port.
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
# Physical resource backing for the virtual serial port.
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


## @class Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec``   *class*  provides a
#     specification for the configuration of a newly-created virtual serial port.

package Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{yield_on_poll} = $args{'yield_on_poll'};
   $self->{backing} = $args{'backing'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Serial::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.serial.create_spec');
   $self->set_binding_field('key' => 'yield_on_poll', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Serial::BackingSpec')));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_yield_on_poll ()
# Gets the value of 'yield_on_poll' property.
#
# @retval yield_on_poll - The current value of the field.
# CPU yield behavior. If set to true, the virtual machine will periodically relinquish
#     the processor if its sole task is polling the virtual serial port. The amount of time
#     it takes to regain the processor will depend on the degree of other virtual machine
#     activity on the host.
#
# Optional#
sub get_yield_on_poll {
   my ($self, %args) = @_;
   return $self->{'yield_on_poll'}; 	
}

## @method set_yield_on_poll ()
# Sets the given value for 'yield_on_poll' property.
# 
# @param yield_on_poll  - New value for the field.
# CPU yield behavior. If set to true, the virtual machine will periodically relinquish
#     the processor if its sole task is polling the virtual serial port. The amount of time
#     it takes to regain the processor will depend on the degree of other virtual machine
#     activity on the host.
#
sub set_yield_on_poll {
   my ($self, %args) = @_;
   $self->{'yield_on_poll'} = $args{'yield_on_poll'}; 
   return;	
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual serial port.
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
# Physical resource backing for the virtual serial port.
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


## @class Com::Vmware::Vcenter::Vm::Hardware::Serial::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::UpdateSpec``   *class*  describes
#     the updates to be made to the configuration of a virtual serial port.

package Com::Vmware::Vcenter::Vm::Hardware::Serial::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Serial::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{yield_on_poll} = $args{'yield_on_poll'};
   $self->{backing} = $args{'backing'};
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Serial::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.serial.update_spec');
   $self->set_binding_field('key' => 'yield_on_poll', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Serial::BackingSpec')));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_yield_on_poll ()
# Gets the value of 'yield_on_poll' property.
#
# @retval yield_on_poll - The current value of the field.
# CPU yield behavior. If set to true, the virtual machine will periodically relinquish
#     the processor if its sole task is polling the virtual serial port. The amount of time
#     it takes to regain the processor will depend on the degree of other virtual machine
#     activity on the host. <p>
# 
# This  *field*  may be modified at any time, and changes applied to a connected virtual
#     serial port take effect immediately.</p>
#
# Optional#
sub get_yield_on_poll {
   my ($self, %args) = @_;
   return $self->{'yield_on_poll'}; 	
}

## @method set_yield_on_poll ()
# Sets the given value for 'yield_on_poll' property.
# 
# @param yield_on_poll  - New value for the field.
# CPU yield behavior. If set to true, the virtual machine will periodically relinquish
#     the processor if its sole task is polling the virtual serial port. The amount of time
#     it takes to regain the processor will depend on the degree of other virtual machine
#     activity on the host. <p>
# 
# This  *field*  may be modified at any time, and changes applied to a connected virtual
#     serial port take effect immediately.</p>
#
sub set_yield_on_poll {
   my ($self, %args) = @_;
   $self->{'yield_on_poll'} = $args{'yield_on_poll'}; 
   return;	
}

## @method get_backing ()
# Gets the value of 'backing' property.
#
# @retval backing - The current value of the field.
# Physical resource backing for the virtual serial port. <p>
# 
# This  *field*  may only be modified if the virtual machine is not powered on or the
#     virtual serial port is not connected.</p>
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
# Physical resource backing for the virtual serial port. <p>
# 
# This  *field*  may only be modified if the virtual machine is not powered on or the
#     virtual serial port is not connected.</p>
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


## @class Com::Vmware::Vcenter::Vm::Hardware::Serial::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Serial::Summary``   *class*  contains
#     commonly used information about a virtual serial port.

package Com::Vmware::Vcenter::Vm::Hardware::Serial::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Serial::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{port} = $args{'port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Serial::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.serial.summary');
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# Identifier of the virtual serial port.
#
# ID#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# Identifier of the virtual serial port.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Serial service
#########################################################################################
