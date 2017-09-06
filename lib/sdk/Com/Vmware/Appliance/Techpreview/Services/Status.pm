########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Status.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Services::Status
# ``Com::Vmware::Appliance::Techpreview::Services::Status``   *interface*  provides 
#     *methods*  Get status of a service.
#

package Com::Vmware::Appliance::Techpreview::Services::Status;

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
use Com::Vmware::Appliance::Techpreview::Services::StatusStub;

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
# Get status of a service.
#
# @param name [REQUIRED] Name of a service.
# . The value must be String.
#
# @param timeout [REQUIRED] Timeout in seconds. Zero (0) means no timeout.
# . The value must be Long.
#
# @retval 
# Status of the service.
# The return type will be
# Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   my $name = $args {name};
   my $timeout = $args {timeout};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Services::Status service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus
#
# ``Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus``   *enumerated
#     type*  Defines service status
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus::DOWN #
#Service is not running.
#
# Constant Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus::UP #
#Service is running.

package Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus;

use constant {
    down =>  'down',
    up =>  'up',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.services.status.service_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Services::Status::ServiceStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Services::Status service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Services::Status service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Services::Status service
#########################################################################################
