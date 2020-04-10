########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Deployment.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Cis::Task;
#use Com::Vmware::Vcenter::Deployment;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Deployment
# The  ``Com::Vmware::Vcenter::Deployment``   *interface*  provides  *methods*  to get
#     the status of the vCenter appliance deployment. This  *interface*  was added in
#     vSphere API 6.7.
#

package Com::Vmware::Vcenter::Deployment;

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
use Com::Vmware::Vcenter::DeploymentStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.deployment';


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
# Get the current status of the appliance deployment. This  *method*  was added in vSphere
# API 6.7.
#
# @retval 
# Info structure containing the status information about the appliance.
# The return type will be Com::Vmware::Vcenter::Deployment::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if appliance state cannot be determined.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method rollback ()
# Rollback a failed appliance so it can be configured once again. This  *method*  was added
# in vSphere API 6.7.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the appliance is not in FAILED state.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub rollback {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'rollback', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Deployment service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Deployment service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Deployment service
#########################################################################################

## @class Com::Vmware::Vcenter::Deployment::Task
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Task``   *class*  contains  *fields*  to
#     describe a particular deployment task. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Task;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Task structure
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
               'BLOCKED' => ['progress', 'result', 'start_time'],
               'SUCCEEDED' => ['progress', 'result', 'start_time', 'end_time'],
               'FAILED' => ['progress', 'result', 'error', 'start_time', 'end_time'],
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Task');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.task');
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
# The progress info of this deployment task. This  *field*  was added in vSphere API
#     6.7.
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
# The progress info of this deployment task. This  *field*  was added in vSphere API
#     6.7.
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
# Result of the task. This  *field*  was added in vSphere API 6.7.
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
# Result of the task. This  *field*  was added in vSphere API 6.7.
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


## @class Com::Vmware::Vcenter::Deployment::Info
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Info``   *class*  contains  *fields*  to
#     describe the state of the appliance. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Info structure
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
               'RUNNING' => ['progress', 'start_time'],
               'BLOCKED' => ['progress', 'start_time'],
               'SUCCEEDED' => ['progress', 'start_time', 'end_time'],
               'FAILED' => ['progress', 'error', 'start_time', 'end_time'],
               'PENDING' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{state} = $args{'state'};
   $self->{progress} = $args{'progress'};
   $self->{subtask_order} = $args{'subtask_order'};
   $self->{subtasks} = $args{'subtasks'};
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.info');
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'ApplianceState'));
   $self->set_binding_field('key' => 'progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Task', 'type_name' => 'Progress')));
   $self->set_binding_field('key' => 'subtask_order', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'subtasks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Deployment::Task')})))));
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

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# State of the vCenter Server Appliance. This  *field*  was added in vSphere API 6.7.
#
# ApplianceState#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# State of the vCenter Server Appliance. This  *field*  was added in vSphere API 6.7.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_progress ()
# Gets the value of 'progress' property.
#
# @retval progress - The current value of the field.
# The progress info of the current appliance status. This  *field*  was added in vSphere
#     API 6.7.
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
# The progress info of the current appliance status. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_progress {
   my ($self, %args) = @_;
   $self->{'progress'} = $args{'progress'}; 
   return;	
}

## @method get_subtask_order ()
# Gets the value of 'subtask_order' property.
#
# @retval subtask_order - The current value of the field.
# The ordered list of subtasks for this deployment operation. This  *field*  was added
#     in vSphere API 6.7.
#
# Optional#
sub get_subtask_order {
   my ($self, %args) = @_;
   return $self->{'subtask_order'}; 	
}

## @method set_subtask_order ()
# Sets the given value for 'subtask_order' property.
# 
# @param subtask_order  - New value for the field.
# The ordered list of subtasks for this deployment operation. This  *field*  was added
#     in vSphere API 6.7.
#
sub set_subtask_order {
   my ($self, %args) = @_;
   $self->{'subtask_order'} = $args{'subtask_order'}; 
   return;	
}

## @method get_subtasks ()
# Gets the value of 'subtasks' property.
#
# @retval subtasks - The current value of the field.
# The map of the deployment subtasks and their status infomation. This  *field*  was
#     added in vSphere API 6.7.
#
# Optional#
sub get_subtasks {
   my ($self, %args) = @_;
   return $self->{'subtasks'}; 	
}

## @method set_subtasks ()
# Sets the given value for 'subtasks' property.
# 
# @param subtasks  - New value for the field.
# The map of the deployment subtasks and their status infomation. This  *field*  was
#     added in vSphere API 6.7.
#
sub set_subtasks {
   my ($self, %args) = @_;
   $self->{'subtasks'} = $args{'subtasks'}; 
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



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Deployment service
#########################################################################################
