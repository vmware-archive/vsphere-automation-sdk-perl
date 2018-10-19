########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Tasks.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Cis::Task;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Cis::Tasks
# The  ``Com::Vmware::Cis::Tasks``   *interface*  provides  *methods*  for managing the
#     task related to a long running operation. This  *interface*  was added in vSphere API
#     6.7 U1.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for task. This  *constant*  was added in vSphere API 6.7 U1.

package Com::Vmware::Cis::Tasks;

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
use Com::Vmware::Cis::TasksStub;

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
# Returns information about a task. This  *method*  was added in vSphere API 6.7 U1.
#
# @param task [REQUIRED] Task identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.task).
# . The value must be str.
#
# @param spec [OPTIONAL] Specification on what to get for a task.
# If  *null* , the behavior is equivalent to a  class Com::Vmware::Cis::Tasks::GetSpec 
#     with all  *fields*   *null*  which means only the data described in  class
#     Com::Vmware::Cis::Task::Info  will be returned and the result of the operation will be
#     return.
# . The value must be Com::Vmware::Cis::Tasks::GetSpec or None.
#
# @retval 
# Information about the specified task.
# The return type will be Com::Vmware::Cis::Task::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the task is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the task&apos;s state cannot be accessed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#

sub get {
   my ($self, %args) = @_;
   my $task = $args {task};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Returns information about at most 1000 visible (subject to permission checks) tasks
# matching the  class Com::Vmware::Cis::Tasks::FilterSpec . All tasks must be in the same
# provider. This  *method*  was added in vSphere API 6.7 U1.
#
# @param filter_spec [OPTIONAL] Specification of matching tasks.
# This is currently required. In the future, if it is  *null* , the behavior is
#     equivalent to a  class Com::Vmware::Cis::Tasks::FilterSpec  with all  *fields*  
#     *null*  which means all tasks match the filter.
# . The value must be Com::Vmware::Cis::Tasks::FilterSpec or None.
#
# @param result_spec [OPTIONAL] Specification of what to return for a task.
# If  *null* , the behavior is equivalent to a  class Com::Vmware::Cis::Tasks::GetSpec 
#     with all  *fields*   *null*  which means only the data describe in  class
#     Com::Vmware::Cis::Task::Info  will be returned and the result of the operation will be
#     return.
# . The value must be Com::Vmware::Cis::Tasks::GetSpec or None.
#
# @retval 
# Map of task identifier to information about the task.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.task).
# The return type will be Dictionary of str and Com::Vmware::Cis::Task::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if a task&apos;s state cannot be accessed or over 1000 tasks matching the  class
#     Com::Vmware::Cis::Tasks::FilterSpec .
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#

sub list {
   my ($self, %args) = @_;
   my $filter_spec = $args {filter_spec};
   my $result_spec = $args {result_spec};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method cancel ()
# Cancel a running operation associated with the task. This is the best effort attempt.
# Operation may not be cancelled anymore once it reaches certain stage. This  *method*  was
# added in vSphere API 6.7 U1.
#
# @param task [REQUIRED] Task identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.task).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the task is already canceled or completed.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the task is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the task&apos;s state cannot be accessed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the task is not cancelable.
#

sub cancel {
   my ($self, %args) = @_;
   my $task = $args {task};

   $self->validate_args (method_name => 'cancel',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'cancel',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Cis::Tasks service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Cis::Tasks service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Cis::Tasks service
#########################################################################################

## @class Com::Vmware::Cis::Tasks::GetSpec
#
#
# The  ``Com::Vmware::Cis::Tasks::GetSpec``   *class*  describes what data should be
#     included when retrieving information about a task. This  *class*  was added in vSphere
#     API 6.7 U1.

package Com::Vmware::Cis::Tasks::GetSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tasks::GetSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{return_all} = $args{'return_all'};
   $self->{exclude_result} = $args{'exclude_result'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tasks::GetSpec');
   $self->set_binding_name('name' => 'com.vmware.cis.tasks.get_spec');
   $self->set_binding_field('key' => 'return_all', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'exclude_result', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_return_all ()
# Gets the value of 'return_all' property.
#
# @retval return_all - The current value of the field.
# If true, all data, including operation-specific data, will be returned, otherwise only
#     the data described in  class Com::Vmware::Cis::Task::Info  will be returned. This 
#     *field*  was added in vSphere API 6.7 U1.
#
# Optional#
sub get_return_all {
   my ($self, %args) = @_;
   return $self->{'return_all'}; 	
}

## @method set_return_all ()
# Sets the given value for 'return_all' property.
# 
# @param return_all  - New value for the field.
# If true, all data, including operation-specific data, will be returned, otherwise only
#     the data described in  class Com::Vmware::Cis::Task::Info  will be returned. This 
#     *field*  was added in vSphere API 6.7 U1.
#
sub set_return_all {
   my ($self, %args) = @_;
   $self->{'return_all'} = $args{'return_all'}; 
   return;	
}

## @method get_exclude_result ()
# Gets the value of 'exclude_result' property.
#
# @retval exclude_result - The current value of the field.
# If true, the result will not be included in the task information, otherwise it will be
#     included. This  *field*  was added in vSphere API 6.7 U1.
#
# Optional#
sub get_exclude_result {
   my ($self, %args) = @_;
   return $self->{'exclude_result'}; 	
}

## @method set_exclude_result ()
# Sets the given value for 'exclude_result' property.
# 
# @param exclude_result  - New value for the field.
# If true, the result will not be included in the task information, otherwise it will be
#     included. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_exclude_result {
   my ($self, %args) = @_;
   $self->{'exclude_result'} = $args{'exclude_result'}; 
   return;	
}


1;


## @class Com::Vmware::Cis::Tasks::FilterSpec
#
#
# The  ``Com::Vmware::Cis::Tasks::FilterSpec``   *class*  contains  *fields*  used to
#     filter the results when listing tasks (see  :func:`Com::Vmware::Cis::Tasks.list` ). If
#     multiple  *fields*  are specified, only tasks matching all of the  *fields*  match the
#     filter. This  *class*  was added in vSphere API 6.7 U1.

package Com::Vmware::Cis::Tasks::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tasks::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{tasks} = $args{'tasks'};
   $self->{services} = $args{'services'};
   $self->{status} = $args{'status'};
   $self->{targets} = $args{'targets'};
   $self->{users} = $args{'users'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tasks::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.cis.tasks.filter_spec');
   $self->set_binding_field('key' => 'tasks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'services', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Task', 'type_name' => 'Status')))));
   $self->set_binding_field('key' => 'targets', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID'))));
   $self->set_binding_field('key' => 'users', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_tasks ()
# Gets the value of 'tasks' property.
#
# @retval tasks - The current value of the field.
# Identifiers of tasks that can match the filter. This  *field*  was added in vSphere
#     API 6.7 U1.
#
# Optional#
sub get_tasks {
   my ($self, %args) = @_;
   return $self->{'tasks'}; 	
}

## @method set_tasks ()
# Sets the given value for 'tasks' property.
# 
# @param tasks  - New value for the field.
# Identifiers of tasks that can match the filter. This  *field*  was added in vSphere
#     API 6.7 U1.
#
sub set_tasks {
   my ($self, %args) = @_;
   $self->{'tasks'} = $args{'tasks'}; 
   return;	
}

## @method get_services ()
# Gets the value of 'services' property.
#
# @retval services - The current value of the field.
# Identifiers of services. Tasks created by operations in these services match the
#     filter (see  :attr:`Com::Vmware::Cis::Task::CommonInfo.service` ). This  *field*  was
#     added in vSphere API 6.7 U1.
#
# Optional#
sub get_services {
   my ($self, %args) = @_;
   return $self->{'services'}; 	
}

## @method set_services ()
# Sets the given value for 'services' property.
# 
# @param services  - New value for the field.
# Identifiers of services. Tasks created by operations in these services match the
#     filter (see  :attr:`Com::Vmware::Cis::Task::CommonInfo.service` ). This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_services {
   my ($self, %args) = @_;
   $self->{'services'} = $args{'services'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status that a task must have to match the filter (see 
#     :attr:`Com::Vmware::Cis::Task::CommonInfo.status` ). This  *field*  was added in
#     vSphere API 6.7 U1.
#
# Optional#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status that a task must have to match the filter (see 
#     :attr:`Com::Vmware::Cis::Task::CommonInfo.status` ). This  *field*  was added in
#     vSphere API 6.7 U1.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_targets ()
# Gets the value of 'targets' property.
#
# @retval targets - The current value of the field.
# Identifiers of the targets the operation for the associated task created or was
#     performed on (see  :attr:`Com::Vmware::Cis::Task::CommonInfo.target` ). This  *field* 
#     was added in vSphere API 6.7 U1.
#
# Optional#
sub get_targets {
   my ($self, %args) = @_;
   return $self->{'targets'}; 	
}

## @method set_targets ()
# Sets the given value for 'targets' property.
# 
# @param targets  - New value for the field.
# Identifiers of the targets the operation for the associated task created or was
#     performed on (see  :attr:`Com::Vmware::Cis::Task::CommonInfo.target` ). This  *field* 
#     was added in vSphere API 6.7 U1.
#
sub set_targets {
   my ($self, %args) = @_;
   $self->{'targets'} = $args{'targets'}; 
   return;	
}

## @method get_users ()
# Gets the value of 'users' property.
#
# @retval users - The current value of the field.
# Users who must have initiated the operation for the associated task to match the
#     filter (see  :attr:`Com::Vmware::Cis::Task::CommonInfo.user` ). This  *field*  was
#     added in vSphere API 6.7 U1.
#
# Optional#
sub get_users {
   my ($self, %args) = @_;
   return $self->{'users'}; 	
}

## @method set_users ()
# Sets the given value for 'users' property.
# 
# @param users  - New value for the field.
# Users who must have initiated the operation for the associated task to match the
#     filter (see  :attr:`Com::Vmware::Cis::Task::CommonInfo.user` ). This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_users {
   my ($self, %args) = @_;
   $self->{'users'} = $args{'users'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Cis::Tasks service
#########################################################################################
