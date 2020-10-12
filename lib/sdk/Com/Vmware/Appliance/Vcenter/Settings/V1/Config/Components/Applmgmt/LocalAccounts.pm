## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccounts
#
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccounts``
#       *interface*  provides  *methods*  to manage local user account.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccounts;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccounts structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{fullname} = $args{'fullname'};
   $self->{roles} = $args{'roles'};
   $self->{enabled} = $args{'enabled'};
   $self->{has_password} = $args{'has_password'};
   $self->{last_password_change} = $args{'last_password_change'};
   $self->{password_expires_at} = $args{'password_expires_at'};
   $self->{min_days_between_password_change} = $args{'min_days_between_password_change'};
   $self->{max_days_between_password_change} = $args{'max_days_between_password_change'};
   $self->{warn_days_before_password_expiration} = $args{'warn_days_before_password_expiration'};
   $self->{password} = $args{'password'};
   $self->{email} = $args{'email'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccounts');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.local_accounts');
   $self->set_binding_field('key' => 'fullname', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'roles', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'has_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'last_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'password_expires_at', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'min_days_between_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'max_days_between_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'warn_days_before_password_expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'email', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_fullname ()
# Gets the value of 'fullname' property.
#
# @retval fullname - The current value of the field.
# Full name of the user
#
# Optional#
sub get_fullname {
   my ($self, %args) = @_;
   return $self->{'fullname'}; 	
}

## @method set_fullname ()
# Sets the given value for 'fullname' property.
# 
# @param fullname  - New value for the field.
# Full name of the user
#
sub set_fullname {
   my ($self, %args) = @_;
   $self->{'fullname'} = $args{'fullname'}; 
   return;	
}

## @method get_roles ()
# Gets the value of 'roles' property.
#
# @retval roles - The current value of the field.
# User roles
#
# Optional#
sub get_roles {
   my ($self, %args) = @_;
   return $self->{'roles'}; 	
}

## @method set_roles ()
# Sets the given value for 'roles' property.
# 
# @param roles  - New value for the field.
# User roles
#
sub set_roles {
   my ($self, %args) = @_;
   $self->{'roles'} = $args{'roles'}; 
   return;	
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Flag indicating if the account is enabled
#
# boolean#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# Flag indicating if the account is enabled
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}

## @method get_has_password ()
# Gets the value of 'has_password' property.
#
# @retval has_password - The current value of the field.
# Is the user password set.
#
# boolean#
sub get_has_password {
   my ($self, %args) = @_;
   return $self->{'has_password'}; 	
}

## @method set_has_password ()
# Sets the given value for 'has_password' property.
# 
# @param has_password  - New value for the field.
# Is the user password set.
#
sub set_has_password {
   my ($self, %args) = @_;
   $self->{'has_password'} = $args{'has_password'}; 
   return;	
}

## @method get_last_password_change ()
# Gets the value of 'last_password_change' property.
#
# @retval last_password_change - The current value of the field.
# Date and time password was changed.
#
# Optional#
sub get_last_password_change {
   my ($self, %args) = @_;
   return $self->{'last_password_change'}; 	
}

## @method set_last_password_change ()
# Sets the given value for 'last_password_change' property.
# 
# @param last_password_change  - New value for the field.
# Date and time password was changed.
#
sub set_last_password_change {
   my ($self, %args) = @_;
   $self->{'last_password_change'} = $args{'last_password_change'}; 
   return;	
}

## @method get_password_expires_at ()
# Gets the value of 'password_expires_at' property.
#
# @retval password_expires_at - The current value of the field.
# Date when the account&apos;s password will expire
#
# Optional#
sub get_password_expires_at {
   my ($self, %args) = @_;
   return $self->{'password_expires_at'}; 	
}

## @method set_password_expires_at ()
# Sets the given value for 'password_expires_at' property.
# 
# @param password_expires_at  - New value for the field.
# Date when the account&apos;s password will expire
#
sub set_password_expires_at {
   my ($self, %args) = @_;
   $self->{'password_expires_at'} = $args{'password_expires_at'}; 
   return;	
}

## @method get_min_days_between_password_change ()
# Gets the value of 'min_days_between_password_change' property.
#
# @retval min_days_between_password_change - The current value of the field.
# Minimum number of days between password change
#
# Optional#
sub get_min_days_between_password_change {
   my ($self, %args) = @_;
   return $self->{'min_days_between_password_change'}; 	
}

## @method set_min_days_between_password_change ()
# Sets the given value for 'min_days_between_password_change' property.
# 
# @param min_days_between_password_change  - New value for the field.
# Minimum number of days between password change
#
sub set_min_days_between_password_change {
   my ($self, %args) = @_;
   $self->{'min_days_between_password_change'} = $args{'min_days_between_password_change'}; 
   return;	
}

## @method get_max_days_between_password_change ()
# Gets the value of 'max_days_between_password_change' property.
#
# @retval max_days_between_password_change - The current value of the field.
# Maximum number of days between password change
#
# Optional#
sub get_max_days_between_password_change {
   my ($self, %args) = @_;
   return $self->{'max_days_between_password_change'}; 	
}

## @method set_max_days_between_password_change ()
# Sets the given value for 'max_days_between_password_change' property.
# 
# @param max_days_between_password_change  - New value for the field.
# Maximum number of days between password change
#
sub set_max_days_between_password_change {
   my ($self, %args) = @_;
   $self->{'max_days_between_password_change'} = $args{'max_days_between_password_change'}; 
   return;	
}

## @method get_warn_days_before_password_expiration ()
# Gets the value of 'warn_days_before_password_expiration' property.
#
# @retval warn_days_before_password_expiration - The current value of the field.
# Number of days of warning before password expires
#
# Optional#
sub get_warn_days_before_password_expiration {
   my ($self, %args) = @_;
   return $self->{'warn_days_before_password_expiration'}; 	
}

## @method set_warn_days_before_password_expiration ()
# Sets the given value for 'warn_days_before_password_expiration' property.
# 
# @param warn_days_before_password_expiration  - New value for the field.
# Number of days of warning before password expires
#
sub set_warn_days_before_password_expiration {
   my ($self, %args) = @_;
   $self->{'warn_days_before_password_expiration'} = $args{'warn_days_before_password_expiration'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password
#
# Optional#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Password
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_email ()
# Gets the value of 'email' property.
#
# @retval email - The current value of the field.
# Email address of the local account
#
# Optional#
sub get_email {
   my ($self, %args) = @_;
   return $self->{'email'}; 	
}

## @method set_email ()
# Sets the given value for 'email' property.
# 
# @param email  - New value for the field.
# Email address of the local account
#
sub set_email {
   my ($self, %args) = @_;
   $self->{'email'} = $args{'email'}; 
   return;	
}


1;


