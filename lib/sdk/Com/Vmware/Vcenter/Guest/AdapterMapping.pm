## @class Com::Vmware::Vcenter::Guest::AdapterMapping
#
#
# The  ``Com::Vmware::Vcenter::Guest::AdapterMapping``   *class*  specifies the
#     association between a virtual network adapter and its IP settings. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Guest::AdapterMapping;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::AdapterMapping structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{mac_address} = $args{'mac_address'};
   $self->{adapter} = $args{'adapter'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::AdapterMapping');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.adapter_mapping');
   $self->set_binding_field('key' => 'mac_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'adapter', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'IPSettings'));
   bless $self, $class;
   return $self;
}

## @method get_mac_address ()
# Gets the value of 'mac_address' property.
#
# @retval mac_address - The current value of the field.
# The MAC address of a network adapter being customized. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Optional#
sub get_mac_address {
   my ($self, %args) = @_;
   return $self->{'mac_address'}; 	
}

## @method set_mac_address ()
# Sets the given value for 'mac_address' property.
# 
# @param mac_address  - New value for the field.
# The MAC address of a network adapter being customized. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_mac_address {
   my ($self, %args) = @_;
   $self->{'mac_address'} = $args{'mac_address'}; 
   return;	
}

## @method get_adapter ()
# Gets the value of 'adapter' property.
#
# @retval adapter - The current value of the field.
# The IP settings for the associated virtual network adapter. This  *field*  was added
#     in vSphere API 7.0.0.
#
# IPSettings#
sub get_adapter {
   my ($self, %args) = @_;
   return $self->{'adapter'}; 	
}

## @method set_adapter ()
# Sets the given value for 'adapter' property.
# 
# @param adapter  - New value for the field.
# The IP settings for the associated virtual network adapter. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_adapter {
   my ($self, %args) = @_;
   $self->{'adapter'} = $args{'adapter'}; 
   return;	
}


1;


