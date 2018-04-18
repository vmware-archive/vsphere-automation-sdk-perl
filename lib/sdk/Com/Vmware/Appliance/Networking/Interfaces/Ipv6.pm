########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Ipv6.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv6
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv6``   *interface*  provides 
#     *methods*  to perform IPv6 network configuration for interfaces. This  *interface* 
#     was added in vSphere API 6.7
#

package Com::Vmware::Appliance::Networking::Interfaces::Ipv6;

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
use Com::Vmware::Appliance::Networking::Interfaces::Ipv6Stub;

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
# Set IPv6 network configuration for specific interface. This  *method*  was added in
# vSphere API 6.7
#
# @param interface_name [REQUIRED] Network interface to update, for example, &quot;nic0&quot;.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.networking.interfaces).
# . The value must be str.
#
# @param config [REQUIRED] The IPv6 configuration.
# . The value must be Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Config.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# The specified NIC is busy.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# The specified NIC is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#

sub set {
   my ($self, %args) = @_;
   my $interface_name = $args {interface_name};
   my $config = $args {config};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method get ()
# Get IPv6 network configuration for specific interface. This  *method*  was added in
# vSphere API 6.7
#
# @param interface_name [REQUIRED] Network interface to query, for example, &quot;nic0&quot;.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.networking.interfaces).
# . The value must be str.
#
# @retval 
# IPv6 configuration.
# The return type will be Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the specified NIC is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
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
# Begins enumerations for the Com::Vmware::Appliance::Networking::Interfaces::Ipv6 service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin
#
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin``   *enumerated
#     type*  defines IPv6 address origin values. This  *enumeration*  was added in vSphere
#     API 6.7
#
#
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin::DHCP #
#The IPv6 address is assigned by a DHCP server. See RFC 4293. This  *constant*  was added
# in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin::RANDOM #
#The IPv6 address is assigned randomly by the system. See RFC 4293. This  *constant*  was
# added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin::MANUAL #
#The IPv6 address was manually configured to a specified address, for example, by user
# configuration. See RFC 4293. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin::LINKLAYER #
#The IPv6 address is assigned by IPv6 Stateless Address Auto-configuration (SLAAC). See RFC
# 4293. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin::OTHER #
#The IPv6 address is assigned by a mechanism other than manual, DHCP, SLAAC, or random. See
# RFC 4293. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin;

use constant {
    DHCP =>  'DHCP',
    RANDOM =>  'RANDOM',
    MANUAL =>  'MANUAL',
    LINKLAYER =>  'LINKLAYER',
    OTHER =>  'OTHER',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.interfaces.ipv6.origin',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Origin');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status
#
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status``   *enumerated
#     type*  defines IPv6 address status values. See RFC 4293. This  *enumeration*  was
#     added in vSphere API 6.7
#
#
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status::TENTATIVE #
#The IPv6 address is in the process of being verified as unique. An address in this state
# cannot be used for general communication. It can be used to determine the uniqueness of
# the address. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status::UNKNOWN #
#The status of this address cannot be determined. This  *constant*  was added in vSphere
# API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status::INACCESSIBLE #
#The IPv6 address is inaccessible because the interface to which this address is assigned
# is not operational. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status::INVALID #
#The IPv6 address is not a valid address. It should not appear as the destination or source
# address of a packet. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status::DUPLICATE #
#The IPv6 address is not unique on the link and cannot be used. This  *constant*  was added
# in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status::PREFERRED #
#This is a valid IPv6 address that can appear as the destination or source address of a
# packet. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status::DEPRECATED #
#The is a valid but deprecated IPv6 address. This address cannot be used as a source
# address in new communications, although packets addressed to such an address are processed
# as expected. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status::OPTIMISTIC #
#The IPv6 address is available for use, subject to restrictions, while its uniqueness on a
# link is being verified. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status;

use constant {
    TENTATIVE =>  'TENTATIVE',
    UNKNOWN =>  'UNKNOWN',
    INACCESSIBLE =>  'INACCESSIBLE',
    INVALID =>  'INVALID',
    DUPLICATE =>  'DUPLICATE',
    PREFERRED =>  'PREFERRED',
    DEPRECATED =>  'DEPRECATED',
    OPTIMISTIC =>  'OPTIMISTIC',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.interfaces.ipv6.status',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking::Interfaces::Ipv6 service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking::Interfaces::Ipv6 service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Address
#
#
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Address``   *class* 
#     provides the structure used to name an IPv6 address. This  *class*  was added in
#     vSphere API 6.7

package Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Address;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Address structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Address');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.interfaces.ipv6.address');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a. This  *field*  was
#     added in vSphere API 6.7
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
# The IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a. This  *field*  was
#     added in vSphere API 6.7
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
# The IPv6 CIDR prefix, for example, 64. This  *field*  was added in vSphere API 6.7
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
# The IPv6 CIDR prefix, for example, 64. This  *field*  was added in vSphere API 6.7
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv6::AddressInfo
#
#
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv6::AddressInfo``   *class* 
#     provides the structure that you can use to get information about an IPv6 address along
#     with its origin and status. This  *class*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Networking::Interfaces::Ipv6::AddressInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::Ipv6::AddressInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{origin} = $args{'origin'};
   $self->{status} = $args{'status'};
   $self->{address} = $args{'address'};
   $self->{prefix} = $args{'prefix'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::Ipv6::AddressInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.interfaces.ipv6.address_info');
   $self->set_binding_field('key' => 'origin', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv6::Origin'));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv6::Status'));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_origin ()
# Gets the value of 'origin' property.
#
# @retval origin - The current value of the field.
# The Origin of the IPv6 address. For more information, see RFC 4293. This  *field*  was
#     added in vSphere API 6.7
#
# Origin#
sub get_origin {
   my ($self, %args) = @_;
   return $self->{'origin'}; 	
}

## @method set_origin ()
# Sets the given value for 'origin' property.
# 
# @param origin  - New value for the field.
# The Origin of the IPv6 address. For more information, see RFC 4293. This  *field*  was
#     added in vSphere API 6.7
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
# The Status of the IPv6 address. For more information, see RFC 4293. This  *field*  was
#     added in vSphere API 6.7
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The Status of the IPv6 address. For more information, see RFC 4293. This  *field*  was
#     added in vSphere API 6.7
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a. This  *field*  was
#     added in vSphere API 6.7
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
# The IPv6 address, for example, fc00:10:20:83:20c:29ff:fe94:bb5a. This  *field*  was
#     added in vSphere API 6.7
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
# The IPv6 CIDR prefix, for example, 64. This  *field*  was added in vSphere API 6.7
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
# The IPv6 CIDR prefix, for example, 64. This  *field*  was added in vSphere API 6.7
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Config
#
#
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Config``   *class* 
#     provides the structure that you can use to configure IPv6 on a particular interface.
#     Addresses can be assigned by DHCP, SLAAC or STATIC, as IPv6 permits multiple addresses
#     per interface. This  *class*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Config;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Config structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{dhcp} = $args{'dhcp'};
   $self->{autoconf} = $args{'autoconf'};
   $self->{addresses} = $args{'addresses'};
   $self->{default_gateway} = $args{'default_gateway'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Config');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.interfaces.ipv6.config');
   $self->set_binding_field('key' => 'dhcp', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'autoconf', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'addresses', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv6::Address')));
   $self->set_binding_field('key' => 'default_gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_dhcp ()
# Gets the value of 'dhcp' property.
#
# @retval dhcp - The current value of the field.
# An address will be assigned by a DHCP server. This  *field*  was added in vSphere API
#     6.7
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
# An address will be assigned by a DHCP server. This  *field*  was added in vSphere API
#     6.7
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
# An address will be assigned by Stateless Address Autoconfiguration (SLAAC). This 
#     *field*  was added in vSphere API 6.7
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
# An address will be assigned by Stateless Address Autoconfiguration (SLAAC). This 
#     *field*  was added in vSphere API 6.7
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
# The list of addresses to be statically assigned. This  *field*  was added in vSphere
#     API 6.7
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
# The list of addresses to be statically assigned. This  *field*  was added in vSphere
#     API 6.7
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
# The default gateway for static IP address assignment. This configures the global IPv6
#     default gateway on the appliance with the specified gateway address and interface.
#     This gateway replaces the existing default gateway configured on the appliance.
#     However, if the gateway address is link-local, then it is added for that interface.
#     This does not support configuration of multiple global default gateways through
#     different interfaces. This  *field*  was added in vSphere API 6.7
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
# The default gateway for static IP address assignment. This configures the global IPv6
#     default gateway on the appliance with the specified gateway address and interface.
#     This gateway replaces the existing default gateway configured on the appliance.
#     However, if the gateway address is link-local, then it is added for that interface.
#     This does not support configuration of multiple global default gateways through
#     different interfaces. This  *field*  was added in vSphere API 6.7
#
sub set_default_gateway {
   my ($self, %args) = @_;
   $self->{'default_gateway'} = $args{'default_gateway'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Info
#
#
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Info``   *class* 
#     provides the structure that defines an existing IPv6 configuration on a particular
#     interface. This structure is read only. This  *class*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{dhcp} = $args{'dhcp'};
   $self->{autoconf} = $args{'autoconf'};
   $self->{addresses} = $args{'addresses'};
   $self->{default_gateway} = $args{'default_gateway'};
   $self->{configurable} = $args{'configurable'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::Ipv6::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.interfaces.ipv6.info');
   $self->set_binding_field('key' => 'dhcp', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'autoconf', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'addresses', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv6::AddressInfo')));
   $self->set_binding_field('key' => 'default_gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'configurable', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_dhcp ()
# Gets the value of 'dhcp' property.
#
# @retval dhcp - The current value of the field.
# DHCP is on. This  *field*  was added in vSphere API 6.7
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
# DHCP is on. This  *field*  was added in vSphere API 6.7
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
# Stateless Address Autoconfiguration (SLAAC) is on. This  *field*  was added in vSphere
#     API 6.7
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
# Stateless Address Autoconfiguration (SLAAC) is on. This  *field*  was added in vSphere
#     API 6.7
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
# List of addresses with their origins and statuses. This  *field*  was added in vSphere
#     API 6.7
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
# List of addresses with their origins and statuses. This  *field*  was added in vSphere
#     API 6.7
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
# The default gateway for static IP address assignment. This configures the global IPv6
#     default gateway on the appliance with the specified gateway address and interface.
#     This gateway replaces the existing default gateway configured on the appliance.
#     However, if the gateway address is link-local, then it is added for that interface.
#     This does not support configuration of multiple global default gateways through
#     different interfaces. This  *field*  was added in vSphere API 6.7
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
# The default gateway for static IP address assignment. This configures the global IPv6
#     default gateway on the appliance with the specified gateway address and interface.
#     This gateway replaces the existing default gateway configured on the appliance.
#     However, if the gateway address is link-local, then it is added for that interface.
#     This does not support configuration of multiple global default gateways through
#     different interfaces. This  *field*  was added in vSphere API 6.7
#
sub set_default_gateway {
   my ($self, %args) = @_;
   $self->{'default_gateway'} = $args{'default_gateway'}; 
   return;	
}

## @method get_configurable ()
# Gets the value of 'configurable' property.
#
# @retval configurable - The current value of the field.
# Is NIC configurable or not. This  *field*  was added in vSphere API 6.7
#
# boolean#
sub get_configurable {
   my ($self, %args) = @_;
   return $self->{'configurable'}; 	
}

## @method set_configurable ()
# Sets the given value for 'configurable' property.
# 
# @param configurable  - New value for the field.
# Is NIC configurable or not. This  *field*  was added in vSphere API 6.7
#
sub set_configurable {
   my ($self, %args) = @_;
   $self->{'configurable'} = $args{'configurable'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Networking::Interfaces::Ipv6 service
#########################################################################################
