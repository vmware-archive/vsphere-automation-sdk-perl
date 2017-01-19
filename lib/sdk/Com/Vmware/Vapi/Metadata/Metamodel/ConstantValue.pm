## @class Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue``   *class*  contains the
#     metamodel information of the constant element.

package Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue structure
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
               'PRIMITIVE' => ['primitive_value'],
               'LIST' => ['list_value'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{category} = $args{'category'};
   $self->{primitive_value} = $args{'primitive_value'};
   $self->{list_value} = $args{'list_value'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.constant_value');
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ConstantValue::Category'));
   $self->set_binding_field('key' => 'primitive_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'PrimitiveValue')));
   $self->set_binding_field('key' => 'list_value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'PrimitiveValue'))));
   bless $self, $class;
   return $self;
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# Category of the type of constant value.
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
# Category of the type of constant value.
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_primitive_value ()
# Gets the value of 'primitive_value' property.
#
# @retval primitive_value - The current value of the field.
# Primitive value of the constant element.
#
# optional#
sub get_primitive_value {
   my ($self, %args) = @_;
   return $self->{'primitive_value'}; 	
}

## @method set_primitive_value ()
# Sets the given value for 'primitive_value' property.
# 
# @param primitive_value  - New value for the field.
# Primitive value of the constant element.
#
sub set_primitive_value {
   my ($self, %args) = @_;
   $self->{'primitive_value'} = $args{'primitive_value'}; 
   return;	
}

## @method get_list_value ()
# Gets the value of 'list_value' property.
#
# @retval list_value - The current value of the field.
# List value of the constant element.
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
# List value of the constant element.
#
sub set_list_value {
   my ($self, %args) = @_;
   $self->{'list_value'} = $args{'list_value'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category``   *enumerated
#     type*  defines  *enumeration values*  for the valid kinds of values.
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category::PRIMITIVE #
#Indicates the type of constant value is primitive.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category::LIST #
#Indicates the type of constant value is a list.

package Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category;

use constant {
    PRIMITIVE =>  'PRIMITIVE',
    LIST =>  'LIST',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.metamodel.constant_value.category',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::ConstantValue::Category');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


