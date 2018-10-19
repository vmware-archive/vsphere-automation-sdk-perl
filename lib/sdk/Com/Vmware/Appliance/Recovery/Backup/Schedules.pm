########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Schedules.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Backup::Schedules
# The  ``Com::Vmware::Appliance::Recovery::Backup::Schedules``   *interface*  provides 
#     *methods*  to be performed to manage backup schedules. This  *interface*  was added in
#     vSphere API 6.7.
#

package Com::Vmware::Appliance::Recovery::Backup::Schedules;

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
use Com::Vmware::Appliance::Recovery::Backup::SchedulesStub;

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

## @method list ()
# Returns a list of existing schedules with details. This  *method*  was added in vSphere
# API 6.7.
#
# @retval 
# Map of schedule id to Info Structure
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.schedule).
# The return type will be Dictionary of str and
# Com::Vmware::Appliance::Recovery::Backup::Schedules::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method run ()
# Initiate backup with the specified schedule. This  *method*  was added in vSphere API 6.7.
#
# @param schedule [REQUIRED] Identifier of the schedule
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.schedule).
# . The value must be str.
#
# @param comment [OPTIONAL] field that specifies the description for the backup.
# If  *null*  the backup will have an empty comment.
# . The value must be String or None.
#
# @retval 
# BackupJobStatus Structure
# The return type will be Com::Vmware::Appliance::Recovery::Backup::Job::BackupJobStatus
#
# @throw Com::Vmware::Vapi::Std::Errors::FeatureInUse 
# if a backup or restore is already in progress.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if schedule associated with id does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub run {
   my ($self, %args) = @_;
   my $schedule = $args {schedule};
   my $comment = $args {comment};

   $self->validate_args (method_name => 'run',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'run',
                         method_args => \%args);
}


## @method get ()
# Returns an existing schedule information based on id. This  *method*  was added in vSphere
# API 6.7.
#
# @param schedule [REQUIRED] Identifier of the schedule
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.schedule).
# . The value must be str.
#
# @retval 
# Info Structure
# The return type will be Com::Vmware::Appliance::Recovery::Backup::Schedules::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if schedule associated with id does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub get {
   my ($self, %args) = @_;
   my $schedule = $args {schedule};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method create ()
# Creates a schedule. This  *method*  was added in vSphere API 6.7.
#
# @param schedule [REQUIRED] Identifier of the schedule
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.schedule).
# . The value must be str.
#
# @param spec [REQUIRED] CreateSpec Structure
# . The value must be Com::Vmware::Appliance::Recovery::Backup::Schedules::CreateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if provided with invalid schedule specification.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the schedule with the given id already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub create {
   my ($self, %args) = @_;
   my $schedule = $args {schedule};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method update ()
# Updates a schedule. This  *method*  was added in vSphere API 6.7.
#
# @param schedule [REQUIRED] Identifier of the schedule
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.schedule).
# . The value must be str.
#
# @param spec [REQUIRED] UpdateSpec Structure
# . The value must be Com::Vmware::Appliance::Recovery::Backup::Schedules::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if provided with invalid schedule specification.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if schedule associated with id does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub update {
   my ($self, %args) = @_;
   my $schedule = $args {schedule};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method delete ()
