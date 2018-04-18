########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Identity.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Vm;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Guest::Identity
# The  ``Com::Vmware::Vcenter::Vm::Guest::Identity``   *interface*  provides  *methods* 
#     for retrieving guest operating system identification information. This  *interface* 
#     was added in vSphere API 6.7
#

package Com::Vmware::Vcenter::Vm::Guest::Identity;

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
use Com::Vmware::Vcenter::Vm::Guest::IdentityStub;

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
# Return information about the guest. This  *method*  was added in vSphere API 6.7
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# guest identification information.
# The return type will be Com::Vmware::Vcenter::Vm::Guest::Identity::Info
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
# if VMware Tools has not provided any values.
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
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Guest::Identity service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Guest::Identity service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Guest::Identity service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Guest::Identity::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::Identity::Info``   *class*  contains
#     information describing the guest operating system identification. This  *class*  was
#     added in vSphere API 6.7

package Com::Vmware::Vcenter::Vm::Guest::Identity::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Identity::Info structure
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
   $self->{family} = $args{'family'};
   $self->{full_name} = $args{'full_name'};
   $self->{host_name} = $args{'host_name'};
   $self->{ip_address} = $args{'ip_address'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Identity::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.identity.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'GuestOS'));
   $self->set_binding_field('key' => 'family', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'GuestOSFamily'));
   $self->set_binding_field('key' => 'full_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'host_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ip_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Guest operating system identifier (short name). This  *field*  was added in vSphere
#     API 6.7
#
# GuestOS#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Guest operating system identifier (short name). This  *field*  was added in vSphere
#     API 6.7
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_family ()
# Gets the value of 'family' property.
#
# @retval family - The current value of the field.
# Guest operating system family. This  *field*  was added in vSphere API 6.7
#
# GuestOSFamily#
sub get_family {
   my ($self, %args) = @_;
   return $self->{'family'}; 	
}

## @method set_family ()
# Sets the given value for 'family' property.
# 
# @param family  - New value for the field.
# Guest operating system family. This  *field*  was added in vSphere API 6.7
#
sub set_family {
   my ($self, %args) = @_;
   $self->{'family'} = $args{'family'}; 
   return;	
}

## @method get_full_name ()
# Gets the value of 'full_name' property.
#
# @retval full_name - The current value of the field.
# Guest operating system full name. This  *field*  was added in vSphere API 6.7
#
# LocalizableMessage#
sub get_full_name {
   my ($self, %args) = @_;
   return $self->{'full_name'}; 	
}

## @method set_full_name ()
# Sets the given value for 'full_name' property.
# 
# @param full_name  - New value for the field.
# Guest operating system full name. This  *field*  was added in vSphere API 6.7
#
sub set_full_name {
   my ($self, %args) = @_;
   $self->{'full_name'} = $args{'full_name'}; 
   return;	
}

## @method get_host_name ()
# Gets the value of 'host_name' property.
#
# @retval host_name - The current value of the field.
# Hostname of the guest operating system. This  *field*  was added in vSphere API 6.7
#
# String#
sub get_host_name {
   my ($self, %args) = @_;
   return $self->{'host_name'}; 	
}

## @method set_host_name ()
# Sets the given value for 'host_name' property.
# 
# @param host_name  - New value for the field.
# Hostname of the guest operating system. This  *field*  was added in vSphere API 6.7
#
sub set_host_name {
   my ($self, %args) = @_;
   $self->{'host_name'} = $args{'host_name'}; 
   return;	
}

## @method get_ip_address ()
# Gets the value of 'ip_address' property.
#
# @retval ip_address - The current value of the field.
# IP address assigned by the guest operating system. This  *field*  was added in vSphere
#     API 6.7
#
# Optional#
sub get_ip_address {
   my ($self, %args) = @_;
   return $self->{'ip_address'}; 	
}

## @method set_ip_address ()
# Sets the given value for 'ip_address' property.
# 
# @param ip_address  - New value for the field.
# IP address assigned by the guest operating system. This  *field*  was added in vSphere
#     API 6.7
#
sub set_ip_address {
   my ($self, %args) = @_;
   $self->{'ip_address'} = $args{'ip_address'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Guest::Identity service
#########################################################################################
