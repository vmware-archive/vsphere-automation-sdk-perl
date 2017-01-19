## @class Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo``   *class*  contains
#     metamodel information of an operation element.

package Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo structure
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
   $self->{params} = $args{'params'};
   $self->{output} = $args{'output'};
   $self->{errors} = $args{'errors'};
   $self->{metadata} = $args{'metadata'};
   $self->{documentation} = $args{'documentation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::OperationInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.operation_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'params', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'FieldInfo')));
   $self->set_binding_field('key' => 'output', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'OperationResultInfo'));
   $self->set_binding_field('key' => 'errors', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ErrorInfo')));
   $self->set_binding_field('key' => 'metadata', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ElementMap')}))));
   $self->set_binding_field('key' => 'documentation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the operation element in a canonical format. The format is lower case with
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
# Name of the operation element in a canonical format. The format is lower case with
#     underscores. Each underscore represents a word boundary. If there are acronyms in the
#     word, the capitalization is preserved. This format makes it easy to translate the
#     segment into a different naming convention.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_params ()
# Gets the value of 'params' property.
#
# @retval params - The current value of the field.
# Metamodel information for the parameter elements. The order of the parameters elements
#     in the list is same as the order of the parameters declared in the interface
#     definition file.
#
# List#
sub get_params {
   my ($self, %args) = @_;
   return $self->{'params'}; 	
}

## @method set_params ()
# Sets the given value for 'params' property.
# 
# @param params  - New value for the field.
# Metamodel information for the parameter elements. The order of the parameters elements
#     in the list is same as the order of the parameters declared in the interface
#     definition file.
#
sub set_params {
   my ($self, %args) = @_;
   $self->{'params'} = $args{'params'}; 
   return;	
}

## @method get_output ()
# Gets the value of 'output' property.
#
# @retval output - The current value of the field.
# Metamodel type for the output element.
#
# OperationResultInfo#
sub get_output {
   my ($self, %args) = @_;
   return $self->{'output'}; 	
}

## @method set_output ()
# Sets the given value for 'output' property.
# 
# @param output  - New value for the field.
# Metamodel type for the output element.
#
sub set_output {
   my ($self, %args) = @_;
   $self->{'output'} = $args{'output'}; 
   return;	
}

## @method get_errors ()
# Gets the value of 'errors' property.
#
# @retval errors - The current value of the field.
# List of error elements that might be reported by the operation element. If the
#     operation reports the same error for more than one reason, the list contains the error
#     element associated with the error more than once with different documentation
#     elements.
#
# List#
sub get_errors {
   my ($self, %args) = @_;
   return $self->{'errors'}; 	
}

## @method set_errors ()
# Sets the given value for 'errors' property.
# 
# @param errors  - New value for the field.
# List of error elements that might be reported by the operation element. If the
#     operation reports the same error for more than one reason, the list contains the error
#     element associated with the error more than once with different documentation
#     elements.
#
sub set_errors {
   my ($self, %args) = @_;
   $self->{'errors'} = $args{'errors'}; 
   return;	
}

## @method get_metadata ()
# Gets the value of 'metadata' property.
#
# @retval metadata - The current value of the field.
# Generic metadata elements for the operation element. The key in the  *map*  is the
#     name of the metadata element and the value is the data associated with that metadata
#     element. <p>
# 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier  contains
#     possible string values for key in the  *map* .</p>
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
# Generic metadata elements for the operation element. The key in the  *map*  is the
#     name of the metadata element and the value is the data associated with that metadata
#     element. <p>
# 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::MetadataIdentifier  contains
#     possible string values for key in the  *map* .</p>
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


