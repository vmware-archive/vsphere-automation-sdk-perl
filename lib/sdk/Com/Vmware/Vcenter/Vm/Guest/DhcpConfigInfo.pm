## @class Com::Vmware::Vcenter::Vm::Guest::DhcpConfigInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::DhcpConfigInfo``   *class*  specifies when
#     Dynamic Host Configuration Protocol is enabled. This  *class*  was added in vSphere
#     API 7.0.0.0.

package Com::Vmware::Vcenter::Vm::Guest::DhcpConfigInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::DhcpConfigInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ipv4_enabled} = $args{'ipv4_enabled'};
   $self->{ipv6_enabled} = $args{'ipv6_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::DhcpConfigInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.dhcp_config_info');
   $self->set_binding_field('key' => 'ipv4_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'ipv6_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_ipv4_enabled ()
# Gets the value of 'ipv4_enabled' property.
#
# @retval ipv4_enabled - The current value of the field.
# True if IPv4 DHCP is enabled, false otherwise. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# boolean#
sub get_ipv4_enabled {
   my ($self, %args) = @_;
   return $self->{'ipv4_enabled'}; 	
}

## @method set_ipv4_enabled ()
# Sets the given value for 'ipv4_enabled' property.
# 
# @param ipv4_enabled  - New value for the field.
# True if IPv4 DHCP is enabled, false otherwise. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_ipv4_enabled {
   my ($self, %args) = @_;
   $self->{'ipv4_enabled'} = $args{'ipv4_enabled'}; 
   return;	
}

## @method get_ipv6_enabled ()
# Gets the value of 'ipv6_enabled' property.
#
# @retval ipv6_enabled - The current value of the field.
# True if IPv6 DHCP is enabled, false otherwise. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# boolean#
sub get_ipv6_enabled {
   my ($self, %args) = @_;
   return $self->{'ipv6_enabled'}; 	
}

## @method set_ipv6_enabled ()
# Sets the given value for 'ipv6_enabled' property.
# 
# @param ipv6_enabled  - New value for the field.
# True if IPv6 DHCP is enabled, false otherwise. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_ipv6_enabled {
   my ($self, %args) = @_;
   $self->{'ipv6_enabled'} = $args{'ipv6_enabled'}; 
   return;	
}


1;


