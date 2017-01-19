########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Activation.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Vcenter::Activation
# The  ``Com::Vmware::Vapi::Vcenter::Activation``   *interface*  provides  *methods* 
#     for tasks cancelation.
#

package Com::Vmware::Vapi::Vcenter::Activation;

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
use Com::Vmware::Vapi::Vcenter::ActivationStub;

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

## @method cancel ()
# Sends a request to cancel the task associated with the provided  ``activation_id`` .
#
# @param activation_id [REQUIRED]  the  ``activation_id``  associated with a vCenter Server task to be canceled.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.Activation).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if a vCenter Server task with the given  ``activation_id``  was not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the vCenter Server task associated with the given  ``activation_id``  is not
#     cancelable.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if the user is not authorized to cancel the task.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the task cancelation cannot be performed due to vCenter server is unreachable or it
#     is not properly configured.
#

sub cancel {
   my ($self, %args) = @_;
   my $activation_id = $args {activation_id};

   $self->validate_args (method_name => 'cancel',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'cancel',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Vcenter::Activation service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Vcenter::Activation service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Vcenter::Activation service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Vcenter::Activation service
#########################################################################################
