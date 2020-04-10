########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Pending.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Appliance;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Update::Pending
# The  ``Com::Vmware::Appliance::Update::Pending``   *interface*  provides  *methods* 
#     to manipulate pending updates. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Appliance::Update::Pending;

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
use Com::Vmware::Appliance::Update::PendingStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.update.pending';


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
# Checks if new updates are available. This  *method*  was added in vSphere API 6.7.
#
# @param source_type [REQUIRED] type of the source
# . The value must be Com::Vmware::Appliance::Update::Pending::SourceType.
#
# @param url [OPTIONAL] specific URL to check at
# If  *null*  then URL is taken from the policy settings
# . The value must be String or None.
#
# @retval 
# List of the update summaries
# The return type will be Array of Com::Vmware::Appliance::Update::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# source is not found
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#
sub list {
   my ($self, %args) = @_;
   my $source_type = $args {source_type};
   my $url = $args {url};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method get ()
# Gets update information. This  *method*  was added in vSphere API 6.7.
#
# @param version [REQUIRED] Update version
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.update.pending).
# . The value must be str.
#
# @retval 
# Update
# The return type will be Com::Vmware::Appliance::Update::Pending::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# the update is not found
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the update of this version is already installed
#
sub get {
   my ($self, %args) = @_;
   my $version = $args {version};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method precheck ()
# Runs update precheck. This  *method*  was added in vSphere API 6.7.
#
# @param version [REQUIRED] Update version
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.update.pending).
# . The value must be str.
#
# @retval 
# PrecheckResult
# The return type will be Com::Vmware::Appliance::Update::Pending::PrecheckResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# the update is not found
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if this version is already installed
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if another operation is in progress
#
sub precheck {
   my ($self, %args) = @_;
   my $version = $args {version};

   $self->validate_args (method_name => 'precheck',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'precheck',
                         method_args => \%args);
}

## @method stage ()
# Starts staging the appliance update. The updates are searched for in the following order:
# staged, CDROM, URL. This  *method*  was added in vSphere API 6.7.
#
# @param version [REQUIRED] Update version
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.update.pending).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# the update is not found
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the update of this version is already installed
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# the update is already staged
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if appliance update state prevents staging
#
sub stage {
   my ($self, %args) = @_;
   my $version = $args {version};

   $self->validate_args (method_name => 'stage',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'stage',
                         method_args => \%args);
}

## @method validate ()
# Validates the user provided data before the update installation. This  *method*  was added
# in vSphere API 6.7.
#
# @param version [REQUIRED] Update version
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.update.pending).
# . The value must be str.
#
# @param user_data [REQUIRED] map of user provided data with IDs
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.applicance.update.pending.dataitem).
# . The value must be Dictionary of str and String.
#
# @retval 
# Issues struct with the issues found during the validation
# The return type will be Com::Vmware::Appliance::Notifications
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the update is not found
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the update of this version is already installed
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if appliance update state prevents running an check
#
sub validate {
   my ($self, %args) = @_;
   my $version = $args {version};
   my $user_data = $args {user_data};

   $self->validate_args (method_name => 'validate',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'validate',
                         method_args => \%args);
}

## @method install ()
# Starts operation of installing the appliance update. Will fail is the update is not
# staged. This  *method*  was added in vSphere API 6.7.
#
# @param version [REQUIRED] Update version
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.update.pending).
# . The value must be str.
#
# @param user_data [REQUIRED] map of user provided data with IDs
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.applicance.update.pending.dataitem).
# . The value must be Dictionary of str and String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the update is not found
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the update of this version is already installed
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if appliance update state prevents running an update or not staged
#
sub install {
   my ($self, %args) = @_;
   my $version = $args {version};
   my $user_data = $args {user_data};

   $self->validate_args (method_name => 'install',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'install',
                         method_args => \%args);
}

