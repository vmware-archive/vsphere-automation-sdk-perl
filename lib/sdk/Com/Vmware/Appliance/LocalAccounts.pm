########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LocalAccounts.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::LocalAccounts
# The  ``Com::Vmware::Appliance::LocalAccounts``   *interface*  provides  *methods*  to
#     manage local user account. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Appliance::LocalAccounts;

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
use Com::Vmware::Appliance::LocalAccountsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.local_accounts';


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

## @method get ()
# Get the local user account information. This  *method*  was added in vSphere API 6.7.
#
# @param username [REQUIRED] User login name
# . The value must be String.
#
# @retval 
# Local user account information
# The return type will be Com::Vmware::Appliance::LocalAccounts::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the account is not found
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

## @method list ()
# Get a list of the local user accounts. This  *method*  was added in vSphere API 6.7.
#
# @retval 
# List of identifiers
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.local_accounts).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method create ()
# Create a new local user account. This  *method*  was added in vSphere API 6.7.
#
# @param username [REQUIRED] User login name
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.local_accounts).
# . The value must be str.
#
# @param config [REQUIRED] User configuration
# . The value must be Com::Vmware::Appliance::LocalAccounts::Config.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# If an account already exists
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If a username is invalid (username is validated against
#     [a-zA-Z0-9][a-zA-Z0-9\-\.@]*[a-zA-Z0-9] pattern)
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub create {
   my ($self, %args) = @_;
   my $username = $args {username};
   my $config = $args {config};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method set ()
# Set local user account properties. This  *method*  was added in vSphere API 6.7.
#
# @param username [REQUIRED] User login name
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.local_accounts).
# . The value must be str.
#
# @param config [REQUIRED] User configuration
# . The value must be Com::Vmware::Appliance::LocalAccounts::Config.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the account is not found
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub set {
   my ($self, %args) = @_;
   my $username = $args {username};
   my $config = $args {config};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method update ()
# Update selected fields in local user account properties. This  *method*  was added in
# vSphere API 6.7.
#
# @param username [REQUIRED] User login name
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.local_accounts).
# . The value must be str.
#
# @param config [REQUIRED] User configuration
# . The value must be Com::Vmware::Appliance::LocalAccounts::UpdateConfig.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the account is not found
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub update {
   my ($self, %args) = @_;
   my $username = $args {username};
   my $config = $args {config};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method delete ()
# Delete a local user account. This  *method*  was added in vSphere API 6.7.
#
# @param username [REQUIRED] User login name
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.local_accounts).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the account is not found
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

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::LocalAccounts service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::LocalAccounts service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::LocalAccounts service
#########################################################################################

## @class Com::Vmware::Appliance::LocalAccounts::Info
#
#
# The  ``Com::Vmware::Appliance::LocalAccounts::Info``   *class*  defines the local
#     account properties. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::LocalAccounts::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::LocalAccounts::Info structure
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
   $self->{email} = $args{'email'};
   $self->{roles} = $args{'roles'};
   $self->{enabled} = $args{'enabled'};
   $self->{has_password} = $args{'has_password'};
   $self->{last_password_change} = $args{'last_password_change'};
   $self->{password_expires_at} = $args{'password_expires_at'};
   $self->{inactive_at} = $args{'inactive_at'};
   $self->{min_days_between_password_change} = $args{'min_days_between_password_change'};
   $self->{max_days_between_password_change} = $args{'max_days_between_password_change'};
   $self->{warn_days_before_password_expiration} = $args{'warn_days_before_password_expiration'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::LocalAccounts::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.local_accounts.info');
   $self->set_binding_field('key' => 'fullname', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'email', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'roles', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'has_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'last_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'password_expires_at', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'inactive_at', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'min_days_between_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'max_days_between_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'warn_days_before_password_expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_fullname ()
# Gets the value of 'fullname' property.
#
# @retval fullname - The current value of the field.
# Full name of the user. This  *field*  was added in vSphere API 6.7.
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
# Full name of the user. This  *field*  was added in vSphere API 6.7.
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
# Email address of the local account. This  *field*  was added in vSphere API 6.7.
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
# Email address of the local account. This  *field*  was added in vSphere API 6.7.
#
sub set_email {
   my ($self, %args) = @_;
   $self->{'email'} = $args{'email'}; 
   return;	
}

## @method get_roles ()
# Gets the value of 'roles' property.
#
# @retval roles - The current value of the field.
# User roles. This  *field*  was added in vSphere API 6.7.
#
# List#
sub get_roles {
   my ($self, %args) = @_;
   return $self->{'roles'}; 	
}

## @method set_roles ()
# Sets the given value for 'roles' property.
# 
# @param roles  - New value for the field.
# User roles. This  *field*  was added in vSphere API 6.7.
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
# Flag indicating if the account is enabled. This  *field*  was added in vSphere API
#     6.7.
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
# Flag indicating if the account is enabled. This  *field*  was added in vSphere API
#     6.7.
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
# Is the user password set. This  *field*  was added in vSphere API 6.7.
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
# Is the user password set. This  *field*  was added in vSphere API 6.7.
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
# Date and time password was changed. This  *field*  was added in vSphere API 6.7.
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
# Date and time password was changed. This  *field*  was added in vSphere API 6.7.
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
# Date when the account&apos;s password will expire. This  *field*  was added in vSphere
#     API 6.7.
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
# Date when the account&apos;s password will expire. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_password_expires_at {
   my ($self, %args) = @_;
   $self->{'password_expires_at'} = $args{'password_expires_at'}; 
   return;	
}

## @method get_inactive_at ()
# Gets the value of 'inactive_at' property.
#
# @retval inactive_at - The current value of the field.
# Date and time account will be locked after password expiration. This  *field*  was
#     added in vSphere API 6.7.
#
# Optional#
sub get_inactive_at {
   my ($self, %args) = @_;
   return $self->{'inactive_at'}; 	
}

## @method set_inactive_at ()
# Sets the given value for 'inactive_at' property.
# 
# @param inactive_at  - New value for the field.
# Date and time account will be locked after password expiration. This  *field*  was
#     added in vSphere API 6.7.
#
sub set_inactive_at {
   my ($self, %args) = @_;
   $self->{'inactive_at'} = $args{'inactive_at'}; 
   return;	
}

## @method get_min_days_between_password_change ()
# Gets the value of 'min_days_between_password_change' property.
#
# @retval min_days_between_password_change - The current value of the field.
# Minimum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Minimum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Maximum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Maximum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Number of days of warning before password expires. This  *field*  was added in vSphere
#     API 6.7.
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
# Number of days of warning before password expires. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_warn_days_before_password_expiration {
   my ($self, %args) = @_;
   $self->{'warn_days_before_password_expiration'} = $args{'warn_days_before_password_expiration'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::LocalAccounts::Config
#
#
# The  ``Com::Vmware::Appliance::LocalAccounts::Config``   *class*  defines the
#     information required for the account. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::LocalAccounts::Config;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::LocalAccounts::Config structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{password} = $args{'password'};
   $self->{old_password} = $args{'old_password'};
   $self->{full_name} = $args{'full_name'};
   $self->{email} = $args{'email'};
   $self->{roles} = $args{'roles'};
   $self->{enabled} = $args{'enabled'};
   $self->{password_expires} = $args{'password_expires'};
   $self->{password_expires_at} = $args{'password_expires_at'};
   $self->{inactive_after_password_expiration} = $args{'inactive_after_password_expiration'};
   $self->{days_after_password_expiration} = $args{'days_after_password_expiration'};
   $self->{min_days_between_password_change} = $args{'min_days_between_password_change'};
   $self->{max_days_between_password_change} = $args{'max_days_between_password_change'};
   $self->{warn_days_before_password_expiration} = $args{'warn_days_before_password_expiration'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::LocalAccounts::Config');
   $self->set_binding_name('name' => 'com.vmware.appliance.local_accounts.config');
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'old_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'full_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'email', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'roles', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'password_expires', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'password_expires_at', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'inactive_after_password_expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'days_after_password_expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'min_days_between_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'max_days_between_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'warn_days_before_password_expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password. This  *field*  was added in vSphere API 6.7.
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
# Password. This  *field*  was added in vSphere API 6.7.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_old_password ()
# Gets the value of 'old_password' property.
#
# @retval old_password - The current value of the field.
# Old password of the user (required in case of the password change, not required if
#     superAdmin user changes the password of the other user). This  *field*  was added in
#     vSphere API 6.7.
#
# Optional#
sub get_old_password {
   my ($self, %args) = @_;
   return $self->{'old_password'}; 	
}

## @method set_old_password ()
# Sets the given value for 'old_password' property.
# 
# @param old_password  - New value for the field.
# Old password of the user (required in case of the password change, not required if
#     superAdmin user changes the password of the other user). This  *field*  was added in
#     vSphere API 6.7.
#
sub set_old_password {
   my ($self, %args) = @_;
   $self->{'old_password'} = $args{'old_password'}; 
   return;	
}

## @method get_full_name ()
# Gets the value of 'full_name' property.
#
# @retval full_name - The current value of the field.
# Full name of the user. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_full_name {
   my ($self, %args) = @_;
   return $self->{'full_name'}; 	
}

## @method set_full_name ()
# Sets the given value for 'full_name' property.
# 
# @param full_name  - New value for the field.
# Full name of the user. This  *field*  was added in vSphere API 6.7.
#
sub set_full_name {
   my ($self, %args) = @_;
   $self->{'full_name'} = $args{'full_name'}; 
   return;	
}

## @method get_email ()
# Gets the value of 'email' property.
#
# @retval email - The current value of the field.
# Email address of the local account. This  *field*  was added in vSphere API 6.7.
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
# Email address of the local account. This  *field*  was added in vSphere API 6.7.
#
sub set_email {
   my ($self, %args) = @_;
   $self->{'email'} = $args{'email'}; 
   return;	
}

## @method get_roles ()
# Gets the value of 'roles' property.
#
# @retval roles - The current value of the field.
# User roles. This  *field*  was added in vSphere API 6.7.
#
# List#
sub get_roles {
   my ($self, %args) = @_;
   return $self->{'roles'}; 	
}

## @method set_roles ()
# Sets the given value for 'roles' property.
# 
# @param roles  - New value for the field.
# User roles. This  *field*  was added in vSphere API 6.7.
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
# Flag indicating if the account is enabled. This  *field*  was added in vSphere API
#     6.7.
#
# Optional#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# Flag indicating if the account is enabled. This  *field*  was added in vSphere API
#     6.7.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}

## @method get_password_expires ()
# Gets the value of 'password_expires' property.
#
# @retval password_expires - The current value of the field.
# Flag indicating if the account password expires. This  *field*  was added in vSphere
#     API 6.7.
#
# Optional#
sub get_password_expires {
   my ($self, %args) = @_;
   return $self->{'password_expires'}; 	
}

## @method set_password_expires ()
# Sets the given value for 'password_expires' property.
# 
# @param password_expires  - New value for the field.
# Flag indicating if the account password expires. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_password_expires {
   my ($self, %args) = @_;
   $self->{'password_expires'} = $args{'password_expires'}; 
   return;	
}

## @method get_password_expires_at ()
# Gets the value of 'password_expires_at' property.
#
# @retval password_expires_at - The current value of the field.
# Date when the account&apos;s password will expire. This  *field*  was added in vSphere
#     API 6.7.
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
# Date when the account&apos;s password will expire. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_password_expires_at {
   my ($self, %args) = @_;
   $self->{'password_expires_at'} = $args{'password_expires_at'}; 
   return;	
}

## @method get_inactive_after_password_expiration ()
# Gets the value of 'inactive_after_password_expiration' property.
#
# @retval inactive_after_password_expiration - The current value of the field.
# Flag indicating if the account will be locked after password expiration. This  *field*
#      was added in vSphere API 6.7.
#
# Optional#
sub get_inactive_after_password_expiration {
   my ($self, %args) = @_;
   return $self->{'inactive_after_password_expiration'}; 	
}

## @method set_inactive_after_password_expiration ()
# Sets the given value for 'inactive_after_password_expiration' property.
# 
# @param inactive_after_password_expiration  - New value for the field.
# Flag indicating if the account will be locked after password expiration. This  *field*
#      was added in vSphere API 6.7.
#
sub set_inactive_after_password_expiration {
   my ($self, %args) = @_;
   $self->{'inactive_after_password_expiration'} = $args{'inactive_after_password_expiration'}; 
   return;	
}

## @method get_days_after_password_expiration ()
# Gets the value of 'days_after_password_expiration' property.
#
# @retval days_after_password_expiration - The current value of the field.
# Number of days after password expiration before the account will be locked. This 
#     *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_days_after_password_expiration {
   my ($self, %args) = @_;
   return $self->{'days_after_password_expiration'}; 	
}

