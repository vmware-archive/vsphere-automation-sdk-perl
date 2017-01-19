## @class Com::Vmware::Vapi::Metadata::Metamodel::ErrorInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::ErrorInfo``   *class*  contains the
#     metadata information about the error elements contained in an operation element.

package Com::Vmware::Vapi::Metadata::Metamodel::ErrorInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::ErrorInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{structure_id} = $args{'structure_id'};
   $self->{documentation} = $args{'documentation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::ErrorInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.error_info');
   $self->set_binding_field('key' => 'structure_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'documentation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_structure_id ()
# Gets the value of 'structure_id' property.
#
# @retval structure_id - The current value of the field.
# Identifier for the structure element corresponding to the error that is being reported
#     by the operation.
#
# ID#
sub get_structure_id {
   my ($self, %args) = @_;
   return $self->{'structure_id'}; 	
}

## @method set_structure_id ()
# Sets the given value for 'structure_id' property.
# 
# @param structure_id  - New value for the field.
# Identifier for the structure element corresponding to the error that is being reported
#     by the operation.
#
sub set_structure_id {
   my ($self, %args) = @_;
   $self->{'structure_id'} = $args{'structure_id'}; 
   return;	
}

## @method get_documentation ()
# Gets the value of 'documentation' property.
#
# @retval documentation - The current value of the field.
# The English language documentation for the service element. It can contain HTML markup
#     and Javadoc tags.
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
# The English language documentation for the service element. It can contain HTML markup
#     and Javadoc tags.
#
sub set_documentation {
   my ($self, %args) = @_;
   $self->{'documentation'} = $args{'documentation'}; 
   return;	
}


1;


