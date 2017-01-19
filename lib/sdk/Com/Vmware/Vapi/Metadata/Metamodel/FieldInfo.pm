## @class Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo``   *class*  contains
#     metamodel information of a field element contained in a structure element.

package Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{type} = $args{'type'};
   $self->{metadata} = $args{'metadata'};
   $self->{documentation} = $args{'documentation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::FieldInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.field_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'Type'));
   $self->set_binding_field('key' => 'metadata', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ElementMap')}))));
   $self->set_binding_field('key' => 'documentation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the field element in a canonical format. The format is lower case with
#     underscores. Each underscore represents a word boundary. If there are acronyms in the
#     word, the capitalization is preserved. This format makes it easy to translate the
#     segment into a different naming convention.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the field element in a canonical format. The format is lower case with
#     underscores. Each underscore represents a word boundary. If there are acronyms in the
#     word, the capitalization is preserved. This format makes it easy to translate the
#     segment into a different naming convention.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type information.
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
# Type information.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_metadata ()
# Gets the value of 'metadata' property.
#
# @retval metadata - The current value of the field.
# Generic metadata elements for the field element. The key in the  *map*  is the name of
#     the metadata element and the value is the data associated with that metadata element.
#     <p>
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
# Generic metadata elements for the field element. The key in the  *map*  is the name of
#     the metadata element and the value is the data associated with that metadata element.
#     <p>
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
# English language documentation for the service element. It can contain HTML markup and
#     Javadoc tags.
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
# English language documentation for the service element. It can contain HTML markup and
#     Javadoc tags.
#
sub set_documentation {
   my ($self, %args) = @_;
   $self->{'documentation'} = $args{'documentation'}; 
   return;	
}


1;


