## @class Com::Vmware::Vapi::Metadata::Privilege::OperationInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Privilege::OperationInfo``   *class*  contains
#     privilege information of an operation element. <p>
# 
# For an explanation of containment within operation elements, see  class
#     Com::Vmware::Vapi::Metadata::Privilege::Service::Operation .</p>

package Com::Vmware::Vapi::Metadata::Privilege::OperationInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Privilege::OperationInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{privileges} = $args{'privileges'};
   $self->{privilege_info} = $args{'privilege_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Privilege::OperationInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.privilege.operation_info');
   $self->set_binding_field('key' => 'privileges', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'privilege_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Privilege', 'type_name' => 'PrivilegeInfo')));
   bless $self, $class;
   return $self;
}

## @method get_privileges ()
# Gets the value of 'privileges' property.
#
# @retval privileges - The current value of the field.
# List of all privileges assigned to the operation element.
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
# List of all privileges assigned to the operation element.
#
sub set_privileges {
   my ($self, %args) = @_;
   $self->{'privileges'} = $args{'privileges'}; 
   return;	
}

## @method get_privilege_info ()
# Gets the value of 'privilege_info' property.
#
# @retval privilege_info - The current value of the field.
# Privilege information of all the parameter elements of the operation element. For an
#     explanation of containment of privilege information within parameter elements, see 
#     class Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo .
#
# List#
sub get_privilege_info {
   my ($self, %args) = @_;
   return $self->{'privilege_info'}; 	
}

## @method set_privilege_info ()
# Sets the given value for 'privilege_info' property.
# 
# @param privilege_info  - New value for the field.
# Privilege information of all the parameter elements of the operation element. For an
#     explanation of containment of privilege information within parameter elements, see 
#     class Com::Vmware::Vapi::Metadata::Privilege::PrivilegeInfo .
#
sub set_privilege_info {
   my ($self, %args) = @_;
   $self->{'privilege_info'} = $args{'privilege_info'}; 
   return;	
}


1;


