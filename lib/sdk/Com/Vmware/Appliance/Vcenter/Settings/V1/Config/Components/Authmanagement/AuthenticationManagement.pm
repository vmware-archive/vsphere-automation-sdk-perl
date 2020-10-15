## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::AuthenticationManagement
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::AuthenticationManagement``
#     *class*  This structure contains the Spec required for Authentication Management
#     configurations.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::AuthenticationManagement;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::AuthenticationManagement structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{privileges_list} = $args{'privileges_list'};
   $self->{global_permission_list} = $args{'global_permission_list'};
   $self->{role_list} = $args{'role_list'};
   $self->{password_policy} = $args{'password_policy'};
   $self->{token_policy} = $args{'token_policy'};
   $self->{lockout_policy} = $args{'lockout_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement::AuthenticationManagement');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.authmanagement.authentication_management');
   $self->set_binding_field('key' => 'privileges_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement', 'type_name' => 'Privileges')));
   $self->set_binding_field('key' => 'global_permission_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement', 'type_name' => 'GlobalPermission')));
   $self->set_binding_field('key' => 'role_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement', 'type_name' => 'Roles')));
   $self->set_binding_field('key' => 'password_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement', 'type_name' => 'PasswordPolicy')));
   $self->set_binding_field('key' => 'token_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement', 'type_name' => 'TokenPolicy')));
   $self->set_binding_field('key' => 'lockout_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Authmanagement', 'type_name' => 'LockoutPolicy')));
   bless $self, $class;
   return $self;
}

## @method get_privileges_list ()
# Gets the value of 'privileges_list' property.
#
# @retval privileges_list - The current value of the field.
# List of Privileges.
#
# List#
sub get_privileges_list {
   my ($self, %args) = @_;
   return $self->{'privileges_list'}; 	
}

## @method set_privileges_list ()
# Sets the given value for 'privileges_list' property.
# 
# @param privileges_list  - New value for the field.
# List of Privileges.
#
sub set_privileges_list {
   my ($self, %args) = @_;
   $self->{'privileges_list'} = $args{'privileges_list'}; 
   return;	
}

## @method get_global_permission_list ()
# Gets the value of 'global_permission_list' property.
#
# @retval global_permission_list - The current value of the field.
# List of Global Permission.
#
# List#
sub get_global_permission_list {
   my ($self, %args) = @_;
   return $self->{'global_permission_list'}; 	
}

## @method set_global_permission_list ()
# Sets the given value for 'global_permission_list' property.
# 
# @param global_permission_list  - New value for the field.
# List of Global Permission.
#
sub set_global_permission_list {
   my ($self, %args) = @_;
   $self->{'global_permission_list'} = $args{'global_permission_list'}; 
   return;	
}

## @method get_role_list ()
# Gets the value of 'role_list' property.
#
# @retval role_list - The current value of the field.
# List of Roles.
#
# List#
sub get_role_list {
   my ($self, %args) = @_;
   return $self->{'role_list'}; 	
}

## @method set_role_list ()
# Sets the given value for 'role_list' property.
# 
# @param role_list  - New value for the field.
# List of Roles.
#
sub set_role_list {
   my ($self, %args) = @_;
   $self->{'role_list'} = $args{'role_list'}; 
   return;	
}

## @method get_password_policy ()
# Gets the value of 'password_policy' property.
#
# @retval password_policy - The current value of the field.
# Password Policy.
#
# Optional#
sub get_password_policy {
   my ($self, %args) = @_;
   return $self->{'password_policy'}; 	
}

## @method set_password_policy ()
# Sets the given value for 'password_policy' property.
# 
# @param password_policy  - New value for the field.
# Password Policy.
#
sub set_password_policy {
   my ($self, %args) = @_;
   $self->{'password_policy'} = $args{'password_policy'}; 
   return;	
}

## @method get_token_policy ()
# Gets the value of 'token_policy' property.
#
# @retval token_policy - The current value of the field.
# Token Policy.
#
# Optional#
sub get_token_policy {
   my ($self, %args) = @_;
   return $self->{'token_policy'}; 	
}

## @method set_token_policy ()
# Sets the given value for 'token_policy' property.
# 
# @param token_policy  - New value for the field.
# Token Policy.
#
sub set_token_policy {
   my ($self, %args) = @_;
   $self->{'token_policy'} = $args{'token_policy'}; 
   return;	
}

## @method get_lockout_policy ()
# Gets the value of 'lockout_policy' property.
#
# @retval lockout_policy - The current value of the field.
# Lockout Policy.
#
# Optional#
sub get_lockout_policy {
   my ($self, %args) = @_;
   return $self->{'lockout_policy'}; 	
}

## @method set_lockout_policy ()
# Sets the given value for 'lockout_policy' property.
# 
# @param lockout_policy  - New value for the field.
# Lockout Policy.
#
sub set_lockout_policy {
   my ($self, %args) = @_;
   $self->{'lockout_policy'} = $args{'lockout_policy'}; 
   return;	
}


1;


