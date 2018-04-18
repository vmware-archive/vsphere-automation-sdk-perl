########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Timesync.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Timesync
# ``Com::Vmware::Appliance::Timesync``   *interface*  provides  *methods*  Performs time
#     synchronization configuration. This  *interface*  was added in vSphere API 6.7
#

package Com::Vmware::Appliance::Timesync;

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
use Com::Vmware::Appliance::TimesyncStub;

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

## @method set ()
# Set time synchronization mode. This  *method*  was added in vSphere API 6.7
#
# @param mode [REQUIRED] Time synchronization mode.
# . The value must be Com::Vmware::Appliance::Timesync::TimeSyncMode.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $mode = $args {mode};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method get ()
# Get time synchronization mode. This  *method*  was added in vSphere API 6.7
#
# @retval 
# Time synchronization mode.
# The return type will be Com::Vmware::Appliance::Timesync::TimeSyncMode
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
# Begins enumerations for the Com::Vmware::Appliance::Timesync service
#########################################################################################

## @class Com::Vmware::Appliance::Timesync::TimeSyncMode
#
# The  ``Com::Vmware::Appliance::Timesync::TimeSyncMode``   *enumerated type*  defines
#     time synchronization modes. This  *enumeration*  was added in vSphere API 6.7
#
#
#
# Constant Com::Vmware::Appliance::Timesync::TimeSyncMode::DISABLED #
#Time synchronization is disabled. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Timesync::TimeSyncMode::NTP #
#NTP-based time synchronization. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Appliance::Timesync::TimeSyncMode::HOST #
#VMware Tool-based time synchronization. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Timesync::TimeSyncMode;

use constant {
    DISABLED =>  'DISABLED',
    NTP =>  'NTP',
    HOST =>  'HOST',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Timesync::TimeSyncMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.timesync.time_sync_mode',
                           'binding_class' => 'Com::Vmware::Appliance::Timesync::TimeSyncMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Timesync service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Timesync service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Timesync service
#########################################################################################
