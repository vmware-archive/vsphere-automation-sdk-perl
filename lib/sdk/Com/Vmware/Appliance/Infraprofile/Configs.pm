########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Configs.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Infraprofile::Configs
# ``Com::Vmware::Appliance::Infraprofile::Configs``   *interface*  provides  *methods* 
#     to manage desired configuration specification of an appliance.
#

package Com::Vmware::Appliance::Infraprofile::Configs;

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
use Com::Vmware::Appliance::Infraprofile::ConfigsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.infraprofile.configs';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'validate_task'} = 'validate$task';
$_VAPI_OPERATION_IDS->{'import_profile_task'} = 'import_profile$task';

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

## @method list ()
# List all the profiles which are registered.
#
# @retval 
# List of profiles with description are registered.
# The return type will be Array of
# Com::Vmware::Appliance::Infraprofile::Configs::ProfileInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method export ()
# Exports the desired profile specification.
#
# @param spec [OPTIONAL] 
# information to export the profile.
# . The value must be Com::Vmware::Appliance::Infraprofile::Configs::ProfilesSpec or None.
#
# @retval 
# Configuration specification JSON in string format.
# The return type will be String
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no profile associated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub export {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'export',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'export',
                         method_args => \%args);
}

## @method validate_task ()
# Validates the desired profile specification.
#
# @param spec [REQUIRED] information to validate the profile.
# . The value must be Com::Vmware::Appliance::Infraprofile::Configs::ImportProfileSpec.
#
# @retval 
# Result of validation.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no profile associated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub validate_task {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'validate$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'validate$task',
                         method_args => \%args);
}


## @method import_profile_task ()
# Imports the desired profile specification.
#
# @param spec [REQUIRED] information to import the profile.
# . The value must be Com::Vmware::Appliance::Infraprofile::Configs::ImportProfileSpec.
#
# @retval 
# Import version.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no profile associated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# If there is another operation in progress.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub import_profile_task {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'import_profile$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'import_profile$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Infraprofile::Configs service
#########################################################################################

## @class Com::Vmware::Appliance::Infraprofile::Configs::ValidationStatus
#
# The  ``Com::Vmware::Appliance::Infraprofile::Configs::ValidationStatus``   *class* 
#     defines possible values of status of profile spec.
#
#
#
# Constant Com::Vmware::Appliance::Infraprofile::Configs::ValidationStatus::VALID #
#Profile spec is valid.
#
# Constant Com::Vmware::Appliance::Infraprofile::Configs::ValidationStatus::INVALID #
#Profile spec is invalid.

package Com::Vmware::Appliance::Infraprofile::Configs::ValidationStatus;

