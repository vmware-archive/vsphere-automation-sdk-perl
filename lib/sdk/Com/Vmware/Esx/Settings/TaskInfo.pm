## @class Com::Vmware::Esx::Settings::TaskInfo
#
#
# The  ``Com::Vmware::Esx::Settings::TaskInfo``   *class*  contains information about a
#     task and its subtasks of which it consists.

package Com::Vmware::Esx::Settings::TaskInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::TaskInfo structure
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
   $self->{subtasks} = $args{'subtasks'};
   $self->{notifications} = $args{'notifications'};
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::TaskInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.task_info');
   $self->set_binding_field('key' => 'progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Task', 'type_name' => 'Progress')));
   $self->set_binding_field('key' => 'subtasks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'TaskInfo')})))));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications')));
   $self->set_binding_field('key' => 'result', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::OpaqueType()));
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
# Progress of the operation.
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
# Progress of the operation.
#
sub set_progress {
   my ($self, %args) = @_;
   $self->{'progress'} = $args{'progress'}; 
   return;	
}

## @method get_subtasks ()
# Gets the value of 'subtasks' property.
#
# @retval subtasks - The current value of the field.
# Information about the subtasks that this task contains.
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
# Information about the subtasks that this task contains.
#
sub set_subtasks {
   my ($self, %args) = @_;
   $self->{'subtasks'} = $args{'subtasks'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications to the user
#
# Optional#
sub get_notifications {
   my ($self, %args) = @_;
   return $self->{'notifications'}; 	
}

## @method set_notifications ()
# Sets the given value for 'notifications' property.
# 
# @param notifications  - New value for the field.
# Notifications to the user
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}

## @method get_result ()
# Gets the value of 'result' property.
#
# @retval result - The current value of the field.
# Task result.
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
# Task result.
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


