########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Memory.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Memory
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Memory``   *interface*  provides  *methods*
#      for configuring the memory settings of a virtual machine.
#

package Com::Vmware::Vcenter::Vm::Hardware::Memory;

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
use Com::Vmware::Vcenter::Vm::Hardware::MemoryStub;

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

## @method get ()
# Returns the memory-related settings of a virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Memory-related settings of the virtual machine.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Memory::Info
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
# Updates the memory-related settings of a virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the memory-related settings of the virtual machine.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if one of the provided settings is not permitted; for example, specifying a negative
#     value for  ``sizeMiB`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if  ``hotAddEnabled``  is specified and the virtual machine is not powered off.
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if  ``sizeMiB``  is specified,  ``hotAddEnabled``  is false, and the virtual machine
#     is not powered off.
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
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Memory service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Memory service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Memory service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Memory::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Memory::Info``   *class*  contains
#     memory-related information about a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::Memory::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Memory::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{size_MiB} = $args{'size_MiB'};
   $self->{hot_add_enabled} = $args{'hot_add_enabled'};
   $self->{hot_add_increment_size_MiB} = $args{'hot_add_increment_size_MiB'};
   $self->{hot_add_limit_MiB} = $args{'hot_add_limit_MiB'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Memory::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.memory.info');
   $self->set_binding_field('key' => 'size_MiB', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'hot_add_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'hot_add_increment_size_MiB', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'hot_add_limit_MiB', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_size_MiB ()
# Gets the value of 'size_MiB' property.
#
# @retval size_MiB - The current value of the field.
# Memory size in mebibytes.
#
# long#
sub get_size_MiB {
   my ($self, %args) = @_;
   return $self->{'size_MiB'}; 	
}

## @method set_size_MiB ()
# Sets the given value for 'size_MiB' property.
# 
# @param size_MiB  - New value for the field.
# Memory size in mebibytes.
#
sub set_size_MiB {
   my ($self, %args) = @_;
   $self->{'size_MiB'} = $args{'size_MiB'}; 
   return;	
}

## @method get_hot_add_enabled ()
# Gets the value of 'hot_add_enabled' property.
#
# @retval hot_add_enabled - The current value of the field.
# Flag indicating whether adding memory while the virtual machine is running is enabled.
#     <p>
# 
# Some guest operating systems may consume more resources or perform less efficiently
#     when they run on hardware that supports adding memory while the machine is
#     running.</p>
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
# Flag indicating whether adding memory while the virtual machine is running is enabled.
#     <p>
# 
# Some guest operating systems may consume more resources or perform less efficiently
#     when they run on hardware that supports adding memory while the machine is
#     running.</p>
#
sub set_hot_add_enabled {
   my ($self, %args) = @_;
   $self->{'hot_add_enabled'} = $args{'hot_add_enabled'}; 
   return;	
}

## @method get_hot_add_increment_size_MiB ()
# Gets the value of 'hot_add_increment_size_MiB' property.
#
# @retval hot_add_increment_size_MiB - The current value of the field.
# The granularity, in mebibytes, at which memory can be added to a running virtual
#     machine. <p>
# 
# When adding memory to a running virtual machine, the amount of memory added must be at
#     least 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_increment_size_mib` 
#     and the total memory size of the virtual machine must be a multiple of
#     {@link&gt;hotAddIncrementSize}.</p>
#
# Optional#
sub get_hot_add_increment_size_MiB {
   my ($self, %args) = @_;
   return $self->{'hot_add_increment_size_MiB'}; 	
}

## @method set_hot_add_increment_size_MiB ()
# Sets the given value for 'hot_add_increment_size_MiB' property.
# 
# @param hot_add_increment_size_MiB  - New value for the field.
# The granularity, in mebibytes, at which memory can be added to a running virtual
#     machine. <p>
# 
# When adding memory to a running virtual machine, the amount of memory added must be at
#     least 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_increment_size_mib` 
#     and the total memory size of the virtual machine must be a multiple of
#     {@link&gt;hotAddIncrementSize}.</p>
#
sub set_hot_add_increment_size_MiB {
   my ($self, %args) = @_;
   $self->{'hot_add_increment_size_MiB'} = $args{'hot_add_increment_size_MiB'}; 
   return;	
}

## @method get_hot_add_limit_MiB ()
# Gets the value of 'hot_add_limit_MiB' property.
#
# @retval hot_add_limit_MiB - The current value of the field.
# The maximum amount of memory, in mebibytes, that can be added to a running virtual
#     machine.
#
# Optional#
sub get_hot_add_limit_MiB {
   my ($self, %args) = @_;
   return $self->{'hot_add_limit_MiB'}; 	
}

## @method set_hot_add_limit_MiB ()
# Sets the given value for 'hot_add_limit_MiB' property.
# 
# @param hot_add_limit_MiB  - New value for the field.
# The maximum amount of memory, in mebibytes, that can be added to a running virtual
#     machine.
#
sub set_hot_add_limit_MiB {
   my ($self, %args) = @_;
   $self->{'hot_add_limit_MiB'} = $args{'hot_add_limit_MiB'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec``   *class*  describes
#     the updates to be made to the memory-related settings of a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{size_MiB} = $args{'size_MiB'};
   $self->{hot_add_enabled} = $args{'hot_add_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Memory::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.memory.update_spec');
   $self->set_binding_field('key' => 'size_MiB', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'hot_add_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_size_MiB ()
# Gets the value of 'size_MiB' property.
#
# @retval size_MiB - The current value of the field.
# New memory size in mebibytes. <p>
# 
# The supported range of memory sizes is constrained by the configured guest operating
#     system and virtual hardware version of the virtual machine. </p>
# 
# <p>
# 
# If the virtual machine is running, this value may only be changed if 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_enabled`  is true, and
#     the new memory size must satisfy the constraints specified by 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_increment_size_mib` 
#     and  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_limit_mib` .</p>
#
# Optional#
sub get_size_MiB {
   my ($self, %args) = @_;
   return $self->{'size_MiB'}; 	
}

## @method set_size_MiB ()
# Sets the given value for 'size_MiB' property.
# 
# @param size_MiB  - New value for the field.
# New memory size in mebibytes. <p>
# 
# The supported range of memory sizes is constrained by the configured guest operating
#     system and virtual hardware version of the virtual machine. </p>
# 
# <p>
# 
# If the virtual machine is running, this value may only be changed if 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_enabled`  is true, and
#     the new memory size must satisfy the constraints specified by 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_increment_size_mib` 
#     and  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Memory::Info.hot_add_limit_mib` .</p>
#
sub set_size_MiB {
   my ($self, %args) = @_;
   $self->{'size_MiB'} = $args{'size_MiB'}; 
   return;	
}

## @method get_hot_add_enabled ()
# Gets the value of 'hot_add_enabled' property.
#
# @retval hot_add_enabled - The current value of the field.
# Flag indicating whether adding memory while the virtual machine is running should be
#     enabled. <p>
# 
# Some guest operating systems may consume more resources or perform less efficiently
#     when they run on hardware that supports adding memory while the machine is running.
#     </p>
# 
# <p>
# 
#  This  *field*  may only be modified if the virtual machine is not powered on.</p>
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
# Flag indicating whether adding memory while the virtual machine is running should be
#     enabled. <p>
# 
# Some guest operating systems may consume more resources or perform less efficiently
#     when they run on hardware that supports adding memory while the machine is running.
#     </p>
# 
# <p>
# 
#  This  *field*  may only be modified if the virtual machine is not powered on.</p>
#
sub set_hot_add_enabled {
   my ($self, %args) = @_;
   $self->{'hot_add_enabled'} = $args{'hot_add_enabled'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Memory service
#########################################################################################
