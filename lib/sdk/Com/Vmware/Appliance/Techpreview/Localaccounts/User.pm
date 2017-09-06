########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file User.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Localaccounts::User
# ``Com::Vmware::Appliance::Techpreview::Localaccounts::User``   *interface*  provides 
#     *methods*  Perform operations on local user account.
#

package Com::Vmware::Appliance::Techpreview::Localaccounts::User;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Appliance::Techpreview::Localaccounts::UserStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method delete ()
# Delete a local user account.
#
# @param username [REQUIRED] User login name.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub delete {
   my ($self, %args) = @_;
   my $username = $args {username};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method add ()
# Create a new local user account.
#
# @param config [REQUIRED] User configuration.
# . The value must be
# Com::Vmware::Appliance::Techpreview::Localaccounts::User::NewUserConfig.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub add {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'add',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add',
                         method_args => \%args);
}


## @method set ()
# Update local user account properties role, full name, enabled status and password
#
# @param config [REQUIRED] User configuration.
# . The value must be Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfig.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method list ()
# List of local accounts
#
# @retval 
# User configuration.
# The return type will be Array of
# Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Get the local user account information.
#
# @param username [REQUIRED] User login name.
# . The value must be String.
#
# @retval 
# local user account information
# The return type will be
# Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   my $username = $args {username};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Localaccounts::User service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus
#
# ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus``  
#     *enumerated type*  Defines status of user accounts
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus::DISABLED #
#The user account is disabled.
#
# Constant Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus::ENABLED #
#The user account is enabled.

package Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus;