# Deletes an existing schedule. This  *method*  was added in vSphere API 6.7.
#
# @param schedule [REQUIRED] Identifier of the schedule
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.schedule).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if schedule associated with id does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub delete {
   my ($self, %args) = @_;
   my $schedule = $args {schedule};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Backup::Schedules service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek``   *enumerated
#     type*  defines the set of days when backup can be scheduled. The days can be specified
#     as a list of individual days. You specify the days when you set the recurrence for a
#     schedule. See 
#     :attr:`Com::Vmware::Appliance::Recovery::Backup::Schedules::RecurrenceInfo.days` .
#     This  *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek::MONDAY #
#Monday. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek::TUESDAY #
#Tuesday. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek::WEDNESDAY #
#Wednesday. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek::THURSDAY #
#Thursday. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek::FRIDAY #
#Friday. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek::SATURDAY #
#Saturday. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek::SUNDAY #
#Sunday. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek;

use constant {
    MONDAY =>  'MONDAY',
    TUESDAY =>  'TUESDAY',
    WEDNESDAY =>  'WEDNESDAY',
    THURSDAY =>  'THURSDAY',
    FRIDAY =>  'FRIDAY',
    SATURDAY =>  'SATURDAY',
    SUNDAY =>  'SUNDAY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.backup.schedules.day_of_week',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Schedules::DayOfWeek');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Backup::Schedules service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Backup::Schedules service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::Schedules::RetentionInfo
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Schedules::RetentionInfo``   *class* 
#     contains retention information associated with a schedule. This  *class*  was added in
#     vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::Schedules::RetentionInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Schedules::RetentionInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{max_count} = $args{'max_count'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Schedules::RetentionInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.schedules.retention_info');
   $self->set_binding_field('key' => 'max_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_max_count ()
# Gets the value of 'max_count' property.
#
# @retval max_count - The current value of the field.
# Number of backups which should be retained. If retention is not set, all the backups
#     will be retained forever. This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_max_count {
   my ($self, %args) = @_;
   return $self->{'max_count'}; 	
}

## @method set_max_count ()
# Sets the given value for 'max_count' property.
# 
# @param max_count  - New value for the field.
# Number of backups which should be retained. If retention is not set, all the backups
#     will be retained forever. This  *field*  was added in vSphere API 6.7.
#
sub set_max_count {
   my ($self, %args) = @_;
   $self->{'max_count'} = $args{'max_count'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Schedules::RecurrenceInfo
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Schedules::RecurrenceInfo``   *class*
#     contains the recurrence information associated with a schedule. This  *class*  was
#     added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::Schedules::RecurrenceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Schedules::RecurrenceInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{minute} = $args{'minute'};
   $self->{hour} = $args{'hour'};
   $self->{days} = $args{'days'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Schedules::RecurrenceInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.schedules.recurrence_info');
   $self->set_binding_field('key' => 'minute', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'hour', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'days', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Schedules::DayOfWeek'))));
   bless $self, $class;
   return $self;
}

## @method get_minute ()
# Gets the value of 'minute' property.
#
# @retval minute - The current value of the field.
# Minute when backup should run. This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_minute {
   my ($self, %args) = @_;
   return $self->{'minute'}; 	
}

## @method set_minute ()
# Sets the given value for 'minute' property.
# 
# @param minute  - New value for the field.
# Minute when backup should run. This  *field*  was added in vSphere API 6.7.
#
sub set_minute {
   my ($self, %args) = @_;
   $self->{'minute'} = $args{'minute'}; 
   return;	
}

## @method get_hour ()
# Gets the value of 'hour' property.
#
# @retval hour - The current value of the field.
# Hour when backup should run. The hour should be specified in 24-hour clock format.
#     This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_hour {
   my ($self, %args) = @_;
   return $self->{'hour'}; 	
}

## @method set_hour ()
# Sets the given value for 'hour' property.
# 
# @param hour  - New value for the field.
# Hour when backup should run. The hour should be specified in 24-hour clock format.
#     This  *field*  was added in vSphere API 6.7.
#
sub set_hour {
   my ($self, %args) = @_;
   $self->{'hour'} = $args{'hour'}; 
   return;	
}

## @method get_days ()
# Gets the value of 'days' property.
#
# @retval days - The current value of the field.
# Day of week when the backup should be run. Days can be specified as list of days. This
#      *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_days {
   my ($self, %args) = @_;
   return $self->{'days'}; 	
}

## @method set_days ()
# Sets the given value for 'days' property.
# 
# @param days  - New value for the field.
# Day of week when the backup should be run. Days can be specified as list of days. This
#      *field*  was added in vSphere API 6.7.
#
sub set_days {
   my ($self, %args) = @_;
   $self->{'days'} = $args{'days'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Schedules::CreateSpec
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Schedules::CreateSpec``   *class* 
#     contains fields to be specified for creating a new schedule. The structure includes
#     parts, location information, encryption password and enable flag. This  *class*  was
#     added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::Schedules::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Schedules::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{parts} = $args{'parts'};
   $self->{backup_password} = $args{'backup_password'};
   $self->{location} = $args{'location'};
   $self->{location_user} = $args{'location_user'};
   $self->{location_password} = $args{'location_password'};
   $self->{enable} = $args{'enable'};
   $self->{recurrence_info} = $args{'recurrence_info'};
   $self->{retention_info} = $args{'retention_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Schedules::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.schedules.create_spec');
   $self->set_binding_field('key' => 'parts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'backup_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'location_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'enable', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'recurrence_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Schedules::RecurrenceInfo')));
   $self->set_binding_field('key' => 'retention_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Schedules::RetentionInfo')));
   bless $self, $class;
   return $self;
}

## @method get_parts ()
# Gets the value of 'parts' property.
#
# @retval parts - The current value of the field.
# List of optional parts to be backed up. Use the 
#     :func:`Com::Vmware::Appliance::Recovery::Backup::Parts.list`   *method*  to get
#     information about the supported parts. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_parts {
   my ($self, %args) = @_;
   return $self->{'parts'}; 	
}

## @method set_parts ()
# Sets the given value for 'parts' property.
# 
# @param parts  - New value for the field.
# List of optional parts to be backed up. Use the 
#     :func:`Com::Vmware::Appliance::Recovery::Backup::Parts.list`   *method*  to get
#     information about the supported parts. This  *field*  was added in vSphere API 6.7.
#
sub set_parts {
   my ($self, %args) = @_;
   $self->{'parts'} = $args{'parts'}; 
   return;	
}

## @method get_backup_password ()
# Gets the value of 'backup_password' property.
#
# @retval backup_password - The current value of the field.
# Password for a backup piece. The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space). This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_backup_password {
   my ($self, %args) = @_;
   return $self->{'backup_password'}; 	
}

