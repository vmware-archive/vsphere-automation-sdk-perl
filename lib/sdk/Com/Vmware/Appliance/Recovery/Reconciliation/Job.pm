########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Job.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Reconciliation::Job
# The  ``Com::Vmware::Appliance::Recovery::Reconciliation::Job``   *interface*  provides
#     *methods*  to create and get the status of reconciliation job. This  *interface*  was
#     added in vSphere API 6.7
#

package Com::Vmware::Appliance::Recovery::Reconciliation::Job;

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
use Com::Vmware::Appliance::Recovery::Reconciliation::JobStub;

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

## @method create ()
# Initiate reconciliation. This  *method*  was added in vSphere API 6.7
#
# @param spec [REQUIRED] CreateSpec Structure
# . The value must be Com::Vmware::Appliance::Recovery::Reconciliation::Job::CreateSpec.
#
# @retval 
# Info Structure
# The return type will be Com::Vmware::Appliance::Recovery::Reconciliation::Job::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::FeatureInUse 
# A backup or restore is already in progress.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# Reconciliation is allowed only after restore has finished successfully.
#
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
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
# Get reconciliation job progress/result. This  *method*  was added in vSphere API 6.7
#
# @retval 
# Info Structure
# The return type will be Com::Vmware::Appliance::Recovery::Reconciliation::Job::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no running reconciliation job.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Reconciliation::Job service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Reconciliation::Job::Status
#
# The  ``Com::Vmware::Appliance::Recovery::Reconciliation::Job::Status``   *enumerated
#     type*  defines the status values that can be reported for an operation. This 
#     *enumeration*  was added in vSphere API 6.7
#
#
#
# Constant Com::Vmware::Appliance::Recovery::Reconciliation::Job::Status::NONE #
#The operation is not running. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Recovery::Reconciliation::Job::Status::RUNNING #
#The operation is in progress. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Recovery::Reconciliation::Job::Status::SUCCEEDED #
#The operation completed successfully. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Recovery::Reconciliation::Job::Status::FAILED #
#The operation failed. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Recovery::Reconciliation::Job::Status;

