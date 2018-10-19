########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Inbound.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking::Firewall::Inbound
# The  ``Com::Vmware::Appliance::Networking::Firewall::Inbound``   *interface*  provides
#     *methods*  to manage inbound firewall rules. This  *interface*  was added in vSphere
#     API 6.7 U1.
#

package Com::Vmware::Appliance::Networking::Firewall::Inbound;

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
use Com::Vmware::Appliance::Networking::Firewall::InboundStub;

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
# Set the ordered list of firewall rules to allow or deny traffic from one or more incoming
# IP addresses. This overwrites the existing firewall rules and creates a new rule list.
# Within the list of traffic rules, rules are processed in order of appearance, from top to
# bottom. For example, the list of rules can be as follows: <ol>
# <li> &quot;address&quot;: &quot;10.112.0.1&quot;, &quot;prefix&quot;: 0,
# &quot;interface_name&quot;: &quot;*&quot;,&quot;policy&quot;: &quot;REJECT&quot;
# &quot;address&quot;: &quot;10.112.0.1&quot;, &quot;prefix&quot;: 0,
# &quot;interface_name&quot;: &quot;nic0&quot;,&quot;policy&quot;: &quot;ACCEPT&quot;
#  </li>
# </ol> In the above example, the first rule drops all packets originating from 10.112.0.1
# and
# the second rule accepts all packets originating from 10.112.0.1 only on nic0. In effect,
# the second rule is always ignored which is not desired, hence the order has to be swapped.
# When a connection matches a firewall rule, further processing for the connection stops,
# and the appliance ignores any additional firewall rules you have set. This  *method*  was
# added in vSphere API 6.7 U1.
#
# @param rules [REQUIRED] List of address-based firewall rules.
# . The value must be Array of Com::Vmware::Appliance::Networking::Firewall::Inbound::Rule.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $rules = $args {rules};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method get ()
# Get the ordered list of firewall rules. Within the list of traffic rules, rules are
# processed in order of appearance, from top to bottom. When a connection matches a firewall
# rule, further processing for the connection stops, and the appliance ignores any
# additional firewall rules you have set. This  *method*  was added in vSphere API 6.7 U1.
#
# @retval 
# List of address-based firewall rules.
# The return type will be Array of
# Com::Vmware::Appliance::Networking::Firewall::Inbound::Rule
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Networking::Firewall::Inbound service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Firewall::Inbound::Policy
#
# ``Com::Vmware::Appliance::Networking::Firewall::Inbound::Policy``   *enumerated type* 
#     Defines firewall rule policies. This  *enumeration*  was added in vSphere API 6.7 U1.
#
#
#
# Constant Com::Vmware::Appliance::Networking::Firewall::Inbound::Policy::IGNORE #
#Drop packet with correpsonding address. This  *constant*  was added in vSphere API 6.7 U1.
#
# Constant Com::Vmware::Appliance::Networking::Firewall::Inbound::Policy::ACCEPT #
#Allow packet with corresponding address. This  *constant*  was added in vSphere API 6.7
# U1.
#
# Constant Com::Vmware::Appliance::Networking::Firewall::Inbound::Policy::REJECT #
#Drop packet with corresponding address sending destination is not reachable. This 
# *constant*  was added in vSphere API 6.7 U1.
#
# Constant Com::Vmware::Appliance::Networking::Firewall::Inbound::Policy::RETURN #
#Apply default or port-specific rules to packet with corresponding address. This 
# *constant*  was added in vSphere API 6.7 U1.

package Com::Vmware::Appliance::Networking::Firewall::Inbound::Policy;

use constant {
    IGNORE =>  'IGNORE',
    ACCEPT =>  'ACCEPT',
    REJECT =>  'REJECT',
    RETURN =>  'RETURN',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Firewall::Inbound::Policy enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.firewall.inbound.policy',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Firewall::Inbound::Policy');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking::Firewall::Inbound service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking::Firewall::Inbound service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Firewall::Inbound::Rule
#
#
# ``Com::Vmware::Appliance::Networking::Firewall::Inbound::Rule``   *class*  Structure
#     that defines a single address-based firewall rule. This  *class*  was added in vSphere
#     API 6.7 U1.

package Com::Vmware::Appliance::Networking::Firewall::Inbound::Rule;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Firewall::Inbound::Rule structure
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
   $self->{policy} = $args{'policy'};
   $self->{interface_name} = $args{'interface_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Firewall::Inbound::Rule');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.firewall.inbound.rule');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Firewall', 'type_name' => 'Inbound::Policy'));
   $self->set_binding_field('key' => 'interface_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# IPv4 or IPv6 address. This  *field*  was added in vSphere API 6.7 U1.
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
# IPv4 or IPv6 address. This  *field*  was added in vSphere API 6.7 U1.
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
# CIDR prefix used to mask address. For example, an IPv4 prefix of 24 ignores the
#     low-order 8 bits of address. This  *field*  was added in vSphere API 6.7 U1.
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
# CIDR prefix used to mask address. For example, an IPv4 prefix of 24 ignores the
#     low-order 8 bits of address. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# The allow or deny policy of this rule. This  *field*  was added in vSphere API 6.7 U1.
#
# Policy#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# The allow or deny policy of this rule. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}

## @method get_interface_name ()
# Gets the value of 'interface_name' property.
#
# @retval interface_name - The current value of the field.
# The interface to which this rule applies. An empty string indicates that the rule
#     applies to all interfaces. This  *field*  was added in vSphere API 6.7 U1.
#
# Optional#
sub get_interface_name {
   my ($self, %args) = @_;
   return $self->{'interface_name'}; 	
}

## @method set_interface_name ()
# Sets the given value for 'interface_name' property.
# 
# @param interface_name  - New value for the field.
# The interface to which this rule applies. An empty string indicates that the rule
#     applies to all interfaces. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_interface_name {
   my ($self, %args) = @_;
   $self->{'interface_name'} = $args{'interface_name'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Networking::Firewall::Inbound service
#########################################################################################