## @method set_backup_password ()
# Sets the given value for 'backup_password' property.
# 
# @param backup_password  - New value for the field.
# Password for a backup piece. The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space). This  *field*  was added in vSphere API 6.7.
#
sub set_backup_password {
   my ($self, %args) = @_;
   $self->{'backup_password'} = $args{'backup_password'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# URL of the backup location. This  *field*  was added in vSphere API 6.7.
#
# URI#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# URL of the backup location. This  *field*  was added in vSphere API 6.7.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_location_user ()
# Gets the value of 'location_user' property.
#
# @retval location_user - The current value of the field.
# Username for the given location. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_location_user {
   my ($self, %args) = @_;
   return $self->{'location_user'}; 	
}

## @method set_location_user ()
# Sets the given value for 'location_user' property.
# 
# @param location_user  - New value for the field.
# Username for the given location. This  *field*  was added in vSphere API 6.7.
#
sub set_location_user {
   my ($self, %args) = @_;
   $self->{'location_user'} = $args{'location_user'}; 
   return;	
}

## @method get_location_password ()
# Gets the value of 'location_password' property.
#
# @retval location_password - The current value of the field.
# Password for the given location. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_location_password {
   my ($self, %args) = @_;
   return $self->{'location_password'}; 	
}

## @method set_location_password ()
# Sets the given value for 'location_password' property.
# 
# @param location_password  - New value for the field.
# Password for the given location. This  *field*  was added in vSphere API 6.7.
#
sub set_location_password {
   my ($self, %args) = @_;
   $self->{'location_password'} = $args{'location_password'}; 
   return;	
}

## @method get_enable ()
# Gets the value of 'enable' property.
#
# @retval enable - The current value of the field.
# Enable or disable a schedule. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_enable {
   my ($self, %args) = @_;
   return $self->{'enable'}; 	
}

## @method set_enable ()
# Sets the given value for 'enable' property.
# 
# @param enable  - New value for the field.
# Enable or disable a schedule. This  *field*  was added in vSphere API 6.7.
#
sub set_enable {
   my ($self, %args) = @_;
   $self->{'enable'} = $args{'enable'}; 
   return;	
}

## @method get_recurrence_info ()
# Gets the value of 'recurrence_info' property.
#
# @retval recurrence_info - The current value of the field.
# Recurrence information for the schedule. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_recurrence_info {
   my ($self, %args) = @_;
   return $self->{'recurrence_info'}; 	
}

## @method set_recurrence_info ()
# Sets the given value for 'recurrence_info' property.
# 
# @param recurrence_info  - New value for the field.
# Recurrence information for the schedule. This  *field*  was added in vSphere API 6.7.
#
sub set_recurrence_info {
   my ($self, %args) = @_;
   $self->{'recurrence_info'} = $args{'recurrence_info'}; 
   return;	
}

## @method get_retention_info ()
# Gets the value of 'retention_info' property.
#
# @retval retention_info - The current value of the field.
# Retention information for the schedule. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_retention_info {
   my ($self, %args) = @_;
   return $self->{'retention_info'}; 	
}

## @method set_retention_info ()
# Sets the given value for 'retention_info' property.
# 
# @param retention_info  - New value for the field.
# Retention information for the schedule. This  *field*  was added in vSphere API 6.7.
#
sub set_retention_info {
   my ($self, %args) = @_;
   $self->{'retention_info'} = $args{'retention_info'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Schedules::Info
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Schedules::Info``   *class*  contains
#     information about an existing schedule. The structure includes Schedule ID, parts,
#     location information, encryption password, enable flag, recurrence and retention
#     information. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::Schedules::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Schedules::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{parts} = $args{'parts'};
   $self->{location} = $args{'location'};
   $self->{location_user} = $args{'location_user'};
   $self->{enable} = $args{'enable'};
   $self->{recurrence_info} = $args{'recurrence_info'};
   $self->{retention_info} = $args{'retention_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Schedules::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.schedules.info');
   $self->set_binding_field('key' => 'parts', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'location_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'enable', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'recurrence_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Schedules::RecurrenceInfo')));
   $self->set_binding_field('key' => 'retention_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Schedules::RetentionInfo')));
   bless $self, $class;
   return $self;
}

