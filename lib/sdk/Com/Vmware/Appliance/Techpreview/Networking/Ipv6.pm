########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Ipv6.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv6
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6``   *interface*  provides 
#     *methods*  Performs IPV4 network configuration for interfaces.
#

package Com::Vmware::Appliance::Techpreview::Networking::Ipv6;

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
use Com::Vmware::Appliance::Techpreview::Networking::Ipv6Stub;

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

## @method set ()
# Set IPv6 network configuration.
#
# @param config [REQUIRED] IPv6 configuration.
# . The value must be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Config.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method list ()
# Get IPv6 network configuration for all configured interfaces.
#
# @retval 
# IPv6 configuration for each interface.
# The return type will be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Get IPv6 network configuration for interfaces.
#
# @param interfaces [REQUIRED] Network interfaces to query, for example, &quot;nic0&quot;.
# . The value must be Array of String.
#
# @retval 
# IPv6 configuration.
# The return type will be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   my $interfaces = $args {interfaces};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Ipv6 service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin``  
#     *enumerated type*  Defines IPV6 address origin values
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin::DHCP #
#The IPv6 address is assigned by a DHCP server. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin::RANDOM #
#The IPv6 address is assigned randomly by the system. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin::MANUAL #
#The IPv6 address was manually configured to a specified address, for, example, by user
# configuration. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin::OTHER #
#The IPv6 address is assigned by a mechanism other than manual, DHCP, SLAAC, or random. See
# RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin::LINKLAYER #
#The IPv6 address is assigned by IPv6 Stateless Address Auto-configuration (SLAAC). See RFC
# 4293.

package Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin;

use constant {
    dhcp =>  'dhcp',
    random =>  'random',
    manual =>  'manual',
    other =>  'other',
    linklayer =>  'linklayer',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_address_origin',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressOrigin');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus``  
#     *enumerated type*  Defines IPV6 address status values
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus::TENTATIVE #
#This IPv6 address is in the process of being verified as unique. Do not use addresses in
# this state for general communication. You can use them to determine the uniqueness of the
# address. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus::UNKNOWN #
#The status of this address cannot be determined. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus::INACCESSIBLE #
#This IPv6 address is inaccessible because the interface to which this address is assigned
# is not operational. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus::INVALID #
#This IPv6 address is not a valid address. It should not appear as the destination or
# source address of a packet. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus::DUPLICATE #
#This IPv6 address is not unique on the link. Do use this IPv6 address. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus::PREFERRED #
#This is a valid IPv6 address that can appear as the destination or source address of a
# packet. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus::DEPRECATED #
#This is a valid but deprecated IPv6 address. Do not use this IPv6 address as a source
# address in new communications, although packets addressed to such an address are processed
# as expected. See RFC 4293.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus::OPTIMISTIC #
#This IPv6 address is available for use, subject to restrictions, while its uniqueness on a
# link is being verified. See RFC 4293.

package Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus;

use constant {
    tentative =>  'tentative',
    unknown =>  'unknown',
    inaccessible =>  'inaccessible',
    invalid =>  'invalid',
    duplicate =>  'duplicate',
    preferred =>  'preferred',
    deprecated =>  'deprecated',
    optimistic =>  'optimistic',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_address_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Ipv6 service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Networking::Ipv6 service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressReadOnly
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressReadOnly``  
#     *class*  Structure that you can use to get information about an IPv6 address along
#     with its origin and status.

package Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressReadOnly;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressReadOnly structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{address} = $args{'address'};
   $self->{prefix} = $args{'prefix'};
   $self->{origin} = $args{'origin'};
   $self->{status} = $args{'status'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6AddressReadOnly');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_address_read_only');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'origin', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Ipv6::IPv6AddressOrigin'));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Ipv6::IPv6AddressStatus'));
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a.
#
# String#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# IPv6 CIDR prefix, for example, 64.
#
# long#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# IPv6 CIDR prefix, for example, 64.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}

## @method get_origin ()
# Gets the value of 'origin' property.
#
# @retval origin - The current value of the field.
# Origin of the IPv6 address. For more information, see RFC 4293.
#
# IPv6AddressOrigin#
sub get_origin {
   my ($self, %args) = @_;
   return $self->{'origin'}; 	
}

