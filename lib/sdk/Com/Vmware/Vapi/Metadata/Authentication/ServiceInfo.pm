## @class Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo``   *class*  contains
#     authentication information of a service element. <p>
# 
# For an explanation of authentication information contained within service elements,
#     see  class Com::Vmware::Vapi::Metadata::Authentication::Service .</p>

package Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo structure
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
   $self->{operations} = $args{'operations'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Authentication::ServiceInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.authentication.service_info');
   $self->set_binding_field('key' => 'schemes', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Authentication', 'type_name' => 'AuthenticationInfo')));
   $self->set_binding_field('key' => 'operations', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Authentication', 'type_name' => 'OperationInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_schemes ()
# Gets the value of 'schemes' property.
#
# @retval schemes - The current value of the field.
# List of authentication schemes to be used for all the operation elements contained in
#     this service element. The authentication scheme specified on the package element
#     corresponding to this service element is ignored.
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
# List of authentication schemes to be used for all the operation elements contained in
#     this service element. The authentication scheme specified on the package element
#     corresponding to this service element is ignored.
#
sub set_schemes {
   my ($self, %args) = @_;
   $self->{'schemes'} = $args{'schemes'}; 
   return;	
}

## @method get_operations ()
# Gets the value of 'operations' property.
#
# @retval operations - The current value of the field.
# Information about all operation elements contained in this service element that
#     contain authentication information. The key in the  *map*  is the identifier of the
#     operation element and the value in the  *map*  is the authentication information for
#     the operation element. <p>
# 
# For an explanation of containment of authentication information within operation
#     elements, see  class Com::Vmware::Vapi::Metadata::Authentication::Service::Operation
#     .</p>
#
# Map#
sub get_operations {
   my ($self, %args) = @_;
   return $self->{'operations'}; 	
}

## @method set_operations ()
# Sets the given value for 'operations' property.
# 
# @param operations  - New value for the field.
# Information about all operation elements contained in this service element that
#     contain authentication information. The key in the  *map*  is the identifier of the
#     operation element and the value in the  *map*  is the authentication information for
#     the operation element. <p>
# 
# For an explanation of containment of authentication information within operation
#     elements, see  class Com::Vmware::Vapi::Metadata::Authentication::Service::Operation
#     .</p>
#
sub set_operations {
   my ($self, %args) = @_;
   $self->{'operations'} = $args{'operations'}; 
   return;	
}


1;


