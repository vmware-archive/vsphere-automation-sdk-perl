## @class Com::Vmware::Vapi::Metadata::Metamodel::ElementValue
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::ElementValue``   *class*  describes the
#     value of the metadata element.

package Com::Vmware::Vapi::Metadata::Metamodel::ElementValue;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::ElementValue structure
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
               'LONG' => ['long_value'],
               'STRING' => ['string_value'],
               'STRING_LIST' => ['list_value'],
               'STRUCTURE_REFERENCE' => ['structure_id'],
               'STRUCTURE_REFERENCE_LIST' => ['structure_ids'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{long_value} = $args{'long_value'};
   $self->{string_value} = $args{'string_value'};
   $self->{list_value} = $args{'list_value'};
   $self->{structure_id} = $args{'structure_id'};
   $self->{structure_ids} = $args{'structure_ids'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::ElementValue');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.element_value');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ElementValue::Type'));
   $self->set_binding_field('key' => 'long_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'string_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'list_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'structure_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'structure_ids', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the value.
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
# Type of the value.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_long_value ()
# Gets the value of 'long_value' property.
#
# @retval long_value - The current value of the field.
# Long value of the metadata element.
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
# Long value of the metadata element.
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
# String value of the metadata element.
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
# String value of the metadata element.
#
sub set_string_value {
   my ($self, %args) = @_;
   $self->{'string_value'} = $args{'string_value'}; 
   return;	
}

## @method get_list_value ()
# Gets the value of 'list_value' property.
#
# @retval list_value - The current value of the field.
# List of strings value of the metadata element.
#
# optional#
sub get_list_value {
   my ($self, %args) = @_;
   return $self->{'list_value'}; 	
}

## @method set_list_value ()
# Sets the given value for 'list_value' property.
# 
# @param list_value  - New value for the field.
# List of strings value of the metadata element.
#
sub set_list_value {
   my ($self, %args) = @_;
   $self->{'list_value'} = $args{'list_value'}; 
   return;	
}

## @method get_structure_id ()
# Gets the value of 'structure_id' property.
#
# @retval structure_id - The current value of the field.
# Identifier of the structure element.
#
# optional#
sub get_structure_id {
   my ($self, %args) = @_;
   return $self->{'structure_id'}; 	
}

## @method set_structure_id ()
# Sets the given value for 'structure_id' property.
# 
# @param structure_id  - New value for the field.
# Identifier of the structure element.
#
sub set_structure_id {
   my ($self, %args) = @_;
   $self->{'structure_id'} = $args{'structure_id'}; 
   return;	
}

## @method get_structure_ids ()
# Gets the value of 'structure_ids' property.
#
# @retval structure_ids - The current value of the field.
# List of identifiers of the structure elements.
#
# optional#
sub get_structure_ids {
   my ($self, %args) = @_;
   return $self->{'structure_ids'}; 	
}

## @method set_structure_ids ()
# Sets the given value for 'structure_ids' property.
# 
# @param structure_ids  - New value for the field.
# List of identifiers of the structure elements.
#
sub set_structure_ids {
   my ($self, %args) = @_;
   $self->{'structure_ids'} = $args{'structure_ids'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type``   *enumerated
#     type*  defines the valid types for values in metadata elements.
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type::LONG #
#Indicates the type of the value is a long (64 bit signed integer).
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type::STRING #
#Indicates the type of the value is a string (a variable length sequence of characters).
# The encoding is UTF-8.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type::STRING_LIST #
#Indicates the type of the value is a list of strings.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type::STRUCTURE_REFERENCE #
#Indicates the type of the value is an identifier for a structure element.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type::STRUCTURE_REFERENCE_LIST #
#Indicates the type of the value is a list of identifiers for a structure element.

package Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type;

use constant {
    LONG =>  'LONG',
    STRING =>  'STRING',
    STRING_LIST =>  'STRING_LIST',
    STRUCTURE_REFERENCE =>  'STRUCTURE_REFERENCE',
    STRUCTURE_REFERENCE_LIST =>  'STRUCTURE_REFERENCE_LIST',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.metamodel.element_value.type',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::ElementValue::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


