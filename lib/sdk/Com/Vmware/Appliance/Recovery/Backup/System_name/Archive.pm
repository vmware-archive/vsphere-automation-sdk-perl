########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Archive.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Appliance::Recovery::Backup;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Backup::System_name::Archive
# The  ``Com::Vmware::Appliance::Recovery::Backup::System_name::Archive``   *interface* 
#     provides  *methods*  to get the backup information. This  *interface*  was added in
#     vSphere API 6.7.
#

package Com::Vmware::Appliance::Recovery::Backup::System_name::Archive;

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
use Com::Vmware::Appliance::Recovery::Backup::System_name::ArchiveStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.recovery.backup.system_name.archive';


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
# Returns the information for backup corresponding to given backup location and system name.
# This  *method*  was added in vSphere API 6.7.
#
# @param spec [REQUIRED] LocationSpec Structure.
# . The value must be Com::Vmware::Appliance::Recovery::Backup::LocationSpec.
#
# @param system_name [REQUIRED] System name identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.system_name).
# . The value must be str.
#
# @param archive [REQUIRED] Archive identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.system_name.archive).
# . The value must be str.
#
# @retval 
# Info Structure.
# The return type will be
# Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if backup does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#
sub get {
   my ($self, %args) = @_;
   my $spec = $args {spec};
   my $system_name = $args {system_name};
   my $archive = $args {archive};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns information about backup archives corresponding to given backup location and
# system name, which match the  class
# Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::FilterSpec . This 
# *method*  was added in vSphere API 6.7.
#
# @param loc_spec [REQUIRED] LocationSpec Structure.
# . The value must be Com::Vmware::Appliance::Recovery::Backup::LocationSpec.
#
# @param system_name [REQUIRED] System name identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.system_name).
# . The value must be str.
#
# @param filter_spec [REQUIRED] Specification of matching backups for which information should be returned.
# . The value must be
# Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::FilterSpec.
#
# @retval 
# Commonly used information about the backup archives.
# The return type will be Array of
# Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if combination of  ``loc_spec``  and system name does not refer to an existing
#     location on the backup server.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#
sub list {
   my ($self, %args) = @_;
   my $loc_spec = $args {loc_spec};
   my $system_name = $args {system_name};
   my $filter_spec = $args {filter_spec};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Backup::System_name::Archive service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Backup::System_name::Archive service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Backup::System_name::Archive service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Info
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Info``  
#     *class*  represents backup archive information. This  *class*  was added in vSphere
#     API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Info structure
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
   $self->{location} = $args{'location'};
   $self->{parts} = $args{'parts'};
   $self->{version} = $args{'version'};
   $self->{system_name} = $args{'system_name'};
   $self->{comment} = $args{'comment'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.system_name.archive.info');
   $self->set_binding_field('key' => 'timestamp', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'parts', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'system_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'comment', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_timestamp ()
# Gets the value of 'timestamp' property.
#
# @retval timestamp - The current value of the field.
# Time when this backup was completed. This  *field*  was added in vSphere API 6.7.
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
# Time when this backup was completed. This  *field*  was added in vSphere API 6.7.
#
sub set_timestamp {
   my ($self, %args) = @_;
   $self->{'timestamp'} = $args{'timestamp'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Backup location URL. This  *field*  was added in vSphere API 6.7.
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
# Backup location URL. This  *field*  was added in vSphere API 6.7.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_parts ()
# Gets the value of 'parts' property.
#
# @retval parts - The current value of the field.
# List of parts included in the backup. This  *field*  was added in vSphere API 6.7.
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
# List of parts included in the backup. This  *field*  was added in vSphere API 6.7.
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
# The version of the appliance represented by the backup. This  *field*  was added in
#     vSphere API 6.7.
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
# The version of the appliance represented by the backup. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_system_name ()
# Gets the value of 'system_name' property.
#
# @retval system_name - The current value of the field.
# The system name identifier of the appliance represented by the backup. This  *field* 
#     was added in vSphere API 6.7.
#
# ID#
sub get_system_name {
   my ($self, %args) = @_;
   return $self->{'system_name'}; 	
}

## @method set_system_name ()
# Sets the given value for 'system_name' property.
# 
# @param system_name  - New value for the field.
# The system name identifier of the appliance represented by the backup. This  *field* 
#     was added in vSphere API 6.7.
#
sub set_system_name {
   my ($self, %args) = @_;
   $self->{'system_name'} = $args{'system_name'}; 
   return;	
}

## @method get_comment ()
# Gets the value of 'comment' property.
#
# @retval comment - The current value of the field.
# Custom comment added by the user for this backup. This  *field*  was added in vSphere
#     API 6.7.
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
# Custom comment added by the user for this backup. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_comment {
   my ($self, %args) = @_;
   $self->{'comment'} = $args{'comment'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Summary
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Summary``  
#     *class*  contains commonly used information about a backup archive. This  *class*  was
#     added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{archive} = $args{'archive'};
   $self->{timestamp} = $args{'timestamp'};
   $self->{version} = $args{'version'};
   $self->{comment} = $args{'comment'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::Summary');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.system_name.archive.summary');
   $self->set_binding_field('key' => 'archive', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'timestamp', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'comment', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_archive ()
# Gets the value of 'archive' property.
#
# @retval archive - The current value of the field.
# Backup archive identifier. This  *field*  was added in vSphere API 6.7.
#
# ID#
sub get_archive {
   my ($self, %args) = @_;
   return $self->{'archive'}; 	
}

## @method set_archive ()
# Sets the given value for 'archive' property.
# 
# @param archive  - New value for the field.
# Backup archive identifier. This  *field*  was added in vSphere API 6.7.
#
sub set_archive {
   my ($self, %args) = @_;
   $self->{'archive'} = $args{'archive'}; 
   return;	
}

## @method get_timestamp ()
# Gets the value of 'timestamp' property.
#
# @retval timestamp - The current value of the field.
# Time when this backup was started. This  *field*  was added in vSphere API 6.7.
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
# Time when this backup was started. This  *field*  was added in vSphere API 6.7.
#
sub set_timestamp {
   my ($self, %args) = @_;
   $self->{'timestamp'} = $args{'timestamp'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# The version of the appliance represented by the backup archive. This  *field*  was
#     added in vSphere API 6.7.
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
# The version of the appliance represented by the backup archive. This  *field*  was
#     added in vSphere API 6.7.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_comment ()
# Gets the value of 'comment' property.
#
# @retval comment - The current value of the field.
# Custom comment added by the user for this backup. This  *field*  was added in vSphere
#     API 6.7.
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
# Custom comment added by the user for this backup. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_comment {
   my ($self, %args) = @_;
   $self->{'comment'} = $args{'comment'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::FilterSpec
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::FilterSpec``  
#     *class*  contains  *fields*  used to filter the results when listing backup archives
#     (see  :func:`Com::Vmware::Appliance::Recovery::Backup::System_name::Archive.list` ).
#     If multiple  *fields*  are specified, only backup archives matching all of the 
#     *fields*  match the filter. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{start_timestamp} = $args{'start_timestamp'};
   $self->{end_timestamp} = $args{'end_timestamp'};
   $self->{comment_substring} = $args{'comment_substring'};
   $self->{max_results} = $args{'max_results'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::System_name::Archive::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.system_name.archive.filter_spec');
   $self->set_binding_field('key' => 'start_timestamp', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'end_timestamp', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'comment_substring', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'max_results', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_start_timestamp ()
# Gets the value of 'start_timestamp' property.
#
# @retval start_timestamp - The current value of the field.
# Backup must have been taken on or after this time to match the filter. This  *field* 
#     was added in vSphere API 6.7.
#
# Optional#
sub get_start_timestamp {
   my ($self, %args) = @_;
   return $self->{'start_timestamp'}; 	
}

## @method set_start_timestamp ()
# Sets the given value for 'start_timestamp' property.
# 
# @param start_timestamp  - New value for the field.
# Backup must have been taken on or after this time to match the filter. This  *field* 
#     was added in vSphere API 6.7.
#
sub set_start_timestamp {
   my ($self, %args) = @_;
   $self->{'start_timestamp'} = $args{'start_timestamp'}; 
   return;	
}

## @method get_end_timestamp ()
# Gets the value of 'end_timestamp' property.
#
# @retval end_timestamp - The current value of the field.
# Backup must have been taken on or before this time to match the filter. This  *field* 
#     was added in vSphere API 6.7.
#
# Optional#
sub get_end_timestamp {
   my ($self, %args) = @_;
   return $self->{'end_timestamp'}; 	
}

## @method set_end_timestamp ()
# Sets the given value for 'end_timestamp' property.
# 
# @param end_timestamp  - New value for the field.
# Backup must have been taken on or before this time to match the filter. This  *field* 
#     was added in vSphere API 6.7.
#
sub set_end_timestamp {
   my ($self, %args) = @_;
   $self->{'end_timestamp'} = $args{'end_timestamp'}; 
   return;	
}

## @method get_comment_substring ()
# Gets the value of 'comment_substring' property.
#
# @retval comment_substring - The current value of the field.
# Backup comment must contain this  *string*  to match the filter. This  *field*  was
#     added in vSphere API 6.7.
#
# Optional#
sub get_comment_substring {
   my ($self, %args) = @_;
   return $self->{'comment_substring'}; 	
}

## @method set_comment_substring ()
# Sets the given value for 'comment_substring' property.
# 
# @param comment_substring  - New value for the field.
# Backup comment must contain this  *string*  to match the filter. This  *field*  was
#     added in vSphere API 6.7.
#
sub set_comment_substring {
   my ($self, %args) = @_;
   $self->{'comment_substring'} = $args{'comment_substring'}; 
   return;	
}

## @method get_max_results ()
# Gets the value of 'max_results' property.
#
# @retval max_results - The current value of the field.
# Limit result to a max count of most recent backups. This  *field*  was added in
#     vSphere API 6.7.
#
# Optional#
sub get_max_results {
   my ($self, %args) = @_;
   return $self->{'max_results'}; 	
}

## @method set_max_results ()
# Sets the given value for 'max_results' property.
# 
# @param max_results  - New value for the field.
# Limit result to a max count of most recent backups. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_max_results {
   my ($self, %args) = @_;
   $self->{'max_results'} = $args{'max_results'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Backup::System_name::Archive service
#########################################################################################
