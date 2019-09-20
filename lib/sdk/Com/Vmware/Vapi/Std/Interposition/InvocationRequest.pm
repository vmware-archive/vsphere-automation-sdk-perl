## @class Com::Vmware::Vapi::Std::Interposition::InvocationRequest
#
#
# Information about an interposed request for operation invocation. All interposers
#     would receive an instance of this structure as an input parameter.

package Com::Vmware::Vapi::Std::Interposition::InvocationRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Interposition::InvocationRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{service_id} = $args{'service_id'};
   $self->{operation_id} = $args{'operation_id'};
   $self->{operation_input} = $args{'operation_input'};
   $self->{user} = $args{'user'};
   $self->{groups} = $args{'groups'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Interposition::InvocationRequest');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.interposition.invocation_request');
   $self->set_binding_field('key' => 'service_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'operation_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'operation_input', 'value' => new Com::Vmware::Vapi::Bindings::Type::OpaqueType());
   $self->set_binding_field('key' => 'user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Interposition', 'type_name' => 'SecurityPrincipal')));
   $self->set_binding_field('key' => 'groups', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Interposition', 'type_name' => 'SecurityPrincipal')));
   bless $self, $class;
   return $self;
}

## @method get_service_id ()
# Gets the value of 'service_id' property.
#
# @retval service_id - The current value of the field.
# Fully qualified name of the service which contains the interposed operation. In
#     canonical format. For example org.example.hello.
#
# String#
sub get_service_id {
   my ($self, %args) = @_;
   return $self->{'service_id'}; 	
}

## @method set_service_id ()
# Sets the given value for 'service_id' property.
# 
# @param service_id  - New value for the field.
# Fully qualified name of the service which contains the interposed operation. In
#     canonical format. For example org.example.hello.
#
sub set_service_id {
   my ($self, %args) = @_;
   $self->{'service_id'} = $args{'service_id'}; 
   return;	
}

## @method get_operation_id ()
# Gets the value of 'operation_id' property.
#
# @retval operation_id - The current value of the field.
# Name of the interposed operation. In canonical format. For example say_hello.
#
# String#
sub get_operation_id {
   my ($self, %args) = @_;
   return $self->{'operation_id'}; 	
}

## @method set_operation_id ()
# Sets the given value for 'operation_id' property.
# 
# @param operation_id  - New value for the field.
# Name of the interposed operation. In canonical format. For example say_hello.
#
sub set_operation_id {
   my ($self, %args) = @_;
   $self->{'operation_id'} = $args{'operation_id'}; 
   return;	
}

## @method get_operation_input ()
# Gets the value of 'operation_input' property.
#
# @retval operation_input - The current value of the field.
# Input of the interposed operation.
#
# Opaque#
sub get_operation_input {
   my ($self, %args) = @_;
   return $self->{'operation_input'}; 	
}

## @method set_operation_input ()
# Sets the given value for 'operation_input' property.
# 
# @param operation_input  - New value for the field.
# Input of the interposed operation.
#
sub set_operation_input {
   my ($self, %args) = @_;
   $self->{'operation_input'} = $args{'operation_input'}; 
   return;	
}

## @method get_user ()
# Gets the value of 'user' property.
#
# @retval user - The current value of the field.
# User which started the interposed operation.
#
# Optional#
sub get_user {
   my ($self, %args) = @_;
   return $self->{'user'}; 	
}

## @method set_user ()
# Sets the given value for 'user' property.
# 
# @param user  - New value for the field.
# User which started the interposed operation.
#
sub set_user {
   my ($self, %args) = @_;
   $self->{'user'} = $args{'user'}; 
   return;	
}

## @method get_groups ()
# Gets the value of 'groups' property.
#
# @retval groups - The current value of the field.
# Groups of the user who started the interposed operation. Would be empty if there is no
#     authentication information.
#
# List#
sub get_groups {
   my ($self, %args) = @_;
   return $self->{'groups'}; 	
}

## @method set_groups ()
# Sets the given value for 'groups' property.
# 
# @param groups  - New value for the field.
# Groups of the user who started the interposed operation. Would be empty if there is no
#     authentication information.
#
sub set_groups {
   my ($self, %args) = @_;
   $self->{'groups'} = $args{'groups'}; 
   return;	
}


1;


