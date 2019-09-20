## @class Com::Vmware::Vcenter::Vcha::IpSpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::IpSpec``   *class*  contains IP information used to
#     configure a network interface. This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::IpSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::IpSpec structure
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
         'discriminant_name' => 'ip_family',
         'case_map' => {
               'IPV4' => ['ipv4'],
               'IPV6' => ['ipv6'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ip_family} = $args{'ip_family'};
   $self->{ipv4} = $args{'ipv4'};
   $self->{ipv6} = $args{'ipv6'};
   $self->{default_gateway} = $args{'default_gateway'};
   $self->{dns_servers} = $args{'dns_servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::IpSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.ip_spec');
   $self->set_binding_field('key' => 'ip_family', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'IpFamily'));
   $self->set_binding_field('key' => 'ipv4', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Ipv4Spec')));
   $self->set_binding_field('key' => 'ipv6', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'Ipv6Spec')));
   $self->set_binding_field('key' => 'default_gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'dns_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_ip_family ()
# Gets the value of 'ip_family' property.
#
# @retval ip_family - The current value of the field.
# Family of the IP address to configure the interface. This  *field*  was added in
#     vSphere API 6.7.1.
#
# IpFamily#
sub get_ip_family {
   my ($self, %args) = @_;
   return $self->{'ip_family'}; 	
}

## @method set_ip_family ()
# Sets the given value for 'ip_family' property.
# 
# @param ip_family  - New value for the field.
# Family of the IP address to configure the interface. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_ip_family {
   my ($self, %args) = @_;
   $self->{'ip_family'} = $args{'ip_family'}; 
   return;	
}

## @method get_ipv4 ()
# Gets the value of 'ipv4' property.
#
# @retval ipv4 - The current value of the field.
# If the family of the ip is IPV4, then this will point to IPv4 address specification.
#     This  *field*  was added in vSphere API 6.7.1.
#
# optional#
sub get_ipv4 {
   my ($self, %args) = @_;
   return $self->{'ipv4'}; 	
}

## @method set_ipv4 ()
# Sets the given value for 'ipv4' property.
# 
# @param ipv4  - New value for the field.
# If the family of the ip is IPV4, then this will point to IPv4 address specification.
#     This  *field*  was added in vSphere API 6.7.1.
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
# If the family of the ip is IPV6, then this will point to IPv6 address specification.
#     This  *field*  was added in vSphere API 6.7.1.
#
# optional#
sub get_ipv6 {
   my ($self, %args) = @_;
   return $self->{'ipv6'}; 	
}

## @method set_ipv6 ()
# Sets the given value for 'ipv6' property.
# 
# @param ipv6  - New value for the field.
# If the family of the ip is IPV6, then this will point to IPv6 address specification.
#     This  *field*  was added in vSphere API 6.7.1.
#
sub set_ipv6 {
   my ($self, %args) = @_;
   $self->{'ipv6'} = $args{'ipv6'}; 
   return;	
}

## @method get_default_gateway ()
# Gets the value of 'default_gateway' property.
#
# @retval default_gateway - The current value of the field.
# The IP address of the Gateway for this interface. This  *field*  was added in vSphere
#     API 6.7.1.
#
# Optional#
sub get_default_gateway {
   my ($self, %args) = @_;
   return $self->{'default_gateway'}; 	
}

## @method set_default_gateway ()
# Sets the given value for 'default_gateway' property.
# 
# @param default_gateway  - New value for the field.
# The IP address of the Gateway for this interface. This  *field*  was added in vSphere
#     API 6.7.1.
#
sub set_default_gateway {
   my ($self, %args) = @_;
   $self->{'default_gateway'} = $args{'default_gateway'}; 
   return;	
}

## @method get_dns_servers ()
# Gets the value of 'dns_servers' property.
#
# @retval dns_servers - The current value of the field.
# The list of IP addresses of the DNS servers for this interface. This list is a comma
#     separated list. This  *field*  was added in vSphere API 6.7.1.
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
# The list of IP addresses of the DNS servers for this interface. This list is a comma
#     separated list. This  *field*  was added in vSphere API 6.7.1.
#
sub set_dns_servers {
   my ($self, %args) = @_;
   $self->{'dns_servers'} = $args{'dns_servers'}; 
   return;	
}


1;


