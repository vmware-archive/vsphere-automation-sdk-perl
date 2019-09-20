########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Networking.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Appliance::Networking::Dns;
#use Com::Vmware::Appliance::Networking::Interfaces;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking
# The  ``Com::Vmware::Appliance::Networking``   *interface*  provides  *methods*  Get
#     Network configurations. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Appliance::Networking;

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
use Com::Vmware::Appliance::NetworkingStub;

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
# Get Networking information for all configured interfaces. This  *method*  was added in
# vSphere API 6.7.
#
# @retval 
# The Map of network configuration info for all interfaces.
# The return type will be Com::Vmware::Appliance::Networking::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method update ()
# Enable or Disable ipv6 on all interfaces. This  *method*  was added in vSphere API 6.7.
#
# @param spec [REQUIRED] update spec with optional boolean value
# . The value must be Com::Vmware::Appliance::Networking::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#

sub update {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method reset ()
# Reset and restarts network configuration on all interfaces, also this will renew the DHCP
# lease for DHCP IP address. This  *method*  was added in vSphere API 6.7.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#

sub reset {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'reset', method_args =>  {});
}


## @method change ()
# Changes the Hostname/IP of the management network of vCenter appliance. The Hostname/IP
# change invokes the PNID change process which involves LDAP entry modification, updating
# registry entries, configuration files modification and network configuration changes.
# vCenter server is expected to be down for few minutes during these changes. This  *method*
#  was added in vSphere API 6.7.3.
#
# @param spec [REQUIRED] Information required to change the hostname.
# . The value must be Com::Vmware::Appliance::Networking::ChangeSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if it&apos;s not embedded node
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed arguments are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if another change task is in progress
#

