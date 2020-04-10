########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file System.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Health::System
# ``Com::Vmware::Appliance::Health::System``   *interface*  provides  *methods*  Get
#     overall health of the system.
#

package Com::Vmware::Appliance::Health::System;

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
use Com::Vmware::Appliance::Health::SystemStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.health.system';


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

## @method lastcheck ()
# Get last check timestamp of the health of the system.
#
# @retval 
# System health last check timestamp
# The return type will be datetime.datetime
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub lastcheck {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'lastcheck', method_args =>  {});
}

## @method get ()
# Get overall health of system.
#
# @retval 
# System health
# The return type will be Com::Vmware::Appliance::Health::System::HealthLevel
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Health::System service
#########################################################################################

## @class Com::Vmware::Appliance::Health::System::HealthLevel
#
# ``Com::Vmware::Appliance::Health::System::HealthLevel``   *enumerated type*  Defines
#     health levels.
#
#
#
# Constant Com::Vmware::Appliance::Health::System::HealthLevel::ORANGE #
#The service health is degraded. The service might have serious problems.
#
# Constant Com::Vmware::Appliance::Health::System::HealthLevel::GRAY #
#No health data is available for this service.
#
# Constant Com::Vmware::Appliance::Health::System::HealthLevel::GREEN #
#Service is healthy.
#
# Constant Com::Vmware::Appliance::Health::System::HealthLevel::RED #
#The service is unavaiable, not functioning properly, or will stop functioning soon.
#
# Constant Com::Vmware::Appliance::Health::System::HealthLevel::YELLOW #
#The service is healthy state, but experiencing some levels of problems.

package Com::Vmware::Appliance::Health::System::HealthLevel;

use constant {
    orange =>  'orange',
    gray =>  'gray',
    green =>  'green',
    red =>  'red',
    yellow =>  'yellow',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Health::System::HealthLevel enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.health.system.health_level',
                           'binding_class' => 'Com::Vmware::Appliance::Health::System::HealthLevel');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Health::System service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Health::System service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Health::System service
#########################################################################################