## @method set_days_after_password_expiration ()
# Sets the given value for 'days_after_password_expiration' property.
# 
# @param days_after_password_expiration  - New value for the field.
# Number of days after password expiration before the account will be locked. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_days_after_password_expiration {
   my ($self, %args) = @_;
   $self->{'days_after_password_expiration'} = $args{'days_after_password_expiration'}; 
   return;	
}

## @method get_min_days_between_password_change ()
# Gets the value of 'min_days_between_password_change' property.
#
# @retval min_days_between_password_change - The current value of the field.
# Minimum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Minimum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Maximum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Maximum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Number of days of warning before password expires. This  *field*  was added in vSphere
#     API 6.7.
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
# Number of days of warning before password expires. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_warn_days_before_password_expiration {
   my ($self, %args) = @_;
   $self->{'warn_days_before_password_expiration'} = $args{'warn_days_before_password_expiration'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::LocalAccounts::UpdateConfig
#
#
# The  ``Com::Vmware::Appliance::LocalAccounts::UpdateConfig``   *class*  defines the
#     fields that might be updated. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::LocalAccounts::UpdateConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::LocalAccounts::UpdateConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{password} = $args{'password'};
   $self->{old_password} = $args{'old_password'};
   $self->{full_name} = $args{'full_name'};
   $self->{email} = $args{'email'};
   $self->{roles} = $args{'roles'};
   $self->{enabled} = $args{'enabled'};
   $self->{password_expires} = $args{'password_expires'};
   $self->{password_expires_at} = $args{'password_expires_at'};
   $self->{inactive_after_password_expiration} = $args{'inactive_after_password_expiration'};
   $self->{days_after_password_expiration} = $args{'days_after_password_expiration'};
   $self->{min_days_between_password_change} = $args{'min_days_between_password_change'};
   $self->{max_days_between_password_change} = $args{'max_days_between_password_change'};
   $self->{warn_days_before_password_expiration} = $args{'warn_days_before_password_expiration'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::LocalAccounts::UpdateConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.local_accounts.update_config');
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'old_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'full_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'email', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'roles', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'password_expires', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'password_expires_at', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'inactive_after_password_expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'days_after_password_expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'min_days_between_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'max_days_between_password_change', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'warn_days_before_password_expiration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password. This  *field*  was added in vSphere API 6.7.
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
# Password. This  *field*  was added in vSphere API 6.7.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_old_password ()
# Gets the value of 'old_password' property.
#
# @retval old_password - The current value of the field.
# Old password of the user (required in case of the password change, not required if
#     superAdmin user changes the password of the other user). This  *field*  was added in
#     vSphere API 6.7.
#
# Optional#
sub get_old_password {
   my ($self, %args) = @_;
   return $self->{'old_password'}; 	
}

## @method set_old_password ()
# Sets the given value for 'old_password' property.
# 
# @param old_password  - New value for the field.
# Old password of the user (required in case of the password change, not required if
#     superAdmin user changes the password of the other user). This  *field*  was added in
#     vSphere API 6.7.
#
sub set_old_password {
   my ($self, %args) = @_;
   $self->{'old_password'} = $args{'old_password'}; 
   return;	
}

## @method get_full_name ()
# Gets the value of 'full_name' property.
#
# @retval full_name - The current value of the field.
# Full name of the user. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_full_name {
   my ($self, %args) = @_;
   return $self->{'full_name'}; 	
}

## @method set_full_name ()
# Sets the given value for 'full_name' property.
# 
# @param full_name  - New value for the field.
# Full name of the user. This  *field*  was added in vSphere API 6.7.
#
sub set_full_name {
   my ($self, %args) = @_;
   $self->{'full_name'} = $args{'full_name'}; 
   return;	
}

## @method get_email ()
# Gets the value of 'email' property.
#
# @retval email - The current value of the field.
# Email address of the local account. This  *field*  was added in vSphere API 6.7.
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
# Email address of the local account. This  *field*  was added in vSphere API 6.7.
#
sub set_email {
   my ($self, %args) = @_;
   $self->{'email'} = $args{'email'}; 
   return;	
}

## @method get_roles ()
# Gets the value of 'roles' property.
#
# @retval roles - The current value of the field.
# User roles. This  *field*  was added in vSphere API 6.7.
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
# User roles. This  *field*  was added in vSphere API 6.7.
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
# Flag indicating if the account is enabled. This  *field*  was added in vSphere API
#     6.7.
#
# Optional#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# Flag indicating if the account is enabled. This  *field*  was added in vSphere API
#     6.7.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}

## @method get_password_expires ()
# Gets the value of 'password_expires' property.
#
# @retval password_expires - The current value of the field.
# Flag indicating if the account password expires. This  *field*  was added in vSphere
#     API 6.7.
#
# Optional#
sub get_password_expires {
   my ($self, %args) = @_;
   return $self->{'password_expires'}; 	
}

## @method set_password_expires ()
# Sets the given value for 'password_expires' property.
# 
# @param password_expires  - New value for the field.
# Flag indicating if the account password expires. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_password_expires {
   my ($self, %args) = @_;
   $self->{'password_expires'} = $args{'password_expires'}; 
   return;	
}

