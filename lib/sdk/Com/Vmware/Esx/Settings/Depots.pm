########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Depots.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Depots
# The  ``Com::Vmware::Esx::Settings::Depots``   *interface*  provides  *methods*  to
#     manage Software Depots used during ESX lifecycle management.
#

package Com::Vmware::Esx::Settings::Depots;

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
use Com::Vmware::Esx::Settings::DepotsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.depots';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'sync_task'} = 'sync$task';

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

## @method sync_task ()
# Syncs the metadata from the currently configured online or umds depots. If any umds depot
# is set, then metadata is downloaded from that depot else metadata is downloaded from the
# online depots. The result of this operation can be queried by calling the
# cis/tasks/{task-id} where the task-id is the response of this operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::TimedOut 
# if the service is timed out.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
sub sync_task {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'sync$task', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Depots service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Depots service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Depots service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Depots service
#########################################################################################
