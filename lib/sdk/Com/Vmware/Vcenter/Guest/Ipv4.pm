## @class Com::Vmware::Vcenter::Guest::Ipv4
#
#
# The  ``Com::Vmware::Vcenter::Guest::Ipv4``   *class*  specifies the IPv4 settings that
#     need to be applied to a virtual network adapter. This  *class*  was added in vSphere
#     API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::Ipv4;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::Ipv4 structure
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
               'STATIC' => ['ip_address', 'prefix'],
               'DHCP' => [],
               'USER_INPUT_REQUIRED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{ip_address} = $args{'ip_address'};
   $self->{prefix} = $args{'prefix'};
   $self->{gateways} = $args{'gateways'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::Ipv4');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.ipv4');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'Ipv4::Type'));
   $self->set_binding_field('key' => 'ip_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'gateways', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of the IPv4 configuration. This  *field*  was added in vSphere API 7.0.0.0.
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
# The type of the IPv4 configuration. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_ip_address ()
# Gets the value of 'ip_address' property.
#
# @retval ip_address - The current value of the field.
# The static IPv4 address. This  *field*  was added in vSphere API 7.0.0.0.
#
# optional#
sub get_ip_address {
   my ($self, %args) = @_;
   return $self->{'ip_address'}; 	
}

## @method set_ip_address ()
# Sets the given value for 'ip_address' property.
# 
# @param ip_address  - New value for the field.
# The static IPv4 address. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_ip_address {
   my ($self, %args) = @_;
   $self->{'ip_address'} = $args{'ip_address'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# The IPv4 CIDR prefix, for example, 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. This  *field*  was added in vSphere API 7.0.0.0.
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
# The IPv4 CIDR prefix, for example, 24. See http://www.oav.net/mirrors/cidr.html for
#     netmask-to-prefix conversion. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}

## @method get_gateways ()
# Gets the value of 'gateways' property.
#
# @retval gateways - The current value of the field.
# Gateways for the IPv4 address. This  *field*  was added in vSphere API 7.0.0.0.
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
# Gateways for the IPv4 address. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_gateways {
   my ($self, %args) = @_;
   $self->{'gateways'} = $args{'gateways'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::Ipv4::Type
#
# The  ``Com::Vmware::Vcenter::Guest::Ipv4::Type``   *enumerated type*  specifies
#     different types of the IPv4 configuration. This  *enumeration*  was added in vSphere
#     API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Guest::Ipv4::Type::DHCP #
#DHCP configuration. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::Ipv4::Type::STATIC #
#Static configuration. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::Ipv4::Type::USER_INPUT_REQUIRED #
#Indicates that the IPv4 settings are not specified in advance. The user must provide a
# valid value when the actual customization spec is applied to a virtual machine. This 
# *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Guest::Ipv4::Type;

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
# Constructor to initialize the Com::Vmware::Vcenter::Guest::Ipv4::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.guest.ipv4.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Guest::Ipv4::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


