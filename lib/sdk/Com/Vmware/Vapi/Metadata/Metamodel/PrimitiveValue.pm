## @class Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue``   *class*  contains
#     value of the constant element.

package Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'BOOLEAN' => ['boolean_value'],
               'DOUBLE' => ['double_value'],
               'LONG' => ['long_value'],
               'STRING' => ['string_value'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{boolean_value} = $args{'boolean_value'};
   $self->{double_value} = $args{'double_value'};
   $self->{long_value} = $args{'long_value'};
   $self->{string_value} = $args{'string_value'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.primitive_value');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'PrimitiveValue::Type'));
   $self->set_binding_field('key' => 'boolean_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'double_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DoubleType()));
   $self->set_binding_field('key' => 'long_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'string_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the constant value.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the constant value.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_boolean_value ()
# Gets the value of 'boolean_value' property.
#
# @retval boolean_value - The current value of the field.
# Boolean value of the constant.
#
# optional#
sub get_boolean_value {
   my ($self, %args) = @_;
   return $self->{'boolean_value'}; 	
}

## @method set_boolean_value ()
# Sets the given value for 'boolean_value' property.
# 
# @param boolean_value  - New value for the field.
# Boolean value of the constant.
#
sub set_boolean_value {
   my ($self, %args) = @_;
   $self->{'boolean_value'} = $args{'boolean_value'}; 
   return;	
}

## @method get_double_value ()
# Gets the value of 'double_value' property.
#
# @retval double_value - The current value of the field.
# Double value of the constant.
#
# optional#
sub get_double_value {
   my ($self, %args) = @_;
   return $self->{'double_value'}; 	
}

## @method set_double_value ()
# Sets the given value for 'double_value' property.
# 
# @param double_value  - New value for the field.
# Double value of the constant.
#
sub set_double_value {
   my ($self, %args) = @_;
   $self->{'double_value'} = $args{'double_value'}; 
   return;	
}

## @method get_long_value ()
# Gets the value of 'long_value' property.
#
# @retval long_value - The current value of the field.
# Long value of the constant.
#
# optional#
sub get_long_value {
   my ($self, %args) = @_;
   return $self->{'long_value'}; 	
}

## @method set_long_value ()
# Sets the given value for 'long_value' property.
# 
# @param long_value  - New value for the field.
# Long value of the constant.
#
sub set_long_value {
   my ($self, %args) = @_;
   $self->{'long_value'} = $args{'long_value'}; 
   return;	
}

## @method get_string_value ()
# Gets the value of 'string_value' property.
#
# @retval string_value - The current value of the field.
# String value of the constant.
#
# optional#
sub get_string_value {
   my ($self, %args) = @_;
   return $self->{'string_value'}; 	
}

## @method set_string_value ()
# Sets the given value for 'string_value' property.
# 
# @param string_value  - New value for the field.
# String value of the constant.
#
sub set_string_value {
   my ($self, %args) = @_;
   $self->{'string_value'} = $args{'string_value'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type``   *enumerated
#     type*  defines the valid types for values in constant elements.
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type::BOOLEAN #
#Indicates the value is a boolean (true or false).
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type::DOUBLE #
#Indicates the value is a double (64 bit floating number).
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type::LONG #
#Indicates the value is a long (64 bit signed integer).
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type::STRING #
#Indicates the value is a string (a variable length sequence of characters). The encoding
# is UTF8.

package Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type;

use constant {
    BOOLEAN =>  'BOOLEAN',
    DOUBLE =>  'DOUBLE',
    LONG =>  'LONG',
    STRING =>  'STRING',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.metamodel.primitive_value.type',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::PrimitiveValue::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


