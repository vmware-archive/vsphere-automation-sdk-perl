########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ImportHistory.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Cis::Task;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Deployment::ImportHistory
# The  ``Com::Vmware::Vcenter::Deployment::ImportHistory``   *interface*  provides 
#     *methods*  for managing the import of vCenter historical data, e.g. Tasks, Events and
#     Statistics, when is is imported separately from the upgrade or migration process. This
#      *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::Deployment::ImportHistory;

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
use Com::Vmware::Vcenter::Deployment::ImportHistoryStub;

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

## @method get ()
# Get the current status of the vCenter historical data import. This  *method*  was added in
# vSphere API 6.7.
#
# @retval 
# Info structure containing the status information about the historical data import
#     status.
# The return type will be Com::Vmware::Vcenter::Deployment::ImportHistory::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the caller is not authorized to perform the  *method* .
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method start ()
# Creates and starts task for importing vCenter historical data. This  *method*  was added
# in vSphere API 6.7.
#
# @param spec [OPTIONAL] An optional  ``Com::Vmware::Vcenter::Deployment::ImportHistory::CreateSpec``  info
#     that can be passed for creating a new historical data import task and starts it.
# If  *null* , default value will be: <ul>
#  <li>name : vcenter.deployment.history.import</li>
#  <li>description : vCenter Server history import</li>
#  </ul>
# . The value must be Com::Vmware::Vcenter::Deployment::ImportHistory::CreateSpec or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the caller is not authorized to perform the  *method* .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if vCenter historical data import task cannot be started at this time. This can happen
#     in the following cases: <ul>
# <li>If historical data import has already been canceled because a canceled task cannot
#     be re-started </li>
# <li>If historical data import has already been completed because a completed task
#     cannot be re-started </li>
# <li>If historical data import has already been paused because a paused task can only
#     be resumed or canceled </li>
#  </ul>
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if vCenter historical data import task has already being started.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub start {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'start',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'start',
                         method_args => \%args);
}


## @method pause ()
# Pauses the task for importing vCenter historical data. This  *method*  was added in
# vSphere API 6.7.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the caller is not authorized to perform the  *method* .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if vCenter historical data import task cannot be paused at this time. Pause can be
#     accepted only in null state
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if vCenter historical data import task is already paused
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub pause {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'pause', method_args =>  {});
}


## @method resume ()
# Resumes the task for importing vCenter historical data. This  *method*  was added in
# vSphere API 6.7.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the caller is not authorized to perform the  *method* .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if vCenter historical data import task cannot be resumed at this state. Resume can be
#     accepted only in null state
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if vCenter historical data import task is already resumed.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#

sub resume {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'resume', method_args =>  {});
}


## @method cancel ()
# Cancels the task for importing vCenter historical data. This  *method*  was added in
# vSphere API 6.7.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the caller is not authorized to perform the  *method* .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if vCenter historical data import task cannot be canceled at this state. This can
#     happen in the following cases: <ul>
# <li>If historical data import has not been started yet because a not running task
#     cannot be canceled </li>
# <li>If historical data import has already been completed because a completed task
#     cannot be canceled </li>
#  </ul>
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if vCenter historical data import task is already canceled.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#

sub cancel {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'cancel', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Deployment::ImportHistory service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Deployment::ImportHistory service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Deployment::ImportHistory service
#########################################################################################

## @class Com::Vmware::Vcenter::Deployment::ImportHistory::Info
#
#
# The  ``Com::Vmware::Vcenter::Deployment::ImportHistory::Info``   *class*  contains 
#     *fields*  to describe the state of vCenter history import task. This  *class*  was
#     added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::ImportHistory::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::ImportHistory::Info structure
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
               'RUNNING' => ['progress', 'result', 'start_time'],
               'FAILED' => ['progress', 'result', 'error', 'start_time', 'end_time'],
               'BLOCKED' => ['progress', 'result', 'start_time'],
               'SUCCEEDED' => ['progress', 'result', 'start_time', 'end_time'],
               'PENDING' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{progress} = $args{'progress'};
   $self->{result} = $args{'result'};
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::ImportHistory::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.import_history.info');
   $self->set_binding_field('key' => 'progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Task', 'type_name' => 'Progress')));
   $self->set_binding_field('key' => 'result', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Notifications')));
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

## @method get_progress ()
# Gets the value of 'progress' property.
#
# @retval progress - The current value of the field.
# The progress info of this task. This  *field*  was added in vSphere API 6.7.
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
# The progress info of this task. This  *field*  was added in vSphere API 6.7.
#
sub set_progress {
   my ($self, %args) = @_;
   $self->{'progress'} = $args{'progress'}; 
   return;	
}

## @method get_result ()
# Gets the value of 'result' property.
#
# @retval result - The current value of the field.
# Result of the operation. If an operation reports partial results before it completes,
#     this  *field*  could be  *set*  before the null has the value null. The value could
#     change as the operation progresses. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_result {
   my ($self, %args) = @_;
   return $self->{'result'}; 	
}

## @method set_result ()
# Sets the given value for 'result' property.
# 
# @param result  - New value for the field.
# Result of the operation. If an operation reports partial results before it completes,
#     this  *field*  could be  *set*  before the null has the value null. The value could
#     change as the operation progresses. This  *field*  was added in vSphere API 6.7.
#
sub set_result {
   my ($self, %args) = @_;
   $self->{'result'} = $args{'result'}; 
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


## @class Com::Vmware::Vcenter::Deployment::ImportHistory::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::ImportHistory::CreateSpec``   *class* 
#     contains information to create and start vCenter historical data lazy-import. This 
#     *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::ImportHistory::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::ImportHistory::CreateSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::ImportHistory::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.import_history.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the vCenter history import task. This  *field*  was added in vSphere API 6.7.
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
# Name of the vCenter history import task. This  *field*  was added in vSphere API 6.7.
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
# Description of the vCenter history import task. This  *field*  was added in vSphere
#     API 6.7.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the vCenter history import task. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Deployment::ImportHistory service
#########################################################################################
