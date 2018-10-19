## @class Com::Vmware::Vcenter::Vcha::PlacementInfo
#
#
# The  ``Com::Vmware::Vcenter::Vcha::PlacementInfo``   *class*  contains information to
#     describe the inventory placement of a single node of a VCHA cluster.
# The active node&apos;s management vCenter server credentials are required to populate
#     all  *fields*  except biosUuid. This  *class*  was added in vSphere API 6.7 U1.

package Com::Vmware::Vcenter::Vcha::PlacementInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::PlacementInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{management_vcenter_name} = $args{'management_vcenter_name'};
   $self->{vm_name} = $args{'vm_name'};
   $self->{datacenter} = $args{'datacenter'};
   $self->{datacenter_name} = $args{'datacenter_name'};
   $self->{host} = $args{'host'};
   $self->{host_name} = $args{'host_name'};
   $self->{cluster} = $args{'cluster'};
   $self->{cluster_name} = $args{'cluster_name'};
   $self->{ha_network} = $args{'ha_network'};
   $self->{ha_network_name} = $args{'ha_network_name'};
   $self->{ha_network_type} = $args{'ha_network_type'};
   $self->{management_network} = $args{'management_network'};
   $self->{management_network_name} = $args{'management_network_name'};
   $self->{management_network_type} = $args{'management_network_type'};
   $self->{storage} = $args{'storage'};
   $self->{bios_uuid} = $args{'bios_uuid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::PlacementInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.placement_info');
   $self->set_binding_field('key' => 'management_vcenter_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vm_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'datacenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'datacenter_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ha_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ha_network_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ha_network_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'NetworkType')));
   $self->set_binding_field('key' => 'management_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'management_network_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'management_network_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'NetworkType'));
   $self->set_binding_field('key' => 'storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'DiskInfo'));
   $self->set_binding_field('key' => 'bios_uuid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_management_vcenter_name ()
# Gets the value of 'management_vcenter_name' property.
#
# @retval management_vcenter_name - The current value of the field.
# The name of the Management vCenter server of the VCHA node. This  *field*  was added
#     in vSphere API 6.7 U1.
#
# String#
sub get_management_vcenter_name {
   my ($self, %args) = @_;
   return $self->{'management_vcenter_name'}; 	
}

## @method set_management_vcenter_name ()
# Sets the given value for 'management_vcenter_name' property.
# 
# @param management_vcenter_name  - New value for the field.
# The name of the Management vCenter server of the VCHA node. This  *field*  was added
#     in vSphere API 6.7 U1.
#
sub set_management_vcenter_name {
   my ($self, %args) = @_;
   $self->{'management_vcenter_name'} = $args{'management_vcenter_name'}; 
   return;	
}

## @method get_vm_name ()
# Gets the value of 'vm_name' property.
#
# @retval vm_name - The current value of the field.
# The virtual machine name of the VCHA node. This  *field*  was added in vSphere API 6.7
#     U1.
#
# String#
sub get_vm_name {
   my ($self, %args) = @_;
   return $self->{'vm_name'}; 	
}

## @method set_vm_name ()
# Sets the given value for 'vm_name' property.
# 
# @param vm_name  - New value for the field.
# The virtual machine name of the VCHA node. This  *field*  was added in vSphere API 6.7
#     U1.
#
sub set_vm_name {
   my ($self, %args) = @_;
   $self->{'vm_name'} = $args{'vm_name'}; 
   return;	
}

## @method get_datacenter ()
# Gets the value of 'datacenter' property.
#
# @retval datacenter - The current value of the field.
# The identifier of the datacenter of the VCHA node. This  *field*  was added in vSphere
#     API 6.7 U1.
#
# ID#
sub get_datacenter {
   my ($self, %args) = @_;
   return $self->{'datacenter'}; 	
}

## @method set_datacenter ()
# Sets the given value for 'datacenter' property.
# 
# @param datacenter  - New value for the field.
# The identifier of the datacenter of the VCHA node. This  *field*  was added in vSphere
#     API 6.7 U1.
#
sub set_datacenter {
   my ($self, %args) = @_;
   $self->{'datacenter'} = $args{'datacenter'}; 
   return;	
}

## @method get_datacenter_name ()
# Gets the value of 'datacenter_name' property.
#
# @retval datacenter_name - The current value of the field.
# The name of the datacenter of the VCHA node. This  *field*  was added in vSphere API
#     6.7 U1.
#
# String#
sub get_datacenter_name {
   my ($self, %args) = @_;
   return $self->{'datacenter_name'}; 	
}

## @method set_datacenter_name ()
# Sets the given value for 'datacenter_name' property.
# 
# @param datacenter_name  - New value for the field.
# The name of the datacenter of the VCHA node. This  *field*  was added in vSphere API
#     6.7 U1.
#
sub set_datacenter_name {
   my ($self, %args) = @_;
   $self->{'datacenter_name'} = $args{'datacenter_name'}; 
   return;	
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# The identifier of the host of the VCHA node. This  *field*  was added in vSphere API
#     6.7 U1.
#
# ID#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# The identifier of the host of the VCHA node. This  *field*  was added in vSphere API
#     6.7 U1.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_host_name ()
# Gets the value of 'host_name' property.
#
# @retval host_name - The current value of the field.
# The name of the host of the VCHA node. This  *field*  was added in vSphere API 6.7 U1.
#
# String#
sub get_host_name {
   my ($self, %args) = @_;
   return $self->{'host_name'}; 	
}

## @method set_host_name ()
# Sets the given value for 'host_name' property.
# 
# @param host_name  - New value for the field.
# The name of the host of the VCHA node. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_host_name {
   my ($self, %args) = @_;
   $self->{'host_name'} = $args{'host_name'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# The identifier of the cluster of which  ``host``  is member. This  *field*  was added
#     in vSphere API 6.7 U1.
#
# Optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# The identifier of the cluster of which  ``host``  is member. This  *field*  was added
#     in vSphere API 6.7 U1.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_cluster_name ()
# Gets the value of 'cluster_name' property.
#
# @retval cluster_name - The current value of the field.
# The name of the cluster of which  ``host``  is member. This  *field*  was added in
#     vSphere API 6.7 U1.
#
# Optional#
sub get_cluster_name {
   my ($self, %args) = @_;
   return $self->{'cluster_name'}; 	
}

## @method set_cluster_name ()
# Sets the given value for 'cluster_name' property.
# 
# @param cluster_name  - New value for the field.
# The name of the cluster of which  ``host``  is member. This  *field*  was added in
#     vSphere API 6.7 U1.
#
sub set_cluster_name {
   my ($self, %args) = @_;
   $self->{'cluster_name'} = $args{'cluster_name'}; 
   return;	
}

## @method get_ha_network ()
# Gets the value of 'ha_network' property.
#
# @retval ha_network - The current value of the field.
# The identifier of the Network object used for the HA network. This  *field*  was added
#     in vSphere API 6.7 U1.
#
# Optional#
sub get_ha_network {
   my ($self, %args) = @_;
   return $self->{'ha_network'}; 	
}

## @method set_ha_network ()
# Sets the given value for 'ha_network' property.
# 
# @param ha_network  - New value for the field.
# The identifier of the Network object used for the HA network. This  *field*  was added
#     in vSphere API 6.7 U1.
#
sub set_ha_network {
   my ($self, %args) = @_;
   $self->{'ha_network'} = $args{'ha_network'}; 
   return;	
}

## @method get_ha_network_name ()
# Gets the value of 'ha_network_name' property.
#
# @retval ha_network_name - The current value of the field.
# The name of the Network object used for the HA network. This  *field*  was added in
#     vSphere API 6.7 U1.
#
# Optional#
sub get_ha_network_name {
   my ($self, %args) = @_;
   return $self->{'ha_network_name'}; 	
}

## @method set_ha_network_name ()
# Sets the given value for 'ha_network_name' property.
# 
# @param ha_network_name  - New value for the field.
# The name of the Network object used for the HA network. This  *field*  was added in
#     vSphere API 6.7 U1.
#
sub set_ha_network_name {
   my ($self, %args) = @_;
   $self->{'ha_network_name'} = $args{'ha_network_name'}; 
   return;	
}

## @method get_ha_network_type ()
# Gets the value of 'ha_network_type' property.
#
# @retval ha_network_type - The current value of the field.
# The type of the Network object used for the HA network. This  *field*  was added in
#     vSphere API 6.7 U1.
#
# Optional#
sub get_ha_network_type {
   my ($self, %args) = @_;
   return $self->{'ha_network_type'}; 	
}

## @method set_ha_network_type ()
# Sets the given value for 'ha_network_type' property.
# 
# @param ha_network_type  - New value for the field.
# The type of the Network object used for the HA network. This  *field*  was added in
#     vSphere API 6.7 U1.
#
sub set_ha_network_type {
   my ($self, %args) = @_;
   $self->{'ha_network_type'} = $args{'ha_network_type'}; 
   return;	
}

## @method get_management_network ()
# Gets the value of 'management_network' property.
#
# @retval management_network - The current value of the field.
# The identifier of the Network object used for the Management network. This  *field* 
#     was added in vSphere API 6.7 U1.
#
# ID#
sub get_management_network {
   my ($self, %args) = @_;
   return $self->{'management_network'}; 	
}

## @method set_management_network ()
# Sets the given value for 'management_network' property.
# 
# @param management_network  - New value for the field.
# The identifier of the Network object used for the Management network. This  *field* 
#     was added in vSphere API 6.7 U1.
#
sub set_management_network {
   my ($self, %args) = @_;
   $self->{'management_network'} = $args{'management_network'}; 
   return;	
}

## @method get_management_network_name ()
# Gets the value of 'management_network_name' property.
#
# @retval management_network_name - The current value of the field.
# The name of the Network object used for the Management network. This  *field*  was
#     added in vSphere API 6.7 U1.
#
# String#
sub get_management_network_name {
   my ($self, %args) = @_;
   return $self->{'management_network_name'}; 	
}

## @method set_management_network_name ()
# Sets the given value for 'management_network_name' property.
# 
# @param management_network_name  - New value for the field.
# The name of the Network object used for the Management network. This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_management_network_name {
   my ($self, %args) = @_;
   $self->{'management_network_name'} = $args{'management_network_name'}; 
   return;	
}

## @method get_management_network_type ()
# Gets the value of 'management_network_type' property.
#
# @retval management_network_type - The current value of the field.
# The type of the Network object used for the Management network. This  *field*  was
#     added in vSphere API 6.7 U1.
#
# NetworkType#
sub get_management_network_type {
   my ($self, %args) = @_;
   return $self->{'management_network_type'}; 	
}

## @method set_management_network_type ()
# Sets the given value for 'management_network_type' property.
# 
# @param management_network_type  - New value for the field.
# The type of the Network object used for the Management network. This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_management_network_type {
   my ($self, %args) = @_;
   $self->{'management_network_type'} = $args{'management_network_type'}; 
   return;	
}

## @method get_storage ()
# Gets the value of 'storage' property.
#
# @retval storage - The current value of the field.
# The storage information of the VCHA node. This  *field*  was added in vSphere API 6.7
#     U1.
#
# DiskInfo#
sub get_storage {
   my ($self, %args) = @_;
   return $self->{'storage'}; 	
}

## @method set_storage ()
# Sets the given value for 'storage' property.
# 
# @param storage  - New value for the field.
# The storage information of the VCHA node. This  *field*  was added in vSphere API 6.7
#     U1.
#
sub set_storage {
   my ($self, %args) = @_;
   $self->{'storage'} = $args{'storage'}; 
   return;	
}

## @method get_bios_uuid ()
# Gets the value of 'bios_uuid' property.
#
# @retval bios_uuid - The current value of the field.
# BIOS UUID for the node. This  *field*  was added in vSphere API 6.7 U1.
#
# Optional#
sub get_bios_uuid {
   my ($self, %args) = @_;
   return $self->{'bios_uuid'}; 	
}

## @method set_bios_uuid ()
# Sets the given value for 'bios_uuid' property.
# 
# @param bios_uuid  - New value for the field.
# BIOS UUID for the node. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_bios_uuid {
   my ($self, %args) = @_;
   $self->{'bios_uuid'} = $args{'bios_uuid'}; 
   return;	
}


1;


