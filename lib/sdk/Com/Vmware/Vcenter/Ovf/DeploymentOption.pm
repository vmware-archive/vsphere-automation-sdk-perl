## @class Com::Vmware::Vcenter::Ovf::DeploymentOption
#
#
# The  ``Com::Vmware::Vcenter::Ovf::DeploymentOption``   *class*  contains the
#     information about a deployment option as defined in the OVF specification. <p>
# 
# This corresponds to the ovf:Configuration element of the ovf:DeploymentOptionSection
#     in the specification. The ovf:DeploymentOptionSection specifies a discrete set of
#     intended resource allocation configurations. This  *class*  represents one item from
#     that set. </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::DeploymentOption;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::DeploymentOption structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{key} = $args{'key'};
   $self->{label} = $args{'label'};
   $self->{description} = $args{'description'};
   $self->{default_choice} = $args{'default_choice'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::DeploymentOption');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.deployment_option');
   $self->set_binding_field('key' => 'key', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'default_choice', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_key ()
# Gets the value of 'key' property.
#
# @retval key - The current value of the field.
# The key of the deployment option, corresponding to the ovf:id attribute in the OVF
#     descriptor.
#
# optional#
sub get_key {
   my ($self, %args) = @_;
   return $self->{'key'}; 	
}

## @method set_key ()
# Sets the given value for 'key' property.
# 
# @param key  - New value for the field.
# The key of the deployment option, corresponding to the ovf:id attribute in the OVF
#     descriptor.
#
sub set_key {
   my ($self, %args) = @_;
   $self->{'key'} = $args{'key'}; 
   return;	
}

## @method get_label ()
# Gets the value of 'label' property.
#
# @retval label - The current value of the field.
# A localizable label for the deployment option.
#
# optional#
sub get_label {
   my ($self, %args) = @_;
   return $self->{'label'}; 	
}

## @method set_label ()
# Sets the given value for 'label' property.
# 
# @param label  - New value for the field.
# A localizable label for the deployment option.
#
sub set_label {
   my ($self, %args) = @_;
   $self->{'label'} = $args{'label'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# A localizable description for the deployment option.
#
# optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# A localizable description for the deployment option.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_default_choice ()
# Gets the value of 'default_choice' property.
#
# @retval default_choice - The current value of the field.
# A  *boolean*  flag indicates whether this deployment option is the default choice.
#
# optional#
sub get_default_choice {
   my ($self, %args) = @_;
   return $self->{'default_choice'}; 	
}

## @method set_default_choice ()
# Sets the given value for 'default_choice' property.
# 
# @param default_choice  - New value for the field.
# A  *boolean*  flag indicates whether this deployment option is the default choice.
#
sub set_default_choice {
   my ($self, %args) = @_;
   $self->{'default_choice'} = $args{'default_choice'}; 
   return;	
}


1;