use constant {
    VALID =>  'VALID',
    INVALID =>  'INVALID',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Infraprofile::Configs::ValidationStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.infraprofile.configs.validation_status',
                           'binding_class' => 'Com::Vmware::Appliance::Infraprofile::Configs::ValidationStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Infraprofile::Configs service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Infraprofile::Configs service
#########################################################################################

## @class Com::Vmware::Appliance::Infraprofile::Configs::ProfileInfo
#
#
# The  ``Com::Vmware::Appliance::Infraprofile::Configs::ProfileInfo``   *class*  defines
#     the information about profile.

package Com::Vmware::Appliance::Infraprofile::Configs::ProfileInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Infraprofile::Configs::ProfileInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{info} = $args{'info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Infraprofile::Configs::ProfileInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.infraprofile.configs.profile_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'info', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the profile which is also a profile identifier.
#
# ID#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the profile which is also a profile identifier.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_info ()
# Gets the value of 'info' property.
#
# @retval info - The current value of the field.
# Description of the profile.
#
# String#
sub get_info {
   my ($self, %args) = @_;
   return $self->{'info'}; 	
}

## @method set_info ()
# Sets the given value for 'info' property.
# 
# @param info  - New value for the field.
# Description of the profile.
#
sub set_info {
   my ($self, %args) = @_;
   $self->{'info'} = $args{'info'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Infraprofile::Configs::ProfilesSpec
#
#
# The  ``Com::Vmware::Appliance::Infraprofile::Configs::ProfilesSpec``   *class* 
#     represents a spec information for export operation.

package Com::Vmware::Appliance::Infraprofile::Configs::ProfilesSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Infraprofile::Configs::ProfilesSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{encryption_key} = $args{'encryption_key'};
   $self->{description} = $args{'description'};
   $self->{profiles} = $args{'profiles'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Infraprofile::Configs::ProfilesSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.infraprofile.configs.profiles_spec');
   $self->set_binding_field('key' => 'encryption_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'profiles', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_encryption_key ()
# Gets the value of 'encryption_key' property.
#
# @retval encryption_key - The current value of the field.
# Encryption Key to encrypt/decrypt profiles.
#
# Optional#
sub get_encryption_key {
   my ($self, %args) = @_;
   return $self->{'encryption_key'}; 	
}

## @method set_encryption_key ()
# Sets the given value for 'encryption_key' property.
# 
# @param encryption_key  - New value for the field.
# Encryption Key to encrypt/decrypt profiles.
#
sub set_encryption_key {
   my ($self, %args) = @_;
   $self->{'encryption_key'} = $args{'encryption_key'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Custom description provided by the user.
#
# Optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Custom description provided by the user.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_profiles ()
# Gets the value of 'profiles' property.
#
# @retval profiles - The current value of the field.
# Profiles to be exported/imported.
#
# Optional#
sub get_profiles {
   my ($self, %args) = @_;
   return $self->{'profiles'}; 	
}

## @method set_profiles ()
# Sets the given value for 'profiles' property.
# 
# @param profiles  - New value for the field.
# Profiles to be exported/imported.
#
sub set_profiles {
   my ($self, %args) = @_;
   $self->{'profiles'} = $args{'profiles'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Infraprofile::Configs::ImportProfileSpec
#
#
# The  ``Com::Vmware::Appliance::Infraprofile::Configs::ImportProfileSpec``   *class* 
#     represents a spec information for import and validate.

package Com::Vmware::Appliance::Infraprofile::Configs::ImportProfileSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Infraprofile::Configs::ImportProfileSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{config_spec} = $args{'config_spec'};
   $self->{profile_spec} = $args{'profile_spec'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Infraprofile::Configs::ImportProfileSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.infraprofile.configs.import_profile_spec');
   $self->set_binding_field('key' => 'config_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'profile_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Infraprofile', 'type_name' => 'Configs::ProfilesSpec')));
   bless $self, $class;
   return $self;
}

## @method get_config_spec ()
# Gets the value of 'config_spec' property.
#
# @retval config_spec - The current value of the field.
# The JSON string representing the desired config specification.
#
# String#
sub get_config_spec {
   my ($self, %args) = @_;
   return $self->{'config_spec'}; 	
}

## @method set_config_spec ()
# Sets the given value for 'config_spec' property.
# 
# @param config_spec  - New value for the field.
# The JSON string representing the desired config specification.
#
sub set_config_spec {
   my ($self, %args) = @_;
   $self->{'config_spec'} = $args{'config_spec'}; 
   return;	
}

## @method get_profile_spec ()
# Gets the value of 'profile_spec' property.
#
# @retval profile_spec - The current value of the field.
# The profile specification, if any
#
# Optional#
sub get_profile_spec {
   my ($self, %args) = @_;
   return $self->{'profile_spec'}; 	
}

## @method set_profile_spec ()
# Sets the given value for 'profile_spec' property.
# 
# @param profile_spec  - New value for the field.
# The profile specification, if any
#
sub set_profile_spec {
   my ($self, %args) = @_;
   $self->{'profile_spec'} = $args{'profile_spec'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Infraprofile::Configs::ValidationResult
#
#
# The  ``Com::Vmware::Appliance::Infraprofile::Configs::ValidationResult``   *class* 
#     contains  *fields*  to describe result of validation of profile specification.

package Com::Vmware::Appliance::Infraprofile::Configs::ValidationResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Infraprofile::Configs::ValidationResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Infraprofile::Configs::ValidationResult');
   $self->set_binding_name('name' => 'com.vmware.appliance.infraprofile.configs.validation_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Infraprofile', 'type_name' => 'Configs::ValidationStatus'));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Infraprofile', 'type_name' => 'Notifications')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status of the Profile spec.
#
# ValidationStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status of the Profile spec.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications to the user
#
# Optional#
sub get_notifications {
   my ($self, %args) = @_;
   return $self->{'notifications'}; 	
}

## @method set_notifications ()
# Sets the given value for 'notifications' property.
# 
# @param notifications  - New value for the field.
# Notifications to the user
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Infraprofile::Configs service
#########################################################################################
