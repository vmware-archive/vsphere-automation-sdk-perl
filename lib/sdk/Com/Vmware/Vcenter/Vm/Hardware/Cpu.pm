########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Cpu.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Cpu
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cpu``   *interface*  provides  *methods* 
#     for configuring the CPU settings of a virtual machine.
#

package Com::Vmware::Vcenter::Vm::Hardware::Cpu;

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
use Com::Vmware::Vcenter::Vm::Hardware::CpuStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.hardware.cpu';


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
# Returns the CPU-related settings of a virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# CPU-related settings of the virtual machine.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info
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
sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method update ()
# Updates the CPU-related settings of a virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the CPU-related settings of the virtual machine.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if one of the provided settings is not permitted; for example, specifying a negative
#     value for  ``count`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if  ``hotAddEnabled``  or  ``hotRemoveEnabled``  is specified and the virtual machine
#     is not powered off.
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if  ``count``  is specified and is greater than  ``count`` ,  ``hotAddEnabled``  is
#     false, and the virtual machine is not powered off.
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if  ``count``  is specified and is less than  ``count`` ,  ``hotRemoveEnabled``  is
#     false, and the virtual machine is not powered off.
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
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Cpu service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Cpu service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Cpu service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info``   *class*  contains CPU-related
#     information about a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{count} = $args{'count'};
   $self->{cores_per_socket} = $args{'cores_per_socket'};
   $self->{hot_add_enabled} = $args{'hot_add_enabled'};
   $self->{hot_remove_enabled} = $args{'hot_remove_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.cpu.info');
   $self->set_binding_field('key' => 'count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'cores_per_socket', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'hot_add_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'hot_remove_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_count ()
# Gets the value of 'count' property.
#
# @retval count - The current value of the field.
# Number of CPU cores.
#
# long#
sub get_count {
   my ($self, %args) = @_;
   return $self->{'count'}; 	
}

## @method set_count ()
# Sets the given value for 'count' property.
# 
# @param count  - New value for the field.
# Number of CPU cores.
#
sub set_count {
   my ($self, %args) = @_;
   $self->{'count'} = $args{'count'}; 
   return;	
}

## @method get_cores_per_socket ()
# Gets the value of 'cores_per_socket' property.
#
# @retval cores_per_socket - The current value of the field.
# Number of CPU cores per socket.
#
# long#
sub get_cores_per_socket {
   my ($self, %args) = @_;
   return $self->{'cores_per_socket'}; 	
}

## @method set_cores_per_socket ()
# Sets the given value for 'cores_per_socket' property.
# 
# @param cores_per_socket  - New value for the field.
# Number of CPU cores per socket.
#
sub set_cores_per_socket {
   my ($self, %args) = @_;
   $self->{'cores_per_socket'} = $args{'cores_per_socket'}; 
   return;	
}

## @method get_hot_add_enabled ()
# Gets the value of 'hot_add_enabled' property.
#
# @retval hot_add_enabled - The current value of the field.
# Flag indicating whether adding CPUs while the virtual machine is running is enabled.
#
# boolean#
sub get_hot_add_enabled {
   my ($self, %args) = @_;
   return $self->{'hot_add_enabled'}; 	
}

## @method set_hot_add_enabled ()
# Sets the given value for 'hot_add_enabled' property.
# 
# @param hot_add_enabled  - New value for the field.
# Flag indicating whether adding CPUs while the virtual machine is running is enabled.
#
sub set_hot_add_enabled {
   my ($self, %args) = @_;
   $self->{'hot_add_enabled'} = $args{'hot_add_enabled'}; 
   return;	
}

## @method get_hot_remove_enabled ()
# Gets the value of 'hot_remove_enabled' property.
#
# @retval hot_remove_enabled - The current value of the field.
# Flag indicating whether removing CPUs while the virtual machine is running is enabled.
#
# boolean#
sub get_hot_remove_enabled {
   my ($self, %args) = @_;
   return $self->{'hot_remove_enabled'}; 	
}

## @method set_hot_remove_enabled ()
# Sets the given value for 'hot_remove_enabled' property.
# 
# @param hot_remove_enabled  - New value for the field.
# Flag indicating whether removing CPUs while the virtual machine is running is enabled.
#
sub set_hot_remove_enabled {
   my ($self, %args) = @_;
   $self->{'hot_remove_enabled'} = $args{'hot_remove_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec``   *class*  describes the
#     updates to be made to the CPU-related settings of a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{count} = $args{'count'};
   $self->{cores_per_socket} = $args{'cores_per_socket'};
   $self->{hot_add_enabled} = $args{'hot_add_enabled'};
   $self->{hot_remove_enabled} = $args{'hot_remove_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Cpu::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.cpu.update_spec');
   $self->set_binding_field('key' => 'count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'cores_per_socket', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'hot_add_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'hot_remove_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_count ()
# Gets the value of 'count' property.
#
# @retval count - The current value of the field.
# New number of CPU cores. The number of CPU cores in the virtual machine must be a
#     multiple of the number of cores per socket. <p>
# 
# The supported range of CPU counts is constrained by the configured guest operating
#     system and virtual hardware version of the virtual machine. </p>
# 
# <p>
# 
# If the virtual machine is running, the number of CPU cores may only be increased if 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info.hot_add_enabled`  is true, and
#     may only be decreased if 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info.hot_remove_enabled`  is true.</p>
#
# Optional#
sub get_count {
   my ($self, %args) = @_;
   return $self->{'count'}; 	
}

## @method set_count ()
# Sets the given value for 'count' property.
# 
# @param count  - New value for the field.
# New number of CPU cores. The number of CPU cores in the virtual machine must be a
#     multiple of the number of cores per socket. <p>
# 
# The supported range of CPU counts is constrained by the configured guest operating
#     system and virtual hardware version of the virtual machine. </p>
# 
# <p>
# 
# If the virtual machine is running, the number of CPU cores may only be increased if 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info.hot_add_enabled`  is true, and
#     may only be decreased if 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Cpu::Info.hot_remove_enabled`  is true.</p>
#
sub set_count {
   my ($self, %args) = @_;
   $self->{'count'} = $args{'count'}; 
   return;	
}

## @method get_cores_per_socket ()
# Gets the value of 'cores_per_socket' property.
#
# @retval cores_per_socket - The current value of the field.
# New number of CPU cores per socket. The number of CPU cores in the virtual machine
#     must be a multiple of the number of cores per socket.
#
# Optional#
sub get_cores_per_socket {
   my ($self, %args) = @_;
   return $self->{'cores_per_socket'}; 	
}

## @method set_cores_per_socket ()
# Sets the given value for 'cores_per_socket' property.
# 
# @param cores_per_socket  - New value for the field.
# New number of CPU cores per socket. The number of CPU cores in the virtual machine
#     must be a multiple of the number of cores per socket.
#
sub set_cores_per_socket {
   my ($self, %args) = @_;
   $self->{'cores_per_socket'} = $args{'cores_per_socket'}; 
   return;	
}

## @method get_hot_add_enabled ()
# Gets the value of 'hot_add_enabled' property.
#
# @retval hot_add_enabled - The current value of the field.
# Flag indicating whether adding CPUs while the virtual machine is running is enabled.
#     <p>
# 
#  This  *field*  may only be modified if the virtual machine is powered off.</p>
#
# Optional#
sub get_hot_add_enabled {
   my ($self, %args) = @_;
   return $self->{'hot_add_enabled'}; 	
}

## @method set_hot_add_enabled ()
# Sets the given value for 'hot_add_enabled' property.
# 
# @param hot_add_enabled  - New value for the field.
# Flag indicating whether adding CPUs while the virtual machine is running is enabled.
#     <p>
# 
#  This  *field*  may only be modified if the virtual machine is powered off.</p>
#
sub set_hot_add_enabled {
   my ($self, %args) = @_;
   $self->{'hot_add_enabled'} = $args{'hot_add_enabled'}; 
   return;	
}

## @method get_hot_remove_enabled ()
# Gets the value of 'hot_remove_enabled' property.
#
# @retval hot_remove_enabled - The current value of the field.
# Flag indicating whether removing CPUs while the virtual machine is running is enabled.
#     <p>
# 
#  This  *field*  may only be modified if the virtual machine is powered off.</p>
#
# Optional#
sub get_hot_remove_enabled {
   my ($self, %args) = @_;
   return $self->{'hot_remove_enabled'}; 	
}

## @method set_hot_remove_enabled ()
# Sets the given value for 'hot_remove_enabled' property.
# 
# @param hot_remove_enabled  - New value for the field.
# Flag indicating whether removing CPUs while the virtual machine is running is enabled.
#     <p>
# 
#  This  *field*  may only be modified if the virtual machine is powered off.</p>
#
sub set_hot_remove_enabled {
   my ($self, %args) = @_;
   $self->{'hot_remove_enabled'} = $args{'hot_remove_enabled'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Cpu service
#########################################################################################
