## @class Com::Vmware::Vstats::RsrcId
#
#
# The  ``Com::Vmware::Vstats::RsrcId``   *class*  specifies identification of a resource
#     to be monitored by an acquisition specification record. <b>Warning:</b> This  *class* 
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Vstats::RsrcId;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::RsrcId structure
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
   $self->{type} = $args{'type'};
   $self->{id_value} = $args{'id_value'};
   $self->{predicate} = $args{'predicate'};
   $self->{scheme} = $args{'scheme'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::RsrcId');
   $self->set_binding_name('name' => 'com.vmware.vstats.rsrc_id');
   $self->set_binding_field('key' => 'key', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'id_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'predicate', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'QueryPredicate')));
   $self->set_binding_field('key' => 'scheme', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_key ()
# Gets the value of 'key' property.
#
# @retval key - The current value of the field.
# Key relates to the corresponding ResourceIdDefinition of the related resource address
#     schema. <b>Warning:</b> This  *field*  is available as Technology Preview. These are
#     early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_key {
   my ($self, %args) = @_;
   return $self->{'key'}; 	
}

## @method set_key ()
# Sets the given value for 'key' property.
# 
# @param key  - New value for the field.
# Key relates to the corresponding ResourceIdDefinition of the related resource address
#     schema. <b>Warning:</b> This  *field*  is available as Technology Preview. These are
#     early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_key {
   my ($self, %args) = @_;
   $self->{'key'} = $args{'key'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the resource identified by the Resource Id. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# Optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the resource identified by the Resource Id. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_id_value ()
# Gets the value of 'id_value' property.
#
# @retval id_value - The current value of the field.
# The id value binding the related resource id definition. <b>Warning:</b> This  *field*
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# String#
sub get_id_value {
   my ($self, %args) = @_;
   return $self->{'id_value'}; 	
}

## @method set_id_value ()
# Sets the given value for 'id_value' property.
# 
# @param id_value  - New value for the field.
# The id value binding the related resource id definition. <b>Warning:</b> This  *field*
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_id_value {
   my ($self, %args) = @_;
   $self->{'id_value'} = $args{'id_value'}; 
   return;	
}

## @method get_predicate ()
# Gets the value of 'predicate' property.
#
# @retval predicate - The current value of the field.
# Predicate to use to match resource Ids. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_predicate {
   my ($self, %args) = @_;
   return $self->{'predicate'}; 	
}

## @method set_predicate ()
# Sets the given value for 'predicate' property.
# 
# @param predicate  - New value for the field.
# Predicate to use to match resource Ids. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_predicate {
   my ($self, %args) = @_;
   $self->{'predicate'} = $args{'predicate'}; 
   return;	
}

## @method get_scheme ()
# Gets the value of 'scheme' property.
#
# @retval scheme - The current value of the field.
# An optional designation of the scheme. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_scheme {
   my ($self, %args) = @_;
   return $self->{'scheme'}; 	
}

## @method set_scheme ()
# Sets the given value for 'scheme' property.
# 
# @param scheme  - New value for the field.
# An optional designation of the scheme. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_scheme {
   my ($self, %args) = @_;
   $self->{'scheme'} = $args{'scheme'}; 
   return;	
}


1;