## @method get_password_expires_at ()
# Gets the value of 'password_expires_at' property.
#
# @retval password_expires_at - The current value of the field.
# Date when the account&apos;s password will expire. This  *field*  was added in vSphere
#     API 6.7.
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
# Date when the account&apos;s password will expire. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_password_expires_at {
   my ($self, %args) = @_;
   $self->{'password_expires_at'} = $args{'password_expires_at'}; 
   return;	
}

## @method get_inactive_after_password_expiration ()
# Gets the value of 'inactive_after_password_expiration' property.
#
# @retval inactive_after_password_expiration - The current value of the field.
# Flag indicating if the account will be locked after password expiration. This  *field*
#      was added in vSphere API 6.7.
#
# Optional#
sub get_inactive_after_password_expiration {
   my ($self, %args) = @_;
   return $self->{'inactive_after_password_expiration'}; 	
}

## @method set_inactive_after_password_expiration ()
# Sets the given value for 'inactive_after_password_expiration' property.
# 
# @param inactive_after_password_expiration  - New value for the field.
# Flag indicating if the account will be locked after password expiration. This  *field*
#      was added in vSphere API 6.7.
#
sub set_inactive_after_password_expiration {
   my ($self, %args) = @_;
   $self->{'inactive_after_password_expiration'} = $args{'inactive_after_password_expiration'}; 
   return;	
}

