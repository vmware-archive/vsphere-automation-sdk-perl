## @class Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo``   *class*  contains
#     privilege information of a service element. <p>
# 
# For an explanation of privilege information contained within service elements, see 
#     class Com::Vmware::Vapi::Metadata::Privilege::Service .</p>

package Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{operations} = $args{'operations'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Privilege::ServiceInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.privilege.service_info');
   $self->set_binding_field('key' => 'operations', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Privilege', 'type_name' => 'OperationInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_operations ()
# Gets the value of 'operations' property.
#
# @retval operations - The current value of the field.
# Information about all operation elements contained in this service element that
#     contain privilege information. The key in the  *map*  is the identifier of the
#     operation element and the value in the  *map*  is the privilege information for the
#     operation element. <p>
# 
# For an explanation of containment of privilege information within operation elements,
#     see  class Com::Vmware::Vapi::Metadata::Privilege::Service::Operation .</p>
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
#     contain privilege information. The key in the  *map*  is the identifier of the
#     operation element and the value in the  *map*  is the privilege information for the
#     operation element. <p>
# 
# For an explanation of containment of privilege information within operation elements,
#     see  class Com::Vmware::Vapi::Metadata::Privilege::Service::Operation .</p>
#
sub set_operations {
   my ($self, %args) = @_;
   $self->{'operations'} = $args{'operations'}; 
   return;	
}


1;


