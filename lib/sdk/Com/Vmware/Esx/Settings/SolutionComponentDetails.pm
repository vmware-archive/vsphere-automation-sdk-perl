## @class Com::Vmware::Esx::Settings::SolutionComponentDetails
#
#
# The  ``Com::Vmware::Esx::Settings::SolutionComponentDetails``   *class*  contains
#     information that provide more details about component registered by the solution from
#     depot.

package Com::Vmware::Esx::Settings::SolutionComponentDetails;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::SolutionComponentDetails structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{component} = $args{'component'};
   $self->{display_name} = $args{'display_name'};
   $self->{display_version} = $args{'display_version'};
   $self->{vendor} = $args{'vendor'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::SolutionComponentDetails');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.solution_component_details');
   $self->set_binding_field('key' => 'component', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_component ()
# Gets the value of 'component' property.
#
# @retval component - The current value of the field.
# Identifier of the component.
#
# ID#
sub get_component {
   my ($self, %args) = @_;
   return $self->{'component'}; 	
}

## @method set_component ()
# Sets the given value for 'component' property.
# 
# @param component  - New value for the field.
# Identifier of the component.
#
sub set_component {
   my ($self, %args) = @_;
   $self->{'component'} = $args{'component'}; 
   return;	
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Display name of the component.
#
# String#
sub get_display_name {
   my ($self, %args) = @_;
   return $self->{'display_name'}; 	
}

## @method set_display_name ()
# Sets the given value for 'display_name' property.
# 
# @param display_name  - New value for the field.
# Display name of the component.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_display_version ()
# Gets the value of 'display_version' property.
#
# @retval display_version - The current value of the field.
# Human readable version of the component.
#
# Optional#
sub get_display_version {
   my ($self, %args) = @_;
   return $self->{'display_version'}; 	
}

## @method set_display_version ()
# Sets the given value for 'display_version' property.
# 
# @param display_version  - New value for the field.
# Human readable version of the component.
#
sub set_display_version {
   my ($self, %args) = @_;
   $self->{'display_version'} = $args{'display_version'}; 
   return;	
}

## @method get_vendor ()
# Gets the value of 'vendor' property.
#
# @retval vendor - The current value of the field.
# Vendor of the component.
#
# String#
sub get_vendor {
   my ($self, %args) = @_;
   return $self->{'vendor'}; 	
}

## @method set_vendor ()
# Sets the given value for 'vendor' property.
# 
# @param vendor  - New value for the field.
# Vendor of the component.
#
sub set_vendor {
   my ($self, %args) = @_;
   $self->{'vendor'} = $args{'vendor'}; 
   return;	
}


1;


