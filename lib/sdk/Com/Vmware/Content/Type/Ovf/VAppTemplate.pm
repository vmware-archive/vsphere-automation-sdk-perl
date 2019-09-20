## @class Com::Vmware::Content::Type::Ovf::VAppTemplate
#
#
# Provide information for vApp template in an OVF template file.

package Com::Vmware::Content::Type::Ovf::VAppTemplate;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::VAppTemplate structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vapp_name} = $args{'vapp_name'};
   $self->{vm_templates} = $args{'vm_templates'};
   $self->{storage_policies} = $args{'storage_policies'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::VAppTemplate');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.V_app_template');
   $self->set_binding_field('key' => 'vapp_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'vm_templates', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf', 'type_name' => 'VmTemplate'))));
   $self->set_binding_field('key' => 'storage_policies', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf::Policy', 'type_name' => 'StoragePolicy'))));
   bless $self, $class;
   return $self;
}

## @method get_vapp_name ()
# Gets the value of 'vapp_name' property.
#
# @retval vapp_name - The current value of the field.
# Name of the vApp template
#
# Optional#
sub get_vapp_name {
   my ($self, %args) = @_;
   return $self->{'vapp_name'}; 	
}

## @method set_vapp_name ()
# Sets the given value for 'vapp_name' property.
# 
# @param vapp_name  - New value for the field.
# Name of the vApp template
#
sub set_vapp_name {
   my ($self, %args) = @_;
   $self->{'vapp_name'} = $args{'vapp_name'}; 
   return;	
}

## @method get_vm_templates ()
# Gets the value of 'vm_templates' property.
#
# @retval vm_templates - The current value of the field.
# Vitrual Machines in this vApp template
#
# Optional#
sub get_vm_templates {
   my ($self, %args) = @_;
   return $self->{'vm_templates'}; 	
}

## @method set_vm_templates ()
# Sets the given value for 'vm_templates' property.
# 
# @param vm_templates  - New value for the field.
# Vitrual Machines in this vApp template
#
sub set_vm_templates {
   my ($self, %args) = @_;
   $self->{'vm_templates'} = $args{'vm_templates'}; 
   return;	
}

## @method get_storage_policies ()
# Gets the value of 'storage_policies' property.
#
# @retval storage_policies - The current value of the field.
# Storage policies of the vApp template.
#
# Optional#
sub get_storage_policies {
   my ($self, %args) = @_;
   return $self->{'storage_policies'}; 	
}

## @method set_storage_policies ()
# Sets the given value for 'storage_policies' property.
# 
# @param storage_policies  - New value for the field.
# Storage policies of the vApp template.
#
sub set_storage_policies {
   my ($self, %args) = @_;
   $self->{'storage_policies'} = $args{'storage_policies'}; 
   return;	
}


1;


