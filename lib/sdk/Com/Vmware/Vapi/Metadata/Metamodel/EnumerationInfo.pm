## @class Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo``   *class*  contains
#     the metamodel information of an enumeration element.

package Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo structure
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
   $self->{values} = $args{'values'};
   $self->{metadata} = $args{'metadata'};
   $self->{documentation} = $args{'documentation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.enumeration_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'values', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'EnumerationValueInfo')));
   $self->set_binding_field('key' => 'metadata', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ElementMap')}))));
   $self->set_binding_field('key' => 'documentation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Dot separated name of the enumeration element. The segments in the name reflect the
#     organization of the APIs. The format of each segment is lower case with underscores.
#     Each underscore represents a word boundary. If there are acronyms in the word, the
#     capitalization is preserved. This format makes it easy to translate the segment into a
#     different naming convention.
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
# Dot separated name of the enumeration element. The segments in the name reflect the
#     organization of the APIs. The format of each segment is lower case with underscores.
#     Each underscore represents a word boundary. If there are acronyms in the word, the
#     capitalization is preserved. This format makes it easy to translate the segment into a
#     different naming convention.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_values ()
# Gets the value of 'values' property.
#
# @retval values - The current value of the field.
# Metamodel information of all the enumeration value elements contained in this
#     enumeration element. The order of the enumeration value elements in the list is same
#     as the order in which they are defined in the interface definition file.
#
# List#
sub get_values {
   my ($self, %args) = @_;
   return $self->{'values'}; 	
}

## @method set_values ()
# Sets the given value for 'values' property.
# 
# @param values  - New value for the field.
# Metamodel information of all the enumeration value elements contained in this
#     enumeration element. The order of the enumeration value elements in the list is same
#     as the order in which they are defined in the interface definition file.
#
sub set_values {
   my ($self, %args) = @_;
   $self->{'values'} = $args{'values'}; 
   return;	
}

## @method get_metadata ()
# Gets the value of 'metadata' property.
#
# @retval metadata - The current value of the field.
# Generic metadata elements for an enumeration element. The key in the  *map*  is the
#     name of the metadata element and the value is the data associated with that metadata
#     element. <p>
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
# Generic metadata elements for an enumeration element. The key in the  *map*  is the
#     name of the metadata element and the value is the data associated with that metadata
#     element. <p>
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
# English language documentation for an enumeration element. It can contain HTML markup
#     and Javadoc tags. The first sentence of the enumeration documentation is a complete
#     sentence that identifies the enumeration by name and summarizes the purpose of the
#     enumeration. The documentation describes the context in which the enumeration is used.
#     <p>
# 
# The documentation also contains references to the context in which the enumeration is
#     used. But if the enumeration is used in many contexts, the references may not be
#     present.</p>
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
# English language documentation for an enumeration element. It can contain HTML markup
#     and Javadoc tags. The first sentence of the enumeration documentation is a complete
#     sentence that identifies the enumeration by name and summarizes the purpose of the
#     enumeration. The documentation describes the context in which the enumeration is used.
#     <p>
# 
# The documentation also contains references to the context in which the enumeration is
#     used. But if the enumeration is used in many contexts, the references may not be
#     present.</p>
#
sub set_documentation {
   my ($self, %args) = @_;
   $self->{'documentation'} = $args{'documentation'}; 
   return;	
}


1;