## @method stage_and_install ()
# Starts operation of installing the appliance update. Will stage update if not already
# staged The updates are searched for in the following order: staged, CDROM, URL. This 
# *method*  was added in vSphere API 6.7.
#
# @param version [REQUIRED] Update version
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.update.pending).
# . The value must be str.
#
# @param user_data [REQUIRED] map of user provided data with IDs
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.applicance.update.pending.dataitem).
# . The value must be Dictionary of str and String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the update is not found
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the update of this version is already installed
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if appliance update state prevents running an update
#
sub stage_and_install {
   my ($self, %args) = @_;
   my $version = $args {version};
   my $user_data = $args {user_data};

   $self->validate_args (method_name => 'stage_and_install',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'stage_and_install',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Update::Pending service
#########################################################################################

## @class Com::Vmware::Appliance::Update::Pending::SourceType
#
# The  ``Com::Vmware::Appliance::Update::Pending::SourceType``   *enumerated type* 
#     defines the supported types of sources of updates. This  *enumeration*  was added in
#     vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Update::Pending::SourceType::LAST_CHECK #
#Do not perform a new check, return the previous result. This  *constant*  was added in
# vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::Pending::SourceType::LOCAL #
#Check the local sources, ISO devices, staged area. This  *constant*  was added in vSphere
# API 6.7.
#
# Constant Com::Vmware::Appliance::Update::Pending::SourceType::LOCAL_AND_ONLINE #
#Check the local sources, ISO devices, staged area, then online repository as stated in
# update policy. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::Pending::SourceType;

use constant {
    LAST_CHECK =>  'LAST_CHECK',
    LOCAL =>  'LOCAL',
    LOCAL_AND_ONLINE =>  'LOCAL_AND_ONLINE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Pending::SourceType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.update.pending.source_type',
                           'binding_class' => 'Com::Vmware::Appliance::Update::Pending::SourceType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Update::Pending service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Update::Pending service
#########################################################################################

## @class Com::Vmware::Appliance::Update::Pending::Info
#
#
# The  ``Com::Vmware::Appliance::Update::Pending::Info``   *class*  contains the
#     extended information about the update. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::Pending::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Pending::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{contents} = $args{'contents'};
   $self->{services_will_be_stopped} = $args{'services_will_be_stopped'};
   $self->{eulas} = $args{'eulas'};
   $self->{staged} = $args{'staged'};
   $self->{description} = $args{'description'};
   $self->{priority} = $args{'priority'};
   $self->{severity} = $args{'severity'};
   $self->{update_type} = $args{'update_type'};
   $self->{release_date} = $args{'release_date'};
   $self->{reboot_required} = $args{'reboot_required'};
   $self->{size} = $args{'size'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Update::Pending::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.update.pending.info');
   $self->set_binding_field('key' => 'contents', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'services_will_be_stopped', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'ServiceInfo')));
   $self->set_binding_field('key' => 'eulas', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'staged', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'priority', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'CommonInfo::Priority'));
   $self->set_binding_field('key' => 'severity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'CommonInfo::Severity'));
   $self->set_binding_field('key' => 'update_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'CommonInfo::Category'));
   $self->set_binding_field('key' => 'release_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'reboot_required', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_contents ()
# Gets the value of 'contents' property.
#
# @retval contents - The current value of the field.
# List of the 1. issues addressed since previous/current version 2. new
#     features/improvements. This  *field*  was added in vSphere API 6.7.
#
# List#
sub get_contents {
   my ($self, %args) = @_;
   return $self->{'contents'}; 	
}

## @method set_contents ()
# Sets the given value for 'contents' property.
# 
# @param contents  - New value for the field.
# List of the 1. issues addressed since previous/current version 2. new
#     features/improvements. This  *field*  was added in vSphere API 6.7.
#
sub set_contents {
   my ($self, %args) = @_;
   $self->{'contents'} = $args{'contents'}; 
   return;	
}

## @method get_services_will_be_stopped ()
# Gets the value of 'services_will_be_stopped' property.
#
# @retval services_will_be_stopped - The current value of the field.
# List of the services that will be stopped and restarted during the update
#     installation. This  *field*  was added in vSphere API 6.7.
#
# List#
sub get_services_will_be_stopped {
   my ($self, %args) = @_;
   return $self->{'services_will_be_stopped'}; 	
}

## @method set_services_will_be_stopped ()
# Sets the given value for 'services_will_be_stopped' property.
# 
# @param services_will_be_stopped  - New value for the field.
# List of the services that will be stopped and restarted during the update
#     installation. This  *field*  was added in vSphere API 6.7.
#
sub set_services_will_be_stopped {
   my ($self, %args) = @_;
   $self->{'services_will_be_stopped'} = $args{'services_will_be_stopped'}; 
   return;	
}

## @method get_eulas ()
# Gets the value of 'eulas' property.
#
# @retval eulas - The current value of the field.
# List of EULAs. This list has multiple entries and can be dynamic based on what we are
#     actually installing. This  *field*  was added in vSphere API 6.7.
#
# List#
sub get_eulas {
   my ($self, %args) = @_;
   return $self->{'eulas'}; 	
}

## @method set_eulas ()
# Sets the given value for 'eulas' property.
# 
# @param eulas  - New value for the field.
# List of EULAs. This list has multiple entries and can be dynamic based on what we are
#     actually installing. This  *field*  was added in vSphere API 6.7.
#
sub set_eulas {
   my ($self, %args) = @_;
   $self->{'eulas'} = $args{'eulas'}; 
   return;	
}

## @method get_staged ()
# Gets the value of 'staged' property.
#
# @retval staged - The current value of the field.
# Is the update staged. This  *field*  was added in vSphere API 6.7.
#
# boolean#
sub get_staged {
   my ($self, %args) = @_;
   return $self->{'staged'}; 	
}

## @method set_staged ()
# Sets the given value for 'staged' property.
# 
# @param staged  - New value for the field.
# Is the update staged. This  *field*  was added in vSphere API 6.7.
#
sub set_staged {
   my ($self, %args) = @_;
   $self->{'staged'} = $args{'staged'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the update. The short information what this update is. E.g.
#     &quot;Update2 for vCenter Server Appliance 6.5&quot;. This  *field*  was added in
#     vSphere API 6.7.
#
# LocalizableMessage#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the update. The short information what this update is. E.g.
#     &quot;Update2 for vCenter Server Appliance 6.5&quot;. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_priority ()
# Gets the value of 'priority' property.
#
# @retval priority - The current value of the field.
# Update priority. This  *field*  was added in vSphere API 6.7.
#
# Priority#
sub get_priority {
   my ($self, %args) = @_;
   return $self->{'priority'}; 	
}

## @method set_priority ()
# Sets the given value for 'priority' property.
# 
# @param priority  - New value for the field.
# Update priority. This  *field*  was added in vSphere API 6.7.
#
sub set_priority {
   my ($self, %args) = @_;
   $self->{'priority'} = $args{'priority'}; 
   return;	
}

## @method get_severity ()
# Gets the value of 'severity' property.
#
# @retval severity - The current value of the field.
# Update severity. This  *field*  was added in vSphere API 6.7.
#
# Severity#
sub get_severity {
   my ($self, %args) = @_;
   return $self->{'severity'}; 	
}

## @method set_severity ()
# Sets the given value for 'severity' property.
# 
# @param severity  - New value for the field.
# Update severity. This  *field*  was added in vSphere API 6.7.
#
sub set_severity {
   my ($self, %args) = @_;
   $self->{'severity'} = $args{'severity'}; 
   return;	
}

## @method get_update_type ()
# Gets the value of 'update_type' property.
#
# @retval update_type - The current value of the field.
# Update category. This  *field*  was added in vSphere API 6.7.
#
# Category#
sub get_update_type {
   my ($self, %args) = @_;
   return $self->{'update_type'}; 	
}

## @method set_update_type ()
# Sets the given value for 'update_type' property.
# 
# @param update_type  - New value for the field.
# Update category. This  *field*  was added in vSphere API 6.7.
#
sub set_update_type {
   my ($self, %args) = @_;
   $self->{'update_type'} = $args{'update_type'}; 
   return;	
}

## @method get_release_date ()
# Gets the value of 'release_date' property.
#
# @retval release_date - The current value of the field.
# Update release date. This  *field*  was added in vSphere API 6.7.
#
# DateTime#
sub get_release_date {
   my ($self, %args) = @_;
   return $self->{'release_date'}; 	
}

## @method set_release_date ()
# Sets the given value for 'release_date' property.
# 
# @param release_date  - New value for the field.
# Update release date. This  *field*  was added in vSphere API 6.7.
#
sub set_release_date {
   my ($self, %args) = @_;
   $self->{'release_date'} = $args{'release_date'}; 
   return;	
}

## @method get_reboot_required ()
# Gets the value of 'reboot_required' property.
#
# @retval reboot_required - The current value of the field.
# Flag indicating whether reboot is required after update. This  *field*  was added in
#     vSphere API 6.7.
#
# boolean#
sub get_reboot_required {
   my ($self, %args) = @_;
   return $self->{'reboot_required'}; 	
}

## @method set_reboot_required ()
# Sets the given value for 'reboot_required' property.
# 
# @param reboot_required  - New value for the field.
# Flag indicating whether reboot is required after update. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_reboot_required {
   my ($self, %args) = @_;
   $self->{'reboot_required'} = $args{'reboot_required'}; 
   return;	
}

## @method get_size ()
# Gets the value of 'size' property.
#
# @retval size - The current value of the field.
# Download Size of update in Megabytes. This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_size {
   my ($self, %args) = @_;
   return $self->{'size'}; 	
}

## @method set_size ()
# Sets the given value for 'size' property.
# 
# @param size  - New value for the field.
# Download Size of update in Megabytes. This  *field*  was added in vSphere API 6.7.
#
sub set_size {
   my ($self, %args) = @_;
   $self->{'size'} = $args{'size'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Update::Pending::Question
#
#
# The  ``Com::Vmware::Appliance::Update::Pending::Question``   *class*  describes a item
#     of information that must be provided by the user in order to install the update. This 
#     *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::Pending::Question;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Pending::Question structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'PLAIN_TEXT' => ['allowed_values', 'regexp', 'default_answer'],
               'BOOLEAN' => [],
               'PASSWORD' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{data_item} = $args{'data_item'};
   $self->{text} = $args{'text'};
   $self->{description} = $args{'description'};
   $self->{type} = $args{'type'};
   $self->{allowed_values} = $args{'allowed_values'};
   $self->{regexp} = $args{'regexp'};
   $self->{default_answer} = $args{'default_answer'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Update::Pending::Question');
   $self->set_binding_name('name' => 'com.vmware.appliance.update.pending.question');
   $self->set_binding_field('key' => 'data_item', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'text', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'Pending::Question::InputType'));
   $self->set_binding_field('key' => 'allowed_values', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'regexp', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'default_answer', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_data_item ()
# Gets the value of 'data_item' property.
#
# @retval data_item - The current value of the field.
# ID of the data item. This  *field*  was added in vSphere API 6.7.
#
# ID#
sub get_data_item {
   my ($self, %args) = @_;
   return $self->{'data_item'}; 	
}

## @method set_data_item ()
# Sets the given value for 'data_item' property.
# 
# @param data_item  - New value for the field.
# ID of the data item. This  *field*  was added in vSphere API 6.7.
#
sub set_data_item {
   my ($self, %args) = @_;
   $self->{'data_item'} = $args{'data_item'}; 
   return;	
}

## @method get_text ()
# Gets the value of 'text' property.
#
# @retval text - The current value of the field.
# Label for the item to be used in GUI/CLI. This  *field*  was added in vSphere API 6.7.
#
# LocalizableMessage#
sub get_text {
   my ($self, %args) = @_;
   return $self->{'text'}; 	
}

## @method set_text ()
# Sets the given value for 'text' property.
# 
# @param text  - New value for the field.
# Label for the item to be used in GUI/CLI. This  *field*  was added in vSphere API 6.7.
#
sub set_text {
   my ($self, %args) = @_;
   $self->{'text'} = $args{'text'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the item. This  *field*  was added in vSphere API 6.7.
#
# LocalizableMessage#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the item. This  *field*  was added in vSphere API 6.7.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# How this field shoudl be represented in GUI or CLI. This  *field*  was added in
#     vSphere API 6.7.
#
# InputType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# How this field shoudl be represented in GUI or CLI. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_allowed_values ()
# Gets the value of 'allowed_values' property.
#
# @retval allowed_values - The current value of the field.
# List of allowed values. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_allowed_values {
   my ($self, %args) = @_;
   return $self->{'allowed_values'}; 	
}

## @method set_allowed_values ()
# Sets the given value for 'allowed_values' property.
# 
# @param allowed_values  - New value for the field.
# List of allowed values. This  *field*  was added in vSphere API 6.7.
#
sub set_allowed_values {
   my ($self, %args) = @_;
   $self->{'allowed_values'} = $args{'allowed_values'}; 
   return;	
}

## @method get_regexp ()
# Gets the value of 'regexp' property.
#
# @retval regexp - The current value of the field.
# Regexp to validate the input. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_regexp {
   my ($self, %args) = @_;
   return $self->{'regexp'}; 	
}

## @method set_regexp ()
# Sets the given value for 'regexp' property.
# 
# @param regexp  - New value for the field.
# Regexp to validate the input. This  *field*  was added in vSphere API 6.7.
#
sub set_regexp {
   my ($self, %args) = @_;
   $self->{'regexp'} = $args{'regexp'}; 
   return;	
}

## @method get_default_answer ()
# Gets the value of 'default_answer' property.
#
# @retval default_answer - The current value of the field.
# Default answer. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_default_answer {
   my ($self, %args) = @_;
   return $self->{'default_answer'}; 	
}

## @method set_default_answer ()
# Sets the given value for 'default_answer' property.
# 
# @param default_answer  - New value for the field.
# Default answer. This  *field*  was added in vSphere API 6.7.
#
sub set_default_answer {
   my ($self, %args) = @_;
   $self->{'default_answer'} = $args{'default_answer'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Update::Pending::Question::InputType
#
# The  ``Com::Vmware::Appliance::Update::Pending::Question::InputType``   *enumerated
#     type*  defines representation of field fields in GUI or CLI. This  *enumeration*  was
#     added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Update::Pending::Question::InputType::PLAIN_TEXT #
#plain text answer. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::Pending::Question::InputType::BOOLEAN #
#Yes/No,On/Off,Checkbox answer. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::Pending::Question::InputType::PASSWORD #
#Password (masked) answer. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::Pending::Question::InputType;

use constant {
    PLAIN_TEXT =>  'PLAIN_TEXT',
    BOOLEAN =>  'BOOLEAN',
    PASSWORD =>  'PASSWORD',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Pending::Question::InputType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.update.pending.question.input_type',
                           'binding_class' => 'Com::Vmware::Appliance::Update::Pending::Question::InputType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Appliance::Update::Pending::PrecheckResult
#
#
# The  ``Com::Vmware::Appliance::Update::Pending::PrecheckResult``   *class*  contains
#     estimates of how long it will take install and rollback an update as well as a list of
#     possible warnings and problems with installing the update. This  *class*  was added in
#     vSphere API 6.7.

package Com::Vmware::Appliance::Update::Pending::PrecheckResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Pending::PrecheckResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{check_time} = $args{'check_time'};
   $self->{estimated_time_to_install} = $args{'estimated_time_to_install'};
   $self->{estimated_time_to_rollback} = $args{'estimated_time_to_rollback'};
   $self->{reboot_required} = $args{'reboot_required'};
   $self->{issues} = $args{'issues'};
   $self->{questions} = $args{'questions'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Update::Pending::PrecheckResult');
   $self->set_binding_name('name' => 'com.vmware.appliance.update.pending.precheck_result');
   $self->set_binding_field('key' => 'check_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'estimated_time_to_install', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'estimated_time_to_rollback', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'reboot_required', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'issues', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Notifications')));
   $self->set_binding_field('key' => 'questions', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'Pending::Question')));
   bless $self, $class;
   return $self;
}

## @method get_check_time ()
# Gets the value of 'check_time' property.
#
# @retval check_time - The current value of the field.
# Time when this precheck was run. This  *field*  was added in vSphere API 6.7.
#
# DateTime#
sub get_check_time {
   my ($self, %args) = @_;
   return $self->{'check_time'}; 	
}

## @method set_check_time ()
# Sets the given value for 'check_time' property.
# 
# @param check_time  - New value for the field.
# Time when this precheck was run. This  *field*  was added in vSphere API 6.7.
#
sub set_check_time {
   my ($self, %args) = @_;
   $self->{'check_time'} = $args{'check_time'}; 
   return;	
}

## @method get_estimated_time_to_install ()
# Gets the value of 'estimated_time_to_install' property.
#
# @retval estimated_time_to_install - The current value of the field.
# Rough estimate of time to install the update (minutes). This  *field*  was added in
#     vSphere API 6.7.
#
# Optional#
sub get_estimated_time_to_install {
   my ($self, %args) = @_;
   return $self->{'estimated_time_to_install'}; 	
}

## @method set_estimated_time_to_install ()
# Sets the given value for 'estimated_time_to_install' property.
# 
# @param estimated_time_to_install  - New value for the field.
# Rough estimate of time to install the update (minutes). This  *field*  was added in
#     vSphere API 6.7.
#
sub set_estimated_time_to_install {
   my ($self, %args) = @_;
   $self->{'estimated_time_to_install'} = $args{'estimated_time_to_install'}; 
   return;	
}

## @method get_estimated_time_to_rollback ()
# Gets the value of 'estimated_time_to_rollback' property.
#
# @retval estimated_time_to_rollback - The current value of the field.
# Rough estimate of time to rollback the update (minutes). This  *field*  was added in
#     vSphere API 6.7.
#
# Optional#
sub get_estimated_time_to_rollback {
   my ($self, %args) = @_;
   return $self->{'estimated_time_to_rollback'}; 	
}

## @method set_estimated_time_to_rollback ()
# Sets the given value for 'estimated_time_to_rollback' property.
# 
# @param estimated_time_to_rollback  - New value for the field.
# Rough estimate of time to rollback the update (minutes). This  *field*  was added in
#     vSphere API 6.7.
#
sub set_estimated_time_to_rollback {
   my ($self, %args) = @_;
   $self->{'estimated_time_to_rollback'} = $args{'estimated_time_to_rollback'}; 
   return;	
}

## @method get_reboot_required ()
# Gets the value of 'reboot_required' property.
#
# @retval reboot_required - The current value of the field.
# Is reboot required to install the update. This  *field*  was added in vSphere API 6.7.
#
# boolean#
sub get_reboot_required {
   my ($self, %args) = @_;
   return $self->{'reboot_required'}; 	
}

## @method set_reboot_required ()
# Sets the given value for 'reboot_required' property.
# 
# @param reboot_required  - New value for the field.
# Is reboot required to install the update. This  *field*  was added in vSphere API 6.7.
#
sub set_reboot_required {
   my ($self, %args) = @_;
   $self->{'reboot_required'} = $args{'reboot_required'}; 
   return;	
}

## @method get_issues ()
# Gets the value of 'issues' property.
#
# @retval issues - The current value of the field.
# Lists of the issues and warnings. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_issues {
   my ($self, %args) = @_;
   return $self->{'issues'}; 	
}

## @method set_issues ()
# Sets the given value for 'issues' property.
# 
# @param issues  - New value for the field.
# Lists of the issues and warnings. This  *field*  was added in vSphere API 6.7.
#
sub set_issues {
   my ($self, %args) = @_;
   $self->{'issues'} = $args{'issues'}; 
   return;	
}

## @method get_questions ()
# Gets the value of 'questions' property.
#
# @retval questions - The current value of the field.
# List of questions that must be answered to install the update. This  *field*  was
#     added in vSphere API 6.7.
#
# List#
sub get_questions {
   my ($self, %args) = @_;
   return $self->{'questions'}; 	
}

## @method set_questions ()
# Sets the given value for 'questions' property.
# 
# @param questions  - New value for the field.
# List of questions that must be answered to install the update. This  *field*  was
#     added in vSphere API 6.7.
#
sub set_questions {
   my ($self, %args) = @_;
   $self->{'questions'} = $args{'questions'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Update::Pending service
#########################################################################################