use constant {
    NONE =>  'NONE',
    RUNNING =>  'RUNNING',
    SUCCEEDED =>  'SUCCEEDED',
    FAILED =>  'FAILED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Reconciliation::Job::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.recovery.reconciliation.job.status',
                           'binding_class' => 'Com::Vmware::Appliance::Recovery::Reconciliation::Job::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Reconciliation::Job service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Reconciliation::Job service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Reconciliation::Job::CreateSpec
#
#
# The  ``Com::Vmware::Appliance::Recovery::Reconciliation::Job::CreateSpec``   *class* 
#     has the fields to request the start of reconciliation job. This  *class*  was added in
#     vSphere API 6.7

package Com::Vmware::Appliance::Recovery::Reconciliation::Job::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Reconciliation::Job::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{sso_admin_user_name} = $args{'sso_admin_user_name'};
   $self->{sso_admin_user_password} = $args{'sso_admin_user_password'};
   $self->{ignore_warnings} = $args{'ignore_warnings'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Reconciliation::Job::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.reconciliation.job.create_spec');
   $self->set_binding_field('key' => 'sso_admin_user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'sso_admin_user_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'ignore_warnings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_sso_admin_user_name ()
# Gets the value of 'sso_admin_user_name' property.
#
# @retval sso_admin_user_name - The current value of the field.
# Administrators username for SSO. This  *field*  was added in vSphere API 6.7
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
# Administrators username for SSO. This  *field*  was added in vSphere API 6.7
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
# Password for SSO admin user. This  *field*  was added in vSphere API 6.7
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
# Password for SSO admin user. This  *field*  was added in vSphere API 6.7
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
# Flag indicating whether warnings should be ignored during reconciliation. This 
#     *field*  was added in vSphere API 6.7
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
# Flag indicating whether warnings should be ignored during reconciliation. This 
#     *field*  was added in vSphere API 6.7
#
sub set_ignore_warnings {
   my ($self, %args) = @_;
   $self->{'ignore_warnings'} = $args{'ignore_warnings'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Reconciliation::Job::Info
#
#
# The  ``Com::Vmware::Appliance::Recovery::Reconciliation::Job::Info``   *class* 
#     represents the reconciliation job information. It contains information related to
#     current Status, any associated messages and progress as percentage. This  *class*  was
#     added in vSphere API 6.7

package Com::Vmware::Appliance::Recovery::Reconciliation::Job::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Reconciliation::Job::Info structure
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
               'FAILED' => ['error', 'start_time', 'end_time'],
               'RUNNING' => ['start_time'],
               'SUCCEEDED' => ['start_time', 'end_time'],
               'NONE' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
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
   $self->{messages} = $args{'messages'};
   $self->{progress} = $args{'progress'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Reconciliation::Job::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.reconciliation.job.info');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'service', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'operation', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'parent', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'target', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID')));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Reconciliation', 'type_name' => 'Job::Status'));
   $self->set_binding_field('key' => 'cancelable', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'error', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ErrorType()));
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'end_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the operation associated with the task. This  *field*  was added in
#     vSphere API 6.7
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
# Description of the operation associated with the task. This  *field*  was added in
#     vSphere API 6.7
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
# Name of the service containing the operation. This  *field*  was added in vSphere API
#     6.7
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
# Name of the service containing the operation. This  *field*  was added in vSphere API
#     6.7
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
# Name of the operation associated with the task. This  *field*  was added in vSphere
#     API 6.7
#
# String#
sub get_operation {
   my ($self, %args) = @_;
   return $self->{'operation'}; 	
}

## @method set_operation ()
# Sets the given value for 'operation' property.
# 
# @param operation  - New value for the field.
# Name of the operation associated with the task. This  *field*  was added in vSphere
#     API 6.7
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
# Parent of the current task. This  *field*  was added in vSphere API 6.7
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
# Parent of the current task. This  *field*  was added in vSphere API 6.7
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
# Identifier of the target resource the operation modifies. This  *field*  was added in
#     vSphere API 6.7
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
# Identifier of the target resource the operation modifies. This  *field*  was added in
#     vSphere API 6.7
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
# Status of the operation associated with the task. This  *field*  was added in vSphere
#     API 6.7
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
# Status of the operation associated with the task. This  *field*  was added in vSphere
#     API 6.7
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
#     as the operation progresses. This  *field*  was added in vSphere API 6.7
#
# Optional#
sub get_cancelable {
   my ($self, %args) = @_;
   return $self->{'cancelable'}; 	
}

## @method set_cancelable ()
# Sets the given value for 'cancelable' property.
# 
# @param cancelable  - New value for the field.
# Flag to indicate whether or not the operation can be cancelled. The value may change
#     as the operation progresses. This  *field*  was added in vSphere API 6.7
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
# Description of the error if the operation status is &quot;FAILED&quot;. This  *field* 
#     was added in vSphere API 6.7
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
# Description of the error if the operation status is &quot;FAILED&quot;. This  *field* 
#     was added in vSphere API 6.7
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
# Time when the operation is started. This  *field*  was added in vSphere API 6.7
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
# Time when the operation is started. This  *field*  was added in vSphere API 6.7
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
# Time when the operation is completed. This  *field*  was added in vSphere API 6.7
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
# Time when the operation is completed. This  *field*  was added in vSphere API 6.7
#
sub set_end_time {
   my ($self, %args) = @_;
   $self->{'end_time'} = $args{'end_time'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# A list of localized messages. This  *field*  was added in vSphere API 6.7
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
# A list of localized messages. This  *field*  was added in vSphere API 6.7
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
# The progress of the job as a percentage. This  *field*  was added in vSphere API 6.7
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
# The progress of the job as a percentage. This  *field*  was added in vSphere API 6.7
#
sub set_progress {
   my ($self, %args) = @_;
   $self->{'progress'} = $args{'progress'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Reconciliation::Job service
#########################################################################################