## @method get_days_after_password_expiration ()
# Gets the value of 'days_after_password_expiration' property.
#
# @retval days_after_password_expiration - The current value of the field.
# Number of days after password expiration before the account will be locked. This 
#     *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_days_after_password_expiration {
   my ($self, %args) = @_;
   return $self->{'days_after_password_expiration'}; 	
}

## @method set_days_after_password_expiration ()
# Sets the given value for 'days_after_password_expiration' property.
# 
# @param days_after_password_expiration  - New value for the field.
# Number of days after password expiration before the account will be locked. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_days_after_password_expiration {
   my ($self, %args) = @_;
   $self->{'days_after_password_expiration'} = $args{'days_after_password_expiration'}; 
   return;	
}

## @method get_min_days_between_password_change ()
# Gets the value of 'min_days_between_password_change' property.
#
# @retval min_days_between_password_change - The current value of the field.
# Minimum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Minimum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Maximum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Maximum number of days between password change. This  *field*  was added in vSphere
#     API 6.7.
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
# Number of days of warning before password expires. This  *field*  was added in vSphere
#     API 6.7.
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
# Number of days of warning before password expires. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_warn_days_before_password_expiration {
   my ($self, %args) = @_;
   $self->{'warn_days_before_password_expiration'} = $args{'warn_days_before_password_expiration'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::LocalAccounts service
#########################################################################################
