########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Softwarepackages.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Health::Softwarepackages
# ``Com::Vmware::Appliance::Health::Softwarepackages``   *interface*  provides 
#     *methods*  Get information on available software updates available in remote VUM
#     repository.
#

package Com::Vmware::Appliance::Health::Softwarepackages;

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
use Com::Vmware::Appliance::Health::SoftwarepackagesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.health.softwarepackages';


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
# Get information on available software updates available in the remote vSphere Update
# Manager repository. Red indicates that security updates are available. Orange indicates
# that non-security updates are available. Green indicates that there are no updates
# available. Gray indicates that there was an error retreiving information on software
# updates.
#
# @retval 
# software updates available.
# The return type will be Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel
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
# Begins enumerations for the Com::Vmware::Appliance::Health::Softwarepackages service
#########################################################################################

## @class Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel
#
# ``Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel``   *enumerated type* 
#     Defines health levels.
#
#
#
# Constant Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel::ORANGE #
#The service health is degraded. The service might have serious problems.
#
# Constant Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel::GRAY #
#No health data is available for this service.
#
# Constant Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel::GREEN #
#Service is healthy.
#
# Constant Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel::RED #
#The service is unavaiable, not functioning properly, or will stop functioning soon.
#
# Constant Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel::YELLOW #
#The service is healthy state, but experiencing some levels of problems.

package Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel;

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
# Constructor to initialize the Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.health.softwarepackages.health_level',
                           'binding_class' => 'Com::Vmware::Appliance::Health::Softwarepackages::HealthLevel');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Health::Softwarepackages service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Health::Softwarepackages service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Health::Softwarepackages service
#########################################################################################
