########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Details.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Cis::Task;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Backup::Job::Details
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::Details``   *interface* 
#     provides  *methods*  to get the details about backup jobs. This  *interface*  was
#     added in vSphere API 6.7.
#

package Com::Vmware::Appliance::Recovery::Backup::Job::Details;

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
use Com::Vmware::Appliance::Recovery::Backup::Job::DetailsStub;

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
# Returns detailed information about the current and historical backup jobs. This  *method* 
# was added in vSphere API 6.7.
#
# @param filter [OPTIONAL] Specification of matching backup jobs for which information should be returned.
# If  *null* , the behavior is equivalent to  class
#     Com::Vmware::Appliance::Recovery::Backup::Job::Details::FilterSpec  with all  *fields*
#       *null*  which means all the backup jobs match the filter.
# . The value must be Com::Vmware::Appliance::Recovery::Backup::Job::Details::FilterSpec or
# None.
#
# @retval 
# Map of backup job identifier to Info Structure.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.job).
# The return type will be Dictionary of str and
# Com::Vmware::Appliance::Recovery::Backup::Job::Details::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Backup::Job::Details service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::Job::Details::Type
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::Details::Type``   *enumerated
#     type*  defines the type of backup job. This  *enumeration*  was added in vSphere API
#     6.7.
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::Details::Type::SCHEDULED #
#Job type is Scheduled. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Recovery::Backup::Job::Details::Type::MANUAL #
#Job type is Manual. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::Job::Details::Type;

use constant {
    SCHEDULED =>  'SCHEDULED',
    MANUAL =>  'MANUAL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::Details::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.backup.job.details.type',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::Details::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Backup::Job::Details service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Backup::Job::Details service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::Job::Details::Info
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::Details::Info``   *class* 
#     contains information about a backup job. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::Job::Details::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::Details::Info structure
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
         'discriminant_name' => 'status',
         'case_map' => {
               'SUCCEEDED' => ['duration', 'size', 'progress', 'start_time', 'end_time'],
               'FAILED' => ['duration', 'size', 'progress', 'error', 'start_time', 'end_time'],
               'RUNNING' => ['duration', 'size', 'progress', 'start_time'],
               'BLOCKED' => ['start_time'],
               'PENDING' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{location} = $args{'location'};
   $self->{duration} = $args{'duration'};
   $self->{size} = $args{'size'};
   $self->{progress} = $args{'progress'};
   $self->{location_user} = $args{'location_user'};
   $self->{type} = $args{'type'};
   $self->{messages} = $args{'messages'};
   $self->{build} = $args{'build'};
   $self->{description} = $args{'description'};
   $self->{service} = $args{'service'};
   $self->{operation} = $args{'operation'};
   $self->{parent} = $args{'parent'};
   $self->{target} = $args{'target'};
   $self->{status} = $args{'status'};
   $self->{cancelable} = $args{'cancelable'};
   $self->{error} = $args{'error'};
   $self->{start_time} = $args{'start_time'};
   $self->{end_time} = $args{'end_time'};
   $self->{user} = $args{'user'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::Details::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.job.details.info');
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'duration', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Task', 'type_name' => 'Progress')));
   $self->set_binding_field('key' => 'location_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup::Job', 'type_name' => 'Details::Type'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'build', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup::Job', 'type_name' => 'Details::BuildInfo')));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'service', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'operation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'parent', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'target', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID')));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Task', 'type_name' => 'Status'));
   $self->set_binding_field('key' => 'cancelable', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'error', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ErrorType()));
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'end_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
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

## @method get_duration ()
# Gets the value of 'duration' property.
#
# @retval duration - The current value of the field.
# Time in seconds since the backup job was started or the time it took to complete the
#     backup job. This  *field*  was added in vSphere API 6.7.
#
# optional#
sub get_duration {
   my ($self, %args) = @_;
   return $self->{'duration'}; 	
}

## @method set_duration ()
# Sets the given value for 'duration' property.
# 
# @param duration  - New value for the field.
# Time in seconds since the backup job was started or the time it took to complete the
#     backup job. This  *field*  was added in vSphere API 6.7.
#
sub set_duration {
   my ($self, %args) = @_;
   $self->{'duration'} = $args{'duration'}; 
   return;	
}

## @method get_size ()
# Gets the value of 'size' property.
#
# @retval size - The current value of the field.
# Size of the backup data transferred to remote location. This  *field*  was added in
#     vSphere API 6.7.
#
# optional#
sub get_size {
   my ($self, %args) = @_;
   return $self->{'size'}; 	
}

## @method set_size ()
# Sets the given value for 'size' property.
# 
# @param size  - New value for the field.
# Size of the backup data transferred to remote location. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_size {
   my ($self, %args) = @_;
   $self->{'size'} = $args{'size'}; 
   return;	
}

## @method get_progress ()
# Gets the value of 'progress' property.
#
# @retval progress - The current value of the field.
# Progress of the job. This  *field*  was added in vSphere API 6.7.
#
# optional#
sub get_progress {
   my ($self, %args) = @_;
   return $self->{'progress'}; 	
}

