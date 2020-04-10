## @class Com::Vmware::Esx::Settings::SolutionComponentSpec
#
#
# The  ``Com::Vmware::Esx::Settings::SolutionComponentSpec``   *class*  contains 
#     *fields*  that describe a component registered by a software solution.

package Com::Vmware::Esx::Settings::SolutionComponentSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::SolutionComponentSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::SolutionComponentSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.solution_component_spec');
   $self->set_binding_field('key' => 'component', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
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


1;


