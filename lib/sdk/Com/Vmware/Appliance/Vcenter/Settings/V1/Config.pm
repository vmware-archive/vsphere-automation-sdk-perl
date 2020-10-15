########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Config.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config``   *interface*  provides
#      *methods*  to manage desired configuration specification of vCenter.
#

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config;

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
use Com::Vmware::Appliance::Vcenter::Settings::V1::ConfigStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.vcenter.settings.v1.config';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'scan_task'} = 'scan$task';
$_VAPI_OPERATION_IDS->{'scan_desired_state_task'} = 'scan_desired_state$task';

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

## @method create ()
# Creates a Profile. <b>Warning:</b> This  *method*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# @param spec [REQUIRED] Specification of the profile to be created.
# . The value must be Com::Vmware::Appliance::Vcenter::Settings::V1::Config::CreateSpec.
#
# @retval 
# ID of newly-created profile.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.vcenter.settings.v1.config.profile).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a profile with the specified name already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method get ()
# Returns information about a profile. <b>Warning:</b> This  *method*  is available as
# Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @retval 
# Information about the specified profile.
# The return type will be Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If given version is different than the latest one.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no profile or version associated with  ``profile``  or  ``version``  in
#     the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method delete ()
# Deletes a profile. <b>Warning:</b> This  *method*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if any other operation running on the same profile.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the profile is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub delete {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'delete', method_args =>  {});
}

## @method scan_task ()
# Scans all the components in the profiles against the applied profile. result of this
# operation can be queried by calling the api cis/tasks/{task-id} where the task-id is the
# response of this operation. <b>Warning:</b> This  *method*  is available as Technology
# Preview. These are early access APIs provided to test, automate and provide feedback on
# the feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# @param version [REQUIRED] version of the profile.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.vcenter.settings.v1.config.version).
# . The value must be str.
#
# @retval 
# Result of the scan operation.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no profile associated with  ``profile``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub scan_task {
   my ($self, %args) = @_;
   my $version = $args {version};

   $self->validate_args (method_name => 'scan$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'scan$task',
                         method_args => \%args);
}


