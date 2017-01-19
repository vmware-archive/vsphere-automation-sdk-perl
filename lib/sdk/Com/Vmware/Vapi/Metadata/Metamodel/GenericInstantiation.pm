## @class Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation``   *class* 
#     describes the type information of a typed element when the type is an instantiation of
#     one of the generic types provided by the infrastructure.

package Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation structure
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
         'discriminant_name' => 'generic_type',
         'case_map' => {
               'LIST' => ['element_type'],
               'OPTIONAL' => ['element_type'],
               'SET' => ['element_type'],
               'MAP' => ['map_key_type', 'map_value_type'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{generic_type} = $args{'generic_type'};
   $self->{element_type} = $args{'element_type'};
   $self->{map_key_type} = $args{'map_key_type'};
   $self->{map_value_type} = $args{'map_value_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.generic_instantiation');
   $self->set_binding_field('key' => 'generic_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'GenericInstantiation::GenericType'));
   $self->set_binding_field('key' => 'element_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'Type')));
   $self->set_binding_field('key' => 'map_key_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'Type')));
   $self->set_binding_field('key' => 'map_value_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'Type')));
   bless $self, $class;
   return $self;
}

## @method get_generic_type ()
# Gets the value of 'generic_type' property.
#
# @retval generic_type - The current value of the field.
# The generic type that is being instantiated.
#
# GenericType#
sub get_generic_type {
   my ($self, %args) = @_;
   return $self->{'generic_type'}; 	
}

## @method set_generic_type ()
# Sets the given value for 'generic_type' property.
# 
# @param generic_type  - New value for the field.
# The generic type that is being instantiated.
#
sub set_generic_type {
   my ($self, %args) = @_;
   $self->{'generic_type'} = $args{'generic_type'}; 
   return;	
}

## @method get_element_type ()
# Gets the value of 'element_type' property.
#
# @retval element_type - The current value of the field.
# Type of the element parameter if the generic type instantiation is a 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.LIST`
#     , 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.OPTIONAL`
#     or 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.SET`
#     .
#
# optional#
sub get_element_type {
   my ($self, %args) = @_;
   return $self->{'element_type'}; 	
}

## @method set_element_type ()
# Sets the given value for 'element_type' property.
# 
# @param element_type  - New value for the field.
# Type of the element parameter if the generic type instantiation is a 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.LIST`
#     , 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.OPTIONAL`
#     or 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType.SET`
#     .
#
sub set_element_type {
   my ($self, %args) = @_;
   $self->{'element_type'} = $args{'element_type'}; 
   return;	
}

## @method get_map_key_type ()
# Gets the value of 'map_key_type' property.
#
# @retval map_key_type - The current value of the field.
# Type of the key parameter of the map generic type instantiation. The map generic type
#     has a key parameter and value parameter. The type of the value parameter is described
#     by 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation.map_value_type` ..
#
# optional#
sub get_map_key_type {
   my ($self, %args) = @_;
   return $self->{'map_key_type'}; 	
}

## @method set_map_key_type ()
# Sets the given value for 'map_key_type' property.
# 
# @param map_key_type  - New value for the field.
# Type of the key parameter of the map generic type instantiation. The map generic type
#     has a key parameter and value parameter. The type of the value parameter is described
#     by 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation.map_value_type` ..
#
sub set_map_key_type {
   my ($self, %args) = @_;
   $self->{'map_key_type'} = $args{'map_key_type'}; 
   return;	
}

## @method get_map_value_type ()
# Gets the value of 'map_value_type' property.
#
# @retval map_value_type - The current value of the field.
# Type of the value parameter of the map generic type instantiation. The map generic
#     type has a key parameter and value parameter. The type of the key parameter is
#     described by 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation.map_key_type` ..
#
# optional#
sub get_map_value_type {
   my ($self, %args) = @_;
   return $self->{'map_value_type'}; 	
}

## @method set_map_value_type ()
# Sets the given value for 'map_value_type' property.
# 
# @param map_value_type  - New value for the field.
# Type of the value parameter of the map generic type instantiation. The map generic
#     type has a key parameter and value parameter. The type of the key parameter is
#     described by 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation.map_key_type` ..
#
sub set_map_value_type {
   my ($self, %args) = @_;
   $self->{'map_value_type'} = $args{'map_value_type'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType``  
#     *enumerated type*  provides  *enumeration values*  for each of the generic types
#     provided by the infrastructure.
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType::LIST #
#Indicates the generic type is a list.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType::MAP #
#Indicates the generic type is a map.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType::OPTIONAL #
#Indicates the generic type is an optional.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType::SET #
#Indicates the generic type is a set.

package Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType;

use constant {
    LIST =>  'LIST',
    MAP =>  'MAP',
    OPTIONAL =>  'OPTIONAL',
    SET =>  'SET',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.metamodel.generic_instantiation.generic_type',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::GenericInstantiation::GenericType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


