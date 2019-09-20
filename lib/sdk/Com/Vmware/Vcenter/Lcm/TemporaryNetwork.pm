## @class Com::Vmware::Vcenter::Lcm::TemporaryNetwork
#
#
# Configuration of the temporary network which is used during upgrade/migrate.

package Com::Vmware::Vcenter::Lcm::TemporaryNetwork;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::TemporaryNetwork structure
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
               'STATIC' => ['ip', 'dns_servers', 'prefix', 'gateway'],
               'DHCP' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ip_family} = $args{'ip_family'};
   $self->{mode} = $args{'mode'};
   $self->{ip} = $args{'ip'};
   $self->{dns_servers} = $args{'dns_servers'};
   $self->{prefix} = $args{'prefix'};
   $self->{gateway} = $args{'gateway'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::TemporaryNetwork');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.temporary_network');
   $self->set_binding_field('key' => 'ip_family', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'TemporaryNetwork::IpType')));
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'TemporaryNetwork::NetworkMode'));
   $self->set_binding_field('key' => 'ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'dns_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_ip_family ()
# Gets the value of 'ip_family' property.
#
# @retval ip_family - The current value of the field.
# Network IP address family.
#
# Optional#
sub get_ip_family {
   my ($self, %args) = @_;
   return $self->{'ip_family'}; 	
}

## @method set_ip_family ()
# Sets the given value for 'ip_family' property.
# 
# @param ip_family  - New value for the field.
# Network IP address family.
#
sub set_ip_family {
   my ($self, %args) = @_;
   $self->{'ip_family'} = $args{'ip_family'}; 
   return;	
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# Network mode.
#
# NetworkMode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# Network mode.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}

## @method get_ip ()
# Gets the value of 'ip' property.
#
# @retval ip - The current value of the field.
# Network IP address. Required for static mode only.
#
# optional#
sub get_ip {
   my ($self, %args) = @_;
   return $self->{'ip'}; 	
}

## @method set_ip ()
# Sets the given value for 'ip' property.
# 
# @param ip  - New value for the field.
# Network IP address. Required for static mode only.
#
sub set_ip {
   my ($self, %args) = @_;
   $self->{'ip'} = $args{'ip'}; 
   return;	
}

## @method get_dns_servers ()
# Gets the value of 'dns_servers' property.
#
# @retval dns_servers - The current value of the field.
# A comma-separated list of IP addresses of DNS servers. A JSON array such as
#     [&quot;1.2.3.4&quot;, &quot;127.0.0.1&quot;]. Required for static mode only. DNS
#     servers must be reachable from the machine that runs CLI installer
#
# optional#
sub get_dns_servers {
   my ($self, %args) = @_;
   return $self->{'dns_servers'}; 	
}

## @method set_dns_servers ()
# Sets the given value for 'dns_servers' property.
# 
# @param dns_servers  - New value for the field.
# A comma-separated list of IP addresses of DNS servers. A JSON array such as
#     [&quot;1.2.3.4&quot;, &quot;127.0.0.1&quot;]. Required for static mode only. DNS
#     servers must be reachable from the machine that runs CLI installer
#
sub set_dns_servers {
   my ($self, %args) = @_;
   $self->{'dns_servers'} = $args{'dns_servers'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# Network prefix length. Required for static mode only. Remove if the mode is
#     &quot;dhcp&quot;. This is the number of bits set in the subnet mask; for instance, if
#     the subnet mask is 255.255.255.0, there are 24 bits in the binary version of the
#     subnet mask, so the prefix length is 24. If used, the values must be in the inclusive
#     range of 0 to 32 for IPv4 and 0 to 128 for IPv6. Required for static mode only.
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
# Network prefix length. Required for static mode only. Remove if the mode is
#     &quot;dhcp&quot;. This is the number of bits set in the subnet mask; for instance, if
#     the subnet mask is 255.255.255.0, there are 24 bits in the binary version of the
#     subnet mask, so the prefix length is 24. If used, the values must be in the inclusive
#     range of 0 to 32 for IPv4 and 0 to 128 for IPv6. Required for static mode only.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}

## @method get_gateway ()
# Gets the value of 'gateway' property.
#
# @retval gateway - The current value of the field.
# Gateway of the network. Required for static mode only.
#
# optional#
sub get_gateway {
   my ($self, %args) = @_;
   return $self->{'gateway'}; 	
}

## @method set_gateway ()
# Sets the given value for 'gateway' property.
# 
# @param gateway  - New value for the field.
# Gateway of the network. Required for static mode only.
#
sub set_gateway {
   my ($self, %args) = @_;
   $self->{'gateway'} = $args{'gateway'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::TemporaryNetwork::IpType
#
# Network IP address family.
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::TemporaryNetwork::IpType::IP_V4 #
#IPv4 Type of IP address.
#
# Constant Com::Vmware::Vcenter::Lcm::TemporaryNetwork::IpType::IP_V6 #
#IPv6 Type of IP address.

package Com::Vmware::Vcenter::Lcm::TemporaryNetwork::IpType;

use constant {
    IPV4 =>  'IPV4',
    IPV6 =>  'IPV6',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::TemporaryNetwork::IpType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.temporary_network.ip_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::TemporaryNetwork::IpType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Lcm::TemporaryNetwork::NetworkMode
#
# Network mode.
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::TemporaryNetwork::NetworkMode::DHCP #
#DHCP mode.
#
# Constant Com::Vmware::Vcenter::Lcm::TemporaryNetwork::NetworkMode::STATIC #
#Static IP mode.

package Com::Vmware::Vcenter::Lcm::TemporaryNetwork::NetworkMode;

use constant {
    DHCP =>  'DHCP',
    STATIC =>  'STATIC',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::TemporaryNetwork::NetworkMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.temporary_network.network_mode',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::TemporaryNetwork::NetworkMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