## @method get_parts ()
# Gets the value of 'parts' property.
#
# @retval parts - The current value of the field.
# List of optional parts that will be included in backups based on this schedule
#     details. Use the  :func:`Com::Vmware::Appliance::Recovery::Backup::Parts.list`  
#     *method*  to get information about the supported parts. This  *field*  was added in
#     vSphere API 6.7.
#
# List#
sub get_parts {
   my ($self, %args) = @_;
   return $self->{'parts'}; 	
}

## @method set_parts ()
# Sets the given value for 'parts' property.
# 
# @param parts  - New value for the field.
# List of optional parts that will be included in backups based on this schedule
#     details. Use the  :func:`Com::Vmware::Appliance::Recovery::Backup::Parts.list`  
#     *method*  to get information about the supported parts. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_parts {
   my ($self, %args) = @_;
   $self->{'parts'} = $args{'parts'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# URL of the backup location. This  *field*  was added in vSphere API 6.7.
#
# URI#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# URL of the backup location. This  *field*  was added in vSphere API 6.7.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_location_user ()
# Gets the value of 'location_user' property.
#
# @retval location_user - The current value of the field.
# Username for the given location. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_location_user {
   my ($self, %args) = @_;
   return $self->{'location_user'}; 	
}

## @method set_location_user ()
# Sets the given value for 'location_user' property.
# 
# @param location_user  - New value for the field.
# Username for the given location. This  *field*  was added in vSphere API 6.7.
#
sub set_location_user {
   my ($self, %args) = @_;
   $self->{'location_user'} = $args{'location_user'}; 
   return;	
}

## @method get_enable ()
# Gets the value of 'enable' property.
#
# @retval enable - The current value of the field.
# Enable or disable a schedule, by default when created a schedule will be enabled. This
#      *field*  was added in vSphere API 6.7.
#
# boolean#
sub get_enable {
   my ($self, %args) = @_;
   return $self->{'enable'}; 	
}

## @method set_enable ()
# Sets the given value for 'enable' property.
# 
# @param enable  - New value for the field.
# Enable or disable a schedule, by default when created a schedule will be enabled. This
#      *field*  was added in vSphere API 6.7.
#
sub set_enable {
   my ($self, %args) = @_;
   $self->{'enable'} = $args{'enable'}; 
   return;	
}

## @method get_recurrence_info ()
# Gets the value of 'recurrence_info' property.
#
# @retval recurrence_info - The current value of the field.
# Recurrence information for the schedule. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_recurrence_info {
   my ($self, %args) = @_;
   return $self->{'recurrence_info'}; 	
}

## @method set_recurrence_info ()
# Sets the given value for 'recurrence_info' property.
# 
# @param recurrence_info  - New value for the field.
# Recurrence information for the schedule. This  *field*  was added in vSphere API 6.7.
#
sub set_recurrence_info {
   my ($self, %args) = @_;
   $self->{'recurrence_info'} = $args{'recurrence_info'}; 
   return;	
}

## @method get_retention_info ()
# Gets the value of 'retention_info' property.
#
# @retval retention_info - The current value of the field.
# Retention information for the schedule. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_retention_info {
   my ($self, %args) = @_;
   return $self->{'retention_info'}; 	
}

## @method set_retention_info ()
# Sets the given value for 'retention_info' property.
# 
# @param retention_info  - New value for the field.
# Retention information for the schedule. This  *field*  was added in vSphere API 6.7.
#
sub set_retention_info {
   my ($self, %args) = @_;
   $self->{'retention_info'} = $args{'retention_info'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Schedules::UpdateSpec
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Schedules::UpdateSpec``   *class* 
#     contains the fields of the existing schedule which can be updated. This  *class*  was
#     added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::Schedules::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Schedules::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{parts} = $args{'parts'};
   $self->{backup_password} = $args{'backup_password'};
   $self->{location} = $args{'location'};
   $self->{location_user} = $args{'location_user'};
   $self->{location_password} = $args{'location_password'};
   $self->{enable} = $args{'enable'};
   $self->{recurrence_info} = $args{'recurrence_info'};
   $self->{retention_info} = $args{'retention_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Schedules::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.schedules.update_spec');
   $self->set_binding_field('key' => 'parts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'backup_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'location_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'enable', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'recurrence_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Schedules::RecurrenceInfo')));
   $self->set_binding_field('key' => 'retention_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Schedules::RetentionInfo')));
   bless $self, $class;
   return $self;
}

