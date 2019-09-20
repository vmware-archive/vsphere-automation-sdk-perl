## @class Com::Vmware::Vcenter::Lcm::VcInventory
#
#
# Inventory information about a VCenter.

package Com::Vmware::Vcenter::Lcm::VcInventory;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::VcInventory structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm_folder_path} = $args{'vm_folder_path'};
   $self->{resource_pool_path} = $args{'resource_pool_path'};
   $self->{cluster_path} = $args{'cluster_path'};
   $self->{host_path} = $args{'host_path'};
   $self->{datastore_name} = $args{'datastore_name'};
   $self->{datastore_cluster_name} = $args{'datastore_cluster_name'};
   $self->{network_name} = $args{'network_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::VcInventory');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.vc_inventory');
   $self->set_binding_field('key' => 'vm_folder_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'datastore_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'datastore_cluster_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'network_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_vm_folder_path ()
# Gets the value of 'vm_folder_path' property.
#
# @retval vm_folder_path - The current value of the field.
# Path of the VM folder. VM folder must be visible by the Data Center of the compute
#     resourceFormat:{vm_folder1}/{vm_folder2}e.g.:&apos;VM Folder 0/VM Folder1&apos;.
#
# Optional#
sub get_vm_folder_path {
   my ($self, %args) = @_;
   return $self->{'vm_folder_path'}; 	
}

## @method set_vm_folder_path ()
# Sets the given value for 'vm_folder_path' property.
# 
# @param vm_folder_path  - New value for the field.
# Path of the VM folder. VM folder must be visible by the Data Center of the compute
#     resourceFormat:{vm_folder1}/{vm_folder2}e.g.:&apos;VM Folder 0/VM Folder1&apos;.
#
sub set_vm_folder_path {
   my ($self, %args) = @_;
   $self->{'vm_folder_path'} = $args{'vm_folder_path'}; 
   return;	
}

## @method get_resource_pool_path ()
# Gets the value of 'resource_pool_path' property.
#
# @retval resource_pool_path - The current value of the field.
# Full path to resource pool. Format: /{datacenter folder}/{datacenter name}/host/{host
#     name}/{cluster_name}/Resources/{resource pool}. e.g: Your Datacenter Folder/Your
#     Datacenter/host/Your Cluster/Resources/Your Resource Pool
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
# Full path to resource pool. Format: /{datacenter folder}/{datacenter name}/host/{host
#     name}/{cluster_name}/Resources/{resource pool}. e.g: Your Datacenter Folder/Your
#     Datacenter/host/Your Cluster/Resources/Your Resource Pool
#
sub set_resource_pool_path {
   my ($self, %args) = @_;
   $self->{'resource_pool_path'} = $args{'resource_pool_path'}; 
   return;	
}

## @method get_cluster_path ()
# Gets the value of 'cluster_path' property.
#
# @retval cluster_path - The current value of the field.
# Full path to the cluster. Format: /{datacenter folder}/{datacenter
#     name}/host/{cluster_name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your
#     Cluster
#
# Optional#
sub get_cluster_path {
   my ($self, %args) = @_;
   return $self->{'cluster_path'}; 	
}

## @method set_cluster_path ()
# Sets the given value for 'cluster_path' property.
# 
# @param cluster_path  - New value for the field.
# Full path to the cluster. Format: /{datacenter folder}/{datacenter
#     name}/host/{cluster_name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your
#     Cluster
#
sub set_cluster_path {
   my ($self, %args) = @_;
   $self->{'cluster_path'} = $args{'cluster_path'}; 
   return;	
}

## @method get_host_path ()
# Gets the value of 'host_path' property.
#
# @retval host_path - The current value of the field.

#
# Optional#
sub get_host_path {
   my ($self, %args) = @_;
   return $self->{'host_path'}; 	
}

## @method set_host_path ()
# Sets the given value for 'host_path' property.
# 
# @param host_path  - New value for the field.

#
sub set_host_path {
   my ($self, %args) = @_;
   $self->{'host_path'} = $args{'host_path'}; 
   return;	
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
# Optional#
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

## @method get_datastore_cluster_name ()
# Gets the value of 'datastore_cluster_name' property.
#
# @retval datastore_cluster_name - The current value of the field.
# The datastore cluster on which to store the files of the appliance.
#
# Optional#
sub get_datastore_cluster_name {
   my ($self, %args) = @_;
   return $self->{'datastore_cluster_name'}; 	
}

## @method set_datastore_cluster_name ()
# Sets the given value for 'datastore_cluster_name' property.
# 
# @param datastore_cluster_name  - New value for the field.
# The datastore cluster on which to store the files of the appliance.
#
sub set_datastore_cluster_name {
   my ($self, %args) = @_;
   $self->{'datastore_cluster_name'} = $args{'datastore_cluster_name'}; 
   return;	
}

## @method get_network_name ()
# Gets the value of 'network_name' property.
#
# @retval network_name - The current value of the field.
# Name of the network. e.g. VM Network
#
# String#
sub get_network_name {
   my ($self, %args) = @_;
   return $self->{'network_name'}; 	
}

## @method set_network_name ()
# Sets the given value for 'network_name' property.
# 
# @param network_name  - New value for the field.
# Name of the network. e.g. VM Network
#
sub set_network_name {
   my ($self, %args) = @_;
   $self->{'network_name'} = $args{'network_name'}; 
   return;	
}


1;


