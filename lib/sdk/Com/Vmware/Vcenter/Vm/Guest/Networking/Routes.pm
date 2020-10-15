########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Routes.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Guest::Networking::Routes
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking::Routes``   *interface*  provides 
#     *methods*  for retrieving guest operating system network routing information. This 
#     *interface*  was added in vSphere API 7.0.0.0.
#

package Com::Vmware::Vcenter::Vm::Guest::Networking::Routes;

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
use Com::Vmware::Vcenter::Vm::Guest::Networking::RoutesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.guest.networking.routes';


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
# Returns information about network routing in the guest operating system. This  *method* 
# was added in vSphere API 7.0.0.0.
#
# @param vm [REQUIRED] Virtual machine ID
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Information about the network routes configured in the guest operating system.
# The return type will be Array of Com::Vmware::Vcenter::Vm::Guest::Networking::Routes::Info
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
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Guest::Networking::Routes service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Guest::Networking::Routes service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Guest::Networking::Routes service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Guest::Networking::Routes::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::Networking::Routes::Info``   *class* 
#     describes an individual host, network or default destination network reachable through
#     a gateway. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::Networking::Routes::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Networking::Routes::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{network} = $args{'network'};
   $self->{prefix_length} = $args{'prefix_length'};
   $self->{gateway_address} = $args{'gateway_address'};
   $self->{interface_index} = $args{'interface_index'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Networking::Routes::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.networking.routes.info');
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix_length', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'gateway_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'interface_index', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# IP Address of the destination IP network. IPv4 address is specified using dotted
#     decimal notation. For example, &quot;192.0.2.1&quot;. IPv6 addresses are 128-bit
#     specified using as eight fields of up to four hexadecimal digits. A colon separates
#     each field (:). For example, 2001:DB8:101::230:6eff:fe04:d9ff. The address can also
#     consist of symbol &apos;::&apos; to represent multiple 16-bit groups of contiguous
#     0&apos;s only once in an address as described in RFC 2373. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# String#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# IP Address of the destination IP network. IPv4 address is specified using dotted
#     decimal notation. For example, &quot;192.0.2.1&quot;. IPv6 addresses are 128-bit
#     specified using as eight fields of up to four hexadecimal digits. A colon separates
#     each field (:). For example, 2001:DB8:101::230:6eff:fe04:d9ff. The address can also
#     consist of symbol &apos;::&apos; to represent multiple 16-bit groups of contiguous
#     0&apos;s only once in an address as described in RFC 2373. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}

## @method get_prefix_length ()
# Gets the value of 'prefix_length' property.
#
# @retval prefix_length - The current value of the field.
# The prefix length. For IPv4 the value range is 0-32. For IPv6 prefixLength is a
#     decimal value range 0-128. The property represents the number of contiguous,
#     higher-order bits of the address that make up the network portion of the IP address.
#     This  *field*  was added in vSphere API 7.0.0.0.
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
# The prefix length. For IPv4 the value range is 0-32. For IPv6 prefixLength is a
#     decimal value range 0-128. The property represents the number of contiguous,
#     higher-order bits of the address that make up the network portion of the IP address.
#     This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_prefix_length {
   my ($self, %args) = @_;
   $self->{'prefix_length'} = $args{'prefix_length'}; 
   return;	
}

## @method get_gateway_address ()
# Gets the value of 'gateway_address' property.
#
# @retval gateway_address - The current value of the field.
# Where to send the packets for this route. Unicast IP Address of the next hop router.
#     IPv4 address is specified using dotted decimal notation. For example,
#     &quot;192.0.2.1&quot;. IPv6 addresses are 128-bit specified using as eight fields of
#     up to four hexadecimal digits. A colon separates each field (:). For example,
#     2001:DB8:101::230:6eff:fe04:d9ff. The address can also consist of symbol
#     &apos;::&apos; to represent multiple 16-bit groups of contiguous 0&apos;s only once in
#     an address as described in RFC 2373. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_gateway_address {
   my ($self, %args) = @_;
   return $self->{'gateway_address'}; 	
}

## @method set_gateway_address ()
# Sets the given value for 'gateway_address' property.
# 
# @param gateway_address  - New value for the field.
# Where to send the packets for this route. Unicast IP Address of the next hop router.
#     IPv4 address is specified using dotted decimal notation. For example,
#     &quot;192.0.2.1&quot;. IPv6 addresses are 128-bit specified using as eight fields of
#     up to four hexadecimal digits. A colon separates each field (:). For example,
#     2001:DB8:101::230:6eff:fe04:d9ff. The address can also consist of symbol
#     &apos;::&apos; to represent multiple 16-bit groups of contiguous 0&apos;s only once in
#     an address as described in RFC 2373. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_gateway_address {
   my ($self, %args) = @_;
   $self->{'gateway_address'} = $args{'gateway_address'}; 
   return;	
}

## @method get_interface_index ()
# Gets the value of 'interface_index' property.
#
# @retval interface_index - The current value of the field.
# The network interface associated with this route. This is an index into the result of 
#     :func:`Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces.list`  The index refers
#     to the relative position of an element in a  *list* . For example, an index of 0
#     refers to the first element in the  *list*  while an index of 1 refers to the second
#     element. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_interface_index {
   my ($self, %args) = @_;
   return $self->{'interface_index'}; 	
}

## @method set_interface_index ()
# Sets the given value for 'interface_index' property.
# 
# @param interface_index  - New value for the field.
# The network interface associated with this route. This is an index into the result of 
#     :func:`Com::Vmware::Vcenter::Vm::Guest::Networking::Interfaces.list`  The index refers
#     to the relative position of an element in a  *list* . For example, an index of 0
#     refers to the first element in the  *list*  while an index of 1 refers to the second
#     element. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_interface_index {
   my ($self, %args) = @_;
   $self->{'interface_index'} = $args{'interface_index'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Guest::Networking::Routes service
#########################################################################################
