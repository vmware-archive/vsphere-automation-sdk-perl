## @class Com::Vmware::Content::Type::Ovf::OvfTemplate
#
#
# Provides extra information about a library item of type &quot;ovf&quot;. <p>
# 
# An OVF library item is the basic building block for instantiating virtual machines
#     from content library. It may contain one or multiple virtual machine templates. This
#     structure provides a rich view of the virtual machines within the ovf container as
#     well as information about to the ovf descriptor associated with the library item </p>

package Com::Vmware::Content::Type::Ovf::OvfTemplate;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::OvfTemplate structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{vm_count} = $args{'vm_count'};
   $self->{version} = $args{'version'};
   $self->{library_id_parent} = $args{'library_id_parent'};
   $self->{is_vapp_template} = $args{'is_vapp_template'};
   $self->{vm_template} = $args{'vm_template'};
   $self->{vapp_template} = $args{'vapp_template'};
   $self->{networks} = $args{'networks'};
   $self->{storage_policy_groups} = $args{'storage_policy_groups'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::OvfTemplate');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.ovf_template');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vm_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'library_id_parent', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'is_vapp_template', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'vm_template', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'VmTemplate')));
   $self->set_binding_field('key' => 'vapp_template', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'VAppTemplate')));
   $self->set_binding_field('key' => 'networks', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'Network')));
   $self->set_binding_field('key' => 'storage_policy_groups', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf::Policy', 'type_name' => 'StoragePolicyGroup'))));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Library item id.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# Library item id.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_vm_count ()
# Gets the value of 'vm_count' property.
#
# @retval vm_count - The current value of the field.
# Number of virtual machines in the the ovf template.
#
# long#
sub get_vm_count {
   my ($self, %args) = @_;
   return $self->{'vm_count'}; 	
}

## @method set_vm_count ()
# Sets the given value for 'vm_count' property.
# 
# @param vm_count  - New value for the field.
# Number of virtual machines in the the ovf template.
#
sub set_vm_count {
   my ($self, %args) = @_;
   $self->{'vm_count'} = $args{'vm_count'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# A version number indicating the generation of the  ``OvfTemplate``  <p>
# 
#  This value is incremented every time  ``OvfTemplate``  changes. </p>
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# A version number indicating the generation of the  ``OvfTemplate``  <p>
# 
#  This value is incremented every time  ``OvfTemplate``  changes. </p>
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_library_id_parent ()
# Gets the value of 'library_id_parent' property.
#
# @retval library_id_parent - The current value of the field.
# The identifier of the  class Com::Vmware::Content::LibraryModel  to which this item
#     belongs. This is used to set the parent of the ovf template for permission
#     propagation.
#
# ID#
sub get_library_id_parent {
   my ($self, %args) = @_;
   return $self->{'library_id_parent'}; 	
}

## @method set_library_id_parent ()
# Sets the given value for 'library_id_parent' property.
# 
# @param library_id_parent  - New value for the field.
# The identifier of the  class Com::Vmware::Content::LibraryModel  to which this item
#     belongs. This is used to set the parent of the ovf template for permission
#     propagation.
#
sub set_library_id_parent {
   my ($self, %args) = @_;
   $self->{'library_id_parent'} = $args{'library_id_parent'}; 
   return;	
}

## @method get_is_vapp_template ()
# Gets the value of 'is_vapp_template' property.
#
# @retval is_vapp_template - The current value of the field.
# True if this is a vApp template, otherwise this is a VM template.
#
# boolean#
sub get_is_vapp_template {
   my ($self, %args) = @_;
   return $self->{'is_vapp_template'}; 	
}

## @method set_is_vapp_template ()
# Sets the given value for 'is_vapp_template' property.
# 
# @param is_vapp_template  - New value for the field.
# True if this is a vApp template, otherwise this is a VM template.
#
sub set_is_vapp_template {
   my ($self, %args) = @_;
   $self->{'is_vapp_template'} = $args{'is_vapp_template'}; 
   return;	
}

## @method get_vm_template ()
# Gets the value of 'vm_template' property.
#
# @retval vm_template - The current value of the field.
# The Vitrual Machine if this is a VM template
#
# Optional#
sub get_vm_template {
   my ($self, %args) = @_;
   return $self->{'vm_template'}; 	
}

## @method set_vm_template ()
# Sets the given value for 'vm_template' property.
# 
# @param vm_template  - New value for the field.
# The Vitrual Machine if this is a VM template
#
sub set_vm_template {
   my ($self, %args) = @_;
   $self->{'vm_template'} = $args{'vm_template'}; 
   return;	
}

## @method get_vapp_template ()
# Gets the value of 'vapp_template' property.
#
# @retval vapp_template - The current value of the field.
# The root VApp template in this OVF template if this is a vApp template
#
# Optional#
sub get_vapp_template {
   my ($self, %args) = @_;
   return $self->{'vapp_template'}; 	
}

## @method set_vapp_template ()
# Sets the given value for 'vapp_template' property.
# 
# @param vapp_template  - New value for the field.
# The root VApp template in this OVF template if this is a vApp template
#
sub set_vapp_template {
   my ($self, %args) = @_;
   $self->{'vapp_template'} = $args{'vapp_template'}; 
   return;	
}

## @method get_networks ()
# Gets the value of 'networks' property.
#
# @retval networks - The current value of the field.
# networks in this OVF template
#
# List#
sub get_networks {
   my ($self, %args) = @_;
   return $self->{'networks'}; 	
}

## @method set_networks ()
# Sets the given value for 'networks' property.
# 
# @param networks  - New value for the field.
# networks in this OVF template
#
sub set_networks {
   my ($self, %args) = @_;
   $self->{'networks'} = $args{'networks'}; 
   return;	
}

## @method get_storage_policy_groups ()
# Gets the value of 'storage_policy_groups' property.
#
# @retval storage_policy_groups - The current value of the field.
# Storage policy groups for disks, virtual machines and/or virtual machine collections.
#
# Optional#
sub get_storage_policy_groups {
   my ($self, %args) = @_;
   return $self->{'storage_policy_groups'}; 	
}

## @method set_storage_policy_groups ()
# Sets the given value for 'storage_policy_groups' property.
# 
# @param storage_policy_groups  - New value for the field.
# Storage policy groups for disks, virtual machines and/or virtual machine collections.
#
sub set_storage_policy_groups {
   my ($self, %args) = @_;
   $self->{'storage_policy_groups'} = $args{'storage_policy_groups'}; 
   return;	
}


1;


