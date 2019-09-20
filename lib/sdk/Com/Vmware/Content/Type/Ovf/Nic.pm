## @class Com::Vmware::Content::Type::Ovf::Nic
#
#
# Provide NIC information in a VM template

package Com::Vmware::Content::Type::Ovf::Nic;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::Nic structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{network_name} = $args{'network_name'};
   $self->{mac_address} = $args{'mac_address'};
   $self->{start_connected} = $args{'start_connected'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::Nic');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.nic');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'network_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'mac_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of NIC
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of NIC
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_network_name ()
# Gets the value of 'network_name' property.
#
# @retval network_name - The current value of the field.
# Name of the network that this NIC connects to
#
# Optional#
sub get_network_name {
   my ($self, %args) = @_;
   return $self->{'network_name'}; 	
}

## @method set_network_name ()
# Sets the given value for 'network_name' property.
# 
# @param network_name  - New value for the field.
# Name of the network that this NIC connects to
#
sub set_network_name {
   my ($self, %args) = @_;
   $self->{'network_name'} = $args{'network_name'}; 
   return;	
}

## @method get_mac_address ()
# Gets the value of 'mac_address' property.
#
# @retval mac_address - The current value of the field.
# Mac address of this NIC
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
# Mac address of this NIC
#
sub set_mac_address {
   my ($self, %args) = @_;
   $self->{'mac_address'} = $args{'mac_address'}; 
   return;	
}

## @method get_start_connected ()
# Gets the value of 'start_connected' property.
#
# @retval start_connected - The current value of the field.
# True if this nic will be connected on start.
#
# Optional#
sub get_start_connected {
   my ($self, %args) = @_;
   return $self->{'start_connected'}; 	
}

## @method set_start_connected ()
# Sets the given value for 'start_connected' property.
# 
# @param start_connected  - New value for the field.
# True if this nic will be connected on start.
#
sub set_start_connected {
   my ($self, %args) = @_;
   $self->{'start_connected'} = $args{'start_connected'}; 
   return;	
}


1;


