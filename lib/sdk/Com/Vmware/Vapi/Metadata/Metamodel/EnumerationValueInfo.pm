## @class Com::Vmware::Vapi::Metadata::Metamodel::EnumerationValueInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::EnumerationValueInfo``   *class* 
#     describes the  *enumeration value*  in the  *enumerated type* .

package Com::Vmware::Vapi::Metadata::Metamodel::EnumerationValueInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::EnumerationValueInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{value} = $args{'value'};
   $self->{metadata} = $args{'metadata'};
   $self->{documentation} = $args{'documentation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::EnumerationValueInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.enumeration_value_info');
   $self->set_binding_field('key' => 'value', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'metadata', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ElementMap')}))));
   $self->set_binding_field('key' => 'documentation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_value ()
# Gets the value of 'value' property.
#
# @retval value - The current value of the field.
# Value in the enumerated type. All the characters in the string are capitalized.
#
# String#
sub get_value {
   my ($self, %args) = @_;
   return $self->{'value'}; 	
}

## @method set_value ()
# Sets the given value for 'value' property.
# 
# @param value  - New value for the field.
# Value in the enumerated type. All the characters in the string are capitalized.
#
sub set_value {
   my ($self, %args) = @_;
   $self->{'value'} = $args{'value'}; 
   return;	
}

## @method get_metadata ()
# Gets the value of 'metadata' property.
#
# @retval metadata - The current value of the field.
# Additional metadata for enumeration value in the enumerated type. The key in the 
#     *map*  is the name of the metadata element and the value is the data associated with
#     that metadata element. <p>
# 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier  contains
#     possible string values for keys in the  *map* .</p>
#
# Map#
sub get_metadata {
   my ($self, %args) = @_;
   return $self->{'metadata'}; 	
}

## @method set_metadata ()
# Sets the given value for 'metadata' property.
# 
# @param metadata  - New value for the field.
# Additional metadata for enumeration value in the enumerated type. The key in the 
#     *map*  is the name of the metadata element and the value is the data associated with
#     that metadata element. <p>
# 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier  contains
#     possible string values for keys in the  *map* .</p>
#
sub set_metadata {
   my ($self, %args) = @_;
   $self->{'metadata'} = $args{'metadata'}; 
   return;	
}

## @method get_documentation ()
# Gets the value of 'documentation' property.
#
# @retval documentation - The current value of the field.
# English language documentation for an enumeration value. It can contain HTML markup
#     and documentation tags (similar to Javadoc tags). The first statement will be a noun
#     or verb phrase that describes the purpose of the enumeration value.
#
# String#
sub get_documentation {
   my ($self, %args) = @_;
   return $self->{'documentation'}; 	
}

## @method set_documentation ()
# Sets the given value for 'documentation' property.
# 
# @param documentation  - New value for the field.
# English language documentation for an enumeration value. It can contain HTML markup
#     and documentation tags (similar to Javadoc tags). The first statement will be a noun
#     or verb phrase that describes the purpose of the enumeration value.
#
sub set_documentation {
   my ($self, %args) = @_;
   $self->{'documentation'} = $args{'documentation'}; 
   return;	
}


1;


