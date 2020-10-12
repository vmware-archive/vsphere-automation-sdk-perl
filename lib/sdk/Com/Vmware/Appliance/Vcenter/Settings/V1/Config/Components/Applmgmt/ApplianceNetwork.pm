## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceNetwork
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceNetwork``
#     *class*  This structure contains the Spec required for Appliance Network
#     configurations.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceNetwork;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceNetwork structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{firewall_rule_policies} = $args{'firewall_rule_policies'};
   $self->{dns_server_configuration} = $args{'dns_server_configuration'};
   $self->{proxy_configuration} = $args{'proxy_configuration'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceNetwork');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.appliance_network');
   $self->set_binding_field('key' => 'firewall_rule_policies', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'FirewallRulePolicy'))));
   $self->set_binding_field('key' => 'dns_server_configuration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'DnsServerConfiguration')));
   $self->set_binding_field('key' => 'proxy_configuration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'ProxyConfiguration'))));
   bless $self, $class;
   return $self;
}

## @method get_firewall_rule_policies ()
# Gets the value of 'firewall_rule_policies' property.
#
# @retval firewall_rule_policies - The current value of the field.
# List of Firewall Rules to be applied.
#
# Optional#
sub get_firewall_rule_policies {
   my ($self, %args) = @_;
   return $self->{'firewall_rule_policies'}; 	
}

## @method set_firewall_rule_policies ()
# Sets the given value for 'firewall_rule_policies' property.
# 
# @param firewall_rule_policies  - New value for the field.
# List of Firewall Rules to be applied.
#
sub set_firewall_rule_policies {
   my ($self, %args) = @_;
   $self->{'firewall_rule_policies'} = $args{'firewall_rule_policies'}; 
   return;	
}

## @method get_dns_server_configuration ()
# Gets the value of 'dns_server_configuration' property.
#
# @retval dns_server_configuration - The current value of the field.
# DNS configuration to be applied.
#
# Optional#
sub get_dns_server_configuration {
   my ($self, %args) = @_;
   return $self->{'dns_server_configuration'}; 	
}

## @method set_dns_server_configuration ()
# Sets the given value for 'dns_server_configuration' property.
# 
# @param dns_server_configuration  - New value for the field.
# DNS configuration to be applied.
#
sub set_dns_server_configuration {
   my ($self, %args) = @_;
   $self->{'dns_server_configuration'} = $args{'dns_server_configuration'}; 
   return;	
}

## @method get_proxy_configuration ()
# Gets the value of 'proxy_configuration' property.
#
# @retval proxy_configuration - The current value of the field.
# Proxy configuration to be applied.
#
# Optional#
sub get_proxy_configuration {
   my ($self, %args) = @_;
   return $self->{'proxy_configuration'}; 	
}

## @method set_proxy_configuration ()
# Sets the given value for 'proxy_configuration' property.
# 
# @param proxy_configuration  - New value for the field.
# Proxy configuration to be applied.
#
sub set_proxy_configuration {
   my ($self, %args) = @_;
   $self->{'proxy_configuration'} = $args{'proxy_configuration'}; 
   return;	
}


1;


