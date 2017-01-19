## @class Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo``   *class*  contains the
#     metamodel information of all the field elements, constant elements and enumeration
#     elements contained in the structure element. <p>
# 
# In the interface definition language, API designers have the ability to include all
#     the fields from one structure to another structure. This is done by using an
#     annotation  ``\@Include``  on the structure in which we want to add the fields. If
#     this annotation is present, the list of fields in the 
#     ``Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo``  will also contain the
#     fields that are being included. The annotation information is also retained in the 
#     :attr:`Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo.metadata`  element as
#     well.</p>

package Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo structure
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
   $self->{enumerations} = $args{'enumerations'};
   $self->{constants} = $args{'constants'};
   $self->{fields} = $args{'fields'};
   $self->{metadata} = $args{'metadata'};
   $self->{documentation} = $args{'documentation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.structure_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'StructureInfo::Type'));
   $self->set_binding_field('key' => 'enumerations', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'EnumerationInfo')}))));
   $self->set_binding_field('key' => 'constants', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ConstantInfo')}))));
   $self->set_binding_field('key' => 'fields', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'FieldInfo')));
   $self->set_binding_field('key' => 'metadata', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ElementMap')}))));
   $self->set_binding_field('key' => 'documentation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Dot separated name of the structure element. The segments in the name reflect the
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
# Dot separated name of the structure element. The segments in the name reflect the
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

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the structure.
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
# Type of the structure.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_enumerations ()
# Gets the value of 'enumerations' property.
#
# @retval enumerations - The current value of the field.
# Metamodel information of all the enumeration elements contained in the structure
#     element. The key in the  *map*  is the identifier of the enumeration element and the
#     value is the metamodel information of the enumeration element.
#
# Map#
sub get_enumerations {
   my ($self, %args) = @_;
   return $self->{'enumerations'}; 	
}

## @method set_enumerations ()
# Sets the given value for 'enumerations' property.
# 
# @param enumerations  - New value for the field.
# Metamodel information of all the enumeration elements contained in the structure
#     element. The key in the  *map*  is the identifier of the enumeration element and the
#     value is the metamodel information of the enumeration element.
#
sub set_enumerations {
   my ($self, %args) = @_;
   $self->{'enumerations'} = $args{'enumerations'}; 
   return;	
}

## @method get_constants ()
# Gets the value of 'constants' property.
#
# @retval constants - The current value of the field.
# Metamodel information of all the constant elements contained in the structure element.
#     The key in the  *map*  is the name of the constant element and the value in the  *map*
#      is the metamodel information for the constant element.
#
# Map#
sub get_constants {
   my ($self, %args) = @_;
   return $self->{'constants'}; 	
}

## @method set_constants ()
# Sets the given value for 'constants' property.
# 
# @param constants  - New value for the field.
# Metamodel information of all the constant elements contained in the structure element.
#     The key in the  *map*  is the name of the constant element and the value in the  *map*
#      is the metamodel information for the constant element.
#
sub set_constants {
   my ($self, %args) = @_;
   $self->{'constants'} = $args{'constants'}; 
   return;	
}

## @method get_fields ()
# Gets the value of 'fields' property.
#
# @retval fields - The current value of the field.
# Metamodel information of all the field elements. The order of the field elements in
#     the list matches the order in which the fields are defined in the service.
#
# List#
sub get_fields {
   my ($self, %args) = @_;
   return $self->{'fields'}; 	
}

## @method set_fields ()
# Sets the given value for 'fields' property.
# 
# @param fields  - New value for the field.
# Metamodel information of all the field elements. The order of the field elements in
#     the list matches the order in which the fields are defined in the service.
#
sub set_fields {
   my ($self, %args) = @_;
   $self->{'fields'} = $args{'fields'}; 
   return;	
}

## @method get_metadata ()
# Gets the value of 'metadata' property.
#
# @retval metadata - The current value of the field.
# Generic metadata elements for the structure element. The key in the  *map*  is the
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
# Generic metadata elements for the structure element. The key in the  *map*  is the
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
# English language documentation for a structure element. It can contain HTML markup and
#     Javadoc tags. The first sentence of the structure documentation is a complete sentence
#     that identifies the structure by name and summarizes the purpose of the structure.
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
# English language documentation for a structure element. It can contain HTML markup and
#     Javadoc tags. The first sentence of the structure documentation is a complete sentence
#     that identifies the structure by name and summarizes the purpose of the structure.
#
sub set_documentation {
   my ($self, %args) = @_;
   $self->{'documentation'} = $args{'documentation'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type``   *enumerated
#     type*  defines the kind of this structure element. In the interface definition
#     language, structure element and error element have similar characteristics. The
#     difference is that only error elements can be used to describe the  *errors*  of an
#     operation element.
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type::STRUCTURE #
#If the type is a structure element.
#
# Constant Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type::ERROR #
#If the type is an error element.

package Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type;

use constant {
    STRUCTURE =>  'STRUCTURE',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.metamodel.structure_info.type',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


