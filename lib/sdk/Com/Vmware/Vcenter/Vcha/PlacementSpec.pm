## @class Com::Vmware::Vcenter::Vcha::PlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::PlacementSpec``   *class*  contains information to
#     describe the inventory placement of a single node of a VCHA cluster. This  *class* 
#     was added in vSphere API 6.7 U1.

package Com::Vmware::Vcenter::Vcha::PlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::PlacementSpec structure
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
   $self->{folder} = $args{'folder'};
   $self->{host} = $args{'host'};
   $self->{resource_pool} = $args{'resource_pool'};
   $self->{ha_network_type} = $args{'ha_network_type'};
   $self->{ha_network} = $args{'ha_network'};
   $self->{management_network_type} = $args{'management_network_type'};
   $self->{management_network} = $args{'management_network'};
   $self->{storage} = $args{'storage'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::PlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.placement_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ha_network_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'NetworkType')));
   $self->set_binding_field('key' => 'ha_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'management_network_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'NetworkType')));
   $self->set_binding_field('key' => 'management_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha', 'type_name' => 'DiskSpec')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the VCHA node to be used for the virtual machine name. This  *field*  was
#     added in vSphere API 6.7 U1.
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
# The name of the VCHA node to be used for the virtual machine name. This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# The identifier of the folder to deploy the VCHA node to. This  *field*  was added in
#     vSphere API 6.7 U1.
#
# ID#
sub get_folder {
   my ($self, %args) = @_;
   return $self->{'folder'}; 	
}

## @method set_folder ()
# Sets the given value for 'folder' property.
# 
# @param folder  - New value for the field.
# The identifier of the folder to deploy the VCHA node to. This  *field*  was added in
#     vSphere API 6.7 U1.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# The identifier of the host to deploy the VCHA node to. This  *field*  was added in
#     vSphere API 6.7 U1.
#
# Optional#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# The identifier of the host to deploy the VCHA node to. This  *field*  was added in
#     vSphere API 6.7 U1.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_resource_pool ()
# Gets the value of 'resource_pool' property.
#
# @retval resource_pool - The current value of the field.
# The identifier of the resource pool to deploy the VCHA node to. This  *field*  was
#     added in vSphere API 6.7 U1.
#
# Optional#
sub get_resource_pool {
   my ($self, %args) = @_;
   return $self->{'resource_pool'}; 	
}

## @method set_resource_pool ()
# Sets the given value for 'resource_pool' property.
# 
# @param resource_pool  - New value for the field.
# The identifier of the resource pool to deploy the VCHA node to. This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_resource_pool {
   my ($self, %args) = @_;
   $self->{'resource_pool'} = $args{'resource_pool'}; 
   return;	
}

## @method get_ha_network_type ()
# Gets the value of 'ha_network_type' property.
#
# @retval ha_network_type - The current value of the field.
# The type of the Network object used by the HA network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network`   *field*  is
#     set, then the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network_type` 
#     field must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network`   *field*  is 
#     *null* , then the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network_type`  
#     *field*  is ignored. This  *field*  was added in vSphere API 6.7 U1.
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
# The type of the Network object used by the HA network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network`   *field*  is
#     set, then the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network_type` 
#     field must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network`   *field*  is 
#     *null* , then the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network_type`  
#     *field*  is ignored. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_ha_network_type {
   my ($self, %args) = @_;
   $self->{'ha_network_type'} = $args{'ha_network_type'}; 
   return;	
}

## @method get_ha_network ()
# Gets the value of 'ha_network' property.
#
# @retval ha_network - The current value of the field.
# The identifier of the Network object used for the HA network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network`   *field*  is
#     set, then the {#link #haNetworkType}  *field*  must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network`   *field*  is 
#     *null* , then the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network_type`  
#     *field*  is ignored. This  *field*  was added in vSphere API 6.7 U1.
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
# The identifier of the Network object used for the HA network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network`   *field*  is
#     set, then the {#link #haNetworkType}  *field*  must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network`   *field*  is 
#     *null* , then the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.ha_network_type`  
#     *field*  is ignored. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_ha_network {
   my ($self, %args) = @_;
   $self->{'ha_network'} = $args{'ha_network'}; 
   return;	
}

## @method get_management_network_type ()
# Gets the value of 'management_network_type' property.
#
# @retval management_network_type - The current value of the field.
# The type of the Network object used by the Management network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network`   *field*
#      is set, then the {#link #managementNetworkType} field must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network`   *field*
#     is  *null* , then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network_type`   *field* 
#     is ignored. This  *field*  was added in vSphere API 6.7 U1.
#
# Optional#
sub get_management_network_type {
   my ($self, %args) = @_;
   return $self->{'management_network_type'}; 	
}

## @method set_management_network_type ()
# Sets the given value for 'management_network_type' property.
# 
# @param management_network_type  - New value for the field.
# The type of the Network object used by the Management network.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network`   *field*
#      is set, then the {#link #managementNetworkType} field must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network`   *field*
#     is  *null* , then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network_type`   *field* 
#     is ignored. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_management_network_type {
   my ($self, %args) = @_;
   $self->{'management_network_type'} = $args{'management_network_type'}; 
   return;	
}

## @method get_management_network ()
# Gets the value of 'management_network' property.
#
# @retval management_network - The current value of the field.
# The identifier of the Network object used for the Management network. If the 
#     :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network`   *field*  is
#     set, then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network_type`   *field* 
#     must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network`   *field*
#     is  *null* , then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network_type`   *field* 
#     is ignored. This  *field*  was added in vSphere API 6.7 U1.
#
# Optional#
sub get_management_network {
   my ($self, %args) = @_;
   return $self->{'management_network'}; 	
}

## @method set_management_network ()
# Sets the given value for 'management_network' property.
# 
# @param management_network  - New value for the field.
# The identifier of the Network object used for the Management network. If the 
#     :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network`   *field*  is
#     set, then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network_type`   *field* 
#     must be set.
# If the  :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network`   *field*
#     is  *null* , then the 
#     :attr:`Com::Vmware::Vcenter::Vcha::PlacementSpec.management_network_type`   *field* 
#     is ignored. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_management_network {
   my ($self, %args) = @_;
   $self->{'management_network'} = $args{'management_network'}; 
   return;	
}

## @method get_storage ()
# Gets the value of 'storage' property.
#
# @retval storage - The current value of the field.
# The storage specification to deploy the VCHA node to. This  *field*  was added in
#     vSphere API 6.7 U1.
#
# Optional#
sub get_storage {
   my ($self, %args) = @_;
   return $self->{'storage'}; 	
}

## @method set_storage ()
# Sets the given value for 'storage' property.
# 
# @param storage  - New value for the field.
# The storage specification to deploy the VCHA node to. This  *field*  was added in
#     vSphere API 6.7 U1.
#
sub set_storage {
   my ($self, %args) = @_;
   $self->{'storage'} = $args{'storage'}; 
   return;	
}


1;


