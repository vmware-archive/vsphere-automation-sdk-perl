########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Timezone.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::System::Time::Timezone
# The  ``Com::Vmware::Appliance::System::Time::Timezone``   *interface*  provides 
#     *methods*  to get and set the appliance timezone. This  *interface*  was added in
#     vSphere API 6.7.
#

package Com::Vmware::Appliance::System::Time::Timezone;

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
use Com::Vmware::Appliance::System::Time::TimezoneStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.system.time.timezone';


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

## @method set ()
# Set time zone. This  *method*  was added in vSphere API 6.7.
#
# @param name [REQUIRED] Time zone name.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed arguments are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#
sub set {
   my ($self, %args) = @_;
   my $name = $args {name};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method get ()
# Get time zone. This  *method*  was added in vSphere API 6.7.
#
# @retval 
# Time zone name.
# The return type will be String
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if timezone cannot be read.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::System::Time::Timezone service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::System::Time::Timezone service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::System::Time::Timezone service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::System::Time::Timezone service
#########################################################################################
