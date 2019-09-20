## @class Com::Vmware::Vcenter::Lcm::EsxInventory
#
#
# Configuration of ESX&apos;s inventory.

package Com::Vmware::Vcenter::Lcm::EsxInventory;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::EsxInventory structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore_name} = $args{'datastore_name'};
   $self->{network_name} = $args{'network_name'};
   $self->{resource_pool_path} = $args{'resource_pool_path'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::EsxInventory');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.esx_inventory');
   $self->set_binding_field('key' => 'datastore_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'network_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_datastore_name ()
# Gets the value of 'datastore_name' property.
#
# @retval datastore_name - The current value of the field.
# The datastore on which to store the files of the appliance. This value has to be
#     either a specific datastore name, or a specific datastore in a datastore cluster. The
#     datastore must be accessible from the ESX host and must have at least 25 GB of free
#     space. Otherwise, the new appliance might not power on.
#
# String#
sub get_datastore_name {
   my ($self, %args) = @_;
   return $self->{'datastore_name'}; 	
}

## @method set_datastore_name ()
# Sets the given value for 'datastore_name' property.
# 
# @param datastore_name  - New value for the field.
# The datastore on which to store the files of the appliance. This value has to be
#     either a specific datastore name, or a specific datastore in a datastore cluster. The
#     datastore must be accessible from the ESX host and must have at least 25 GB of free
#     space. Otherwise, the new appliance might not power on.
#
sub set_datastore_name {
   my ($self, %args) = @_;
   $self->{'datastore_name'} = $args{'datastore_name'}; 
   return;	
}

## @method get_network_name ()
# Gets the value of 'network_name' property.
#
# @retval network_name - The current value of the field.
# The network of the ESX host to which the new appliance should connect. Omit this
#     parameter if the ESX host has one network.
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
# The network of the ESX host to which the new appliance should connect. Omit this
#     parameter if the ESX host has one network.
#
sub set_network_name {
   my ($self, %args) = @_;
   $self->{'network_name'} = $args{'network_name'}; 
   return;	
}

## @method get_resource_pool_path ()
# Gets the value of 'resource_pool_path' property.
#
# @retval resource_pool_path - The current value of the field.
# The path to the resource pool on the ESX host in which the appliance will be deployed.
#
# Optional#
sub get_resource_pool_path {
   my ($self, %args) = @_;
   return $self->{'resource_pool_path'}; 	
}

## @method set_resource_pool_path ()
# Sets the given value for 'resource_pool_path' property.
# 
# @param resource_pool_path  - New value for the field.
# The path to the resource pool on the ESX host in which the appliance will be deployed.
#
sub set_resource_pool_path {
   my ($self, %args) = @_;
   $self->{'resource_pool_path'} = $args{'resource_pool_path'}; 
   return;	
}


1;


