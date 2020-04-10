## @class Com::Vmware::Vcenter::Guest::GlobalDNSSettings
#
#
# The  ``Com::Vmware::Vcenter::Guest::GlobalDNSSettings``   *class*  specifies a
#     collection of global IP settings in the guest operating system. In Linux, DNS server
#     settings are global. The settings can either be statically set or supplied by a DHCP
#     server. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Guest::GlobalDNSSettings;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::GlobalDNSSettings structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{dns_suffix_list} = $args{'dns_suffix_list'};
   $self->{dns_servers} = $args{'dns_servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::GlobalDNSSettings');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.global_DNS_settings');
   $self->set_binding_field('key' => 'dns_suffix_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'dns_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_dns_suffix_list ()
# Gets the value of 'dns_suffix_list' property.
#
# @retval dns_suffix_list - The current value of the field.
# List of name resolution suffixes for the virtual network adapter. This list applies to
#     both Windows and Linux guest customization. For Linux, this setting is global, whereas
#     in Windows, this setting is listed on a per-adapter basis. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Optional#
sub get_dns_suffix_list {
   my ($self, %args) = @_;
   return $self->{'dns_suffix_list'}; 	
}

## @method set_dns_suffix_list ()
# Sets the given value for 'dns_suffix_list' property.
# 
# @param dns_suffix_list  - New value for the field.
# List of name resolution suffixes for the virtual network adapter. This list applies to
#     both Windows and Linux guest customization. For Linux, this setting is global, whereas
#     in Windows, this setting is listed on a per-adapter basis. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_dns_suffix_list {
   my ($self, %args) = @_;
   $self->{'dns_suffix_list'} = $args{'dns_suffix_list'}; 
   return;	
}

## @method get_dns_servers ()
# Gets the value of 'dns_servers' property.
#
# @retval dns_servers - The current value of the field.
# List of DNS servers, for a virtual network adapter with a static IP address. If this
#     list is empty, then the guest operating system is expected to use a DHCP server to get
#     its DNS server settings. These settings configure the virtual machine to use the
#     specified DNS servers. These DNS server settings are listed in the order of
#     preference. This  *field*  was added in vSphere API 7.0.0.
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
# List of DNS servers, for a virtual network adapter with a static IP address. If this
#     list is empty, then the guest operating system is expected to use a DHCP server to get
#     its DNS server settings. These settings configure the virtual machine to use the
#     specified DNS servers. These DNS server settings are listed in the order of
#     preference. This  *field*  was added in vSphere API 7.0.0.
#
sub set_dns_servers {
   my ($self, %args) = @_;
   $self->{'dns_servers'} = $args{'dns_servers'}; 
   return;	
}


1;


