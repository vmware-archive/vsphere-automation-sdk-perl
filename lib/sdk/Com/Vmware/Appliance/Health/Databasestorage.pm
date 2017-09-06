########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Databasestorage.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Health::Databasestorage
# ``Com::Vmware::Appliance::Health::Databasestorage``   *interface*  provides  *methods*
#      Get database storage health.
#

package Com::Vmware::Appliance::Health::Databasestorage;

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
use Com::Vmware::Appliance::Health::DatabasestorageStub;

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
# Get database storage health.
#
# @retval 
# Database storage health.
# The return type will be Com::Vmware::Appliance::Health::Databasestorage::HealthLevel
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
# Begins enumerations for the Com::Vmware::Appliance::Health::Databasestorage service
#########################################################################################

## @class Com::Vmware::Appliance::Health::Databasestorage::HealthLevel
#
# ``Com::Vmware::Appliance::Health::Databasestorage::HealthLevel``   *enumerated type* 
#     Defines health levels
#
#
#
# Constant Com::Vmware::Appliance::Health::Databasestorage::HealthLevel::ORANGE #
#The service health is degraded. The service might have serious problems
#
# Constant Com::Vmware::Appliance::Health::Databasestorage::HealthLevel::GRAY #
#No health data is available for this service.
#
# Constant Com::Vmware::Appliance::Health::Databasestorage::HealthLevel::GREEN #
#Service is healthy.
#
# Constant Com::Vmware::Appliance::Health::Databasestorage::HealthLevel::RED #
#The service is unavaiable and is not functioning properly or will stop functioning soon.
#
# Constant Com::Vmware::Appliance::Health::Databasestorage::HealthLevel::YELLOW #
#The service is healthy state, but experiencing some levels of problems.

package Com::Vmware::Appliance::Health::Databasestorage::HealthLevel;

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
# Constructor to initialize the Com::Vmware::Appliance::Health::Databasestorage::HealthLevel enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.health.databasestorage.health_level',
                           'binding_class' => 'Com::Vmware::Appliance::Health::Databasestorage::HealthLevel');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Health::Databasestorage service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Health::Databasestorage service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Health::Databasestorage service
#########################################################################################
