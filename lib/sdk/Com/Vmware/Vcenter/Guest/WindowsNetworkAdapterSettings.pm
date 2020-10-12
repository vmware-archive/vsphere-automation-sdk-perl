## @class Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings
#
#
# The  ``Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings``   *class* 
#     specifies Windows specific Network settings for a virtual network adapter. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{dns_servers} = $args{'dns_servers'};
   $self->{dns_domain} = $args{'dns_domain'};
   $self->{wins_servers} = $args{'wins_servers'};
   $self->{net_BIOS_mode} = $args{'net_BIOS_mode'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.windows_network_adapter_settings');
   $self->set_binding_field('key' => 'dns_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'dns_domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'wins_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'net_BIOS_mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'WindowsNetworkAdapterSettings::NetBIOSMode')));
   bless $self, $class;
   return $self;
}

## @method get_dns_servers ()
# Gets the value of 'dns_servers' property.
#
# @retval dns_servers - The current value of the field.
# A list of server IP addresses to use for DNS lookup in a Windows guest operating
#     system. <p>
# 
# These servers should be specified in the order of preference. If this list is not
#     empty, and if a DHCP IP address is used, then these settings override the DHCP
#     settings.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_dns_servers {
   my ($self, %args) = @_;
   return $self->{'dns_servers'}; 	
}

## @method set_dns_servers ()
# Sets the given value for 'dns_servers' property.
# 
# @param dns_servers  - New value for the field.
# A list of server IP addresses to use for DNS lookup in a Windows guest operating
#     system. <p>
# 
# These servers should be specified in the order of preference. If this list is not
#     empty, and if a DHCP IP address is used, then these settings override the DHCP
#     settings.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_dns_servers {
   my ($self, %args) = @_;
   $self->{'dns_servers'} = $args{'dns_servers'}; 
   return;	
}

## @method get_dns_domain ()
# Gets the value of 'dns_domain' property.
#
# @retval dns_domain - The current value of the field.
# A DNS domain suffix such as vmware.com. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Optional#
sub get_dns_domain {
   my ($self, %args) = @_;
   return $self->{'dns_domain'}; 	
}

## @method set_dns_domain ()
# Sets the given value for 'dns_domain' property.
# 
# @param dns_domain  - New value for the field.
# A DNS domain suffix such as vmware.com. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_dns_domain {
   my ($self, %args) = @_;
   $self->{'dns_domain'} = $args{'dns_domain'}; 
   return;	
}

## @method get_wins_servers ()
# Gets the value of 'wins_servers' property.
#
# @retval wins_servers - The current value of the field.
# List of WINS Servers to set for the Windows guest operating system. A Maximum of two
#     IP addresses can be specified in this list. The first IP address will be set as the
#     primary WINS server. The second IP address will be set as the secondary WINS server.
#     This  *field*  was added in vSphere API 7.0.0.0.
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
# List of WINS Servers to set for the Windows guest operating system. A Maximum of two
#     IP addresses can be specified in this list. The first IP address will be set as the
#     primary WINS server. The second IP address will be set as the secondary WINS server.
#     This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_wins_servers {
   my ($self, %args) = @_;
   $self->{'wins_servers'} = $args{'wins_servers'}; 
   return;	
}

## @method get_net_BIOS_mode ()
# Gets the value of 'net_BIOS_mode' property.
#
# @retval net_BIOS_mode - The current value of the field.
# NetBIOS setting for Windows. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_net_BIOS_mode {
   my ($self, %args) = @_;
   return $self->{'net_BIOS_mode'}; 	
}

## @method set_net_BIOS_mode ()
# Sets the given value for 'net_BIOS_mode' property.
# 
# @param net_BIOS_mode  - New value for the field.
# NetBIOS setting for Windows. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_net_BIOS_mode {
   my ($self, %args) = @_;
   $self->{'net_BIOS_mode'} = $args{'net_BIOS_mode'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings::NetBIOSMode
#
# The  ``Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings::NetBIOSMode``  
#     *enumerated type*  specifies different NetBIOS settings for Windows guest operating
#     systems. This  *enumeration*  was added in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings::NetBIOSMode::USE_DHCP #
#DHCP server decides whether or not to use NetBIOS. This  *constant*  was added in vSphere
# API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings::NetBIOSMode::ENABLE #
#Always use NetBIOS. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings::NetBIOSMode::DISABLE #
#Never use NetBIOS. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings::NetBIOSMode;

use constant {
    USE_DHCP =>  'USE_DHCP',
    ENABLE =>  'ENABLE',
    DISABLE =>  'DISABLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings::NetBIOSMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.guest.windows_network_adapter_settings.net_BIOS_mode',
                           'binding_class' => 'Com::Vmware::Vcenter::Guest::WindowsNetworkAdapterSettings::NetBIOSMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