sub change {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'change',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'change',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Networking service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::DNSInfo
#
#
# The  ``Com::Vmware::Appliance::Networking::DNSInfo``   *class*  contains information
#     about the DNS configuration of a virtual appliance. This  *class*  was added in
#     vSphere API 6.7.

package Com::Vmware::Appliance::Networking::DNSInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::DNSInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{mode} = $args{'mode'};
   $self->{hostname} = $args{'hostname'};
   $self->{servers} = $args{'servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::DNSInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.DNS_info');
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Networking::DNSInfo::DNSMode'));
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# DNS mode. This  *field*  was added in vSphere API 6.7.
#
# DnsMode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# DNS mode. This  *field*  was added in vSphere API 6.7.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# Hostname. This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# Hostname. This  *field*  was added in vSphere API 6.7.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# Servers. This  *field*  was added in vSphere API 6.7.
#
# List#
sub get_servers {
   my ($self, %args) = @_;
   return $self->{'servers'}; 	
}

## @method set_servers ()
# Sets the given value for 'servers' property.
# 
# @param servers  - New value for the field.
# Servers. This  *field*  was added in vSphere API 6.7.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Networking::DNSInfo::DNSMode
#
# The  ``Com::Vmware::Appliance::Networking::DNSInfo::DNSMode``   *enumerated type* 
#     describes the source of DNS servers. This  *enumeration*  was added in vSphere API
#     6.7.
#
#
#
# Constant Com::Vmware::Appliance::Networking::DNSInfo::DNSMode::DHCP #
#The DNS servers addresses are obtained from a DHCP server. This  *constant*  was added in
# vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Networking::DNSInfo::DNSMode::STATIC #
#The DNS servers addresses are specified explicitly. This  *constant*  was added in vSphere
# API 6.7.

package Com::Vmware::Appliance::Networking::DNSInfo::DNSMode;

use constant {
    DHCP =>  'DHCP',
    STATIC =>  'STATIC',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::DNSInfo::DNSMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.DNS_info.DNS_mode',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::DNSInfo::DNSMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Appliance::Networking::Info
#
#
# The  ``Com::Vmware::Appliance::Networking::Info``   *class*  contains information
#     about the network configuration of a virtual appliance. This  *class*  was added in
#     vSphere API 6.7.

package Com::Vmware::Appliance::Networking::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{dns} = $args{'dns'};
   $self->{interfaces} = $args{'interfaces'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.info');
   $self->set_binding_field('key' => 'dns', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Networking::DNSInfo'));
   $self->set_binding_field('key' => 'interfaces', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking', 'type_name' => 'Interfaces::InterfaceInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_dns ()
# Gets the value of 'dns' property.
#
# @retval dns - The current value of the field.
# DNS configuration. This  *field*  was added in vSphere API 6.7.
#
# DnsInfo#
sub get_dns {
   my ($self, %args) = @_;
   return $self->{'dns'}; 	
}

## @method set_dns ()
# Sets the given value for 'dns' property.
# 
# @param dns  - New value for the field.
# DNS configuration. This  *field*  was added in vSphere API 6.7.
#
sub set_dns {
   my ($self, %args) = @_;
   $self->{'dns'} = $args{'dns'}; 
   return;	
}

## @method get_interfaces ()
# Gets the value of 'interfaces' property.
#
# @retval interfaces - The current value of the field.
# Interface configuration as a key-value map where key is a network interface name, for
#     example, &quot;nic0&quot;. This  *field*  was added in vSphere API 6.7.
#
# Map#
sub get_interfaces {
   my ($self, %args) = @_;
   return $self->{'interfaces'}; 	
}

## @method set_interfaces ()
# Sets the given value for 'interfaces' property.
# 
# @param interfaces  - New value for the field.
# Interface configuration as a key-value map where key is a network interface name, for
#     example, &quot;nic0&quot;. This  *field*  was added in vSphere API 6.7.
#
sub set_interfaces {
   my ($self, %args) = @_;
   $self->{'interfaces'} = $args{'interfaces'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Networking::UpdateSpec
#
#
# The  ``Com::Vmware::Appliance::Networking::UpdateSpec``   *class*  describes whether
#     to enable or disable ipv6 on interfaces. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Networking::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ipv6_enabled} = $args{'ipv6_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.update_spec');
   $self->set_binding_field('key' => 'ipv6_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_ipv6_enabled ()
# Gets the value of 'ipv6_enabled' property.
#
# @retval ipv6_enabled - The current value of the field.
# IPv6 Enabled or not. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_ipv6_enabled {
   my ($self, %args) = @_;
   return $self->{'ipv6_enabled'}; 	
}

## @method set_ipv6_enabled ()
# Sets the given value for 'ipv6_enabled' property.
# 
# @param ipv6_enabled  - New value for the field.
# IPv6 Enabled or not. This  *field*  was added in vSphere API 6.7.
#
sub set_ipv6_enabled {
   my ($self, %args) = @_;
   $self->{'ipv6_enabled'} = $args{'ipv6_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Networking::ChangeSpec
#
#


package Com::Vmware::Appliance::Networking::ChangeSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::ChangeSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{SSO_user} = $args{'SSO_user'};
   $self->{SSO_password} = $args{'SSO_password'};
   $self->{dns} = $args{'dns'};
   $self->{ipv4} = $args{'ipv4'};
   $self->{ipv6} = $args{'ipv6'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::ChangeSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.change_spec');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'SSO_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'SSO_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'dns', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Dns', 'type_name' => 'Servers::DNSServerConfig')));
   $self->set_binding_field('key' => 'ipv4', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv4::Config')));
   $self->set_binding_field('key' => 'ipv6', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Interfaces', 'type_name' => 'Ipv6::Config')));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# New hostname to assign to the management network of vCenter appliance. This  *field* 
#     was added in vSphere API 6.7.3.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# New hostname to assign to the management network of vCenter appliance. This  *field* 
#     was added in vSphere API 6.7.3.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_SSO_user ()
# Gets the value of 'SSO_user' property.
#
# @retval SSO_user - The current value of the field.
# vCenter Server SSO administrator username. This  *field*  was added in vSphere API
#     6.7.3.
#
# String#
sub get_SSO_user {
   my ($self, %args) = @_;
   return $self->{'SSO_user'}; 	
}

## @method set_SSO_user ()
# Sets the given value for 'SSO_user' property.
# 
# @param SSO_user  - New value for the field.
# vCenter Server SSO administrator username. This  *field*  was added in vSphere API
#     6.7.3.
#
sub set_SSO_user {
   my ($self, %args) = @_;
   $self->{'SSO_user'} = $args{'SSO_user'}; 
   return;	
}

## @method get_SSO_password ()
# Gets the value of 'SSO_password' property.
#
# @retval SSO_password - The current value of the field.
# vCenter Server SSO administrator Password. This  *field*  was added in vSphere API
#     6.7.3.
#
# Secret#
sub get_SSO_password {
   my ($self, %args) = @_;
   return $self->{'SSO_password'}; 	
}

## @method set_SSO_password ()
# Sets the given value for 'SSO_password' property.
# 
# @param SSO_password  - New value for the field.
# vCenter Server SSO administrator Password. This  *field*  was added in vSphere API
#     6.7.3.
#
sub set_SSO_password {
   my ($self, %args) = @_;
   $self->{'SSO_password'} = $args{'SSO_password'}; 
   return;	
}

## @method get_dns ()
# Gets the value of 'dns' property.
#
# @retval dns - The current value of the field.
# DNS Configuration to set for the machine. This  *field*  was added in vSphere API
#     6.7.3.
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
# DNS Configuration to set for the machine. This  *field*  was added in vSphere API
#     6.7.3.
#
sub set_dns {
   my ($self, %args) = @_;
   $self->{'dns'} = $args{'dns'}; 
   return;	
}

## @method get_ipv4 ()
# Gets the value of 'ipv4' property.
#
# @retval ipv4 - The current value of the field.
# IPv4 Configuration to set for the machine. This  *field*  was added in vSphere API
#     6.7.3.
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
# IPv4 Configuration to set for the machine. This  *field*  was added in vSphere API
#     6.7.3.
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
# IPv6 Configuration to set for the machine. This  *field*  was added in vSphere API
#     6.7.3.
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
# IPv6 Configuration to set for the machine. This  *field*  was added in vSphere API
#     6.7.3.
#
sub set_ipv6 {
   my ($self, %args) = @_;
   $self->{'ipv6'} = $args{'ipv6'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Networking service
#########################################################################################
