## @class Com::Vmware::Vapi::Metadata::Metamodel::UserDefinedType
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::UserDefinedType``   *class*  contains
#     the metamodel type information of a typed element whose type is a user defined named
#     type.

package Com::Vmware::Vapi::Metadata::Metamodel::UserDefinedType;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::UserDefinedType structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{resource_type} = $args{'resource_type'};
   $self->{resource_id} = $args{'resource_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::UserDefinedType');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.user_defined_type');
   $self->set_binding_field('key' => 'resource_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'resource_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_resource_type ()
# Gets the value of 'resource_type' property.
#
# @retval resource_type - The current value of the field.
# Category of the user defined named type. The named type could be a structure element
#     or an enumeration element.
#
# String#
sub get_resource_type {
   my ($self, %args) = @_;
   return $self->{'resource_type'}; 	
}

## @method set_resource_type ()
# Sets the given value for 'resource_type' property.
# 
# @param resource_type  - New value for the field.
# Category of the user defined named type. The named type could be a structure element
#     or an enumeration element.
#
sub set_resource_type {
   my ($self, %args) = @_;
   $self->{'resource_type'} = $args{'resource_type'}; 
   return;	
}

## @method get_resource_id ()
# Gets the value of 'resource_id' property.
#
# @retval resource_id - The current value of the field.
# Identifier of the user defined named type.
#
# ID#
sub get_resource_id {
   my ($self, %args) = @_;
   return $self->{'resource_id'}; 	
}

## @method set_resource_id ()
# Sets the given value for 'resource_id' property.
# 
# @param resource_id  - New value for the field.
# Identifier of the user defined named type.
#
sub set_resource_id {
   my ($self, %args) = @_;
   $self->{'resource_id'} = $args{'resource_id'}; 
   return;	
}


1;


