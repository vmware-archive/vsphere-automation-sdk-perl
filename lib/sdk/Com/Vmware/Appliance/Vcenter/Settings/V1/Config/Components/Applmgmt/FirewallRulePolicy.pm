## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy``
#       *class*  Structure that defines a single address-based firewall rule.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.firewall_rule_policy');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'FirewallRulePolicy::Policy'));
   $self->set_binding_field('key' => 'interface_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
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
# Long#
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
# Policy#
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
# The interface to which this rule applies. An empty string indicates that the rule
#     applies to all interfaces.
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
#     applies to all interfaces.
#
sub set_interface_name {
   my ($self, %args) = @_;
   $self->{'interface_name'} = $args{'interface_name'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy::Policy
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy::Policy``
#       *enumerated type*  Defines firewall rule policies.
#
#
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy::Policy::IGNORE #
#Drop packet with correpsonding address.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy::Policy::ACCEPT #
#Allow packet with corresponding address.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy::Policy::REJECT #
#Drop packet with corresponding address sending destination is not reachable.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy::Policy::RETURN #
#Apply default or port-specific rules to packet with corresponding address.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy::Policy;

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
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy::Policy enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.firewall_rule_policy.policy',
                           'binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::FirewallRulePolicy::Policy');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


