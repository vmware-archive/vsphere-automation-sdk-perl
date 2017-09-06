########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Timesync.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Timesync
# ``Com::Vmware::Appliance::Techpreview::Timesync``   *interface*  provides  *methods* 
#     Performs time synchronization configuration.
#

package Com::Vmware::Appliance::Techpreview::Timesync;

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
use Com::Vmware::Appliance::Techpreview::TimesyncStub;

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
# Set time synchronization configuration.
#
# @param config [REQUIRED] Time synchronization configuration.
# . The value must be Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method get ()
# Get time synchronization configuration.
#
# @retval 
# Time synchronization configuration.
# The return type will be Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig
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
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Timesync service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode
#
# ``Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode``   *enumerated type* 
#     Defines different timsync modes
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode::DISABLED #
#Time synchronization is disabled.
#
# Constant Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode::NTP #
#NTP-based time synchronization.
#
# Constant Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode::HOST #
#VMware Tool-based time synchronization.

package Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode;

use constant {
    Disabled =>  'Disabled',
    NTP =>  'NTP',
    host =>  'host',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.timesync.time_sync_mode',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Timesync service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Timesync service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig
#
#
# ``Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig``   *class*  Structure
#     defining time synchronization configuration.

package Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{mode} = $args{'mode'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Timesync::TimeSyncConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.timesync.time_sync_config');
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview', 'type_name' => 'Timesync::TimeSyncMode'));
   bless $self, $class;
   return $self;
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# Time synchronization mode. Mode can have one of the TimeSyncMode enumeration values.
#
# TimeSyncMode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# Time synchronization mode. Mode can have one of the TimeSyncMode enumeration values.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Timesync service
#########################################################################################
