## @class Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo``   *class*  contains the
#     privilege information for a parameter element in an operation element.

package Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{property_path} = $args{'property_path'};
   $self->{privileges} = $args{'privileges'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.privilege.privilege_info');
   $self->set_binding_field('key' => 'property_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'privileges', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_property_path ()
# Gets the value of 'property_path' property.
#
# @retval property_path - The current value of the field.
# The  ``propertyPath``  points to an entity that is used in the operation element. An
#     entity can either be present in one of the parameter elements or if a parameter is a
#     structure element, it could also be present in one of the field elements. <p>
# 
# If the privilege is assigned to an entity used in the parameter,  ``propertyPath`` 
#     will just contain the name of the parameter field. If the privilege is assigned to an
#     entity in one of the field elements of a parameter element that is a structure
#     element, then  ``propertyPath``  will contain a path to the field element starting
#     from the parameter name.</p>
#
# String#
sub get_property_path {
   my ($self, %args) = @_;
   return $self->{'property_path'}; 	
}

## @method set_property_path ()
# Sets the given value for 'property_path' property.
# 
# @param property_path  - New value for the field.
# The  ``propertyPath``  points to an entity that is used in the operation element. An
#     entity can either be present in one of the parameter elements or if a parameter is a
#     structure element, it could also be present in one of the field elements. <p>
# 
# If the privilege is assigned to an entity used in the parameter,  ``propertyPath`` 
#     will just contain the name of the parameter field. If the privilege is assigned to an
#     entity in one of the field elements of a parameter element that is a structure
#     element, then  ``propertyPath``  will contain a path to the field element starting
#     from the parameter name.</p>
#
sub set_property_path {
   my ($self, %args) = @_;
   $self->{'property_path'} = $args{'property_path'}; 
   return;	
}

## @method get_privileges ()
# Gets the value of 'privileges' property.
#
# @retval privileges - The current value of the field.
# List of privileges assigned to the entity that is being referred by 
#     :attr:`Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo.property_path` .
#
# List#
sub get_privileges {
   my ($self, %args) = @_;
   return $self->{'privileges'}; 	
}

## @method set_privileges ()
# Sets the given value for 'privileges' property.
# 
# @param privileges  - New value for the field.
# List of privileges assigned to the entity that is being referred by 
#     :attr:`Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo.property_path` .
#
sub set_privileges {
   my ($self, %args) = @_;
   $self->{'privileges'} = $args{'privileges'}; 
   return;	
}


1;


