## @class Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo``   *class*  contains
#     metamodel information of the constant elements.

package Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{value} = $args{'value'};
   $self->{documentation} = $args{'documentation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Metamodel::ConstantInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.metamodel.constant_info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'Type'));
   $self->set_binding_field('key' => 'value', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Metamodel', 'type_name' => 'ConstantValue'));
   $self->set_binding_field('key' => 'documentation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the constant element.
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
# Type of the constant element.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_value ()
# Gets the value of 'value' property.
#
# @retval value - The current value of the field.
# Value of the constant element.
#
# ConstantValue#
sub get_value {
   my ($self, %args) = @_;
   return $self->{'value'}; 	
}

## @method set_value ()
# Sets the given value for 'value' property.
# 
# @param value  - New value for the field.
# Value of the constant element.
#
sub set_value {
   my ($self, %args) = @_;
   $self->{'value'} = $args{'value'}; 
   return;	
}

## @method get_documentation ()
# Gets the value of 'documentation' property.
#
# @retval documentation - The current value of the field.
# English language documentation for the constant element. It can contain HTML markup
#     and documentation tags (similar to Javadoc tags).
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
# English language documentation for the constant element. It can contain HTML markup
#     and documentation tags (similar to Javadoc tags).
#
sub set_documentation {
   my ($self, %args) = @_;
   $self->{'documentation'} = $args{'documentation'}; 
   return;	
}


1;


