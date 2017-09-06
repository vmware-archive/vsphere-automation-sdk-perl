########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Inbound.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound
# ``Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound``  
#     *interface*  provides  *methods*  Operations for Firewall rules.
#

package Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound;

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
use Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::InboundStub;

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

## @method add ()
# Add a firewall rule to allow or deny traffic from incoming IP address.
#
# @param pos [REQUIRED] Position before which to insert the rule (zero-based). If you try to insert the rule
#     in a position whose number is greater than the number of rules, the firewall rule is
#     inserted at the end of the list.
# . The value must be Long.
#
# @param rule [REQUIRED] Firewall IP-based rule.
# . The value must be
# Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub add {
   my ($self, %args) = @_;
   my $pos = $args {pos};
   my $rule = $args {rule};

   $self->validate_args (method_name => 'add',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add',
                         method_args => \%args);
}


## @method set ()
# Set list of inbound IP addresses to allow or deny by firewall. This replaces all existing
# rules. Firewall rules have no impact on closed ports because these ports are closed for
# all traffic.
#
# @param rules [REQUIRED] List of address-based firewall rules.
# . The value must be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule.
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


## @method list ()
# Get ordered list of inbound IP addresses that are allowed or denied by firewall.
#
# @retval 
# List of address-based firewall rules.
# The return type will be Array of
# Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method delete ()
# Delete specific rule at a given position or delete all rules.
#
# @param config [REQUIRED] Delete a firewall rule
# . The value must be
# Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::DeleteFirewallRule.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub delete {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy``
#       *enumerated type*  Defines firewall rule policies
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy::DENY #
#Deny packet with correpsonding address.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy::ALLOW #
#Allow packet with corresponding address.

package Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy;

use constant {
    deny =>  'deny',
    allow =>  'allow',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.firewall.addr.inbound.firewall_rule_policy',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallRulePolicy');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule``
#       *class*  Structure that defines a single address-based firewall rule.

package Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::FirewallAddressRule');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.firewall.addr.inbound.firewall_address_rule');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr', 'type_name' => 'Inbound::FirewallRulePolicy'));
   $self->set_binding_field('key' => 'interface_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# IPv4 or IPv6 address.
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
# IPv4 or IPv6 address.
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
#     low-order 8 bits of address.
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
#     low-order 8 bits of address.
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
# The allow or deny policy of this rule.
#
# FirewallRulePolicy#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# The allow or deny policy of this rule.
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
# The interface to which this rule applies. An empty string or &quot;*&quot; indicates
#     that the rule applies to all interfaces.
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
# The interface to which this rule applies. An empty string or &quot;*&quot; indicates
#     that the rule applies to all interfaces.
#
sub set_interface_name {
   my ($self, %args) = @_;
   $self->{'interface_name'} = $args{'interface_name'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::DeleteFirewallRule
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::DeleteFirewallRule``
#     *class*  Structure that defines networking.firewall.addr.inbound.delete api input
#     argument

package Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::DeleteFirewallRule;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::DeleteFirewallRule structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{position} = $args{'position'};
   $self->{all} = $args{'all'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound::DeleteFirewallRule');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.firewall.addr.inbound.delete_firewall_rule');
   $self->set_binding_field('key' => 'position', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'all', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_position ()
# Gets the value of 'position' property.
#
# @retval position - The current value of the field.
# Position before which to insert the rule (zero-based). If you try to insert the rule
#     in a position whose number is greater than the number of rules, the firewall rule is
#     inserted at the end of the list.
#
# long#
sub get_position {
   my ($self, %args) = @_;
   return $self->{'position'}; 	
}

## @method set_position ()
# Sets the given value for 'position' property.
# 
# @param position  - New value for the field.
# Position before which to insert the rule (zero-based). If you try to insert the rule
#     in a position whose number is greater than the number of rules, the firewall rule is
#     inserted at the end of the list.
#
sub set_position {
   my ($self, %args) = @_;
   $self->{'position'} = $args{'position'}; 
   return;	
}

## @method get_all ()
# Gets the value of 'all' property.
#
# @retval all - The current value of the field.
# Delete all firewall rules. Set all argument to &quot;true&quot; to delete all rules or
#     set the all argument to &quot;false&quot; to delete a single rule.
#
# boolean#
sub get_all {
   my ($self, %args) = @_;
   return $self->{'all'}; 	
}

## @method set_all ()
# Sets the given value for 'all' property.
# 
# @param all  - New value for the field.
# Delete all firewall rules. Set all argument to &quot;true&quot; to delete all rules or
#     set the all argument to &quot;false&quot; to delete a single rule.
#
sub set_all {
   my ($self, %args) = @_;
   $self->{'all'} = $args{'all'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Networking::Firewall::Addr::Inbound service
#########################################################################################
