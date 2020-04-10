########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Identity.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#


## @class Com::Vmware::Vcenter::Vm::Identity
# The  ``Com::Vmware::Vcenter::Vm::Identity``   *interface*  provides  *methods*  for
#     managing the identity of a virtual machine. This  *interface*  was added in vSphere
#     API 6.7.1.
#

package Com::Vmware::Vcenter::Vm::Identity;

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
use Com::Vmware::Vcenter::Vm::IdentityStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.identity';


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

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Identity service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Identity service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Identity service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Identity::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Identity::Info``   *class*  contains information
#     about the identity of a virtual machine. This  *class*  was added in vSphere API
#     6.7.1.

package Com::Vmware::Vcenter::Vm::Identity::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Identity::Info structure
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
   $self->{bios_uuid} = $args{'bios_uuid'};
   $self->{instance_uuid} = $args{'instance_uuid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Identity::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.identity.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'bios_uuid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'instance_uuid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Virtual machine name. This  *field*  was added in vSphere API 6.7.1.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Virtual machine name. This  *field*  was added in vSphere API 6.7.1.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_bios_uuid ()
# Gets the value of 'bios_uuid' property.
#
# @retval bios_uuid - The current value of the field.
# 128-bit SMBIOS UUID of a virtual machine represented as a hexadecimal string in
#     &quot;12345678-abcd-1234-cdef-123456789abc&quot; format. This  *field*  was added in
#     vSphere API 6.7.1.
#
# String#
sub get_bios_uuid {
   my ($self, %args) = @_;
   return $self->{'bios_uuid'}; 	
}

## @method set_bios_uuid ()
# Sets the given value for 'bios_uuid' property.
# 
# @param bios_uuid  - New value for the field.
# 128-bit SMBIOS UUID of a virtual machine represented as a hexadecimal string in
#     &quot;12345678-abcd-1234-cdef-123456789abc&quot; format. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_bios_uuid {
   my ($self, %args) = @_;
   $self->{'bios_uuid'} = $args{'bios_uuid'}; 
   return;	
}

## @method get_instance_uuid ()
# Gets the value of 'instance_uuid' property.
#
# @retval instance_uuid - The current value of the field.
# VirtualCenter-specific 128-bit UUID of a virtual machine, represented as a hexademical
#     string. This identifier is used by VirtualCenter to uniquely identify all virtual
#     machine instances, including those that may share the same SMBIOS UUID. This  *field* 
#     was added in vSphere API 6.7.1.
#
# String#
sub get_instance_uuid {
   my ($self, %args) = @_;
   return $self->{'instance_uuid'}; 	
}

## @method set_instance_uuid ()
# Sets the given value for 'instance_uuid' property.
# 
# @param instance_uuid  - New value for the field.
# VirtualCenter-specific 128-bit UUID of a virtual machine, represented as a hexademical
#     string. This identifier is used by VirtualCenter to uniquely identify all virtual
#     machine instances, including those that may share the same SMBIOS UUID. This  *field* 
#     was added in vSphere API 6.7.1.
#
sub set_instance_uuid {
   my ($self, %args) = @_;
   $self->{'instance_uuid'} = $args{'instance_uuid'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Identity service
#########################################################################################