## @method get_parts ()
# Gets the value of 'parts' property.
#
# @retval parts - The current value of the field.
# List of optional parts. Use the 
#     :func:`Com::Vmware::Appliance::Recovery::Backup::Parts.list`   *method*  to get
#     information about the supported parts. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_parts {
   my ($self, %args) = @_;
   return $self->{'parts'}; 	
}

## @method set_parts ()
# Sets the given value for 'parts' property.
# 
# @param parts  - New value for the field.
# List of optional parts. Use the 
#     :func:`Com::Vmware::Appliance::Recovery::Backup::Parts.list`   *method*  to get
#     information about the supported parts. This  *field*  was added in vSphere API 6.7.
#
sub set_parts {
   my ($self, %args) = @_;
   $self->{'parts'} = $args{'parts'}; 
   return;	
}

## @method get_backup_password ()
# Gets the value of 'backup_password' property.
#
# @retval backup_password - The current value of the field.
# Password for a backup piece. The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space). This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_backup_password {
   my ($self, %args) = @_;
   return $self->{'backup_password'}; 	
}

## @method set_backup_password ()
# Sets the given value for 'backup_password' property.
# 
# @param backup_password  - New value for the field.
# Password for a backup piece. The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space). This  *field*  was added in vSphere API 6.7.
#
sub set_backup_password {
   my ($self, %args) = @_;
   $self->{'backup_password'} = $args{'backup_password'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# URL of the backup location. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# URL of the backup location. This  *field*  was added in vSphere API 6.7.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_location_user ()
# Gets the value of 'location_user' property.
#
# @retval location_user - The current value of the field.
# Username for the given location. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_location_user {
   my ($self, %args) = @_;
   return $self->{'location_user'}; 	
}

## @method set_location_user ()
# Sets the given value for 'location_user' property.
# 
# @param location_user  - New value for the field.
# Username for the given location. This  *field*  was added in vSphere API 6.7.
#
sub set_location_user {
   my ($self, %args) = @_;
   $self->{'location_user'} = $args{'location_user'}; 
   return;	
}

## @method get_location_password ()
# Gets the value of 'location_password' property.
#
# @retval location_password - The current value of the field.
# Password for the given location. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_location_password {
   my ($self, %args) = @_;
   return $self->{'location_password'}; 	
}

## @method set_location_password ()
# Sets the given value for 'location_password' property.
# 
# @param location_password  - New value for the field.
# Password for the given location. This  *field*  was added in vSphere API 6.7.
#
sub set_location_password {
   my ($self, %args) = @_;
   $self->{'location_password'} = $args{'location_password'}; 
   return;	
}

## @method get_enable ()
# Gets the value of 'enable' property.
#
# @retval enable - The current value of the field.
# Enable or disable a schedule. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_enable {
   my ($self, %args) = @_;
   return $self->{'enable'}; 	
}

## @method set_enable ()
# Sets the given value for 'enable' property.
# 
# @param enable  - New value for the field.
# Enable or disable a schedule. This  *field*  was added in vSphere API 6.7.
#
sub set_enable {
   my ($self, %args) = @_;
   $self->{'enable'} = $args{'enable'}; 
   return;	
}

## @method get_recurrence_info ()
# Gets the value of 'recurrence_info' property.
#
# @retval recurrence_info - The current value of the field.
# Recurrence information for the schedule. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_recurrence_info {
   my ($self, %args) = @_;
   return $self->{'recurrence_info'}; 	
}

## @method set_recurrence_info ()
# Sets the given value for 'recurrence_info' property.
# 
# @param recurrence_info  - New value for the field.
# Recurrence information for the schedule. This  *field*  was added in vSphere API 6.7.
#
sub set_recurrence_info {
   my ($self, %args) = @_;
   $self->{'recurrence_info'} = $args{'recurrence_info'}; 
   return;	
}

## @method get_retention_info ()
# Gets the value of 'retention_info' property.
#
# @retval retention_info - The current value of the field.
# Retention information for the schedule. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_retention_info {
   my ($self, %args) = @_;
   return $self->{'retention_info'}; 	
}

## @method set_retention_info ()
# Sets the given value for 'retention_info' property.
# 
# @param retention_info  - New value for the field.
# Retention information for the schedule. This  *field*  was added in vSphere API 6.7.
#
sub set_retention_info {
   my ($self, %args) = @_;
   $self->{'retention_info'} = $args{'retention_info'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Backup::Schedules service
#########################################################################################
