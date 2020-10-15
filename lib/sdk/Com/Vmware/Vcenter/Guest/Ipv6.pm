## @class Com::Vmware::Vcenter::Guest::Ipv6
#
#
# The  ``Com::Vmware::Vcenter::Guest::Ipv6``   *class*  specifies the IPv6 settings that
#     need to be applied to a virtual network adapter. This  *class*  was added in vSphere
#     API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::Ipv6;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::Ipv6 structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'STATIC' => ['ipv6'],
               'DHCP' => [],
               'USER_INPUT_REQUIRED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{ipv6} = $args{'ipv6'};
   $self->{gateways} = $args{'gateways'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::Ipv6');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.ipv6');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'Ipv6::Type'));
   $self->set_binding_field('key' => 'ipv6', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'Ipv6Address'))));
   $self->set_binding_field('key' => 'gateways', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The IPv6 configuration type. This  *field*  was added in vSphere API 7.0.0.0.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The IPv6 configuration type. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_ipv6 ()
# Gets the value of 'ipv6' property.
#
# @retval ipv6 - The current value of the field.
# IPv6 address. This  *field*  was added in vSphere API 7.0.0.0.
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
# IPv6 address. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_ipv6 {
   my ($self, %args) = @_;
   $self->{'ipv6'} = $args{'ipv6'}; 
   return;	
}

## @method get_gateways ()
# Gets the value of 'gateways' property.
#
# @retval gateways - The current value of the field.
# gateways for the IPv6 address. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_gateways {
   my ($self, %args) = @_;
   return $self->{'gateways'}; 	
}

## @method set_gateways ()
# Sets the given value for 'gateways' property.
# 
# @param gateways  - New value for the field.
# gateways for the IPv6 address. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_gateways {
   my ($self, %args) = @_;
   $self->{'gateways'} = $args{'gateways'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::Ipv6::Type
#
# The  ``Com::Vmware::Vcenter::Guest::Ipv6::Type``   *enumerated type*  specifies
#     different types of the IPv6 configuration. This  *enumeration*  was added in vSphere
#     API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Guest::Ipv6::Type::DHCP #
#DHCP IPv6 configuration. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::Ipv6::Type::STATIC #
#Static IPv6 configuration. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::Ipv6::Type::USER_INPUT_REQUIRED #
#Indicates that the IPv6 settings are not specified in advance. The user must provide a
# valid value when the actual customization spec is applied to a virtual machine. This 
# *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::Ipv6::Type;

use constant {
    DHCP =>  'DHCP',
    STATIC =>  'STATIC',
    USER_INPUT_REQUIRED =>  'USER_INPUT_REQUIRED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::Ipv6::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.guest.ipv6.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Guest::Ipv6::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


