## @class Com::Vmware::Vcenter::Lcm::Vc
#
#
# Configuration of the VC that hosts/will host an appliance.

package Com::Vmware::Vcenter::Lcm::Vc;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Vc structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Vc');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.vc');
   $self->set_binding_field('key' => 'connection', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   $self->set_binding_field('key' => 'inventory', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'VcInventory'));
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
# All names are case-sensitive. you can install the appliance to one of the following
#     destinations: 1. A resource pool in a cluster, use &apos;cluster_path&apos;. 2. A
#     specific ESX host in a cluster, use &apos;host_path&apos;. 3. A resource pool in a
#     specific ESX host being managed by the current vCenter, use
#     &apos;resource_pool_path&apos;. You must always provide the &apos;network_name&apos;
#     key. To install a new appliance to a specific ESX host in a cluster, provide the
#     &apos;host_path&apos; key, and the &apos;datastore_name&apos;, e.g.
#     &apos;host_path&apos;: &apos;/MyDataCenter/host/MyCluster/10.20.30.40&apos;,
#     &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To install a new appliance to
#     a specific resource pool, provide the &apos;resource_pool_path&apos;, and the
#     &apos;datastore_name&apos;, e.g. &apos;resource_pool_path&apos;: &apos;/Your
#     Datacenter Folder/Your Datacenter/host/Your Cluster/Resources/Your Resource
#     Pool&apos;, &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To place a new
#     appliance to a virtual machine Folder, provide the &apos;vm_folder_path&apos;, e.g.
#     &apos;vm_folder_path&apos;: &apos;VM Folder 0/VM Folder1&apos;.
#
# VcInventory#
sub get_inventory {
   my ($self, %args) = @_;
   return $self->{'inventory'}; 	
}

## @method set_inventory ()
# Sets the given value for 'inventory' property.
# 
# @param inventory  - New value for the field.
# All names are case-sensitive. you can install the appliance to one of the following
#     destinations: 1. A resource pool in a cluster, use &apos;cluster_path&apos;. 2. A
#     specific ESX host in a cluster, use &apos;host_path&apos;. 3. A resource pool in a
#     specific ESX host being managed by the current vCenter, use
#     &apos;resource_pool_path&apos;. You must always provide the &apos;network_name&apos;
#     key. To install a new appliance to a specific ESX host in a cluster, provide the
#     &apos;host_path&apos; key, and the &apos;datastore_name&apos;, e.g.
#     &apos;host_path&apos;: &apos;/MyDataCenter/host/MyCluster/10.20.30.40&apos;,
#     &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To install a new appliance to
#     a specific resource pool, provide the &apos;resource_pool_path&apos;, and the
#     &apos;datastore_name&apos;, e.g. &apos;resource_pool_path&apos;: &apos;/Your
#     Datacenter Folder/Your Datacenter/host/Your Cluster/Resources/Your Resource
#     Pool&apos;, &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To place a new
#     appliance to a virtual machine Folder, provide the &apos;vm_folder_path&apos;, e.g.
#     &apos;vm_folder_path&apos;: &apos;VM Folder 0/VM Folder1&apos;.
#
sub set_inventory {
   my ($self, %args) = @_;
   $self->{'inventory'} = $args{'inventory'}; 
   return;	
}


1;