## @method scan_desired_state_task ()
# Scans all the components in the desired state against the applied profile. result of this
# operation can be queried by calling the api cis/tasks/{task-id} where the task-id is the
# response of this operation. <b>Warning:</b> This  *method*  is available as Technology
# Preview. These are early access APIs provided to test, automate and provide feedback on
# the feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# @param spec [REQUIRED] 
# . The value must be Com::Vmware::Appliance::Vcenter::Settings::V1::Config::ScanSpec.
#
# @retval 
# Result of the scan operation.
# The return type will be string
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
sub scan_desired_state_task {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'scan_desired_state$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'scan_desired_state$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Vcenter::Settings::V1::Config service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Vcenter::Settings::V1::Config service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Vcenter::Settings::V1::Config service
#########################################################################################

## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::CreateSpec
#
#
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::CreateSpec``   *class* 
#     contains the specification required to create a profile in vCenter. the spec contains 
#     *fields*  that describe information about the profile. <b>Warning:</b> This  *class* 
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::CreateSpec structure
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
   $self->{description} = $args{'description'};
   $self->{desired_state} = $args{'desired_state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'desired_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1', 'type_name' => 'DesiredState'));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
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
# Description of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_desired_state ()
# Gets the value of 'desired_state' property.
#
# @retval desired_state - The current value of the field.
# Defines the desired state. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# DesiredState#
sub get_desired_state {
   my ($self, %args) = @_;
   return $self->{'desired_state'}; 	
}

## @method set_desired_state ()
# Sets the given value for 'desired_state' property.
# 
# @param desired_state  - New value for the field.
# Defines the desired state. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_desired_state {
   my ($self, %args) = @_;
   $self->{'desired_state'} = $args{'desired_state'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::ScanSpec
#
#
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::ScanSpec``   *class* 
#     contains the specification required for compliance check against the vCenter current
#     config state. <b>Warning:</b> This  *class*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::ScanSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::ScanSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{message} = $args{'message'};
   $self->{desired_state} = $args{'desired_state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::ScanSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.scan_spec');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'desired_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1', 'type_name' => 'DesiredState'));
   bless $self, $class;
   return $self;
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Message for the scan. This may act as an identification for the scan operation.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# Optional#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# Message for the scan. This may act as an identification for the scan operation.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}

## @method get_desired_state ()
# Gets the value of 'desired_state' property.
#
# @retval desired_state - The current value of the field.
# Defines the desired state. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# DesiredState#
sub get_desired_state {
   my ($self, %args) = @_;
   return $self->{'desired_state'}; 	
}

## @method set_desired_state ()
# Sets the given value for 'desired_state' property.
# 
# @param desired_state  - New value for the field.
# Defines the desired state. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_desired_state {
   my ($self, %args) = @_;
   $self->{'desired_state'} = $args{'desired_state'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Info
#
#
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Info``   *class* 
#     represents information about the config profile. the spec contains  *fields*  that
#     describe information about the profile. <b>Warning:</b> This  *class*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{profile} = $args{'profile'};
   $self->{version} = $args{'version'};
   $self->{name} = $args{'name'};
   $self->{creation_time} = $args{'creation_time'};
   $self->{owner} = $args{'owner'};
   $self->{description} = $args{'description'};
   $self->{desired_state} = $args{'desired_state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.info');
   $self->set_binding_field('key' => 'profile', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'creation_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'owner', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'desired_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1', 'type_name' => 'DesiredState'));
   bless $self, $class;
   return $self;
}

## @method get_profile ()
# Gets the value of 'profile' property.
#
# @retval profile - The current value of the field.
# The identifier of the profile. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# ID#
sub get_profile {
   my ($self, %args) = @_;
   return $self->{'profile'}; 	
}

## @method set_profile ()
# Sets the given value for 'profile' property.
# 
# @param profile  - New value for the field.
# The identifier of the profile. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_profile {
   my ($self, %args) = @_;
   $self->{'profile'} = $args{'profile'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# ID#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_creation_time ()
# Gets the value of 'creation_time' property.
#
# @retval creation_time - The current value of the field.
# Creation time of the profile. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# DateTime#
sub get_creation_time {
   my ($self, %args) = @_;
   return $self->{'creation_time'}; 	
}

## @method set_creation_time ()
# Sets the given value for 'creation_time' property.
# 
# @param creation_time  - New value for the field.
# Creation time of the profile. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_creation_time {
   my ($self, %args) = @_;
   $self->{'creation_time'} = $args{'creation_time'}; 
   return;	
}

## @method get_owner ()
# Gets the value of 'owner' property.
#
# @retval owner - The current value of the field.
# Owner of the profile, the one who created. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# String#
sub get_owner {
   my ($self, %args) = @_;
   return $self->{'owner'}; 	
}

## @method set_owner ()
# Sets the given value for 'owner' property.
# 
# @param owner  - New value for the field.
# Owner of the profile, the one who created. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_owner {
   my ($self, %args) = @_;
   $self->{'owner'} = $args{'owner'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Custom description provided by the user. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
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
# Custom description provided by the user. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_desired_state ()
# Gets the value of 'desired_state' property.
#
# @retval desired_state - The current value of the field.
# The desired state. <b>Warning:</b> This  *field*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# DesiredState#
sub get_desired_state {
   my ($self, %args) = @_;
   return $self->{'desired_state'}; 	
}

## @method set_desired_state ()
# Sets the given value for 'desired_state' property.
# 
# @param desired_state  - New value for the field.
# The desired state. <b>Warning:</b> This  *field*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_desired_state {
   my ($self, %args) = @_;
   $self->{'desired_state'} = $args{'desired_state'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Vcenter::Settings::V1::Config service
#########################################################################################
