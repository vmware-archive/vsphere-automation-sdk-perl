## @class Com::Vmware::Vapi::Metadata::Authentication::OperationInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Authentication::OperationInfo``   *class* 
#     contains authentication information of an operation element.

package Com::Vmware::Vapi::Metadata::Authentication::OperationInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Authentication::OperationInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{schemes} = $args{'schemes'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Authentication::OperationInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.authentication.operation_info');
   $self->set_binding_field('key' => 'schemes', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Authentication', 'type_name' => 'AuthenticationInfo')));
   bless $self, $class;
   return $self;
}

## @method get_schemes ()
# Gets the value of 'schemes' property.
#
# @retval schemes - The current value of the field.
# List of authentication schemes used by an operation element. The authentication scheme
#     specified on the service element corresponding to this operation element is ignored.
#
# List#
sub get_schemes {
   my ($self, %args) = @_;
   return $self->{'schemes'}; 	
}

## @method set_schemes ()
# Sets the given value for 'schemes' property.
# 
# @param schemes  - New value for the field.
# List of authentication schemes used by an operation element. The authentication scheme
#     specified on the service element corresponding to this operation element is ignored.
#
sub set_schemes {
   my ($self, %args) = @_;
   $self->{'schemes'} = $args{'schemes'}; 
   return;	
}


1;


