## @class Com::Vmware::Vcenter::Vm::Guest::DnsConfigInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::DnsConfigInfo``   *class*  describes the
#     configuration of RFC 1034 DNS settings. This  *class*  was added in vSphere API
#     7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::DnsConfigInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::DnsConfigInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ip_addresses} = $args{'ip_addresses'};
   $self->{search_domains} = $args{'search_domains'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::DnsConfigInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.dns_config_info');
   $self->set_binding_field('key' => 'ip_addresses', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'search_domains', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_ip_addresses ()
# Gets the value of 'ip_addresses' property.
#
# @retval ip_addresses - The current value of the field.
# The IP addresses of the DNS servers in order of use. IPv4 addresses are specified
#     using dotted decimal notation. For example, &quot;192.0.2.1&quot;. IPv6 addresses are
#     128-bit addresses represented as eight fields of up to four hexadecimal digits. A
#     colon separates each field (:). For example, 2001:DB8:101::230:6eff:fe04:d9ff. The
#     address can also consist of the symbol &apos;::&apos; to represent multiple 16-bit
#     groups of contiguous 0&apos;s only once in an address as described in RFC 2373. This 
#     *field*  was added in vSphere API 7.0.0.0.
#
# List#
sub get_ip_addresses {
   my ($self, %args) = @_;
   return $self->{'ip_addresses'}; 	
}

## @method set_ip_addresses ()
# Sets the given value for 'ip_addresses' property.
# 
# @param ip_addresses  - New value for the field.
# The IP addresses of the DNS servers in order of use. IPv4 addresses are specified
#     using dotted decimal notation. For example, &quot;192.0.2.1&quot;. IPv6 addresses are
#     128-bit addresses represented as eight fields of up to four hexadecimal digits. A
#     colon separates each field (:). For example, 2001:DB8:101::230:6eff:fe04:d9ff. The
#     address can also consist of the symbol &apos;::&apos; to represent multiple 16-bit
#     groups of contiguous 0&apos;s only once in an address as described in RFC 2373. This 
#     *field*  was added in vSphere API 7.0.0.0.
#
sub set_ip_addresses {
   my ($self, %args) = @_;
   $self->{'ip_addresses'} = $args{'ip_addresses'}; 
   return;	
}

## @method get_search_domains ()
# Gets the value of 'search_domains' property.
#
# @retval search_domains - The current value of the field.
# The domain in which to search for hosts, placed in order of preference. These are the
#     domain name portion of the DNS names. This  *field*  was added in vSphere API 7.0.0.0.
#
# List#
sub get_search_domains {
   my ($self, %args) = @_;
   return $self->{'search_domains'}; 	
}

## @method set_search_domains ()
# Sets the given value for 'search_domains' property.
# 
# @param search_domains  - New value for the field.
# The domain in which to search for hosts, placed in order of preference. These are the
#     domain name portion of the DNS names. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_search_domains {
   my ($self, %args) = @_;
   $self->{'search_domains'} = $args{'search_domains'}; 
   return;	
}


1;


