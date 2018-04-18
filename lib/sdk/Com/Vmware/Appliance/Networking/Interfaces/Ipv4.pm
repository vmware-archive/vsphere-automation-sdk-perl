########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Ipv4.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv4
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv4``   *interface*  provides 
#     *methods*  to perform IPv4 network configuration for interfaces. This  *interface* 
#     was added in vSphere API 6.7
#

package Com::Vmware::Appliance::Networking::Interfaces::Ipv4;

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
use Com::Vmware::Appliance::Networking::Interfaces::Ipv4Stub;

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
# Set IPv4 network configuration for specific network interface. This  *method*  was added
# in vSphere API 6.7
#
# @param interface_name [REQUIRED] Network interface to update, for example, &quot;nic0&quot;.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.networking.interfaces).
# . The value must be str.
#
# @param config [REQUIRED] The IPv4 Network configuration to set.
# . The value must be Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Config.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the specified NIC is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the IP is used as PNID
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the specified NIC is busy.
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
# Get IPv4 network configuration for specific NIC. This  *method*  was added in vSphere API
# 6.7
#
# @param interface_name [REQUIRED] The Network interface to query, for example, &quot;nic0&quot;.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.networking.interfaces).
# . The value must be str.
#
# @retval 
# The IPv4 configuration for the queried NIC.
# The return type will be Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Info
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
# Begins enumerations for the Com::Vmware::Appliance::Networking::Interfaces::Ipv4 service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Mode
#
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Mode``   *enumerated
#     type*  defines different IPv4 address assignment modes. This  *enumeration*  was added
#     in vSphere API 6.7
#
#
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Mode::DHCP #
#The IPv4 address is automatically assigned by a DHCP server. This  *constant*  was added
# in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Mode::STATIC #
#The IPv4 address is static. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Mode::UNCONFIGURED #
#The IPv4 protocol is not configured. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Mode;

use constant {
    DHCP =>  'DHCP',
    STATIC =>  'STATIC',
    UNCONFIGURED =>  'UNCONFIGURED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Mode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.interfaces.ipv4.mode',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Mode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking::Interfaces::Ipv4 service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking::Interfaces::Ipv4 service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Config
#
#
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Config``   *class* 
#     provides defines the IPv4 configuration of a network interface. This  *class*  was
#     added in vSphere API 6.7

package Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Config;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Config structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'mode',
         'case_map' => {
               'STATIC' => ['address', 'prefix'],
               'DHCP' => [],
               'UNCONFIGURED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{mode} = $args{'mode'};
   $self->{address} = $args{'address'};
   $self->{prefix} = $args{'prefix'};
   $self->{default_gateway} = $args{'default_gateway'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Config');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.interfaces.ipv4.config');
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv4::Mode'));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'default_gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# The Address assignment mode. This  *field*  was added in vSphere API 6.7
#
# Mode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# The Address assignment mode. This  *field*  was added in vSphere API 6.7
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
# The IPv4 address, for example, &quot;10.20.80.191&quot;. This  *field*  was added in
#     vSphere API 6.7
#
# optional#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The IPv4 address, for example, &quot;10.20.80.191&quot;. This  *field*  was added in
#     vSphere API 6.7
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
# The IPv4 CIDR prefix, for example, 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. This  *field*  was added in vSphere API 6.7
#
# optional#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# The IPv4 CIDR prefix, for example, 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. This  *field*  was added in vSphere API 6.7
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
# The IPv4 address of the default gateway. This configures the global default gateway on
#     the appliance with the specified gateway address and interface. This gateway replaces
#     the existing default gateway configured on the appliance. However, if the gateway
#     address is link-local, then it is added for that interface. This does not support
#     configuration of multiple global default gateways through different interfaces. This 
#     *field*  was added in vSphere API 6.7
#
# Optional#
sub get_default_gateway {
   my ($self, %args) = @_;
   return $self->{'default_gateway'}; 	
}

## @method set_default_gateway ()
# Sets the given value for 'default_gateway' property.
# 
# @param default_gateway  - New value for the field.
# The IPv4 address of the default gateway. This configures the global default gateway on
#     the appliance with the specified gateway address and interface. This gateway replaces
#     the existing default gateway configured on the appliance. However, if the gateway
#     address is link-local, then it is added for that interface. This does not support
#     configuration of multiple global default gateways through different interfaces. This 
#     *field*  was added in vSphere API 6.7
#
sub set_default_gateway {
   my ($self, %args) = @_;
   $self->{'default_gateway'} = $args{'default_gateway'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Info
#
#
# The  ``Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Info``   *class*  defines
#     current IPv4 configuration state of a network interface. This  *class*  was added in
#     vSphere API 6.7

package Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'mode',
         'case_map' => {
               'STATIC' => ['address', 'prefix', 'default_gateway'],
               'DHCP' => ['address', 'prefix', 'default_gateway'],
               'UNCONFIGURED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{configurable} = $args{'configurable'};
   $self->{mode} = $args{'mode'};
   $self->{address} = $args{'address'};
   $self->{prefix} = $args{'prefix'};
   $self->{default_gateway} = $args{'default_gateway'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Interfaces::Ipv4::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.interfaces.ipv4.info');
   $self->set_binding_field('key' => 'configurable', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv4::Mode'));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'default_gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_configurable ()
# Gets the value of 'configurable' property.
#
# @retval configurable - The current value of the field.
# The specified network interface is configurable or not. This  *field*  was added in
#     vSphere API 6.7
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
# The specified network interface is configurable or not. This  *field*  was added in
#     vSphere API 6.7
#
sub set_configurable {
   my ($self, %args) = @_;
   $self->{'configurable'} = $args{'configurable'}; 
   return;	
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# The Address assignment mode. This  *field*  was added in vSphere API 6.7
#
# Mode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# The Address assignment mode. This  *field*  was added in vSphere API 6.7
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
# The IPv4 address, for example, &quot;10.20.80.191&quot;. This  *field*  was added in
#     vSphere API 6.7
#
# optional#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The IPv4 address, for example, &quot;10.20.80.191&quot;. This  *field*  was added in
#     vSphere API 6.7
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
# The IPv4 CIDR prefix, for example, 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. This  *field*  was added in vSphere API 6.7
#
# optional#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# The IPv4 CIDR prefix, for example, 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. This  *field*  was added in vSphere API 6.7
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
# The IPv4 address of the default gateway. This configures the global default gateway on
#     the appliance with the specified gateway address and interface. This gateway replaces
#     the existing default gateway configured on the appliance. However, if the gateway
#     address is link-local, then it is added for that interface. This does not support
#     configuration of multiple global default gateways through different interfaces. This 
#     *field*  was added in vSphere API 6.7
#
# optional#
sub get_default_gateway {
   my ($self, %args) = @_;
   return $self->{'default_gateway'}; 	
}

## @method set_default_gateway ()
# Sets the given value for 'default_gateway' property.
# 
# @param default_gateway  - New value for the field.
# The IPv4 address of the default gateway. This configures the global default gateway on
#     the appliance with the specified gateway address and interface. This gateway replaces
#     the existing default gateway configured on the appliance. However, if the gateway
#     address is link-local, then it is added for that interface. This does not support
#     configuration of multiple global default gateways through different interfaces. This 
#     *field*  was added in vSphere API 6.7
#
sub set_default_gateway {
   my ($self, %args) = @_;
   $self->{'default_gateway'} = $args{'default_gateway'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Networking::Interfaces::Ipv4 service
#########################################################################################
