########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Interfaces.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Vm::Guest;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces``   *interface* 
#     provides  *methods*  for retrieving guest operating system network interface
#     information. This  *interface*  was added in vSphere API 7.0.0.0.
#

package Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces;

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
use Com::Vmware::Vcenter::Vm::Guest::Networking::InterfacesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.guest.networking.interfaces';


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
# Returns information about the networking interfaces in the guest operating system. This 
# *method*  was added in vSphere API 7.0.0.0.
#
# @param vm [REQUIRED] Virtual machine ID
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Information about the interfaces configured in the guest operating system. Interfaces
#     are ordered in a guest operating system specific determined order.
# The return type will be Array of
# Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if VMware Tools is not running.
#
sub list {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin``  
#     *enumerated type*  specifies how an IP address was obtained for an interface. See RFC
#     4293 IpAddressOriginTC. This  *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin::OTHER #
#Any other type of address configuration other than the below mentioned ones will fall
# under this category. For e.g., automatic address configuration for the link local address
# falls under this type. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin::MANUAL #
#The address is configured manually. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin::DHCP #
#The address is configured through dhcp. This  *constant*  was added in vSphere API
# 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin::LINKLAYER #
#The address is obtained through stateless autoconfiguration (autoconf). See RFC 4862, IPv6
# Stateless Address Autoconfiguration. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin::RANDOM #
#The address is chosen by the system at random e.g., an IPv4 address within 169.254/16, or
# an RFC 3041 privacy address. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin;

use constant {
    OTHER =>  'OTHER',
    MANUAL =>  'MANUAL',
    DHCP =>  'DHCP',
    LINKLAYER =>  'LINKLAYER',
    RANDOM =>  'RANDOM',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.guest.networking.interfaces.ip_address_origin',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressOrigin');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus``  
#     *enumerated type*  defines the present status of an address on an interface. See RFC
#     4293 IpAddressStatusTC. This  *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus::PREFERRED #
#Indicates that this is a valid address. This  *constant*  was added in vSphere API
# 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus::DEPRECATED #
#Indicates that this is a valid but deprecated address that should no longer be used as a
# source address. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus::INVALID #
#Indicates that this isn&apos;t a valid address. This  *constant*  was added in vSphere API
# 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus::INACCESSIBLE #
#Indicates that the address is not accessible because interface is not operational. This 
# *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus::UNKNOWN #
#Indicates that the status cannot be determined. This  *constant*  was added in vSphere API
# 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus::TENTATIVE #
#Indicates that the uniqueness of the address on the link is presently being verified. This
#  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus::DUPLICATE #
#Indicates the address has been determined to be non-unique on the link, this address will
# not be reachable. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus;

use constant {
    PREFERRED =>  'PREFERRED',
    DEPRECATED =>  'DEPRECATED',
    INVALID =>  'INVALID',
    INACCESSIBLE =>  'INACCESSIBLE',
    UNKNOWN =>  'UNKNOWN',
    TENTATIVE =>  'TENTATIVE',
    DUPLICATE =>  'DUPLICATE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.guest.networking.interfaces.ip_address_status',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressInfo``  
#     *class*  describes a specific IP Address. This  *class*  was added in vSphere API
#     7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ip_address} = $args{'ip_address'};
   $self->{prefix_length} = $args{'prefix_length'};
   $self->{origin} = $args{'origin'};
   $self->{state} = $args{'state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpAddressInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.networking.interfaces.ip_address_info');
   $self->set_binding_field('key' => 'ip_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix_length', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'origin', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest::Networking', 'type_name' => 'Interfaces::IpAddressOrigin')));
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest::Networking', 'type_name' => 'Interfaces::IpAddressStatus'));
   bless $self, $class;
   return $self;
}

## @method get_ip_address ()
# Gets the value of 'ip_address' property.
#
# @retval ip_address - The current value of the field.
# IPv4 address is specified using dotted decimal notation. For example,
#     &quot;192.0.2.1&quot;. IPv6 addresses are 128-bit addresses specified using eight
#     fields of up to four hexadecimal digits. A colon separates each field (:). For
#     example, 2001:DB8:101::230:6eff:fe04:d9ff. The address can also consist of the symbol
#     &apos;::&apos; to represent multiple 16-bit groups of contiguous 0&apos;s only once in
#     an address as described in RFC 2373. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_ip_address {
   my ($self, %args) = @_;
   return $self->{'ip_address'}; 	
}

## @method set_ip_address ()
# Sets the given value for 'ip_address' property.
# 
# @param ip_address  - New value for the field.
# IPv4 address is specified using dotted decimal notation. For example,
#     &quot;192.0.2.1&quot;. IPv6 addresses are 128-bit addresses specified using eight
#     fields of up to four hexadecimal digits. A colon separates each field (:). For
#     example, 2001:DB8:101::230:6eff:fe04:d9ff. The address can also consist of the symbol
#     &apos;::&apos; to represent multiple 16-bit groups of contiguous 0&apos;s only once in
#     an address as described in RFC 2373. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_ip_address {
   my ($self, %args) = @_;
   $self->{'ip_address'} = $args{'ip_address'}; 
   return;	
}

