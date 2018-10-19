########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Interfaces.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Appliance::Networking::Interfaces;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking::Interfaces
# ``Com::Vmware::Appliance::Networking::Interfaces``   *interface*  provides  *methods* 
#     Provides information about network interface.
#

package Com::Vmware::Appliance::Networking::Interfaces;

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
use Com::Vmware::Appliance::Networking::InterfacesStub;

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
# Get list of available network interfaces, including those that are not yet configured.
#
# @retval 
# List of InterfaceInfo structures.
# The return type will be Array of
# Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Get information about a particular network interface.
#
# @param interface_name [REQUIRED] Network interface, for example, &quot;nic0&quot;.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.networking.interfaces).
# . The value must be str.
#
# @retval 
# Network interface information.
# The return type will be Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the specified interface is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   my $interface_name = $args {interface_name};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Networking::Interfaces service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus
#
# ``Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus``   *enumerated
#     type*  Defines interface status
#
#
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus::DOWN #
#The interface is down.
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus::UP #
#The interface is up.

package Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus;

use constant {
    down =>  'down',
    up =>  'up',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.interfaces.interface_status',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::InterfaceStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking::Interfaces service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking::Interfaces service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo
#
#
# ``Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo``   *class*  Structure
#     that defines properties and status of a network interface.

package Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo structure
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
   $self->{status} = $args{'status'};
   $self->{mac} = $args{'mac'};
   $self->{ipv4} = $args{'ipv4'};
   $self->{ipv6} = $args{'ipv6'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::InterfaceInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.interfaces.interface_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking', 'type_name' => 'Interfaces::InterfaceStatus'));
   $self->set_binding_field('key' => 'mac', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ipv4', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv4::Info')));
   $self->set_binding_field('key' => 'ipv6', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv6::Info')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Interface name, for example, &quot;nic0&quot;, &quot;nic1&quot;.
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
# Interface name, for example, &quot;nic0&quot;, &quot;nic1&quot;.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Interface status.
#
# InterfaceStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Interface status.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_mac ()
# Gets the value of 'mac' property.
#
# @retval mac - The current value of the field.
# MAC address. For example 00:0C:29:94:BB:5A.
#
# String#
sub get_mac {
   my ($self, %args) = @_;
   return $self->{'mac'}; 	
}

## @method set_mac ()
# Sets the given value for 'mac' property.
# 
# @param mac  - New value for the field.
# MAC address. For example 00:0C:29:94:BB:5A.
#
sub set_mac {
   my ($self, %args) = @_;
   $self->{'mac'} = $args{'mac'}; 
   return;	
}

## @method get_ipv4 ()
# Gets the value of 'ipv4' property.
#
# @retval ipv4 - The current value of the field.
# IPv4 Address information. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_ipv4 {
   my ($self, %args) = @_;
   return $self->{'ipv4'}; 	
}

## @method set_ipv4 ()
# Sets the given value for 'ipv4' property.
# 
# @param ipv4  - New value for the field.
# IPv4 Address information. This  *field*  was added in vSphere API 6.7.
#
sub set_ipv4 {
   my ($self, %args) = @_;
   $self->{'ipv4'} = $args{'ipv4'}; 
   return;	
}

## @method get_ipv6 ()
# Gets the value of 'ipv6' property.
#
# @retval ipv6 - The current value of the field.
# IPv6 Address information. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_ipv6 {
   my ($self, %args) = @_;
   return $self->{'ipv6'}; 	
}

## @method set_ipv6 ()
# Sets the given value for 'ipv6' property.
# 
# @param ipv6  - New value for the field.
# IPv6 Address information. This  *field*  was added in vSphere API 6.7.
#
sub set_ipv6 {
   my ($self, %args) = @_;
   $self->{'ipv6'} = $args{'ipv6'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Networking::Interfaces service
#########################################################################################