## @method set_origin ()
# Sets the given value for 'origin' property.
# 
# @param origin  - New value for the field.
# Origin of the IPv6 address. For more information, see RFC 4293.
#
sub set_origin {
   my ($self, %args) = @_;
   $self->{'origin'} = $args{'origin'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status of the IPv6 address. For more information, see RFC 4293.
#
# IPv6AddressStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status of the IPv6 address. For more information, see RFC 4293.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly``  
#     *class*  Structure that defines an existing IPv6 configuration on a particular
#     interface. This structure is read only.

package Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{interface_name} = $args{'interface_name'};
   $self->{dhcp} = $args{'dhcp'};
   $self->{autoconf} = $args{'autoconf'};
   $self->{addresses} = $args{'addresses'};
   $self->{default_gateway} = $args{'default_gateway'};
   $self->{updateable} = $args{'updateable'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6ConfigReadOnly');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_config_read_only');
   $self->set_binding_field('key' => 'interface_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'dhcp', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'autoconf', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'addresses', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Ipv6::IPv6AddressReadOnly')));
   $self->set_binding_field('key' => 'default_gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'updateable', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_interface_name ()
# Gets the value of 'interface_name' property.
#
# @retval interface_name - The current value of the field.
# Network interface, for example, &quot;nic0&quot; queried.
#
# String#
sub get_interface_name {
   my ($self, %args) = @_;
   return $self->{'interface_name'}; 	
}

## @method set_interface_name ()
# Sets the given value for 'interface_name' property.
# 
# @param interface_name  - New value for the field.
# Network interface, for example, &quot;nic0&quot; queried.
#
sub set_interface_name {
   my ($self, %args) = @_;
   $self->{'interface_name'} = $args{'interface_name'}; 
   return;	
}

## @method get_dhcp ()
# Gets the value of 'dhcp' property.
#
# @retval dhcp - The current value of the field.
# Address assigned by a DHCP server.
#
# boolean#
sub get_dhcp {
   my ($self, %args) = @_;
   return $self->{'dhcp'}; 	
}

## @method set_dhcp ()
# Sets the given value for 'dhcp' property.
# 
# @param dhcp  - New value for the field.
# Address assigned by a DHCP server.
#
sub set_dhcp {
   my ($self, %args) = @_;
   $self->{'dhcp'} = $args{'dhcp'}; 
   return;	
}

## @method get_autoconf ()
# Gets the value of 'autoconf' property.
#
# @retval autoconf - The current value of the field.
# Address is assigned by Stateless Address Autoconfiguration (SLAAC).
#
# boolean#
sub get_autoconf {
   my ($self, %args) = @_;
   return $self->{'autoconf'}; 	
}

## @method set_autoconf ()
# Sets the given value for 'autoconf' property.
# 
# @param autoconf  - New value for the field.
# Address is assigned by Stateless Address Autoconfiguration (SLAAC).
#
sub set_autoconf {
   my ($self, %args) = @_;
   $self->{'autoconf'} = $args{'autoconf'}; 
   return;	
}

## @method get_addresses ()
# Gets the value of 'addresses' property.
#
# @retval addresses - The current value of the field.
# A list of all addresses assigned to this interface. The origin field of each address
#     determines how the address was assigned, for example, statically, by DHCP, SLAAC.
#
# List#
sub get_addresses {
   my ($self, %args) = @_;
   return $self->{'addresses'}; 	
}

## @method set_addresses ()
# Sets the given value for 'addresses' property.
# 
# @param addresses  - New value for the field.
# A list of all addresses assigned to this interface. The origin field of each address
#     determines how the address was assigned, for example, statically, by DHCP, SLAAC.
#
sub set_addresses {
   my ($self, %args) = @_;
   $self->{'addresses'} = $args{'addresses'}; 
   return;	
}

## @method get_default_gateway ()
# Gets the value of 'default_gateway' property.
#
# @retval default_gateway - The current value of the field.
# Default gateway. This configures the global IPv6 default gateway on the appliance with
#     the specified gateway address and interface. This gateway replaces the existing
#     default gateway configured on the appliance. However, if the gateway address is
#     link-local, then it is added for that interface. This does not support configuration
#     of multiple global default gateways through different interfaces.
#
# String#
sub get_default_gateway {
   my ($self, %args) = @_;
   return $self->{'default_gateway'}; 	
}

## @method set_default_gateway ()
# Sets the given value for 'default_gateway' property.
# 
# @param default_gateway  - New value for the field.
# Default gateway. This configures the global IPv6 default gateway on the appliance with
#     the specified gateway address and interface. This gateway replaces the existing
#     default gateway configured on the appliance. However, if the gateway address is
#     link-local, then it is added for that interface. This does not support configuration
#     of multiple global default gateways through different interfaces.
#
sub set_default_gateway {
   my ($self, %args) = @_;
   $self->{'default_gateway'} = $args{'default_gateway'}; 
   return;	
}

## @method get_updateable ()
# Gets the value of 'updateable' property.
#
# @retval updateable - The current value of the field.
# This indicates if the network configuration can be updated for the interface.
#
# boolean#
sub get_updateable {
   my ($self, %args) = @_;
   return $self->{'updateable'}; 	
}

## @method set_updateable ()
# Sets the given value for 'updateable' property.
# 
# @param updateable  - New value for the field.
# This indicates if the network configuration can be updated for the interface.
#
sub set_updateable {
   my ($self, %args) = @_;
   $self->{'updateable'} = $args{'updateable'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Address
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Address``   *class* 
#     Structure used to name an IPv6 address.

package Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Address;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Address structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{address} = $args{'address'};
   $self->{prefix} = $args{'prefix'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Address');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_address');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a.
#
# String#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# IPv6 CIDR prefix, for example, 64.
#
# long#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# IPv6 CIDR prefix, for example, 64.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Config
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Config``   *class* 
#     Structure that you can use to configure IPv6 on a particular interface. Because IPv6
#     permits multiple addresses per interface, addresses can be assigned by DHCP, SLAAC,
#     and can also be statically assigned.

package Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Config;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Config structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{interface_name} = $args{'interface_name'};
   $self->{dhcp} = $args{'dhcp'};
   $self->{autoconf} = $args{'autoconf'};
   $self->{addresses} = $args{'addresses'};
   $self->{default_gateway} = $args{'default_gateway'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Ipv6::IPv6Config');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.ipv6.I_pv6_config');
   $self->set_binding_field('key' => 'interface_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'dhcp', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'autoconf', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'addresses', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Ipv6::IPv6Address')));
   $self->set_binding_field('key' => 'default_gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_interface_name ()
# Gets the value of 'interface_name' property.
#
# @retval interface_name - The current value of the field.
# Network interface, for example, &quot;nic0&quot; to configure.
#
# String#
sub get_interface_name {
   my ($self, %args) = @_;
   return $self->{'interface_name'}; 	
}

## @method set_interface_name ()
# Sets the given value for 'interface_name' property.
# 
# @param interface_name  - New value for the field.
# Network interface, for example, &quot;nic0&quot; to configure.
#
sub set_interface_name {
   my ($self, %args) = @_;
   $self->{'interface_name'} = $args{'interface_name'}; 
   return;	
}

## @method get_dhcp ()
# Gets the value of 'dhcp' property.
#
# @retval dhcp - The current value of the field.
# Address assigned by a DHCP server.
#
# boolean#
sub get_dhcp {
   my ($self, %args) = @_;
   return $self->{'dhcp'}; 	
}

## @method set_dhcp ()
# Sets the given value for 'dhcp' property.
# 
# @param dhcp  - New value for the field.
# Address assigned by a DHCP server.
#
sub set_dhcp {
   my ($self, %args) = @_;
   $self->{'dhcp'} = $args{'dhcp'}; 
   return;	
}

## @method get_autoconf ()
# Gets the value of 'autoconf' property.
#
# @retval autoconf - The current value of the field.
# Address is assigned by Stateless Address Autoconfiguration (SLAAC).
#
# boolean#
sub get_autoconf {
   my ($self, %args) = @_;
   return $self->{'autoconf'}; 	
}

## @method set_autoconf ()
# Sets the given value for 'autoconf' property.
# 
# @param autoconf  - New value for the field.
# Address is assigned by Stateless Address Autoconfiguration (SLAAC).
#
sub set_autoconf {
   my ($self, %args) = @_;
   $self->{'autoconf'} = $args{'autoconf'}; 
   return;	
}

## @method get_addresses ()
# Gets the value of 'addresses' property.
#
# @retval addresses - The current value of the field.
# A list of addresses to be statically assigned.
#
# List#
sub get_addresses {
   my ($self, %args) = @_;
   return $self->{'addresses'}; 	
}

## @method set_addresses ()
# Sets the given value for 'addresses' property.
# 
# @param addresses  - New value for the field.
# A list of addresses to be statically assigned.
#
sub set_addresses {
   my ($self, %args) = @_;
   $self->{'addresses'} = $args{'addresses'}; 
   return;	
}

## @method get_default_gateway ()
# Gets the value of 'default_gateway' property.
#
# @retval default_gateway - The current value of the field.
# Default gateway for static IP address assignment. This configures the global IPv6
#     default gateway on the appliance with the specified gateway address and interface.
#     This gateway replaces the existing default gateway configured on the appliance.
#     However, if the gateway address is link-local, then it is added for that interface.
#     This does not support configuration of multiple global default gateways through
#     different interfaces.
#
# String#
sub get_default_gateway {
   my ($self, %args) = @_;
   return $self->{'default_gateway'}; 	
}

## @method set_default_gateway ()
# Sets the given value for 'default_gateway' property.
# 
# @param default_gateway  - New value for the field.
# Default gateway for static IP address assignment. This configures the global IPv6
#     default gateway on the appliance with the specified gateway address and interface.
#     This gateway replaces the existing default gateway configured on the appliance.
#     However, if the gateway address is link-local, then it is added for that interface.
#     This does not support configuration of multiple global default gateways through
#     different interfaces.
#
sub set_default_gateway {
   my ($self, %args) = @_;
   $self->{'default_gateway'} = $args{'default_gateway'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Networking::Ipv6 service
#########################################################################################
