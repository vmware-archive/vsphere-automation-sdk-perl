########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file VM.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Storage::Policies::VM
# The  ``Com::Vmware::Vcenter::Storage::Policies::VM``   *interface*  provides 
#     *methods*  managing the storage policy association for a virtual machine and its
#     virtual disks. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::Storage::Policies::VM;

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
use Com::Vmware::Vcenter::Storage::Policies::VMStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.storage.policies.VM';


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
# Returns information about the virtual machines and/or their virtual disks that are
# associated with the given storage policy. This  *method*  was added in vSphere API 6.7.
#
# @param policy [REQUIRED] storage policy identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.StoragePolicy).
# . The value must be str.
#
# @retval 
# Information about the virtual machines and/or their virtual disks that are associated
#     with the given storage policy.
# The value will be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# The return type will be Dictionary of str and
# Com::Vmware::Vcenter::Storage::Policies::VM::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no policy associated with  ``policy``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 1000 virtual machines are associated with the specified policy.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service necessary to complete the
#     request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the backend server encounters some an error while processing the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have the required priveleges.
#
sub list {
   my ($self, %args) = @_;
   my $policy = $args {policy};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Storage::Policies::VM service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Storage::Policies::VM service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Storage::Policies::VM service
#########################################################################################

## @class Com::Vmware::Vcenter::Storage::Policies::VM::Info
#
#
# The  ``Com::Vmware::Vcenter::Storage::Policies::VM::Info``   *class*  contains
#     information about a virtual machine and its virtual disks that are associated with the
#     given storage policy. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Storage::Policies::VM::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::VM::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm_home} = $args{'vm_home'};
   $self->{disks} = $args{'disks'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::VM::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.storage.policies.VM.info');
   $self->set_binding_field('key' => 'vm_home', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_vm_home ()
# Gets the value of 'vm_home' property.
#
# @retval vm_home - The current value of the field.
# Flag to indicate whether or not the virtual machine home is associated with the given
#     storage policy. This  *field*  was added in vSphere API 6.7.
#
# boolean#
sub get_vm_home {
   my ($self, %args) = @_;
   return $self->{'vm_home'}; 	
}

## @method set_vm_home ()
# Sets the given value for 'vm_home' property.
# 
# @param vm_home  - New value for the field.
# Flag to indicate whether or not the virtual machine home is associated with the given
#     storage policy. This  *field*  was added in vSphere API 6.7.
#
sub set_vm_home {
   my ($self, %args) = @_;
   $self->{'vm_home'} = $args{'vm_home'}; 
   return;	
}

## @method get_disks ()
# Gets the value of 'disks' property.
#
# @retval disks - The current value of the field.
# List of the virtual disks that are associated with the given storage policy. This 
#     *field*  was added in vSphere API 6.7.
#
# List#
sub get_disks {
   my ($self, %args) = @_;
   return $self->{'disks'}; 	
}

## @method set_disks ()
# Sets the given value for 'disks' property.
# 
# @param disks  - New value for the field.
# List of the virtual disks that are associated with the given storage policy. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Storage::Policies::VM service
#########################################################################################
