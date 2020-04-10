## @class Com::Vmware::Vstats::UserInfo
#
#
# The  ``Com::Vmware::Vstats::UserInfo``   *class*  contains human legible, localizable
#     description, used for VMware provided objects. <b>Warning:</b> This  *class*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Vstats::UserInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::UserInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{label} = $args{'label'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::UserInfo');
   $self->set_binding_name('name' => 'com.vmware.vstats.user_info');
   $self->set_binding_field('key' => 'label', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_label ()
# Gets the value of 'label' property.
#
# @retval label - The current value of the field.
# Short label. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# LocalizableMessage#
sub get_label {
   my ($self, %args) = @_;
   return $self->{'label'}; 	
}

## @method set_label ()
# Sets the given value for 'label' property.
# 
# @param label  - New value for the field.
# Short label. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
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
# Detailed description of the object. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# LocalizableMessage#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Detailed description of the object. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


