########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Shutdown.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Shutdown
# ``Com::Vmware::Appliance::Techpreview::Shutdown``   *interface*  provides  *methods* 
#     Performs reboot/shutdow operations on appliance.
#

package Com::Vmware::Appliance::Techpreview::Shutdown;

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
use Com::Vmware::Appliance::Techpreview::ShutdownStub;

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
# Cancel pending shutdown action.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub cancel {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'cancel', method_args =>  {});
}


## @method poweroff ()
# Power off the appliance.
#
# @param config [REQUIRED] Configuration of poweroff action
# . The value must be Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub poweroff {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'poweroff',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'poweroff',
                         method_args => \%args);
}


## @method reboot ()
# Reboot the appliance.
#
# @param config [REQUIRED] Configuration of reboot action
# . The value must be Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub reboot {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'reboot',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'reboot',
                         method_args => \%args);
}


## @method get ()
# Get details about the pending shutdown action.
#
# @retval 
# Configuration of pending shutdown action.
# The return type will be Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig
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
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Shutdown service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Shutdown service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Shutdown service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig
#
#
# ``Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig``   *class* 
#     Structure that defines shutdown configuration returned by Shutdown.get operation

package Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{shutdown_time} = $args{'shutdown_time'};
   $self->{action} = $args{'action'};
   $self->{reason} = $args{'reason'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownGetConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.shutdown.shutdown_get_config');
   $self->set_binding_field('key' => 'shutdown_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'action', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'reason', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_shutdown_time ()
# Gets the value of 'shutdown_time' property.
#
# @retval shutdown_time - The current value of the field.
# (UTC) time of shutdown represented in &quot;YYYY-MM-DD HH:MM:SS&quot; format.
#
# String#
sub get_shutdown_time {
   my ($self, %args) = @_;
   return $self->{'shutdown_time'}; 	
}

## @method set_shutdown_time ()
# Sets the given value for 'shutdown_time' property.
# 
# @param shutdown_time  - New value for the field.
# (UTC) time of shutdown represented in &quot;YYYY-MM-DD HH:MM:SS&quot; format.
#
sub set_shutdown_time {
   my ($self, %args) = @_;
   $self->{'shutdown_time'} = $args{'shutdown_time'}; 
   return;	
}

## @method get_action ()
# Gets the value of 'action' property.
#
# @retval action - The current value of the field.
# Contains a string that describes the pending shutdown operation. The string values for
#     pending operations can be &apos;poweroff&apos;, &apos;reboot&apos; or &apos;&apos;
#
# String#
sub get_action {
   my ($self, %args) = @_;
   return $self->{'action'}; 	
}

## @method set_action ()
# Sets the given value for 'action' property.
# 
# @param action  - New value for the field.
# Contains a string that describes the pending shutdown operation. The string values for
#     pending operations can be &apos;poweroff&apos;, &apos;reboot&apos; or &apos;&apos;
#
sub set_action {
   my ($self, %args) = @_;
   $self->{'action'} = $args{'action'}; 
   return;	
}

## @method get_reason ()
# Gets the value of 'reason' property.
#
# @retval reason - The current value of the field.
# This will contain string explaining the reason behind the shutdown action
#
# String#
sub get_reason {
   my ($self, %args) = @_;
   return $self->{'reason'}; 	
}

## @method set_reason ()
# Sets the given value for 'reason' property.
# 
# @param reason  - New value for the field.
# This will contain string explaining the reason behind the shutdown action
#
sub set_reason {
   my ($self, %args) = @_;
   $self->{'reason'} = $args{'reason'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig
#
#
# ``Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig``   *class*  Structure
#     that defines shutdown configuration.

package Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{delay} = $args{'delay'};
   $self->{reason} = $args{'reason'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Shutdown::ShutdownConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.shutdown.shutdown_config');
   $self->set_binding_field('key' => 'delay', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'reason', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_delay ()
# Gets the value of 'delay' property.
#
# @retval delay - The current value of the field.
# Delay interval in minutes (optional). if you do not specify delay, then the shutdown
#     starts immediately.
#
# long#
sub get_delay {
   my ($self, %args) = @_;
   return $self->{'delay'}; 	
}

## @method set_delay ()
# Sets the given value for 'delay' property.
# 
# @param delay  - New value for the field.
# Delay interval in minutes (optional). if you do not specify delay, then the shutdown
#     starts immediately.
#
sub set_delay {
   my ($self, %args) = @_;
   $self->{'delay'} = $args{'delay'}; 
   return;	
}

## @method get_reason ()
# Gets the value of 'reason' property.
#
# @retval reason - The current value of the field.
# Reason for performing shutdown (required).
#
# String#
sub get_reason {
   my ($self, %args) = @_;
   return $self->{'reason'}; 	
}

## @method set_reason ()
# Sets the given value for 'reason' property.
# 
# @param reason  - New value for the field.
# Reason for performing shutdown (required).
#
sub set_reason {
   my ($self, %args) = @_;
   $self->{'reason'} = $args{'reason'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Shutdown service
#########################################################################################
