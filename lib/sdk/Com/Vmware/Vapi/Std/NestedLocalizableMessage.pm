## @class Com::Vmware::Vapi::Std::NestedLocalizableMessage
#
#
# The  ``Com::Vmware::Vapi::Std::NestedLocalizableMessage``   *class*  represents a
#     nested within a parameter localizable string or message template. This  *class*  is
#     useful for modeling composite messages. Such messages are necessary to do correct
#     pluralization of phrases, represent lists of several items etc. This  *class*  was
#     added in vSphere API 7.0.0.0.

package Com::Vmware::Vapi::Std::NestedLocalizableMessage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::NestedLocalizableMessage structure
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
   $self->{params} = $args{'params'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::NestedLocalizableMessage');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.nested_localizable_message');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'params', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizationParam')})))));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Unique identifier of the localizable string or message template. <p>
# 
# This identifier is typically used to retrieve a locale-specific string or message
#     template from a message catalog.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# Unique identifier of the localizable string or message template. <p>
# 
# This identifier is typically used to retrieve a locale-specific string or message
#     template from a message catalog.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_params ()
# Gets the value of 'params' property.
#
# @retval params - The current value of the field.
# Named Arguments to be substituted into the message template. This  *field*  was added
#     in vSphere API 7.0.0.0.
#
# Optional#
sub get_params {
   my ($self, %args) = @_;
   return $self->{'params'}; 	
}

## @method set_params ()
# Sets the given value for 'params' property.
# 
# @param params  - New value for the field.
# Named Arguments to be substituted into the message template. This  *field*  was added
#     in vSphere API 7.0.0.0.
#
sub set_params {
   my ($self, %args) = @_;
   $self->{'params'} = $args{'params'}; 
   return;	
}


1;


