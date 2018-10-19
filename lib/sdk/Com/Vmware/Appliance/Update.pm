########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Update.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Update
# The  ``Com::Vmware::Appliance::Update``   *interface*  provides  *methods*  to get the
#     status of the appliance update. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Appliance::Update;

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
use Com::Vmware::Appliance::UpdateStub;

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
# Gets the current status of the appliance update. This  *method*  was added in vSphere API
# 6.7.
#
# @retval 
# Info structure containing the status information about the appliance.
# The return type will be Com::Vmware::Appliance::Update::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method cancel ()
# Request the cancellation the update operation that is currently in progress. This 
# *method*  was added in vSphere API 6.7.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# Current task is not cancellable
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#

sub cancel {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'cancel', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Update service
#########################################################################################

## @class Com::Vmware::Appliance::Update::State
#
# The  ``Com::Vmware::Appliance::Update::State``   *enumerated type*  defines the
#     various states the appliance update can be in. This  *enumeration*  was added in
#     vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Update::State::UP_TO_DATE #
#The appliance is up to date. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::State::UPDATES_PENDING #
#A new update is available. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::State::STAGE_IN_PROGRESS #
#The appliance update is in progress of downloading an update. This  *constant*  was added
# in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::State::INSTALL_IN_PROGRESS #
#The appliance update is in progress of installing an update. This  *constant*  was added
# in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Update::State::INSTALL_FAILED #
#The appliance update failed and cannot recover. This  *constant*  was added in vSphere API
# 6.7.
#
# Constant Com::Vmware::Appliance::Update::State::ROLLBACK_IN_PROGRESS #
#The appliance update failed and recovery is in progress. This  *constant*  was added in
# vSphere API 6.7.

package Com::Vmware::Appliance::Update::State;

use constant {
    UP_TO_DATE =>  'UP_TO_DATE',
    UPDATES_PENDING =>  'UPDATES_PENDING',
    STAGE_IN_PROGRESS =>  'STAGE_IN_PROGRESS',
    INSTALL_IN_PROGRESS =>  'INSTALL_IN_PROGRESS',
    INSTALL_FAILED =>  'INSTALL_FAILED',
    ROLLBACK_IN_PROGRESS =>  'ROLLBACK_IN_PROGRESS',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.update.state',
                           'binding_class' => 'Com::Vmware::Appliance::Update::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Update service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Update service
#########################################################################################

## @class Com::Vmware::Appliance::Update::Info
#
#
# The  ``Com::Vmware::Appliance::Update::Info``   *class*  describes the state of the
#     appliance update. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Info structure
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
         'discriminant_name' => 'state',
         'case_map' => {
               'UP_TO_DATE' => [],
               'UPDATES_PENDING' => [],
               'STAGE_IN_PROGRESS' => [],
               'INSTALL_IN_PROGRESS' => [],
               'INSTALL_FAILED' => [],
               'ROLLBACK_IN_PROGRESS' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{state} = $args{'state'};
   $self->{task} = $args{'task'};
   $self->{version} = $args{'version'};
   $self->{latest_query_time} = $args{'latest_query_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Update::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.update.info');
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Update::State'));
   $self->set_binding_field('key' => 'task', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'TaskInfo')));
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'latest_query_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   bless $self, $class;
   return $self;
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# State of the appliance update. This  *field*  was added in vSphere API 6.7.
#
# State#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# State of the appliance update. This  *field*  was added in vSphere API 6.7.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_task ()
# Gets the value of 'task' property.
#
# @retval task - The current value of the field.
# The running or completed update task. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_task {
   my ($self, %args) = @_;
   return $self->{'task'}; 	
}

## @method set_task ()
# Sets the given value for 'task' property.
# 
# @param task  - New value for the field.
# The running or completed update task. This  *field*  was added in vSphere API 6.7.
#
sub set_task {
   my ($self, %args) = @_;
   $self->{'task'} = $args{'task'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of base appliance if state is UP_TO_DATE Version of update being staged or
#     installed if state is INSTALL_IN_PROGRESS or STAGE_IN_PROGRESS Version of update
#     staged if state is UPDATES_PENDING Version of update failed if state is INSTALL_FAILED
#     or ROLLBACK_IN_PROGRESS. This  *field*  was added in vSphere API 6.7.
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
# Version of base appliance if state is UP_TO_DATE Version of update being staged or
#     installed if state is INSTALL_IN_PROGRESS or STAGE_IN_PROGRESS Version of update
#     staged if state is UPDATES_PENDING Version of update failed if state is INSTALL_FAILED
#     or ROLLBACK_IN_PROGRESS. This  *field*  was added in vSphere API 6.7.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_latest_query_time ()
# Gets the value of 'latest_query_time' property.
#
# @retval latest_query_time - The current value of the field.
# Timestamp of latest query to update repository. This  *field*  was added in vSphere
#     API 6.7.
#
# Optional#
sub get_latest_query_time {
   my ($self, %args) = @_;
   return $self->{'latest_query_time'}; 	
}

## @method set_latest_query_time ()
# Sets the given value for 'latest_query_time' property.
# 
# @param latest_query_time  - New value for the field.
# Timestamp of latest query to update repository. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_latest_query_time {
   my ($self, %args) = @_;
   $self->{'latest_query_time'} = $args{'latest_query_time'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Update service
#########################################################################################
