########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Providers.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Hvc::Links::Sync::Providers
# The  ``Com::Vmware::Vcenter::Hvc::Links::Sync::Providers``   *interface*  provides 
#     *methods*  to create a sync session, get information on Sync. <b>Warning:</b> This 
#     *interface*  is available as technical preview. It may be changed in a future release.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for Sync Providers. <b>Warning:</b> This  *constant*  is available as
# technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Hvc::Links::Sync::Providers;

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
use Com::Vmware::Vcenter::Hvc::Links::Sync::ProvidersStub;

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
# Enumerates the sync providers. <b>Warning:</b> This  *method*  is available as technical
# preview. It may be changed in a future release.
#
# @param link [REQUIRED] Unique identifier of the link
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.hvc.Links).
# . The value must be str.
#
# @retval 
# The  *list*  of sync provider information.
# The return type will be Array of
# Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If list fails.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user is not authorized to perform this operation.
#

sub list {
   my ($self, %args) = @_;
   my $link = $args {link};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method get ()
# Gets Sync information for a sync provider. <b>Warning:</b> This  *method*  is available as
# technical preview. It may be changed in a future release.
#
# @param link [REQUIRED] Unique identifier of the link
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.hvc.Links).
# . The value must be str.
#
# @param provider [REQUIRED] Unique identifier of the sync provider.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.hvc.sync.Providers).
# . The value must be str.
#
# @retval 
# The  *Info*  of sync information for the provider.
# The return type will be Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the sync provider associated with  ``provider``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user is not authorized to perform this operation.
#

sub get {
   my ($self, %args) = @_;
   my $link = $args {link};
   my $provider = $args {provider};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method start ()
# Initiates synchronization between the local and remote replicas for the sync provider.
# <b>Warning:</b> This  *method*  is available as technical preview. It may be changed in a
# future release.
#
# @param link [REQUIRED] Unique identifier of the link
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.hvc.Links).
# . The value must be str.
#
# @param provider [REQUIRED] Unique identifier representing the sync provider
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.hvc.sync.Providers).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the link associated with  ``link``  does not exist if the provider associated with 
#     ``provider``  is not registered for sync
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user is not authorized to perform this operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if a sync is already running.
#

sub start {
   my ($self, %args) = @_;
   my $link = $args {link};
   my $provider = $args {provider};

   $self->validate_args (method_name => 'start',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'start',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers service
#########################################################################################

## @class Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Status
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Status``   *enumerated type*
#     defines valid sync status. <b>Warning:</b> This  *enumeration*  is available as
#     technical preview. It may be changed in a future release.
#
#
#
# Constant Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Status::SUCCEEDED #
#If Sync was successful. <b>Warning:</b> This  *constant*  is available as technical
# preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Status::FAILED #
#If Sync failed. <b>Warning:</b> This  *constant*  is available as technical preview. It
# may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Status::NO_SYNC_FOUND #
#If Sync has not been triggered. <b>Warning:</b> This  *constant*  is available as
# technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Status;

use constant {
    SUCCEEDED =>  'SUCCEEDED',
    FAILED =>  'FAILED',
    NO_SYNC_FOUND =>  'NO_SYNC_FOUND',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.hvc.links.sync.providers.status',
                           'binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers service
#########################################################################################

## @class Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Info
#
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Info``   *class*  contains
#     information about sync for a provider. <b>Warning:</b> This  *class*  is available as
#     technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Info structure
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
               'FAILED' => ['status_message'],
               'SUCCEEDED' => [],
               'NO_SYNC_FOUND' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{last_sync_time} = $args{'last_sync_time'};
   $self->{status} = $args{'status'};
   $self->{polling_interval_in_seconds} = $args{'polling_interval_in_seconds'};
   $self->{current_session_info} = $args{'current_session_info'};
   $self->{status_message} = $args{'status_message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.sync.providers.info');
   $self->set_binding_field('key' => 'last_sync_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Hvc::Links::Sync', 'type_name' => 'Providers::Status'));
   $self->set_binding_field('key' => 'polling_interval_in_seconds', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'current_session_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Hvc::Links::Sync', 'type_name' => 'Providers::SessionInfo')));
   $self->set_binding_field('key' => 'status_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_last_sync_time ()
# Gets the value of 'last_sync_time' property.
#
# @retval last_sync_time - The current value of the field.
# Last sync time for the provider. This indicates the last time that either a background
#     sync or a force sync was started for the provider. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_last_sync_time {
   my ($self, %args) = @_;
   return $self->{'last_sync_time'}; 	
}

