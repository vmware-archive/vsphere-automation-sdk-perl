########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Time.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::System::Time
# ``Com::Vmware::Appliance::System::Time``   *interface*  provides  *methods*  Gets
#     system time.
#

package Com::Vmware::Appliance::System::Time;

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
use Com::Vmware::Appliance::System::TimeStub;

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
# Get system time.
#
# @retval 
# System time
# The return type will be Com::Vmware::Appliance::System::Time::SystemTimeStruct
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
# Begins enumerations for the Com::Vmware::Appliance::System::Time service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::System::Time service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::System::Time service
#########################################################################################

## @class Com::Vmware::Appliance::System::Time::SystemTimeStruct
#
#
# ``Com::Vmware::Appliance::System::Time::SystemTimeStruct``   *class*  Structure
#     representing the system time.

package Com::Vmware::Appliance::System::Time::SystemTimeStruct;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::System::Time::SystemTimeStruct structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{seconds_since_epoch} = $args{'seconds_since_epoch'};
   $self->{date} = $args{'date'};
   $self->{time} = $args{'time'};
   $self->{timezone} = $args{'timezone'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::System::Time::SystemTimeStruct');
   $self->set_binding_name('name' => 'com.vmware.appliance.system.time.system_time_struct');
   $self->set_binding_field('key' => 'seconds_since_epoch', 'value' => new Com::Vmware::Vapi::Bindings::Type::DoubleType());
   $self->set_binding_field('key' => 'date', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'time', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'timezone', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_seconds_since_epoch ()
# Gets the value of 'seconds_since_epoch' property.
#
# @retval seconds_since_epoch - The current value of the field.
# seconds since the epoch
#
# double#
sub get_seconds_since_epoch {
   my ($self, %args) = @_;
   return $self->{'seconds_since_epoch'}; 	
}

## @method set_seconds_since_epoch ()
# Sets the given value for 'seconds_since_epoch' property.
# 
# @param seconds_since_epoch  - New value for the field.
# seconds since the epoch
#
sub set_seconds_since_epoch {
   my ($self, %args) = @_;
   $self->{'seconds_since_epoch'} = $args{'seconds_since_epoch'}; 
   return;	
}

## @method get_date ()
# Gets the value of 'date' property.
#
# @retval date - The current value of the field.
# date format: Thu 07-31-2014
#
# String#
sub get_date {
   my ($self, %args) = @_;
   return $self->{'date'}; 	
}

## @method set_date ()
# Sets the given value for 'date' property.
# 
# @param date  - New value for the field.
# date format: Thu 07-31-2014
#
sub set_date {
   my ($self, %args) = @_;
   $self->{'date'} = $args{'date'}; 
   return;	
}

## @method get_time ()
# Gets the value of 'time' property.
#
# @retval time - The current value of the field.
# time format: 18:18:32
#
# String#
sub get_time {
   my ($self, %args) = @_;
   return $self->{'time'}; 	
}

## @method set_time ()
# Sets the given value for 'time' property.
# 
# @param time  - New value for the field.
# time format: 18:18:32
#
sub set_time {
   my ($self, %args) = @_;
   $self->{'time'} = $args{'time'}; 
   return;	
}

## @method get_timezone ()
# Gets the value of 'timezone' property.
#
# @retval timezone - The current value of the field.
# timezone
#
# String#
sub get_timezone {
   my ($self, %args) = @_;
   return $self->{'timezone'}; 	
}

## @method set_timezone ()
# Sets the given value for 'timezone' property.
# 
# @param timezone  - New value for the field.
# timezone
#
sub set_timezone {
   my ($self, %args) = @_;
   $self->{'timezone'} = $args{'timezone'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::System::Time service
#########################################################################################
