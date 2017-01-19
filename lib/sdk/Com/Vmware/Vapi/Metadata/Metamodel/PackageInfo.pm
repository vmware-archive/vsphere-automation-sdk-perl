## @class Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo``   *class*  contains the
#     metamodel information of all the service elements, structure elements and enumeration
#     elements contained in the package element.

package Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo structure
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
   $self->{structures} = $args{'structures'};
   $self->{enumerations} = $args{'enumerations'};
   $self->{services} = $args{'services'};
   $self->{metadata} = $args{'metadata'};
   $self->{documentation} = $args{'documentation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.package_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'structures', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'StructureInfo')}))));
   $self->set_binding_field('key' => 'enumerations', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'EnumerationInfo')}))));
   $self->set_binding_field('key' => 'services', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ServiceInfo')}))));
   $self->set_binding_field('key' => 'metadata', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ElementMap')}))));
   $self->set_binding_field('key' => 'documentation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Dot separated name of the package element. The segments in the name reflect the
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
# Dot separated name of the package element. The segments in the name reflect the
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

## @method get_structures ()
# Gets the value of 'structures' property.
#
# @retval structures - The current value of the field.
# Metamodel information of all the structure elements contained in the package element.
#     The key in the  *map*  is the identifier of the structure element and the value in the
#      *map*  is the metamodel information for the structure element. <p>
# 
# This does not include the structure elements contained in the service elements that
#     are contained in this package element.</p>
#
# Map#
sub get_structures {
   my ($self, %args) = @_;
   return $self->{'structures'}; 	
}

## @method set_structures ()
# Sets the given value for 'structures' property.
# 
# @param structures  - New value for the field.
# Metamodel information of all the structure elements contained in the package element.
#     The key in the  *map*  is the identifier of the structure element and the value in the
#      *map*  is the metamodel information for the structure element. <p>
# 
# This does not include the structure elements contained in the service elements that
#     are contained in this package element.</p>
#
sub set_structures {
   my ($self, %args) = @_;
   $self->{'structures'} = $args{'structures'}; 
   return;	
}

## @method get_enumerations ()
# Gets the value of 'enumerations' property.
#
# @retval enumerations - The current value of the field.
# Metamodel information of all the enumeration elements contained in the package
#     element. The key in the  *map*  is the identifier of the enumeration element and the
#     value in the  *map*  is the metamodel information for the enumeration element. <p>
# 
# This does not include the enumeration elements that are contained in the service
#     elements of this package element or structure elements of this package element.</p>
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
# Metamodel information of all the enumeration elements contained in the package
#     element. The key in the  *map*  is the identifier of the enumeration element and the
#     value in the  *map*  is the metamodel information for the enumeration element. <p>
# 
# This does not include the enumeration elements that are contained in the service
#     elements of this package element or structure elements of this package element.</p>
#
sub set_enumerations {
   my ($self, %args) = @_;
   $self->{'enumerations'} = $args{'enumerations'}; 
   return;	
}

## @method get_services ()
# Gets the value of 'services' property.
#
# @retval services - The current value of the field.
# Metamodel information of all the service elements contained in the package element.
#     The key in the  *map*  is the identifier of the service element and the value in the 
#     *map*  is the metamodel information for the service element.
#
# Map#
sub get_services {
   my ($self, %args) = @_;
   return $self->{'services'}; 	
}

## @method set_services ()
# Sets the given value for 'services' property.
# 
# @param services  - New value for the field.
# Metamodel information of all the service elements contained in the package element.
#     The key in the  *map*  is the identifier of the service element and the value in the 
#     *map*  is the metamodel information for the service element.
#
sub set_services {
   my ($self, %args) = @_;
   $self->{'services'} = $args{'services'}; 
   return;	
}

## @method get_metadata ()
# Gets the value of 'metadata' property.
#
# @retval metadata - The current value of the field.
# Generic metadata elements for the package element. The key in the  *map*  is the name
#     of the metadata element and the value is the data associated with that metadata
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
# Generic metadata elements for the package element. The key in the  *map*  is the name
#     of the metadata element and the value is the data associated with that metadata
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
# English language documentation for a package. It can contain HTML markup and Javadoc
#     tags. The first sentence of the package documentation is a complete sentence that
#     identifies the package by name and summarizes the purpose of the package. <p>
# 
# The primary purpose of a package documentation is to provide high-level context that
#     will provide a framework in which the users can put the detail about the package
#     contents.</p>
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
# English language documentation for a package. It can contain HTML markup and Javadoc
#     tags. The first sentence of the package documentation is a complete sentence that
#     identifies the package by name and summarizes the purpose of the package. <p>
# 
# The primary purpose of a package documentation is to provide high-level context that
#     will provide a framework in which the users can put the detail about the package
#     contents.</p>
#
sub set_documentation {
   my ($self, %args) = @_;
   $self->{'documentation'} = $args{'documentation'}; 
   return;	
}


1;


