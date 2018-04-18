########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Policy.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Update::Policy
# The  ``Com::Vmware::Appliance::Update::Policy``   *interface*  provides  *methods*  to
#     set/get background check for the new updates.
#

package Com::Vmware::Appliance::Update::Policy;

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
use Com::Vmware::Appliance::Update::PolicyStub;

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
# Gets the automatic update checking and staging policy.
#
# @retval 
# Structure containing the policy for the appliance update.
# The return type will be Com::Vmware::Appliance::Update::Policy::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method set ()
# Sets the automatic update checking and staging policy.
#
# @param policy [REQUIRED] Info structure containing the policy for the appliance update.
# . The value must be Com::Vmware::Appliance::Update::Policy::Config.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#

sub set {
   my ($self, %args) = @_;
   my $policy = $args {policy};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Update::Policy service
#########################################################################################

## @class Com::Vmware::Appliance::Update::Policy::DayOfWeek
#
# The  ``Com::Vmware::Appliance::Update::Policy::DayOfWeek``   *enumerated type* 
#     defines the set of days
#
#
#
# Constant Com::Vmware::Appliance::Update::Policy::DayOfWeek::MONDAY #
#Monday
#
# Constant Com::Vmware::Appliance::Update::Policy::DayOfWeek::TUESDAY #
#Tuesday
#
# Constant Com::Vmware::Appliance::Update::Policy::DayOfWeek::WEDNESDAY #
#Wednesday
#
# Constant Com::Vmware::Appliance::Update::Policy::DayOfWeek::THURSDAY #
#Thursday
#
# Constant Com::Vmware::Appliance::Update::Policy::DayOfWeek::FRIDAY #
#Friday
#
# Constant Com::Vmware::Appliance::Update::Policy::DayOfWeek::SATURDAY #
#Saturday
#
# Constant Com::Vmware::Appliance::Update::Policy::DayOfWeek::SUNDAY #
#Sunday

package Com::Vmware::Appliance::Update::Policy::DayOfWeek;

use constant {
    MONDAY =>  'MONDAY',
    TUESDAY =>  'TUESDAY',
    WEDNESDAY =>  'WEDNESDAY',
    THURSDAY =>  'THURSDAY',
    FRIDAY =>  'FRIDAY',
    SATURDAY =>  'SATURDAY',
    SUNDAY =>  'SUNDAY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Policy::DayOfWeek enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.update.policy.day_of_week',
                           'binding_class' => 'Com::Vmware::Appliance::Update::Policy::DayOfWeek');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Update::Policy service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Update::Policy service
#########################################################################################

## @class Com::Vmware::Appliance::Update::Policy::Time
#
#
# The  ``Com::Vmware::Appliance::Update::Policy::Time``   *class*  defines weekday and
#     time the automatic check for new updates will be run

package Com::Vmware::Appliance::Update::Policy::Time;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Policy::Time structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{day} = $args{'day'};
   $self->{hour} = $args{'hour'};
   $self->{minute} = $args{'minute'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Update::Policy::Time');
   $self->set_binding_name('name' => 'com.vmware.appliance.update.policy.time');
   $self->set_binding_field('key' => 'day', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'Policy::DayOfWeek'));
   $self->set_binding_field('key' => 'hour', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'minute', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_day ()
# Gets the value of 'day' property.
#
# @retval day - The current value of the field.
# weekday to check for updates.
#
# DayOfWeek#
sub get_day {
   my ($self, %args) = @_;
   return $self->{'day'}; 	
}

## @method set_day ()
# Sets the given value for 'day' property.
# 
# @param day  - New value for the field.
# weekday to check for updates.
#
sub set_day {
   my ($self, %args) = @_;
   $self->{'day'} = $args{'day'}; 
   return;	
}

## @method get_hour ()
# Gets the value of 'hour' property.
#
# @retval hour - The current value of the field.
# Hour: 0-24
#
# long#
sub get_hour {
   my ($self, %args) = @_;
   return $self->{'hour'}; 	
}

## @method set_hour ()
# Sets the given value for 'hour' property.
# 
# @param hour  - New value for the field.
# Hour: 0-24
#
sub set_hour {
   my ($self, %args) = @_;
   $self->{'hour'} = $args{'hour'}; 
   return;	
}

## @method get_minute ()
# Gets the value of 'minute' property.
#
# @retval minute - The current value of the field.
# Minute: 0-59
#
# long#
sub get_minute {
   my ($self, %args) = @_;
   return $self->{'minute'}; 	
}

## @method set_minute ()
# Sets the given value for 'minute' property.
# 
# @param minute  - New value for the field.
# Minute: 0-59
#
sub set_minute {
   my ($self, %args) = @_;
   $self->{'minute'} = $args{'minute'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Update::Policy::Info
#
#
# The  ``Com::Vmware::Appliance::Update::Policy::Info``   *class*  defines automatic
#     update checking and staging policy.

package Com::Vmware::Appliance::Update::Policy::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Policy::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{custom_URL} = $args{'custom_URL'};
   $self->{default_URL} = $args{'default_URL'};
   $self->{username} = $args{'username'};
   $self->{check_schedule} = $args{'check_schedule'};
   $self->{auto_stage} = $args{'auto_stage'};
   $self->{auto_update} = $args{'auto_update'};
   $self->{manual_control} = $args{'manual_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Update::Policy::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.update.policy.info');
   $self->set_binding_field('key' => 'custom_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'default_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'check_schedule', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'Policy::Time')));
   $self->set_binding_field('key' => 'auto_stage', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'auto_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'manual_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_custom_URL ()
# Gets the value of 'custom_URL' property.
#
# @retval custom_URL - The current value of the field.
# Current appliance update custom repository URL.
#
# Optional#
sub get_custom_URL {
   my ($self, %args) = @_;
   return $self->{'custom_URL'}; 	
}

## @method set_custom_URL ()
# Sets the given value for 'custom_URL' property.
# 
# @param custom_URL  - New value for the field.
# Current appliance update custom repository URL.
#
sub set_custom_URL {
   my ($self, %args) = @_;
   $self->{'custom_URL'} = $args{'custom_URL'}; 
   return;	
}

## @method get_default_URL ()
# Gets the value of 'default_URL' property.
#
# @retval default_URL - The current value of the field.
# Current appliance update default repository URL.
#
# String#
sub get_default_URL {
   my ($self, %args) = @_;
   return $self->{'default_URL'}; 	
}

## @method set_default_URL ()
# Sets the given value for 'default_URL' property.
# 
# @param default_URL  - New value for the field.
# Current appliance update default repository URL.
#
sub set_default_URL {
   my ($self, %args) = @_;
   $self->{'default_URL'} = $args{'default_URL'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Username for the update repository
#
# Optional#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Username for the update repository
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_check_schedule ()
# Gets the value of 'check_schedule' property.
#
# @retval check_schedule - The current value of the field.
# Schedule when the automatic check will be run.
#
# List#
sub get_check_schedule {
   my ($self, %args) = @_;
   return $self->{'check_schedule'}; 	
}

## @method set_check_schedule ()
# Sets the given value for 'check_schedule' property.
# 
# @param check_schedule  - New value for the field.
# Schedule when the automatic check will be run.
#
sub set_check_schedule {
   my ($self, %args) = @_;
   $self->{'check_schedule'} = $args{'check_schedule'}; 
   return;	
}

## @method get_auto_stage ()
# Gets the value of 'auto_stage' property.
#
# @retval auto_stage - The current value of the field.
# Automatically stage the latest update if available.
#
# boolean#
sub get_auto_stage {
   my ($self, %args) = @_;
   return $self->{'auto_stage'}; 	
}

## @method set_auto_stage ()
# Sets the given value for 'auto_stage' property.
# 
# @param auto_stage  - New value for the field.
# Automatically stage the latest update if available.
#
sub set_auto_stage {
   my ($self, %args) = @_;
   $self->{'auto_stage'} = $args{'auto_stage'}; 
   return;	
}

## @method get_auto_update ()
# Gets the value of 'auto_update' property.
#
# @retval auto_update - The current value of the field.
# Is the appliance updated automatically. If  *set*  the appliance may ignore the check
#     schedule or auto-stage settings.
#
# boolean#
sub get_auto_update {
   my ($self, %args) = @_;
   return $self->{'auto_update'}; 	
}

## @method set_auto_update ()
# Sets the given value for 'auto_update' property.
# 
# @param auto_update  - New value for the field.
# Is the appliance updated automatically. If  *set*  the appliance may ignore the check
#     schedule or auto-stage settings.
#
sub set_auto_update {
   my ($self, %args) = @_;
   $self->{'auto_update'} = $args{'auto_update'}; 
   return;	
}

## @method get_manual_control ()
# Gets the value of 'manual_control' property.
#
# @retval manual_control - The current value of the field.
# Whether API client should allow the user to start update manually
#
# boolean#
sub get_manual_control {
   my ($self, %args) = @_;
   return $self->{'manual_control'}; 	
}

## @method set_manual_control ()
# Sets the given value for 'manual_control' property.
# 
# @param manual_control  - New value for the field.
# Whether API client should allow the user to start update manually
#
sub set_manual_control {
   my ($self, %args) = @_;
   $self->{'manual_control'} = $args{'manual_control'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Update::Policy::Config
#
#
# The  ``Com::Vmware::Appliance::Update::Policy::Config``   *class*  defines automatic
#     update checking and staging policy.

package Com::Vmware::Appliance::Update::Policy::Config;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Policy::Config structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{custom_URL} = $args{'custom_URL'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};
   $self->{check_schedule} = $args{'check_schedule'};
   $self->{auto_stage} = $args{'auto_stage'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Update::Policy::Config');
   $self->set_binding_name('name' => 'com.vmware.appliance.update.policy.config');
   $self->set_binding_field('key' => 'custom_URL', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'check_schedule', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'Policy::Time')));
   $self->set_binding_field('key' => 'auto_stage', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_custom_URL ()
# Gets the value of 'custom_URL' property.
#
# @retval custom_URL - The current value of the field.
# Current appliance update repository URL.
#
# Optional#
sub get_custom_URL {
   my ($self, %args) = @_;
   return $self->{'custom_URL'}; 	
}

## @method set_custom_URL ()
# Sets the given value for 'custom_URL' property.
# 
# @param custom_URL  - New value for the field.
# Current appliance update repository URL.
#
sub set_custom_URL {
   my ($self, %args) = @_;
   $self->{'custom_URL'} = $args{'custom_URL'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Username for the update repository
#
# Optional#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Username for the update repository
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password for the update repository
#
# Optional#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Password for the update repository
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_check_schedule ()
# Gets the value of 'check_schedule' property.
#
# @retval check_schedule - The current value of the field.
# Schedule when the automatic check will be run.
#
# List#
sub get_check_schedule {
   my ($self, %args) = @_;
   return $self->{'check_schedule'}; 	
}

## @method set_check_schedule ()
# Sets the given value for 'check_schedule' property.
# 
# @param check_schedule  - New value for the field.
# Schedule when the automatic check will be run.
#
sub set_check_schedule {
   my ($self, %args) = @_;
   $self->{'check_schedule'} = $args{'check_schedule'}; 
   return;	
}

## @method get_auto_stage ()
# Gets the value of 'auto_stage' property.
#
# @retval auto_stage - The current value of the field.
# Automatically stage the latest update if available.
#
# boolean#
sub get_auto_stage {
   my ($self, %args) = @_;
   return $self->{'auto_stage'}; 	
}

## @method set_auto_stage ()
# Sets the given value for 'auto_stage' property.
# 
# @param auto_stage  - New value for the field.
# Automatically stage the latest update if available.
#
sub set_auto_stage {
   my ($self, %args) = @_;
   $self->{'auto_stage'} = $args{'auto_stage'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Update::Policy service
#########################################################################################
