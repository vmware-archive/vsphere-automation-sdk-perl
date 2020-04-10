########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Backup.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Backup
# ``Com::Vmware::Appliance::Recovery::Backup``   *interface*  provides  *methods* 
#     Performs backup restore operations
#

package Com::Vmware::Appliance::Recovery::Backup;

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
use Com::Vmware::Appliance::Recovery::BackupStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.recovery.backup';


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

## @method validate ()
# Check for backup errors without starting backup.
#
# @param piece [REQUIRED] BackupRequest Structure
# . The value must be Com::Vmware::Appliance::Recovery::Backup::BackupRequest.
#
# @retval 
# ReturnResult Structure
# The return type will be Com::Vmware::Appliance::Recovery::Backup::ReturnResult
#
# @throw Com::Vmware::Vapi::Std::Errors::FeatureInUse 
# A backup or restore is already in progress
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub validate {
   my ($self, %args) = @_;
   my $piece = $args {piece};

   $self->validate_args (method_name => 'validate',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'validate',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Backup service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::ReturnStatus
#
# ``Com::Vmware::Appliance::Recovery::Backup::ReturnStatus``   *enumerated type* 
#     Defines the state of precheck
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Backup::ReturnStatus::FAIL #
#Check failed
#
# Constant Com::Vmware::Appliance::Recovery::Backup::ReturnStatus::WARNING #
#Passed with warnings
#
# Constant Com::Vmware::Appliance::Recovery::Backup::ReturnStatus::OK #
#Check passed

package Com::Vmware::Appliance::Recovery::Backup::ReturnStatus;

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
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::ReturnStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.backup.return_status',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::ReturnStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Recovery::Backup::LocationType
#
# ``Com::Vmware::Appliance::Recovery::Backup::LocationType``   *enumerated type* 
#     Defines type of all locations for backup/restore
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Backup::LocationType::FTP #
#Destination is FTP server
#
# Constant Com::Vmware::Appliance::Recovery::Backup::LocationType::HTTP #
#Destination is HTTP server
#
# Constant Com::Vmware::Appliance::Recovery::Backup::LocationType::FTPS #
#Destination is FTPS server
#
# Constant Com::Vmware::Appliance::Recovery::Backup::LocationType::HTTPS #
#Destination is HTTPS server
#
# Constant Com::Vmware::Appliance::Recovery::Backup::LocationType::SCP #
#Destination is SSH server
#
# Constant Com::Vmware::Appliance::Recovery::Backup::LocationType::SFTP #
#Destination is SFTP server
#
# Constant Com::Vmware::Appliance::Recovery::Backup::LocationType::NFS #
#Destination is NFS server. This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::LocationType::SMB #
#Destination is SMB server. This  *constant*  was added in vSphere API 6.7.2.

package Com::Vmware::Appliance::Recovery::Backup::LocationType;

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
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::LocationType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.backup.location_type',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::LocationType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Backup service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Backup service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::LocalizableMessage
#
#
# ``Com::Vmware::Appliance::Recovery::Backup::LocalizableMessage``   *class*  Structure
#     representing message

package Com::Vmware::Appliance::Recovery::Backup::LocalizableMessage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::LocalizableMessage structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::LocalizableMessage');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.localizable_message');
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


## @class Com::Vmware::Appliance::Recovery::Backup::ReturnResult
#
#
# ``Com::Vmware::Appliance::Recovery::Backup::ReturnResult``   *class*  Structure
#     representing precheck result

package Com::Vmware::Appliance::Recovery::Backup::ReturnResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::ReturnResult structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::ReturnResult');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.return_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery', 'type_name' => 'Backup::ReturnStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery', 'type_name' => 'Backup::LocalizableMessage')));
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


## @class Com::Vmware::Appliance::Recovery::Backup::BackupRequest
#
#
# ``Com::Vmware::Appliance::Recovery::Backup::BackupRequest``   *class*  Structure
#     representing requested backup piece

package Com::Vmware::Appliance::Recovery::Backup::BackupRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::BackupRequest structure
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
   $self->{location_type} = $args{'location_type'};
   $self->{location} = $args{'location'};
   $self->{location_user} = $args{'location_user'};
   $self->{location_password} = $args{'location_password'};
   $self->{comment} = $args{'comment'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::BackupRequest');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.backup_request');
   $self->set_binding_field('key' => 'parts', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'backup_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'location_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery', 'type_name' => 'Backup::LocationType'));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'location_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'comment', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_parts ()
# Gets the value of 'parts' property.
#
# @retval parts - The current value of the field.
# a list of optional parts. Run backup parts APIs to get list of optional parts and
#     description
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
# a list of optional parts. Run backup parts APIs to get list of optional parts and
#     description
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
# a password for a backup piece The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space).
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
# a password for a backup piece The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space).
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

## @method get_comment ()
# Gets the value of 'comment' property.
#
# @retval comment - The current value of the field.
# Custom comment
#
# Optional#
sub get_comment {
   my ($self, %args) = @_;
   return $self->{'comment'}; 	
}

## @method set_comment ()
# Sets the given value for 'comment' property.
# 
# @param comment  - New value for the field.
# Custom comment
#
sub set_comment {
   my ($self, %args) = @_;
   $self->{'comment'} = $args{'comment'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Backup service
#########################################################################################
