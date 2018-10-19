########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Restore.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Restore
# ``Com::Vmware::Appliance::Recovery::Restore``   *interface*  provides  *methods* 
#     Performs restore operations
#

package Com::Vmware::Appliance::Recovery::Restore;

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
use Com::Vmware::Appliance::Recovery::RestoreStub;

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

## @method validate ()
# Get metadata before restore
#
# @param piece [REQUIRED] RestoreRequest Structure
# . The value must be Com::Vmware::Appliance::Recovery::Restore::RestoreRequest.
#
# @retval 
# Metadata Structure
# The return type will be Com::Vmware::Appliance::Recovery::Restore::Metadata
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
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Restore service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Restore::LocationType
#
# ``Com::Vmware::Appliance::Recovery::Restore::LocationType``   *enumerated type* 
#     Defines type of all locations for backup/restore
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Restore::LocationType::FTP #
#Destination is FTP server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::LocationType::HTTP #
#Destination is HTTP server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::LocationType::FTPS #
#Destination is FTPS server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::LocationType::HTTPS #
#Destination is HTTPS server
#
# Constant Com::Vmware::Appliance::Recovery::Restore::LocationType::SCP #
#Destination is SSH server

package Com::Vmware::Appliance::Recovery::Restore::LocationType;

use constant {
    FTP =>  'FTP',
    HTTP =>  'HTTP',
    FTPS =>  'FTPS',
    HTTPS =>  'HTTPS',
    SCP =>  'SCP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::LocationType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.restore.location_type',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::LocationType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Restore service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Restore service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Restore::RestoreRequest
#
#
# ``Com::Vmware::Appliance::Recovery::Restore::RestoreRequest``   *class*  Structure
#     representing requested restore piece

package Com::Vmware::Appliance::Recovery::Restore::RestoreRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::RestoreRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::RestoreRequest');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.restore.restore_request');
   $self->set_binding_field('key' => 'backup_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'location_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery', 'type_name' => 'Restore::LocationType'));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'location_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'sso_admin_user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'sso_admin_user_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
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
# Administrators username for SSO. This  *field*  was added in vSphere API 6.7.
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
# Administrators username for SSO. This  *field*  was added in vSphere API 6.7.
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


1;


## @class Com::Vmware::Appliance::Recovery::Restore::LocalizableMessage
#
#
# ``Com::Vmware::Appliance::Recovery::Restore::LocalizableMessage``   *class*  Structure
#     representing message

package Com::Vmware::Appliance::Recovery::Restore::LocalizableMessage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::LocalizableMessage structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::LocalizableMessage');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.restore.localizable_message');
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


## @class Com::Vmware::Appliance::Recovery::Restore::Metadata
#
#
# ``Com::Vmware::Appliance::Recovery::Restore::Metadata``   *class*  Structure
#     representing metadata

package Com::Vmware::Appliance::Recovery::Restore::Metadata;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Restore::Metadata structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{timestamp} = $args{'timestamp'};
   $self->{parts} = $args{'parts'};
   $self->{version} = $args{'version'};
   $self->{boxname} = $args{'boxname'};
   $self->{sso_login_required} = $args{'sso_login_required'};
   $self->{comment} = $args{'comment'};
   $self->{applicable} = $args{'applicable'};
   $self->{messages} = $args{'messages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Restore::Metadata');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.restore.metadata');
   $self->set_binding_field('key' => 'timestamp', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'parts', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'boxname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sso_login_required', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'comment', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'applicable', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery', 'type_name' => 'Restore::LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_timestamp ()
# Gets the value of 'timestamp' property.
#
# @retval timestamp - The current value of the field.
# Time when this backup was completed.
#
# DateTime#
sub get_timestamp {
   my ($self, %args) = @_;
   return $self->{'timestamp'}; 	
}

## @method set_timestamp ()
# Sets the given value for 'timestamp' property.
# 
# @param timestamp  - New value for the field.
# Time when this backup was completed.
#
sub set_timestamp {
   my ($self, %args) = @_;
   $self->{'timestamp'} = $args{'timestamp'}; 
   return;	
}

## @method get_parts ()
# Gets the value of 'parts' property.
#
# @retval parts - The current value of the field.
# List of parts included in the backup.
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
# List of parts included in the backup.
#
sub set_parts {
   my ($self, %args) = @_;
   $self->{'parts'} = $args{'parts'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# VCSA version
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# VCSA version
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_boxname ()
# Gets the value of 'boxname' property.
#
# @retval boxname - The current value of the field.
# Box name is PNID/ FQDN etc
#
# String#
sub get_boxname {
   my ($self, %args) = @_;
   return $self->{'boxname'}; 	
}

## @method set_boxname ()
# Sets the given value for 'boxname' property.
# 
# @param boxname  - New value for the field.
# Box name is PNID/ FQDN etc
#
sub set_boxname {
   my ($self, %args) = @_;
   $self->{'boxname'} = $args{'boxname'}; 
   return;	
}

## @method get_sso_login_required ()
# Gets the value of 'sso_login_required' property.
#
# @retval sso_login_required - The current value of the field.
# Is SSO login required for the vCenter server. This  *field*  was added in vSphere API
#     6.7.
#
# optional#
sub get_sso_login_required {
   my ($self, %args) = @_;
   return $self->{'sso_login_required'}; 	
}

## @method set_sso_login_required ()
# Sets the given value for 'sso_login_required' property.
# 
# @param sso_login_required  - New value for the field.
# Is SSO login required for the vCenter server. This  *field*  was added in vSphere API
#     6.7.
#
sub set_sso_login_required {
   my ($self, %args) = @_;
   $self->{'sso_login_required'} = $args{'sso_login_required'}; 
   return;	
}

## @method get_comment ()
# Gets the value of 'comment' property.
#
# @retval comment - The current value of the field.
# Custom comment
#
# String#
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

## @method get_applicable ()
# Gets the value of 'applicable' property.
#
# @retval applicable - The current value of the field.
# Does the VCSA match the deployment type, network properties and version of backed up
#     VC
#
# boolean#
sub get_applicable {
   my ($self, %args) = @_;
   return $self->{'applicable'}; 	
}

## @method set_applicable ()
# Sets the given value for 'applicable' property.
# 
# @param applicable  - New value for the field.
# Does the VCSA match the deployment type, network properties and version of backed up
#     VC
#
sub set_applicable {
   my ($self, %args) = @_;
   $self->{'applicable'} = $args{'applicable'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# Any messages if the backup is not aplicable
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
# Any messages if the backup is not aplicable
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Restore service
#########################################################################################
