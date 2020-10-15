## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration``
#     *class*  This structure represents the configuration state used to determine DNS
#     servers.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration structure
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
   $self->{servers} = $args{'servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.dns_server_configuration');
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'DnsServerConfiguration::DNSServerMode'));
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# Define how to determine the DNS servers. Leave the servers argument empty if the mode
#     argument is &quot;DHCP&quot;. Set the servers argument to a comma-separated list of
#     DNS servers if the mode argument is &quot;static&quot;. The DNS server are assigned
#     from the specified list.
#
# DNSServerMode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# Define how to determine the DNS servers. Leave the servers argument empty if the mode
#     argument is &quot;DHCP&quot;. Set the servers argument to a comma-separated list of
#     DNS servers if the mode argument is &quot;static&quot;. The DNS server are assigned
#     from the specified list.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# List of the currently used DNS servers. DNS server configuration.
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
# List of the currently used DNS servers. DNS server configuration.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration::DNSServerMode
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration::DNSServerMode``
#       *enumerated type*  Describes DNS Server source (DHCP,static).
#
#
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration::DNSServerMode::DHCP #
#DNS address is automatically assigned by a DHCP server.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration::DNSServerMode::STATIC #
#DNS address is static.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration::DNSServerMode;

use constant {
    DHCP =>  'DHCP',
    STATIC =>  'STATIC',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration::DNSServerMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.dns_server_configuration.DNS_server_mode',
                           'binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::DnsServerConfiguration::DNSServerMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


