## @class Com::Vmware::Vapi::Metadata::Metamodel::Type
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Type``   *class*  describes the type
#     information of a typed element in the interface definiton language. The following
#     elements in the metamodel are typed: <ul>
# <li>Field element in a structure element. See 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo.fields` </li>
# <li>Parameter element in an operation element. See 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo.params` </li>
# <li>Result element in an operation element. See 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo.output` </li>
#  </ul> The type could be one of the three following categories: <ul>
# <li>Built-in types: These are types present in the interface definition language type
#     system. They are provided by the infrastructure. </li>
# <li>User defined named type: API designers can create custom types and use them for
#     the typed elements. These types have a unique identifier.</li>
# <li>Generic type instantiation: The language infrastructure also provides generic
#     types such as list, map, set and so on. An instantiation of one of these generic types
#     could also be used for the typed elements.</li>
#  </ul>

package Com::Vmware::Vapi::Metadata::Metamodel::Type;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::Type structure
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
         'discriminant_name' => 'category',
         'case_map' => {
               'BUILTIN' => ['builtin_type'],
               'USER_DEFINED' => ['user_defined_type'],
               'GENERIC' => ['generic_instantiation'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{category} = $args{'category'};
   $self->{builtin_type} = $args{'builtin_type'};
   $self->{user_defined_type} = $args{'user_defined_type'};
   $self->{generic_instantiation} = $args{'generic_instantiation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::Type');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.type');
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'Type::Category'));
   $self->set_binding_field('key' => 'builtin_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'Type::BuiltinType')));
   $self->set_binding_field('key' => 'user_defined_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'UserDefinedType')));
   $self->set_binding_field('key' => 'generic_instantiation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'GenericInstantiation')));
   bless $self, $class;
   return $self;
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# Category of this type.
#
# Category#
sub get_category {
   my ($self, %args) = @_;
   return $self->{'category'}; 	
}

## @method set_category ()
# Sets the given value for 'category' property.
# 
# @param category  - New value for the field.
# Category of this type.
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_builtin_type ()
# Gets the value of 'builtin_type' property.
#
# @retval builtin_type - The current value of the field.
# Category of the built-in type.
#
# optional#
sub get_builtin_type {
   my ($self, %args) = @_;
   return $self->{'builtin_type'}; 	
}

## @method set_builtin_type ()
# Sets the given value for 'builtin_type' property.
# 
# @param builtin_type  - New value for the field.
# Category of the built-in type.
#
sub set_builtin_type {
   my ($self, %args) = @_;
   $self->{'builtin_type'} = $args{'builtin_type'}; 
   return;	
}

## @method get_user_defined_type ()
# Gets the value of 'user_defined_type' property.
#
# @retval user_defined_type - The current value of the field.
# Identifier and type of the user defined type.
#
# optional#
sub get_user_defined_type {
   my ($self, %args) = @_;
   return $self->{'user_defined_type'}; 	
}

## @method set_user_defined_type ()
# Sets the given value for 'user_defined_type' property.
# 
# @param user_defined_type  - New value for the field.
# Identifier and type of the user defined type.
#
sub set_user_defined_type {
   my ($self, %args) = @_;
   $self->{'user_defined_type'} = $args{'user_defined_type'}; 
   return;	
}

## @method get_generic_instantiation ()
# Gets the value of 'generic_instantiation' property.
#
# @retval generic_instantiation - The current value of the field.
# Instantiation of one of the generic types available in the interface definition
#     language.
#
# optional#
sub get_generic_instantiation {
   my ($self, %args) = @_;
   return $self->{'generic_instantiation'}; 	
}

## @method set_generic_instantiation ()
# Sets the given value for 'generic_instantiation' property.
# 
# @param generic_instantiation  - New value for the field.
# Instantiation of one of the generic types available in the interface definition
#     language.
#
sub set_generic_instantiation {
   my ($self, %args) = @_;
   $self->{'generic_instantiation'} = $args{'generic_instantiation'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Metamodel::Type::Category
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Type::Category``   *enumerated type* 
#     provides  *enumeration value*  for each category of the type.
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::Category::BUILTIN #
#The type is one of the built-in types specified in  class
# Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType 
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::Category::USER_DEFINED #
#The type is one of the user defined named types.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::Category::GENERIC #
#The type is an instantiation of one of the generic types.

package Com::Vmware::Vapi::Metadata::Metamodel::Type::Category;

use constant {
    BUILTIN =>  'BUILTIN',
    USER_DEFINED =>  'USER_DEFINED',
    GENERIC =>  'GENERIC',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::Type::Category enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.metamodel.type.category',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::Type::Category');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType``   *enumerated type*
#     provides  *enumeration value*  for each of the built-in types present in the interface
#     definition language type system.
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::VOID #
#The built-in type is a void. The value is  *null* .
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::BOOLEAN #
#The built-in type is a boolean. The value is true or false.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::LONG #
#The built-in type is a long. The value is a 64 bit signed integer.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::DOUBLE #
#The built-in type is a double. The value is a 64 bit floating point number.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::STRING #
#The built-in type is a string. The value is a variable-length sequence of zero or more
# unicode characters.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::BINARY #
#The built-in type is a binary. The value is a variable-length sequence of zero or more
# bytes.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::SECRET #
#The built-in type is a secret. The value is a variable-length sequence of zero or more
# unicode characters. The value contains sensitive data that should not be printed or
# displayed anywhere.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::DATE_TIME #
#The built-in type is a datetime. The value should be in the UTC timezone and the precision
# is milliseconds.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::ID #
#The built-in type is an ID. The value represents an identifier for a resource.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::URI #
#The built-in type is an URI. The value follows the IRI specification in RFC 3987.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::ANY_ERROR #
#The built-in type is an arbitrary  *error*  type. This is used if the value of a typed
# element can be one of any user defined named type which is an  *error* .
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::DYNAMIC_STRUCTURE #
#The built-in type is a dynamic structure. This is used if the value of a typed element can
# be one of any user defined named type.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType::OPAQUE #
#The built-in type is an opaque. This is used if the value of a typed element could be of
# any type and the actual type will be known only during the execution of the API. This is
# mostly used in infrastructure  *interfaces* .

package Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType;

use constant {
    VOID =>  'VOID',
    BOOLEAN =>  'BOOLEAN',
    LONG =>  'LONG',
    DOUBLE =>  'DOUBLE',
    STRING =>  'STRING',
    BINARY =>  'BINARY',
    SECRET =>  'SECRET',
    DATE_TIME =>  'DATE_TIME',
    ID =>  'ID',
    URI =>  'URI',
    ANY_ERROR =>  'ANY_ERROR',
    DYNAMIC_STRUCTURE =>  'DYNAMIC_STRUCTURE',
    OPAQUE =>  'OPAQUE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.metamodel.type.builtin_type',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::Type::BuiltinType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