## @method get_prefix_length ()
# Gets the value of 'prefix_length' property.
#
# @retval prefix_length - The current value of the field.
# Denotes the length of a generic Internet network address prefix. Prefix length: the
#     valid range of values is 0-32 for IPv4, and 0-128 for IPv6. A value of n corresponds
#     to an IP address mask that has n contiguous 1-bits from the most significant bit
#     (MSB), with all other bits set to 0. A value of zero is valid only if the calling
#     context defines it. This  *field*  was added in vSphere API 7.0.0.0.
#
# long#
sub get_prefix_length {
   my ($self, %args) = @_;
   return $self->{'prefix_length'}; 	
}

## @method set_prefix_length ()
# Sets the given value for 'prefix_length' property.
# 
# @param prefix_length  - New value for the field.
# Denotes the length of a generic Internet network address prefix. Prefix length: the
#     valid range of values is 0-32 for IPv4, and 0-128 for IPv6. A value of n corresponds
#     to an IP address mask that has n contiguous 1-bits from the most significant bit
#     (MSB), with all other bits set to 0. A value of zero is valid only if the calling
#     context defines it. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_prefix_length {
   my ($self, %args) = @_;
   $self->{'prefix_length'} = $args{'prefix_length'}; 
   return;	
}

## @method get_origin ()
# Gets the value of 'origin' property.
#
# @retval origin - The current value of the field.
# How this address was configured. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_origin {
   my ($self, %args) = @_;
   return $self->{'origin'}; 	
}

## @method set_origin ()
# Sets the given value for 'origin' property.
# 
# @param origin  - New value for the field.
# How this address was configured. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_origin {
   my ($self, %args) = @_;
   $self->{'origin'} = $args{'origin'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# The state of this ipAddress. This  *field*  was added in vSphere API 7.0.0.0.
#
# IpAddressStatus#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# The state of this ipAddress. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpConfigInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpConfigInfo``  
#     *class*  describes the protocol version independent address reporting data object for
#     network interfaces. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpConfigInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpConfigInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ip_addresses} = $args{'ip_addresses'};
   $self->{dhcp} = $args{'dhcp'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::IpConfigInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.networking.interfaces.ip_config_info');
   $self->set_binding_field('key' => 'ip_addresses', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest::Networking', 'type_name' => 'Interfaces::IpAddressInfo')));
   $self->set_binding_field('key' => 'dhcp', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest', 'type_name' => 'DhcpConfigInfo')));
   bless $self, $class;
   return $self;
}

## @method get_ip_addresses ()
# Gets the value of 'ip_addresses' property.
#
# @retval ip_addresses - The current value of the field.
# IP addresses configured on the interface. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# List#
sub get_ip_addresses {
   my ($self, %args) = @_;
   return $self->{'ip_addresses'}; 	
}

## @method set_ip_addresses ()
# Sets the given value for 'ip_addresses' property.
# 
# @param ip_addresses  - New value for the field.
# IP addresses configured on the interface. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_ip_addresses {
   my ($self, %args) = @_;
   $self->{'ip_addresses'} = $args{'ip_addresses'}; 
   return;	
}

## @method get_dhcp ()
# Gets the value of 'dhcp' property.
#
# @retval dhcp - The current value of the field.
# Client side DHCP for an interface. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_dhcp {
   my ($self, %args) = @_;
   return $self->{'dhcp'}; 	
}

## @method set_dhcp ()
# Sets the given value for 'dhcp' property.
# 
# @param dhcp  - New value for the field.
# Client side DHCP for an interface. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_dhcp {
   my ($self, %args) = @_;
   $self->{'dhcp'} = $args{'dhcp'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::Info``   *class* 
#     describes a virtual network adapter configured in the guest operating system. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{dns_values} = $args{'dns_values'};
   $self->{mac_address} = $args{'mac_address'};
   $self->{dns} = $args{'dns'};
   $self->{ip} = $args{'ip'};
   $self->{wins_servers} = $args{'wins_servers'};
   $self->{nic} = $args{'nic'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.networking.interfaces.info');
   $self->set_binding_field('key' => 'dns_values', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest', 'type_name' => 'DnsAssignedValues')));
   $self->set_binding_field('key' => 'mac_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'dns', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest', 'type_name' => 'DnsConfigInfo')));
   $self->set_binding_field('key' => 'ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Guest::Networking', 'type_name' => 'Interfaces::IpConfigInfo')));
   $self->set_binding_field('key' => 'wins_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'nic', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_dns_values ()
# Gets the value of 'dns_values' property.
#
# @retval dns_values - The current value of the field.
# Client DNS values. Data assigned by DNS. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Optional#
sub get_dns_values {
   my ($self, %args) = @_;
   return $self->{'dns_values'}; 	
}

## @method set_dns_values ()
# Sets the given value for 'dns_values' property.
# 
# @param dns_values  - New value for the field.
# Client DNS values. Data assigned by DNS. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_dns_values {
   my ($self, %args) = @_;
   $self->{'dns_values'} = $args{'dns_values'}; 
   return;	
}

