## @class Com::Vmware::Vcenter::Guest::IPSettings
#
#
# The  ``Com::Vmware::Vcenter::Guest::IPSettings``   *class*  specifies the IP settings
#     for a virtual network adapter. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::IPSettings;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::IPSettings structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ipv4} = $args{'ipv4'};
   $self->{ipv6} = $args{'ipv6'};
   $self->{windows} = $args{'windows'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::IPSettings');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.IP_settings');
   $self->set_binding_field('key' => 'ipv4', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'Ipv4')));
   $self->set_binding_field('key' => 'ipv6', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'Ipv6')));
   $self->set_binding_field('key' => 'windows', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'WindowsNetworkAdapterSettings')));
   bless $self, $class;
   return $self;
}

## @method get_ipv4 ()
# Gets the value of 'ipv4' property.
#
# @retval ipv4 - The current value of the field.
# Specification to configure IPv4 address, subnet mask and gateway info for this virtual
#     network adapter. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_ipv4 {
   my ($self, %args) = @_;
   return $self->{'ipv4'}; 	
}

## @method set_ipv4 ()
# Sets the given value for 'ipv4' property.
# 
# @param ipv4  - New value for the field.
# Specification to configure IPv4 address, subnet mask and gateway info for this virtual
#     network adapter. This  *field*  was added in vSphere API 7.0.0.0.
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
# Specification to configure IPv6 address, subnet mask and gateway info for this virtual
#     network adapter. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_ipv6 {
   my ($self, %args) = @_;
   return $self->{'ipv6'}; 	
}

## @method set_ipv6 ()
# Sets the given value for 'ipv6' property.
# 
# @param ipv6  - New value for the field.
# Specification to configure IPv6 address, subnet mask and gateway info for this virtual
#     network adapter. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_ipv6 {
   my ($self, %args) = @_;
   $self->{'ipv6'} = $args{'ipv6'}; 
   return;	
}

## @method get_windows ()
# Gets the value of 'windows' property.
#
# @retval windows - The current value of the field.
# Windows settings to be configured for this specific virtual Network adapter. This is
#     valid only for Windows guest operating systems. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
# Optional#
sub get_windows {
   my ($self, %args) = @_;
   return $self->{'windows'}; 	
}

## @method set_windows ()
# Sets the given value for 'windows' property.
# 
# @param windows  - New value for the field.
# Windows settings to be configured for this specific virtual Network adapter. This is
#     valid only for Windows guest operating systems. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
sub set_windows {
   my ($self, %args) = @_;
   $self->{'windows'} = $args{'windows'}; 
   return;	
}


1;


