## @class Com::Vmware::Appliance::Vcenter::Settings::V1::DiffResult
#
#
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::DiffResult``   *class*  defines
#     the information about the feature configuration. <b>Warning:</b> This  *class*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Appliance::Vcenter::Settings::V1::DiffResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::DiffResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{current_value} = $args{'current_value'};
   $self->{desired_value} = $args{'desired_value'};
   $self->{category} = $args{'category'};
   $self->{path} = $args{'path'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::DiffResult');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.diff_result');
   $self->set_binding_field('key' => 'current_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OpaqueType());
   $self->set_binding_field('key' => 'desired_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OpaqueType());
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'path', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_current_value ()
# Gets the value of 'current_value' property.
#
# @retval current_value - The current value of the field.
# Current property value. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# Opaque#
sub get_current_value {
   my ($self, %args) = @_;
   return $self->{'current_value'}; 	
}

## @method set_current_value ()
# Sets the given value for 'current_value' property.
# 
# @param current_value  - New value for the field.
# Current property value. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_current_value {
   my ($self, %args) = @_;
   $self->{'current_value'} = $args{'current_value'}; 
   return;	
}

## @method get_desired_value ()
# Gets the value of 'desired_value' property.
#
# @retval desired_value - The current value of the field.
# Desired property value. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# Opaque#
sub get_desired_value {
   my ($self, %args) = @_;
   return $self->{'desired_value'}; 	
}

## @method set_desired_value ()
# Sets the given value for 'desired_value' property.
# 
# @param desired_value  - New value for the field.
# Desired property value. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_desired_value {
   my ($self, %args) = @_;
   $self->{'desired_value'} = $args{'desired_value'}; 
   return;	
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# Category of component configuration. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# String#
sub get_category {
   my ($self, %args) = @_;
   return $self->{'category'}; 	
}

## @method set_category ()
# Sets the given value for 'category' property.
# 
# @param category  - New value for the field.
# Category of component configuration. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_path ()
# Gets the value of 'path' property.
#
# @retval path - The current value of the field.
# Path of the component configuration. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# String#
sub get_path {
   my ($self, %args) = @_;
   return $self->{'path'}; 	
}

## @method set_path ()
# Sets the given value for 'path' property.
# 
# @param path  - New value for the field.
# Path of the component configuration. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_path {
   my ($self, %args) = @_;
   $self->{'path'} = $args{'path'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the component configuration. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the component configuration. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


