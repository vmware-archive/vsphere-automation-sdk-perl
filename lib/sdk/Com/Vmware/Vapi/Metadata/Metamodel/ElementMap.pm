## @class Com::Vmware::Vapi::Metadata::Metamodel::ElementMap
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::ElementMap``   *class*  contains the
#     metadata elements. <p>
# 
# One of the sources for metadata is the annotations present in the interface definition
#     language. When an annotation is represented in the 
#     ``Com::Vmware::Vapi::Metadata::Metamodel::ElementMap`` , 
#     ``Com::Vmware::Vapi::Metadata::Metamodel::ElementMap``  describes the data specified
#     in the arguments for the annotation. </p>
# 
# <p>
# 
# For example, in  ``\@UnionCase(tag="tag", value="SELECT")`` , ElementMap describes the
#     keyword arguments tag and value.</p>

package Com::Vmware::Vapi::Metadata::Metamodel::ElementMap;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::ElementMap structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{elements} = $args{'elements'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::ElementMap');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.element_map');
   $self->set_binding_field('key' => 'elements', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ElementValue')}))));
   bless $self, $class;
   return $self;
}

## @method get_elements ()
# Gets the value of 'elements' property.
#
# @retval elements - The current value of the field.
# Metamodel information of the metadata elements. The key parameter of the  *map*  is
#     the identifier for the element and the value corresponds to the element value.
#
# Map#
sub get_elements {
   my ($self, %args) = @_;
   return $self->{'elements'}; 	
}

## @method set_elements ()
# Sets the given value for 'elements' property.
# 
# @param elements  - New value for the field.
# Metamodel information of the metadata elements. The key parameter of the  *map*  is
#     the identifier for the element and the value corresponds to the element value.
#
sub set_elements {
   my ($self, %args) = @_;
   $self->{'elements'} = $args{'elements'}; 
   return;	
}


1;