use constant {
    disabled =>  'disabled',
    enabled =>  'enabled',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.localaccounts.user.user_account_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserAccountStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus
#
# ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus``  
#     *enumerated type*  Defines state of user password
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus::NOTSET #
#No password has been set
#
# Constant Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus::EXPIRED #
#The password has expired.
#
# Constant Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus::VALID #
#The password is still valid.

package Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus;

use constant {
    notset =>  'notset',
    expired =>  'expired',
    valid =>  'valid',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.localaccounts.user.user_password_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserPasswordStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole
#
# ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole``   *enumerated
#     type*  Defines user roles for appliance
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole::ADMIN #
#Able to configure the appliance.
#
# Constant Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole::OPERATOR #
#Able to read the appliance configuration.
#
# Constant Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole::SUPER_ADMIN #
#Able to configure the appliance, manage local accounts and use the BASH shell

package Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole;

use constant {
    admin =>  'admin',
    operator =>  'operator',
    superAdmin =>  'superAdmin',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.localaccounts.user.user_role',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserRole');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Localaccounts::User service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Localaccounts::User service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet
#
#
# ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet``   *class* 
#     Structure defines a user configuration for user.get API.

package Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{username} = $args{'username'};
   $self->{role} = $args{'role'};
   $self->{fullname} = $args{'fullname'};
   $self->{status} = $args{'status'};
   $self->{passwordstatus} = $args{'passwordstatus'};
   $self->{email} = $args{'email'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfigGet');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.localaccounts.user.user_config_get');
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'role', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Localaccounts', 'type_name' => 'User::UserRole'));
   $self->set_binding_field('key' => 'fullname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Localaccounts', 'type_name' => 'User::UserAccountStatus'));
   $self->set_binding_field('key' => 'passwordstatus', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Localaccounts', 'type_name' => 'User::UserPasswordStatus'));
   $self->set_binding_field('key' => 'email', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# User login name
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# User login name
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_role ()
# Gets the value of 'role' property.
#
# @retval role - The current value of the field.
# User roles
#
# UserRole#
sub get_role {
   my ($self, %args) = @_;
   return $self->{'role'}; 	
}

## @method set_role ()
# Sets the given value for 'role' property.
# 
# @param role  - New value for the field.
# User roles
#
sub set_role {
   my ($self, %args) = @_;
   $self->{'role'} = $args{'role'}; 
   return;	
}

## @method get_fullname ()
# Gets the value of 'fullname' property.
#
# @retval fullname - The current value of the field.
# User full name
#
# String#
sub get_fullname {
   my ($self, %args) = @_;
   return $self->{'fullname'}; 	
}

## @method set_fullname ()
# Sets the given value for 'fullname' property.
# 
# @param fullname  - New value for the field.
# User full name
#
sub set_fullname {
   my ($self, %args) = @_;
   $self->{'fullname'} = $args{'fullname'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Shows whether the user account is enabled or disabled.
#
# UserAccountStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Shows whether the user account is enabled or disabled.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_passwordstatus ()
# Gets the value of 'passwordstatus' property.
#
# @retval passwordstatus - The current value of the field.
# Shows whether the user account is still valid or expired.
#
# UserPasswordStatus#
sub get_passwordstatus {
   my ($self, %args) = @_;
   return $self->{'passwordstatus'}; 	
}

## @method set_passwordstatus ()
# Sets the given value for 'passwordstatus' property.
# 
# @param passwordstatus  - New value for the field.
# Shows whether the user account is still valid or expired.
#
sub set_passwordstatus {
   my ($self, %args) = @_;
   $self->{'passwordstatus'} = $args{'passwordstatus'}; 
   return;	
}

## @method get_email ()
# Gets the value of 'email' property.
#
# @retval email - The current value of the field.
# Email address of the local account.
#
# String#
sub get_email {
   my ($self, %args) = @_;
   return $self->{'email'}; 	
}

## @method set_email ()
# Sets the given value for 'email' property.
# 
# @param email  - New value for the field.
# Email address of the local account.
#
sub set_email {
   my ($self, %args) = @_;
   $self->{'email'} = $args{'email'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfig
#
#
# ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfig``   *class* 
#     Structure that defines a new user configuration for CLI.

package Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{username} = $args{'username'};
   $self->{role} = $args{'role'};
   $self->{fullname} = $args{'fullname'};
   $self->{status} = $args{'status'};
   $self->{email} = $args{'email'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Localaccounts::User::UserConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.localaccounts.user.user_config');
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'role', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Localaccounts', 'type_name' => 'User::UserRole'));
   $self->set_binding_field('key' => 'fullname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Localaccounts', 'type_name' => 'User::UserAccountStatus'));
   $self->set_binding_field('key' => 'email', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# User login name
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# User login name
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_role ()
# Gets the value of 'role' property.
#
# @retval role - The current value of the field.
# User roles
#
# UserRole#
sub get_role {
   my ($self, %args) = @_;
   return $self->{'role'}; 	
}

## @method set_role ()
# Sets the given value for 'role' property.
# 
# @param role  - New value for the field.
# User roles
#
sub set_role {
   my ($self, %args) = @_;
   $self->{'role'} = $args{'role'}; 
   return;	
}

## @method get_fullname ()
# Gets the value of 'fullname' property.
#
# @retval fullname - The current value of the field.
# User full name
#
# String#
sub get_fullname {
   my ($self, %args) = @_;
   return $self->{'fullname'}; 	
}

## @method set_fullname ()
# Sets the given value for 'fullname' property.
# 
# @param fullname  - New value for the field.
# User full name
#
sub set_fullname {
   my ($self, %args) = @_;
   $self->{'fullname'} = $args{'fullname'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Enabled status of the local account
#
# UserAccountStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Enabled status of the local account
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_email ()
# Gets the value of 'email' property.
#
# @retval email - The current value of the field.
# email of the local account
#
# String#
sub get_email {
   my ($self, %args) = @_;
   return $self->{'email'}; 	
}

## @method set_email ()
# Sets the given value for 'email' property.
# 
# @param email  - New value for the field.
# email of the local account
#
sub set_email {
   my ($self, %args) = @_;
   $self->{'email'} = $args{'email'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Localaccounts::User::NewUserConfig
#
#
# ``Com::Vmware::Appliance::Techpreview::Localaccounts::User::NewUserConfig``   *class* 
#     Structure that defines a new user configuration.

package Com::Vmware::Appliance::Techpreview::Localaccounts::User::NewUserConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Localaccounts::User::NewUserConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{username} = $args{'username'};
   $self->{role} = $args{'role'};
   $self->{password} = $args{'password'};
   $self->{fullname} = $args{'fullname'};
   $self->{email} = $args{'email'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Localaccounts::User::NewUserConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.localaccounts.user.new_user_config');
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'role', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Localaccounts', 'type_name' => 'User::UserRole')));
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'fullname', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'email', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# User login name
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# User login name
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_role ()
# Gets the value of 'role' property.
#
# @retval role - The current value of the field.
# User roles. The default role is operator.
#
# Optional#
sub get_role {
   my ($self, %args) = @_;
   return $self->{'role'}; 	
}

## @method set_role ()
# Sets the given value for 'role' property.
# 
# @param role  - New value for the field.
# User roles. The default role is operator.
#
sub set_role {
   my ($self, %args) = @_;
   $self->{'role'} = $args{'role'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# User login password In Interactive mode, provide --password as part of the command,
#     and enter the value on the prompt. When accessed remotely, provide --password value as
#     part the command.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# User login password In Interactive mode, provide --password as part of the command,
#     and enter the value on the prompt. When accessed remotely, provide --password value as
#     part the command.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_fullname ()
# Gets the value of 'fullname' property.
#
# @retval fullname - The current value of the field.
# User full name
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
# User full name
#
sub set_fullname {
   my ($self, %args) = @_;
   $self->{'fullname'} = $args{'fullname'}; 
   return;	
}

## @method get_email ()
# Gets the value of 'email' property.
#
# @retval email - The current value of the field.
# Email address of the local account.
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
# Email address of the local account.
#
sub set_email {
   my ($self, %args) = @_;
   $self->{'email'} = $args{'email'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Localaccounts::User service
#########################################################################################