## @method set_last_sync_time ()
# Sets the given value for 'last_sync_time' property.
# 
# @param last_sync_time  - New value for the field.
# Last sync time for the provider. This indicates the last time that either a background
#     sync or a force sync was started for the provider. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
sub set_last_sync_time {
   my ($self, %args) = @_;
   $self->{'last_sync_time'} = $args{'last_sync_time'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Last Sync status for the provider. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# Last Sync status for the provider. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_polling_interval_in_seconds ()
# Gets the value of 'polling_interval_in_seconds' property.
#
# @retval polling_interval_in_seconds - The current value of the field.
# Sync Polling interval between local and remote replicas for the provider.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# long#
sub get_polling_interval_in_seconds {
   my ($self, %args) = @_;
   return $self->{'polling_interval_in_seconds'}; 	
}

## @method set_polling_interval_in_seconds ()
# Sets the given value for 'polling_interval_in_seconds' property.
# 
# @param polling_interval_in_seconds  - New value for the field.
# Sync Polling interval between local and remote replicas for the provider.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_polling_interval_in_seconds {
   my ($self, %args) = @_;
   $self->{'polling_interval_in_seconds'} = $args{'polling_interval_in_seconds'}; 
   return;	
}

## @method get_current_session_info ()
# Gets the value of 'current_session_info' property.
#
# @retval current_session_info - The current value of the field.
# Returns information on the forced sync for the provider. <b>Warning:</b> This  *field*
#      is available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_current_session_info {
   my ($self, %args) = @_;
   return $self->{'current_session_info'}; 	
}

## @method set_current_session_info ()
# Sets the given value for 'current_session_info' property.
# 
# @param current_session_info  - New value for the field.
# Returns information on the forced sync for the provider. <b>Warning:</b> This  *field*
#      is available as technical preview. It may be changed in a future release.
#
sub set_current_session_info {
   my ($self, %args) = @_;
   $self->{'current_session_info'} = $args{'current_session_info'}; 
   return;	
}

## @method get_status_message ()
# Gets the value of 'status_message' property.
#
# @retval status_message - The current value of the field.
# Localizable messages associated with sync status. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
# optional#
sub get_status_message {
   my ($self, %args) = @_;
   return $self->{'status_message'}; 	
}

## @method set_status_message ()
# Sets the given value for 'status_message' property.
# 
# @param status_message  - New value for the field.
# Localizable messages associated with sync status. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
sub set_status_message {
   my ($self, %args) = @_;
   $self->{'status_message'} = $args{'status_message'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo
#
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo``   *class* 
#     contains sync session information. <b>Warning:</b> This  *class*  is available as
#     technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo structure
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
         'discriminant_name' => 'stage',
         'case_map' => {
               'FAILED' => ['completion_time', 'exception'],
               'COMPLETED' => ['completion_time'],
               'CHANGE_DETECTION' => [],
               'CHANGE_ENUMERATION' => [],
               'CHANGE_APPLICATION' => [],
               'WAITING' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{stage} = $args{'stage'};
   $self->{completed_work} = $args{'completed_work'};
   $self->{total_work} = $args{'total_work'};
   $self->{completion_time} = $args{'completion_time'};
   $self->{start_time} = $args{'start_time'};
   $self->{exception} = $args{'exception'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.sync.providers.session_info');
   $self->set_binding_field('key' => 'stage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Hvc::Links::Sync', 'type_name' => 'Providers::SessionInfo::Stage'));
   $self->set_binding_field('key' => 'completed_work', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'total_work', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'completion_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'exception', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_stage ()
# Gets the value of 'stage' property.
#
# @retval stage - The current value of the field.
# Sync stage for the session. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# Stage#
sub get_stage {
   my ($self, %args) = @_;
   return $self->{'stage'}; 	
}

## @method set_stage ()
# Sets the given value for 'stage' property.
# 
# @param stage  - New value for the field.
# Sync stage for the session. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_stage {
   my ($self, %args) = @_;
   $self->{'stage'} = $args{'stage'}; 
   return;	
}

## @method get_completed_work ()
# Gets the value of 'completed_work' property.
#
# @retval completed_work - The current value of the field.
# Completed work for the session. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
# long#
sub get_completed_work {
   my ($self, %args) = @_;
   return $self->{'completed_work'}; 	
}

## @method set_completed_work ()
# Sets the given value for 'completed_work' property.
# 
# @param completed_work  - New value for the field.
# Completed work for the session. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_completed_work {
   my ($self, %args) = @_;
   $self->{'completed_work'} = $args{'completed_work'}; 
   return;	
}

## @method get_total_work ()
# Gets the value of 'total_work' property.
#
# @retval total_work - The current value of the field.
# Total work for the session. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# long#
sub get_total_work {
   my ($self, %args) = @_;
   return $self->{'total_work'}; 	
}

## @method set_total_work ()
# Sets the given value for 'total_work' property.
# 
# @param total_work  - New value for the field.
# Total work for the session. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_total_work {
   my ($self, %args) = @_;
   $self->{'total_work'} = $args{'total_work'}; 
   return;	
}

## @method get_completion_time ()
# Gets the value of 'completion_time' property.
#
# @retval completion_time - The current value of the field.
# Time at which forced sync session was completed. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
# optional#
sub get_completion_time {
   my ($self, %args) = @_;
   return $self->{'completion_time'}; 	
}

## @method set_completion_time ()
# Sets the given value for 'completion_time' property.
# 
# @param completion_time  - New value for the field.
# Time at which forced sync session was completed. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
sub set_completion_time {
   my ($self, %args) = @_;
   $self->{'completion_time'} = $args{'completion_time'}; 
   return;	
}

## @method get_start_time ()
# Gets the value of 'start_time' property.
#
# @retval start_time - The current value of the field.
# Time at which force sync was initiated. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
# DateTime#
sub get_start_time {
   my ($self, %args) = @_;
   return $self->{'start_time'}; 	
}

## @method set_start_time ()
# Sets the given value for 'start_time' property.
# 
# @param start_time  - New value for the field.
# Time at which force sync was initiated. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_start_time {
   my ($self, %args) = @_;
   $self->{'start_time'} = $args{'start_time'}; 
   return;	
}

