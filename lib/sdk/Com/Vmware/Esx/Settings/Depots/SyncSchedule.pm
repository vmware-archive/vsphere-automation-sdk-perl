########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file SyncSchedule.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Depots::SyncSchedule
# The  ``Com::Vmware::Esx::Settings::Depots::SyncSchedule``   *interface*  provides 
#     *methods*  to manage Schedule of Online Software Depot sync.
#

package Com::Vmware::Esx::Settings::Depots::SyncSchedule;

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
use Com::Vmware::Esx::Settings::Depots::SyncScheduleStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.depots.sync_schedule';


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
# Returns the currently configured software depot sync schedule.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @retval 
# Currently configured sync schedule.
# The return type will be Com::Vmware::Esx::Settings::Depots::SyncSchedule::Spec
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown error. The accompanying error message will give more details
#     about the failure.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method set ()
# Sets the software depot sync schedule.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @param spec [OPTIONAL] Information of the software depot sync schedule.
# If  *null* , it will be reset to the default schedule, which is daily at a random hour
#     chosen when this API is called.
# . The value must be Com::Vmware::Esx::Settings::Depots::SyncSchedule::Spec or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If  :attr:`Com::Vmware::Esx::Settings::Depots::SyncSchedule::Spec.schedule`  is unset
#     while  :attr:`Com::Vmware::Esx::Settings::Depots::SyncSchedule::Spec.enabled`  is set
#     to true or if any of the values is not within valid range.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown error. The accompanying error message will give more details
#     about the failure.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Write`` . </li>
# </ul>
#
sub set {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Depots::SyncSchedule service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence
#
# The  ``Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence``   *enumerated
#     type*  contains the supported values for how often to sync from online or UMDS depots.
#
#
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence::HOURLY #
#Hourly.
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence::DAILY #
#Daily.
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence::WEEKLY #
#Weekly.
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence::MONTHLY_BY_DAY #
#Monthly by day.

package Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence;

use constant {
    HOURLY =>  'HOURLY',
    DAILY =>  'DAILY',
    WEEKLY =>  'WEEKLY',
    MONTHLY_BY_DAY =>  'MONTHLY_BY_DAY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.depots.sync_schedule.recurrence',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek
#
# The  ``Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek``   *enumerated
#     type*  contains the supported days of the week.
#
#
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek::SUNDAY #
#Sunday.
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek::MONDAY #
#Monday.
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek::TUESDAY #
#Tuesday.
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek::WEDNESDAY #
#Wednesday.
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek::THURSDAY #
#Thursday.
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek::FRIDAY #
#Friday.
#
# Constant Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek::SATURDAY #
#Saturday.

package Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek;

use constant {
    SUNDAY =>  'SUNDAY',
    MONDAY =>  'MONDAY',
    TUESDAY =>  'TUESDAY',
    WEDNESDAY =>  'WEDNESDAY',
    THURSDAY =>  'THURSDAY',
    FRIDAY =>  'FRIDAY',
    SATURDAY =>  'SATURDAY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.depots.sync_schedule.day_of_week',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Depots::SyncSchedule::DayOfWeek');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Depots::SyncSchedule service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Depots::SyncSchedule service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Depots::SyncSchedule::Schedule
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::SyncSchedule::Schedule``   *class*  defines
#     a schedule.

package Com::Vmware::Esx::Settings::Depots::SyncSchedule::Schedule;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::SyncSchedule::Schedule structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'HOURLY' => ['skip', 'minute'],
               'DAILY' => ['skip', 'minute', 'hour'],
               'WEEKLY' => ['skip', 'minute', 'hour', 'day_of_week'],
               'MONTHLY_BY_DAY' => ['skip', 'minute', 'hour', 'day_of_month'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{skip} = $args{'skip'};
   $self->{minute} = $args{'minute'};
   $self->{hour} = $args{'hour'};
   $self->{day_of_month} = $args{'day_of_month'};
   $self->{day_of_week} = $args{'day_of_week'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::SyncSchedule::Schedule');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.sync_schedule.schedule');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depots', 'type_name' => 'SyncSchedule::Recurrence'));
   $self->set_binding_field('key' => 'skip', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'minute', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'hour', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'day_of_month', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'day_of_week', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depots', 'type_name' => 'SyncSchedule::DayOfWeek')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Frequency of the schedule.
#
# Recurrence#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Frequency of the schedule.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_skip ()
# Gets the value of 'skip' property.
#
# @retval skip - The current value of the field.
# This determines the units of 
#     ``Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence``  to skip before the
#     scheduled task runs again. For example, value of 1 for HOURLY type means the scheduled
#     task runs every 2 hours. The value must be within the range 0 to 998.
#
# Optional#
sub get_skip {
   my ($self, %args) = @_;
   return $self->{'skip'}; 	
}

## @method set_skip ()
# Sets the given value for 'skip' property.
# 
# @param skip  - New value for the field.
# This determines the units of 
#     ``Com::Vmware::Esx::Settings::Depots::SyncSchedule::Recurrence``  to skip before the
#     scheduled task runs again. For example, value of 1 for HOURLY type means the scheduled
#     task runs every 2 hours. The value must be within the range 0 to 998.
#
sub set_skip {
   my ($self, %args) = @_;
   $self->{'skip'} = $args{'skip'}; 
   return;	
}

## @method get_minute ()
# Gets the value of 'minute' property.
#
# @retval minute - The current value of the field.
# Minute at which schedule should be run. The value must be within the range 0 to 59.
#
# optional#
sub get_minute {
   my ($self, %args) = @_;
   return $self->{'minute'}; 	
}

## @method set_minute ()
# Sets the given value for 'minute' property.
# 
# @param minute  - New value for the field.
# Minute at which schedule should be run. The value must be within the range 0 to 59.
#
sub set_minute {
   my ($self, %args) = @_;
   $self->{'minute'} = $args{'minute'}; 
   return;	
}

## @method get_hour ()
# Gets the value of 'hour' property.
#
# @retval hour - The current value of the field.
# Hour at which schedule should be run. The value must be within the range 0 to 23.
#
# optional#
sub get_hour {
   my ($self, %args) = @_;
   return $self->{'hour'}; 	
}

## @method set_hour ()
# Sets the given value for 'hour' property.
# 
# @param hour  - New value for the field.
# Hour at which schedule should be run. The value must be within the range 0 to 23.
#
sub set_hour {
   my ($self, %args) = @_;
   $self->{'hour'} = $args{'hour'}; 
   return;	
}

## @method get_day_of_month ()
# Gets the value of 'day_of_month' property.
#
# @retval day_of_month - The current value of the field.
# Day at which schedule should be run. The value must be within the range 1 to 31. If
#     the value exceeds the total number of days in the month, the schedule will run on the
#     last day of the month.
#
# optional#
sub get_day_of_month {
   my ($self, %args) = @_;
   return $self->{'day_of_month'}; 	
}

## @method set_day_of_month ()
# Sets the given value for 'day_of_month' property.
# 
# @param day_of_month  - New value for the field.
# Day at which schedule should be run. The value must be within the range 1 to 31. If
#     the value exceeds the total number of days in the month, the schedule will run on the
#     last day of the month.
#
sub set_day_of_month {
   my ($self, %args) = @_;
   $self->{'day_of_month'} = $args{'day_of_month'}; 
   return;	
}

## @method get_day_of_week ()
# Gets the value of 'day_of_week' property.
#
# @retval day_of_week - The current value of the field.
# Day of the week when schedule should be run
#
# optional#
sub get_day_of_week {
   my ($self, %args) = @_;
   return $self->{'day_of_week'}; 	
}

## @method set_day_of_week ()
# Sets the given value for 'day_of_week' property.
# 
# @param day_of_week  - New value for the field.
# Day of the week when schedule should be run
#
sub set_day_of_week {
   my ($self, %args) = @_;
   $self->{'day_of_week'} = $args{'day_of_week'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Depots::SyncSchedule::Spec
#
#
# The  ``Com::Vmware::Esx::Settings::Depots::SyncSchedule::Spec``   *class*  defines the
#     information regarding the sync schedule.

package Com::Vmware::Esx::Settings::Depots::SyncSchedule::Spec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Depots::SyncSchedule::Spec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{enabled} = $args{'enabled'};
   $self->{schedule} = $args{'schedule'};
   $self->{email_addresses} = $args{'email_addresses'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Depots::SyncSchedule::Spec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.depots.sync_schedule.spec');
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'schedule', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Depots', 'type_name' => 'SyncSchedule::Schedule')));
   $self->set_binding_field('key' => 'email_addresses', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Flag indicating whether automatic sync is enabled or not
#
# boolean#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# Flag indicating whether automatic sync is enabled or not
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}

## @method get_schedule ()
# Gets the value of 'schedule' property.
#
# @retval schedule - The current value of the field.
# The schedule to check for new updates.
#
# Optional#
sub get_schedule {
   my ($self, %args) = @_;
   return $self->{'schedule'}; 	
}

## @method set_schedule ()
# Sets the given value for 'schedule' property.
# 
# @param schedule  - New value for the field.
# The schedule to check for new updates.
#
sub set_schedule {
   my ($self, %args) = @_;
   $self->{'schedule'} = $args{'schedule'}; 
   return;	
}

## @method get_email_addresses ()
# Gets the value of 'email_addresses' property.
#
# @retval email_addresses - The current value of the field.
# Email addresses to which the notification will be sent. If empty, no notification is
#     sent.
#
# List#
sub get_email_addresses {
   my ($self, %args) = @_;
   return $self->{'email_addresses'}; 	
}

## @method set_email_addresses ()
# Sets the given value for 'email_addresses' property.
# 
# @param email_addresses  - New value for the field.
# Email addresses to which the notification will be sent. If empty, no notification is
#     sent.
#
sub set_email_addresses {
   my ($self, %args) = @_;
   $self->{'email_addresses'} = $args{'email_addresses'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Depots::SyncSchedule service
#########################################################################################
