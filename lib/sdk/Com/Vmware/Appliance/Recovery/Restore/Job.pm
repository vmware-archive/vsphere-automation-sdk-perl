########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Job.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Restore::Job
# ``Com::Vmware::Appliance::Recovery::Restore::Job``   *interface*  provides  *methods* 
#     Performs restore operations
#

package Com::Vmware::Appliance::Recovery::Restore::Job;

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
use Com::Vmware::Appliance::Recovery::Restore::JobStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.recovery.restore.job';


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

## @method cancel ()
# Cancel the restore job
#
# @retval 
# RestoreJobStatus Structure
# The return type will be Com::Vmware::Appliance::Recovery::Restore::Job::ReturnResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub cancel {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'cancel', method_args =>  {});
}

## @method create ()
# Initiate restore.
#
# @param piece [REQUIRED] RestoreRequest Structure
# . The value must be Com::Vmware::Appliance::Recovery::Restore::Job::RestoreRequest.
#
# @retval 
# RestoreJobStatus Structure
# The return type will be Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus
#
# @throw Com::Vmware::Vapi::Std::Errors::FeatureInUse 
# A backup or restore is already in progress
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# Restore is allowed only after deployment and before firstboot
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub create {
   my ($self, %args) = @_;
   my $piece = $args {piece};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method get ()
# See restore job progress/result.
#
# @retval 
# RestoreJobStatus Structure
# The return type will be Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Restore::Job service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus
#
# ``Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus``   *enumerated type* 
#     Defines the state of precheck
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus::FAIL #
#Check failed
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus::WARNING #
#Passed with warnings
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus::OK #
#Check passed

package Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus;

use constant {
    FAIL =>  'FAIL',
    WARNING =>  'WARNING',
    OK =>  'OK',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.restore.job.return_status',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::Job::ReturnStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Recovery::Restore::Job::LocationType
#
# ``Com::Vmware::Appliance::Recovery::Restore::Job::LocationType``   *enumerated type* 
#     Defines type of all locations for backup/restore
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::LocationType::FTP #
#Destination is FTP server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::LocationType::HTTP #
#Destination is HTTP server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::LocationType::FTPS #
#Destination is FTPS server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::LocationType::HTTPS #
#Destination is HTTPS server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::LocationType::SCP #
#Destination is SSH server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::LocationType::SFTP #
#Destination is SFTP server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::LocationType::NFS #
#Destination is NFS server. This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::LocationType::SMB #
#Destination is SMB server. This  *constant*  was added in vSphere API 6.7.2.

package Com::Vmware::Appliance::Recovery::Restore::Job::LocationType;

use constant {
    FTP =>  'FTP',
    HTTP =>  'HTTP',
    FTPS =>  'FTPS',
    HTTPS =>  'HTTPS',
    SCP =>  'SCP',
    SFTP =>  'SFTP',
    NFS =>  'NFS',
    SMB =>  'SMB',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::Job::LocationType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.restore.job.location_type',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::Job::LocationType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState
#
# ``Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState``  
#     *enumerated type*  Defines state of backup/restore process
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState::FAILED #
#Failed
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState::INPROGRESS #
#In progress
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState::NONE #
#Not started
#
# Constant Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState::SUCCEEDED #
#Completed successfully

package Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState;

use constant {
    FAILED =>  'FAILED',
    INPROGRESS =>  'INPROGRESS',
    NONE =>  'NONE',
    SUCCEEDED =>  'SUCCEEDED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.restore.job.backup_restore_process_state',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::Job::BackupRestoreProcessState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Restore::Job service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Restore::Job service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage
#
#
# ``Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage``   *class* 
#     Structure representing message

package Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{default_message} = $args{'default_message'};
   $self->{args} = $args{'args'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::Job::LocalizableMessage');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.restore.job.localizable_message');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'default_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'args', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# id in message bundle
#
# String#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# id in message bundle
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_default_message ()
# Gets the value of 'default_message' property.
#
# @retval default_message - The current value of the field.
# text in english
#
# String#
sub get_default_message {
   my ($self, %args) = @_;
   return $self->{'default_message'}; 	
}

## @method set_default_message ()
# Sets the given value for 'default_message' property.
# 
# @param default_message  - New value for the field.
# text in english
#
sub set_default_message {
   my ($self, %args) = @_;
   $self->{'default_message'} = $args{'default_message'}; 
   return;	
}

## @method get_args ()
# Gets the value of 'args' property.
#
# @retval args - The current value of the field.
# nested data
#
# List#
sub get_args {
   my ($self, %args) = @_;
   return $self->{'args'}; 	
}

## @method set_args ()
# Sets the given value for 'args' property.
# 
# @param args  - New value for the field.
# nested data
#
sub set_args {
   my ($self, %args) = @_;
   $self->{'args'} = $args{'args'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Restore::Job::ReturnResult
#
#
# ``Com::Vmware::Appliance::Recovery::Restore::Job::ReturnResult``   *class*  Structure
#     representing precheck result

package Com::Vmware::Appliance::Recovery::Restore::Job::ReturnResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::Job::ReturnResult structure
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
   $self->{messages} = $args{'messages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::Job::ReturnResult');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.restore.job.return_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Restore', 'type_name' => 'Job::ReturnStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Restore', 'type_name' => 'Job::LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Check status
#
# ReturnStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Check status
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# List of messages
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# List of messages
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Restore::Job::RestoreRequest
#
#
# ``Com::Vmware::Appliance::Recovery::Restore::Job::RestoreRequest``   *class* 
#     Structure representing requested restore piece

package Com::Vmware::Appliance::Recovery::Restore::Job::RestoreRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::Job::RestoreRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{backup_password} = $args{'backup_password'};
   $self->{location_type} = $args{'location_type'};
   $self->{location} = $args{'location'};
   $self->{location_user} = $args{'location_user'};
   $self->{location_password} = $args{'location_password'};
   $self->{sso_admin_user_name} = $args{'sso_admin_user_name'};
   $self->{sso_admin_user_password} = $args{'sso_admin_user_password'};
   $self->{ignore_warnings} = $args{'ignore_warnings'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::Job::RestoreRequest');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.restore.job.restore_request');
   $self->set_binding_field('key' => 'backup_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'location_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Restore', 'type_name' => 'Job::LocationType'));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'location_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'sso_admin_user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'sso_admin_user_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'ignore_warnings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_backup_password ()
# Gets the value of 'backup_password' property.
#
# @retval backup_password - The current value of the field.
# a password for a backup piece
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
# a password for a backup piece
#
sub set_backup_password {
   my ($self, %args) = @_;
   $self->{'backup_password'} = $args{'backup_password'}; 
   return;	
}

## @method get_location_type ()
# Gets the value of 'location_type' property.
#
# @retval location_type - The current value of the field.
# a type of location
#
# LocationType#
sub get_location_type {
   my ($self, %args) = @_;
   return $self->{'location_type'}; 	
}

## @method set_location_type ()
# Sets the given value for 'location_type' property.
# 
# @param location_type  - New value for the field.
# a type of location
#
sub set_location_type {
   my ($self, %args) = @_;
   $self->{'location_type'} = $args{'location_type'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# path or url
#
# String#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# path or url
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
# username for location
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
# username for location
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
# password for location
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
# password for location
#
sub set_location_password {
   my ($self, %args) = @_;
   $self->{'location_password'} = $args{'location_password'}; 
   return;	
}

## @method get_sso_admin_user_name ()
# Gets the value of 'sso_admin_user_name' property.
#
# @retval sso_admin_user_name - The current value of the field.
# Administrators Username for SSO. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_sso_admin_user_name {
   my ($self, %args) = @_;
   return $self->{'sso_admin_user_name'}; 	
}

## @method set_sso_admin_user_name ()
# Sets the given value for 'sso_admin_user_name' property.
# 
# @param sso_admin_user_name  - New value for the field.
# Administrators Username for SSO. This  *field*  was added in vSphere API 6.7.
#
sub set_sso_admin_user_name {
   my ($self, %args) = @_;
   $self->{'sso_admin_user_name'} = $args{'sso_admin_user_name'}; 
   return;	
}

## @method get_sso_admin_user_password ()
# Gets the value of 'sso_admin_user_password' property.
#
# @retval sso_admin_user_password - The current value of the field.
# The password for SSO admin user. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_sso_admin_user_password {
   my ($self, %args) = @_;
   return $self->{'sso_admin_user_password'}; 	
}

## @method set_sso_admin_user_password ()
# Sets the given value for 'sso_admin_user_password' property.
# 
# @param sso_admin_user_password  - New value for the field.
# The password for SSO admin user. This  *field*  was added in vSphere API 6.7.
#
sub set_sso_admin_user_password {
   my ($self, %args) = @_;
   $self->{'sso_admin_user_password'} = $args{'sso_admin_user_password'}; 
   return;	
}

## @method get_ignore_warnings ()
# Gets the value of 'ignore_warnings' property.
#
# @retval ignore_warnings - The current value of the field.
# The flag to ignore warnings during restore. This  *field*  was added in vSphere API
#     6.7.
#
# Optional#
sub get_ignore_warnings {
   my ($self, %args) = @_;
   return $self->{'ignore_warnings'}; 	
}

## @method set_ignore_warnings ()
# Sets the given value for 'ignore_warnings' property.
# 
# @param ignore_warnings  - New value for the field.
# The flag to ignore warnings during restore. This  *field*  was added in vSphere API
#     6.7.
#
sub set_ignore_warnings {
   my ($self, %args) = @_;
   $self->{'ignore_warnings'} = $args{'ignore_warnings'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus
#
#
# ``Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus``   *class* 
#     Structure representing backup restore status

package Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{state} = $args{'state'};
   $self->{messages} = $args{'messages'};
   $self->{progress} = $args{'progress'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::Job::RestoreJobStatus');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.restore.job.restore_job_status');
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Restore', 'type_name' => 'Job::BackupRestoreProcessState'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Restore', 'type_name' => 'Job::LocalizableMessage')));
   $self->set_binding_field('key' => 'progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# process state
#
# BackupRestoreProcessState#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# process state
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# list of messages
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# list of messages
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}

## @method get_progress ()
# Gets the value of 'progress' property.
#
# @retval progress - The current value of the field.
# percentage complete
#
# long#
sub get_progress {
   my ($self, %args) = @_;
   return $self->{'progress'}; 	
}

## @method set_progress ()
# Sets the given value for 'progress' property.
# 
# @param progress  - New value for the field.
# percentage complete
#
sub set_progress {
   my ($self, %args) = @_;
   $self->{'progress'} = $args{'progress'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Restore::Job service
#########################################################################################
