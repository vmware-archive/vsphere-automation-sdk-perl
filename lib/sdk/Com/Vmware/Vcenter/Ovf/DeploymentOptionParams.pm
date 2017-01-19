## @class Com::Vmware::Vcenter::Ovf::DeploymentOptionParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::DeploymentOptionParams``   *class*  describes the
#     possible deployment options as well as the choice provided by the user. <p>
# 
#  This information based on the ovf:DeploymentOptionSection. </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::DeploymentOptionParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::DeploymentOptionParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{deployment_options} = $args{'deployment_options'};
   $self->{selected_key} = $args{'selected_key'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::DeploymentOptionParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.deployment_option_params');
   $self->set_binding_field('key' => 'deployment_options', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'DeploymentOption'))));
   $self->set_binding_field('key' => 'selected_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_deployment_options ()
# Gets the value of 'deployment_options' property.
#
# @retval deployment_options - The current value of the field.
# *List*  of deployment options. This  *field*  corresponds to the ovf:Configuration
#     elements of the ovf:DeploymentOptionSection in the specification. It is a discrete set
#     of intended resource allocation configurations from which one can be selected.
#
# optional#
sub get_deployment_options {
   my ($self, %args) = @_;
   return $self->{'deployment_options'}; 	
}

## @method set_deployment_options ()
# Sets the given value for 'deployment_options' property.
# 
# @param deployment_options  - New value for the field.
# *List*  of deployment options. This  *field*  corresponds to the ovf:Configuration
#     elements of the ovf:DeploymentOptionSection in the specification. It is a discrete set
#     of intended resource allocation configurations from which one can be selected.
#
sub set_deployment_options {
   my ($self, %args) = @_;
   $self->{'deployment_options'} = $args{'deployment_options'}; 
   return;	
}

## @method get_selected_key ()
# Gets the value of 'selected_key' property.
#
# @retval selected_key - The current value of the field.
# The selected deployment option. Identifies the  class
#     Com::Vmware::Vcenter::Ovf::DeploymentOption  in the list in the  ``deploymentOptions``
#     *field*  with a matching value in the 
#     :attr:`Com::Vmware::Vcenter::Ovf::DeploymentOption.key`   *field* .
#
# optional#
sub get_selected_key {
   my ($self, %args) = @_;
   return $self->{'selected_key'}; 	
}

## @method set_selected_key ()
# Sets the given value for 'selected_key' property.
# 
# @param selected_key  - New value for the field.
# The selected deployment option. Identifies the  class
#     Com::Vmware::Vcenter::Ovf::DeploymentOption  in the list in the  ``deploymentOptions``
#     *field*  with a matching value in the 
#     :attr:`Com::Vmware::Vcenter::Ovf::DeploymentOption.key`   *field* .
#
sub set_selected_key {
   my ($self, %args) = @_;
   $self->{'selected_key'} = $args{'selected_key'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
# optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