## @method get_exception ()
# Gets the value of 'exception' property.
#
# @retval exception - The current value of the field.
# Exception message if there is a sync failure on forced sync. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# optional#
sub get_exception {
   my ($self, %args) = @_;
   return $self->{'exception'}; 	
}

## @method set_exception ()
# Sets the given value for 'exception' property.
# 
# @param exception  - New value for the field.
# Exception message if there is a sync failure on forced sync. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_exception {
   my ($self, %args) = @_;
   $self->{'exception'} = $args{'exception'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage``  
#     *class*  defines the different stages of Sync. <b>Warning:</b> This  *enumeration*  is
#     available as technical preview. It may be changed in a future release.
#
#
#
# Constant Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage::CHANGE_DETECTION #
#Changes are being detected on the source replica. <b>Warning:</b> This  *constant*  is
# available as technical preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage::CHANGE_ENUMERATION #
#Changes from the source replica are being enumerated. <b>Warning:</b> This  *constant*  is
# available as technical preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage::CHANGE_APPLICATION #
#Changes are being applied to the destination replica. <b>Warning:</b> This  *constant*  is
# available as technical preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage::COMPLETED #
#Sync has completed. <b>Warning:</b> This  *constant*  is available as technical preview.
# It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage::FAILED #
#Sync failed. <b>Warning:</b> This  *constant*  is available as technical preview. It may
# be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage::WAITING #
#Session is waiting for progress to be set. <b>Warning:</b> This  *constant*  is available
# as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage;

use constant {
    CHANGE_DETECTION =>  'CHANGE_DETECTION',
    CHANGE_ENUMERATION =>  'CHANGE_ENUMERATION',
    CHANGE_APPLICATION =>  'CHANGE_APPLICATION',
    COMPLETED =>  'COMPLETED',
    FAILED =>  'FAILED',
    WAITING =>  'WAITING',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.hvc.links.sync.providers.session_info.stage',
                           'binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::SessionInfo::Stage');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Summary
#
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Summary``   *class* 
#     contains information about a provider. <b>Warning:</b> This  *class*  is available as
#     technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{provider} = $args{'provider'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.sync.providers.summary');
   $self->set_binding_field('key' => 'provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_provider ()
# Gets the value of 'provider' property.
#
# @retval provider - The current value of the field.
# Sync provider id. <b>Warning:</b> This  *field*  is available as technical preview. It
#     may be changed in a future release.
#
# ID#
sub get_provider {
   my ($self, %args) = @_;
   return $self->{'provider'}; 	
}

## @method set_provider ()
# Sets the given value for 'provider' property.
# 
# @param provider  - New value for the field.
# Sync provider id. <b>Warning:</b> This  *field*  is available as technical preview. It
#     may be changed in a future release.
#
sub set_provider {
   my ($self, %args) = @_;
   $self->{'provider'} = $args{'provider'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Credentials
#
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Credentials``   *interface* 
#     specifies user credentials to make a successful connection to remote endpoint.
#     <b>Warning:</b> This  *class*  is available as technical preview. It may be changed in
#     a future release.

package Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Credentials;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Credentials structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{user_name} = $args{'user_name'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::Sync::Providers::Credentials');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.sync.providers.credentials');
   $self->set_binding_field('key' => 'user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_user_name ()
# Gets the value of 'user_name' property.
#
# @retval user_name - The current value of the field.
# Name of the user to authenticate. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
# String#
sub get_user_name {
   my ($self, %args) = @_;
   return $self->{'user_name'}; 	
}

## @method set_user_name ()
# Sets the given value for 'user_name' property.
# 
# @param user_name  - New value for the field.
# Name of the user to authenticate. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_user_name {
   my ($self, %args) = @_;
   $self->{'user_name'} = $args{'user_name'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password for the user. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Password for the user. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Hvc::Links::Sync::Providers service
#########################################################################################
