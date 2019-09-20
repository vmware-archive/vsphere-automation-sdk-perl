## @class Com::Vmware::Vcenter::Lcm::Esx
#
#
# Configuration of ESX.

package Com::Vmware::Vcenter::Lcm::Esx;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Esx structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{connection} = $args{'connection'};
   $self->{inventory} = $args{'inventory'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Esx');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.esx');
   $self->set_binding_field('key' => 'connection', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   $self->set_binding_field('key' => 'inventory', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'EsxInventory'));
   bless $self, $class;
   return $self;
}

## @method get_connection ()
# Gets the value of 'connection' property.
#
# @retval connection - The current value of the field.
# The configuration to connect to an ESX/VC.
#
# Connection#
sub get_connection {
   my ($self, %args) = @_;
   return $self->{'connection'}; 	
}

## @method set_connection ()
# Sets the given value for 'connection' property.
# 
# @param connection  - New value for the field.
# The configuration to connect to an ESX/VC.
#
sub set_connection {
   my ($self, %args) = @_;
   $self->{'connection'} = $args{'connection'}; 
   return;	
}

## @method get_inventory ()
# Gets the value of 'inventory' property.
#
# @retval inventory - The current value of the field.
# The configuration of ESX inventory.
#
# EsxInventory#
sub get_inventory {
   my ($self, %args) = @_;
   return $self->{'inventory'}; 	
}

## @method set_inventory ()
# Sets the given value for 'inventory' property.
# 
# @param inventory  - New value for the field.
# The configuration of ESX inventory.
#
sub set_inventory {
   my ($self, %args) = @_;
   $self->{'inventory'} = $args{'inventory'}; 
   return;	
}


1;