## @method set_progress ()
# Sets the given value for 'progress' property.
# 
# @param progress  - New value for the field.
# Progress of the job. This  *field*  was added in vSphere API 6.7.
#
sub set_progress {
   my ($self, %args) = @_;
   $self->{'progress'} = $args{'progress'}; 
   return;	
}

## @method get_location_user ()
# Gets the value of 'location_user' property.
#
# @retval location_user - The current value of the field.
# The username for the remote backup location. This  *field*  was added in vSphere API
#     6.7.
#
# String#
sub get_location_user {
   my ($self, %args) = @_;
   return $self->{'location_user'}; 	
}

## @method set_location_user ()
# Sets the given value for 'location_user' property.
# 
# @param location_user  - New value for the field.
# The username for the remote backup location. This  *field*  was added in vSphere API
#     6.7.
#
sub set_location_user {
   my ($self, %args) = @_;
   $self->{'location_user'} = $args{'location_user'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the backup job. Indicates whether the backup was started manually or as a
#     scheduled backup. This  *field*  was added in vSphere API 6.7.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the backup job. Indicates whether the backup was started manually or as a
#     scheduled backup. This  *field*  was added in vSphere API 6.7.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# List of any info/warning/error messages returned by the backup job. This  *field*  was
#     added in vSphere API 6.7.
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
# List of any info/warning/error messages returned by the backup job. This  *field*  was
#     added in vSphere API 6.7.
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}

## @method get_build ()
# Gets the value of 'build' property.
#
# @retval build - The current value of the field.
# Information about the build of the appliance. This  *field*  was added in vSphere API
#     6.7.2.
#
# optional#
sub get_build {
   my ($self, %args) = @_;
   return $self->{'build'}; 	
}

## @method set_build ()
# Sets the given value for 'build' property.
# 
# @param build  - New value for the field.
# Information about the build of the appliance. This  *field*  was added in vSphere API
#     6.7.2.
#
sub set_build {
   my ($self, %args) = @_;
   $self->{'build'} = $args{'build'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the operation associated with the task.
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
# Description of the operation associated with the task.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_service ()
# Gets the value of 'service' property.
#
# @retval service - The current value of the field.
# Identifier of the service containing the operation.
#
# ID#
sub get_service {
   my ($self, %args) = @_;
   return $self->{'service'}; 	
}

## @method set_service ()
# Sets the given value for 'service' property.
# 
# @param service  - New value for the field.
# Identifier of the service containing the operation.
#
sub set_service {
   my ($self, %args) = @_;
   $self->{'service'} = $args{'service'}; 
   return;	
}

## @method get_operation ()
# Gets the value of 'operation' property.
#
# @retval operation - The current value of the field.
# Identifier of the operation associated with the task.
#
# ID#
sub get_operation {
   my ($self, %args) = @_;
   return $self->{'operation'}; 	
}

## @method set_operation ()
# Sets the given value for 'operation' property.
# 
# @param operation  - New value for the field.
# Identifier of the operation associated with the task.
#
sub set_operation {
   my ($self, %args) = @_;
   $self->{'operation'} = $args{'operation'}; 
   return;	
}

## @method get_parent ()
# Gets the value of 'parent' property.
#
# @retval parent - The current value of the field.
# Parent of the current task.
#
# Optional#
sub get_parent {
   my ($self, %args) = @_;
   return $self->{'parent'}; 	
}

## @method set_parent ()
# Sets the given value for 'parent' property.
# 
# @param parent  - New value for the field.
# Parent of the current task.
#
sub set_parent {
   my ($self, %args) = @_;
   $self->{'parent'} = $args{'parent'}; 
   return;	
}

## @method get_target ()
# Gets the value of 'target' property.
#
# @retval target - The current value of the field.
# Identifier of the target created by the operation or an existing one the operation
#     performed on.
#
# Optional#
sub get_target {
   my ($self, %args) = @_;
   return $self->{'target'}; 	
}

## @method set_target ()
# Sets the given value for 'target' property.
# 
# @param target  - New value for the field.
# Identifier of the target created by the operation or an existing one the operation
#     performed on.
#
sub set_target {
   my ($self, %args) = @_;
   $self->{'target'} = $args{'target'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status of the operation associated with the task.
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status of the operation associated with the task.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_cancelable ()
# Gets the value of 'cancelable' property.
#
# @retval cancelable - The current value of the field.
# Flag to indicate whether or not the operation can be cancelled. The value may change
#     as the operation progresses.
#
# boolean#
sub get_cancelable {
   my ($self, %args) = @_;
   return $self->{'cancelable'}; 	
}

## @method set_cancelable ()
# Sets the given value for 'cancelable' property.
# 
# @param cancelable  - New value for the field.
# Flag to indicate whether or not the operation can be cancelled. The value may change
#     as the operation progresses.
#
sub set_cancelable {
   my ($self, %args) = @_;
   $self->{'cancelable'} = $args{'cancelable'}; 
   return;	
}

## @method get_error ()
# Gets the value of 'error' property.
#
# @retval error - The current value of the field.
# Description of the error if the operation status is &quot;FAILED&quot;.
#
# Optional#
sub get_error {
   my ($self, %args) = @_;
   return $self->{'error'}; 	
}

## @method set_error ()
# Sets the given value for 'error' property.
# 
# @param error  - New value for the field.
# Description of the error if the operation status is &quot;FAILED&quot;.
#
sub set_error {
   my ($self, %args) = @_;
   $self->{'error'} = $args{'error'}; 
   return;	
}

## @method get_start_time ()
# Gets the value of 'start_time' property.
#
# @retval start_time - The current value of the field.
# Time when the operation is started.
#
# optional#
sub get_start_time {
   my ($self, %args) = @_;
   return $self->{'start_time'}; 	
}

## @method set_start_time ()
# Sets the given value for 'start_time' property.
# 
# @param start_time  - New value for the field.
# Time when the operation is started.
#
sub set_start_time {
   my ($self, %args) = @_;
   $self->{'start_time'} = $args{'start_time'}; 
   return;	
}

## @method get_end_time ()
# Gets the value of 'end_time' property.
#
# @retval end_time - The current value of the field.
# Time when the operation is completed.
#
# optional#
sub get_end_time {
   my ($self, %args) = @_;
   return $self->{'end_time'}; 	
}

## @method set_end_time ()
# Sets the given value for 'end_time' property.
# 
# @param end_time  - New value for the field.
# Time when the operation is completed.
#
sub set_end_time {
   my ($self, %args) = @_;
   $self->{'end_time'} = $args{'end_time'}; 
   return;	
}

## @method get_user ()
# Gets the value of 'user' property.
#
# @retval user - The current value of the field.
# Name of the user who performed the operation.
#
# Optional#
sub get_user {
   my ($self, %args) = @_;
   return $self->{'user'}; 	
}

## @method set_user ()
# Sets the given value for 'user' property.
# 
# @param user  - New value for the field.
# Name of the user who performed the operation.
#
sub set_user {
   my ($self, %args) = @_;
   $self->{'user'} = $args{'user'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Job::Details::FilterSpec
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::Details::FilterSpec``   *class* 
#     contains  *fields*  used to filter the results when listing backup jobs details (see 
#     :func:`Com::Vmware::Appliance::Recovery::Backup::Job::Details.list` ). This  *class* 
#     was added in vSphere API 6.7.

package Com::Vmware::Appliance::Recovery::Backup::Job::Details::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::Details::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{jobs} = $args{'jobs'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::Details::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.job.details.filter_spec');
   $self->set_binding_field('key' => 'jobs', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_jobs ()
# Gets the value of 'jobs' property.
#
# @retval jobs - The current value of the field.
# Identifiers of backup jobs that can match the filter. This  *field*  was added in
#     vSphere API 6.7.
#
# Optional#
sub get_jobs {
   my ($self, %args) = @_;
   return $self->{'jobs'}; 	
}

## @method set_jobs ()
# Sets the given value for 'jobs' property.
# 
# @param jobs  - New value for the field.
# Identifiers of backup jobs that can match the filter. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_jobs {
   my ($self, %args) = @_;
   $self->{'jobs'} = $args{'jobs'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Job::Details::BuildInfo
#
#
# The  ``Com::Vmware::Appliance::Recovery::Backup::Job::Details::BuildInfo``   *class* 
#     contains information about the build of the appliance. This  *class*  was added in
#     vSphere API 6.7.2.

package Com::Vmware::Appliance::Recovery::Backup::Job::Details::BuildInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Job::Details::BuildInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version_name} = $args{'version_name'};
   $self->{version} = $args{'version'};
   $self->{build_number} = $args{'build_number'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Job::Details::BuildInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.job.details.build_info');
   $self->set_binding_field('key' => 'version_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'build_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_version_name ()
# Gets the value of 'version_name' property.
#
# @retval version_name - The current value of the field.
# Appliance product type, for example 6.8.2 GA. This  *field*  was added in vSphere API
#     6.7.2.
#
# String#
sub get_version_name {
   my ($self, %args) = @_;
   return $self->{'version_name'}; 	
}

## @method set_version_name ()
# Sets the given value for 'version_name' property.
# 
# @param version_name  - New value for the field.
# Appliance product type, for example 6.8.2 GA. This  *field*  was added in vSphere API
#     6.7.2.
#
sub set_version_name {
   my ($self, %args) = @_;
   $self->{'version_name'} = $args{'version_name'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Appliance version, for example 6.8.2.10000. This  *field*  was added in vSphere API
#     6.7.2.
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
# Appliance version, for example 6.8.2.10000. This  *field*  was added in vSphere API
#     6.7.2.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_build_number ()
# Gets the value of 'build_number' property.
#
# @retval build_number - The current value of the field.
# Build Number of the appliance. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_build_number {
   my ($self, %args) = @_;
   return $self->{'build_number'}; 	
}

## @method set_build_number ()
# Sets the given value for 'build_number' property.
# 
# @param build_number  - New value for the field.
# Build Number of the appliance. This  *field*  was added in vSphere API 6.7.2.
#
sub set_build_number {
   my ($self, %args) = @_;
   $self->{'build_number'} = $args{'build_number'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Backup::Job::Details service
#########################################################################################
