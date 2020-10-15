########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LocalFilesystem.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem
# The  ``Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem``   *interface*  provides 
#     *methods*  for retrieving information about the guest operating system local file
#     systems. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem;

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
use Com::Vmware::Vcenter::Vm::Guest::LocalFilesystemStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.guest.local_filesystem';


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
# Returns details of the local file systems in the guest operating system. This  *method* 
# was added in vSphere API 6.7.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Information about the local file systems configured in the guest operating system.
# The return type will be Dictionary of String and
# Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if VMware Tools is not running.
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if VMware Tools has not provided any data.
#
sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::VirtualDiskMapping
#
#
# Describes the virtual disk backing a local guest disk. This  *class*  was added in
#     vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::VirtualDiskMapping;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::VirtualDiskMapping structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::VirtualDiskMapping');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.local_filesystem.virtual_disk_mapping');
   $self->set_binding_field('key' => 'disk', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_disk ()
# Gets the value of 'disk' property.
#
# @retval disk - The current value of the field.
# The virtual disk. This  *field*  was added in vSphere API 7.0.0.0.
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
# The virtual disk. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_disk {
   my ($self, %args) = @_;
   $self->{'disk'} = $args{'disk'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::Info``   *class*  contains
#     information about a local file system configured in the guest operating system. This 
#     *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{capacity} = $args{'capacity'};
   $self->{free_space} = $args{'free_space'};
   $self->{filesystem} = $args{'filesystem'};
   $self->{mappings} = $args{'mappings'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.local_filesystem.info');
   $self->set_binding_field('key' => 'capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'free_space', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'filesystem', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'mappings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest', 'type_name' => 'LocalFilesystem::VirtualDiskMapping'))));
   bless $self, $class;
   return $self;
}

## @method get_capacity ()
# Gets the value of 'capacity' property.
#
# @retval capacity - The current value of the field.
# Total capacity of the file system, in bytes. This  *field*  was added in vSphere API
#     6.7.
#
# long#
sub get_capacity {
   my ($self, %args) = @_;
   return $self->{'capacity'}; 	
}

## @method set_capacity ()
# Sets the given value for 'capacity' property.
# 
# @param capacity  - New value for the field.
# Total capacity of the file system, in bytes. This  *field*  was added in vSphere API
#     6.7.
#
sub set_capacity {
   my ($self, %args) = @_;
   $self->{'capacity'} = $args{'capacity'}; 
   return;	
}

## @method get_free_space ()
# Gets the value of 'free_space' property.
#
# @retval free_space - The current value of the field.
# Free space on the file system, in bytes. This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_free_space {
   my ($self, %args) = @_;
   return $self->{'free_space'}; 	
}

## @method set_free_space ()
# Sets the given value for 'free_space' property.
# 
# @param free_space  - New value for the field.
# Free space on the file system, in bytes. This  *field*  was added in vSphere API 6.7.
#
sub set_free_space {
   my ($self, %args) = @_;
   $self->{'free_space'} = $args{'free_space'}; 
   return;	
}

## @method get_filesystem ()
# Gets the value of 'filesystem' property.
#
# @retval filesystem - The current value of the field.
# Filesystem type, if known. For example, ext3 or NTFS. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# Optional#
sub get_filesystem {
   my ($self, %args) = @_;
   return $self->{'filesystem'}; 	
}

## @method set_filesystem ()
# Sets the given value for 'filesystem' property.
# 
# @param filesystem  - New value for the field.
# Filesystem type, if known. For example, ext3 or NTFS. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_filesystem {
   my ($self, %args) = @_;
   $self->{'filesystem'} = $args{'filesystem'}; 
   return;	
}

## @method get_mappings ()
# Gets the value of 'mappings' property.
#
# @retval mappings - The current value of the field.
# VirtualDisks backing the guest partition, if known. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# optional#
sub get_mappings {
   my ($self, %args) = @_;
   return $self->{'mappings'}; 	
}

## @method set_mappings ()
# Sets the given value for 'mappings' property.
# 
# @param mappings  - New value for the field.
# VirtualDisks backing the guest partition, if known. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_mappings {
   my ($self, %args) = @_;
   $self->{'mappings'} = $args{'mappings'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Guest::LocalFilesystem service
#########################################################################################
