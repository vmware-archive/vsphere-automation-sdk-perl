########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Ipv4.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv4
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv4``   *interface*  provides 
#     *methods*  Performs IPV4 network configuration for interfaces.
#

package Com::Vmware::Appliance::Techpreview::Networking::Ipv4;

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
use Com::Vmware::Appliance::Techpreview::Networking::Ipv4Stub;

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

## @method renew ()
# Renew IPv4 network configuration on interfaces. If the interface is configured to use DHCP
# for IP address assignment, the lease of the interface is renewed.
#
# @param interfaces [REQUIRED] Interfaces to renew.
# . The value must be Array of String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub renew {
   my ($self, %args) = @_;
   my $interfaces = $args {interfaces};

   $self->validate_args (method_name => 'renew',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'renew',
                         method_args => \%args);
}


## @method set ()
# Set IPv4 network configuration.
#
# @param config [REQUIRED] List of IPv4 configurations.
# . The value must be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Config.
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
# Get IPv4 network configuration for all configured interfaces.
#
# @retval 
# IPv4 configuration for each interface.
# The return type will be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Get IPv4 network configuration for interfaces.
#
# @param interfaces [REQUIRED] Network interfaces to query, for example, &quot;nic0&quot;.
# . The value must be Array of String.
#
# @retval 
# IPv4 configuration for each queried interface.
# The return type will be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly
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
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Ipv4 service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode``   *enumerated
#     type*  Defines different ipv4 modes
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode::DHCP #
#IPv4 address is automatically assigned by a DHCP server.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode::IS_STATIC #
#IPv4 address is static.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode::UNCONFIGURED #
#The IPv4 protocol is not configured.

package Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode;

use constant {
    dhcp =>  'dhcp',
    is_static =>  'is_static',
    unconfigured =>  'unconfigured',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.ipv4.I_pv4_mode',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Mode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Ipv4 service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Networking::Ipv4 service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Config
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Config``   *class* 
#     Structure that defines the IPv4 configuration state of a network interface.

package Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Config;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Config structure
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
   $self->{mode} = $args{'mode'};
   $self->{address} = $args{'address'};
   $self->{prefix} = $args{'prefix'};
   $self->{default_gateway} = $args{'default_gateway'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4Config');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.ipv4.I_pv4_config');
   $self->set_binding_field('key' => 'interface_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Ipv4::IPv4Mode'));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'default_gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_interface_name ()
# Gets the value of 'interface_name' property.
#
# @retval interface_name - The current value of the field.
# Interface name, for example, &quot;nic0&quot;, &quot;nic1&quot;.
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
# Interface name, for example, &quot;nic0&quot;, &quot;nic1&quot;.
#
sub set_interface_name {
   my ($self, %args) = @_;
   $self->{'interface_name'} = $args{'interface_name'}; 
   return;	
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# Address assignment mode.
#
# IPv4Mode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# Address assignment mode.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# IPv4 address, for example, &quot;10.20.80.191&quot;. Set this argument to an empty
#     string &quot;&quot;, if the mode is &quot;unconfigured&quot; or &quot;dhcp&quot;.
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
# IPv4 address, for example, &quot;10.20.80.191&quot;. Set this argument to an empty
#     string &quot;&quot;, if the mode is &quot;unconfigured&quot; or &quot;dhcp&quot;.
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
# IPv4 CIDR prefix, for example , 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. Set this argument to 0 if the mode is
#     &quot;unconfigured&quot; or &quot;dhcp&quot;.
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
# IPv4 CIDR prefix, for example , 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. Set this argument to 0 if the mode is
#     &quot;unconfigured&quot; or &quot;dhcp&quot;.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}

## @method get_default_gateway ()
# Gets the value of 'default_gateway' property.
#
# @retval default_gateway - The current value of the field.
# IPv4 address of the default gateway. This default gateway value is used if the mode
#     argument is set to &quot;static&quot; This configures the global default gateway on
#     the appliance with the specified gateway address and interface. This gateway replaces
#     the existing default gateway configured on the appliance. However, if the gateway
#     address is link-local, then it is added for that interface. This does not support
#     configuration of multiple global default gateways through different interfaces.
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
# IPv4 address of the default gateway. This default gateway value is used if the mode
#     argument is set to &quot;static&quot; This configures the global default gateway on
#     the appliance with the specified gateway address and interface. This gateway replaces
#     the existing default gateway configured on the appliance. However, if the gateway
#     address is link-local, then it is added for that interface. This does not support
#     configuration of multiple global default gateways through different interfaces.
#
sub set_default_gateway {
   my ($self, %args) = @_;
   $self->{'default_gateway'} = $args{'default_gateway'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly``  
#     *class*  Structure that defines the IPv4 configuration state of a network interface.

package Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly structure
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
   $self->{mode} = $args{'mode'};
   $self->{address} = $args{'address'};
   $self->{prefix} = $args{'prefix'};
   $self->{default_gateway} = $args{'default_gateway'};
   $self->{updateable} = $args{'updateable'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Ipv4::IPv4ConfigReadOnly');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.ipv4.I_pv4_config_read_only');
   $self->set_binding_field('key' => 'interface_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Ipv4::IPv4Mode'));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'default_gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'updateable', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_interface_name ()
# Gets the value of 'interface_name' property.
#
# @retval interface_name - The current value of the field.
# Interface name, for example, &quot;nic0&quot;, &quot;nic1&quot;.
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
# Interface name, for example, &quot;nic0&quot;, &quot;nic1&quot;.
#
sub set_interface_name {
   my ($self, %args) = @_;
   $self->{'interface_name'} = $args{'interface_name'}; 
   return;	
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# Address assignment mode.
#
# IPv4Mode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# Address assignment mode.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# IPv4 address, for example, &quot;10.20.80.191&quot;. Set this argument to an empty
#     string &quot;&quot;, if the mode is &quot;unconfigured&quot; or &quot;dhcp&quot;.
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
# IPv4 address, for example, &quot;10.20.80.191&quot;. Set this argument to an empty
#     string &quot;&quot;, if the mode is &quot;unconfigured&quot; or &quot;dhcp&quot;.
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
# IPv4 CIDR prefix, for example , 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. Set this argument to 0 if the mode is
#     &quot;unconfigured&quot; or &quot;dhcp&quot;.
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
# IPv4 CIDR prefix, for example , 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. Set this argument to 0 if the mode is
#     &quot;unconfigured&quot; or &quot;dhcp&quot;.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}

## @method get_default_gateway ()
# Gets the value of 'default_gateway' property.
#
# @retval default_gateway - The current value of the field.
# IPv4 address of the default gateway. This default gateway value is used if the mode
#     argument is set to &quot;static&quot; This configures the global default gateway on
#     the appliance with the specified gateway address and interface. This gateway replaces
#     the existing default gateway configured on the appliance. However, if the gateway
#     address is link-local, then it is added for that interface. This does not support
#     configuration of multiple global default gateways through different interfaces.
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
# IPv4 address of the default gateway. This default gateway value is used if the mode
#     argument is set to &quot;static&quot; This configures the global default gateway on
#     the appliance with the specified gateway address and interface. This gateway replaces
#     the existing default gateway configured on the appliance. However, if the gateway
#     address is link-local, then it is added for that interface. This does not support
#     configuration of multiple global default gateways through different interfaces.
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



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Networking::Ipv4 service
#########################################################################################