## @method get_mac_address ()
# Gets the value of 'mac_address' property.
#
# @retval mac_address - The current value of the field.
# MAC address of the adapter. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_mac_address {
   my ($self, %args) = @_;
   return $self->{'mac_address'}; 	
}

## @method set_mac_address ()
# Sets the given value for 'mac_address' property.
# 
# @param mac_address  - New value for the field.
# MAC address of the adapter. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_mac_address {
   my ($self, %args) = @_;
   $self->{'mac_address'} = $args{'mac_address'}; 
   return;	
}

## @method get_dns ()
# Gets the value of 'dns' property.
#
# @retval dns - The current value of the field.
# DNS configuration of the adapter. See 
#     :attr:`Com::Vmware::Vcenter::Vm::Guest::Networking::Info.dns`  for system wide
#     settings. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_dns {
   my ($self, %args) = @_;
   return $self->{'dns'}; 	
}

## @method set_dns ()
# Sets the given value for 'dns' property.
# 
# @param dns  - New value for the field.
# DNS configuration of the adapter. See 
#     :attr:`Com::Vmware::Vcenter::Vm::Guest::Networking::Info.dns`  for system wide
#     settings. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_dns {
   my ($self, %args) = @_;
   $self->{'dns'} = $args{'dns'}; 
   return;	
}

## @method get_ip ()
# Gets the value of 'ip' property.
#
# @retval ip - The current value of the field.
# IP configuration settings of the adapter. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Optional#
sub get_ip {
   my ($self, %args) = @_;
   return $self->{'ip'}; 	
}

## @method set_ip ()
# Sets the given value for 'ip' property.
# 
# @param ip  - New value for the field.
# IP configuration settings of the adapter. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_ip {
   my ($self, %args) = @_;
   $self->{'ip'} = $args{'ip'}; 
   return;	
}

## @method get_wins_servers ()
# Gets the value of 'wins_servers' property.
#
# @retval wins_servers - The current value of the field.
# The IP addresses of any WINS name servers for the adapter. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# Optional#
sub get_wins_servers {
   my ($self, %args) = @_;
   return $self->{'wins_servers'}; 	
}

## @method set_wins_servers ()
# Sets the given value for 'wins_servers' property.
# 
# @param wins_servers  - New value for the field.
# The IP addresses of any WINS name servers for the adapter. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_wins_servers {
   my ($self, %args) = @_;
   $self->{'wins_servers'} = $args{'wins_servers'}; 
   return;	
}

## @method get_nic ()
# Gets the value of 'nic' property.
#
# @retval nic - The current value of the field.
# Link to the corresponding virtual device. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Optional#
sub get_nic {
   my ($self, %args) = @_;
   return $self->{'nic'}; 	
}

## @method set_nic ()
# Sets the given value for 'nic' property.
# 
# @param nic  - New value for the field.
# Link to the corresponding virtual device. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_nic {
   my ($self, %args) = @_;
   $self->{'nic'} = $args{'nic'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces service
#########################################################################################
