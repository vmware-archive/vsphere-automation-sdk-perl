## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo
#
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo``
#       *class*  contains the recurrence information associated with a schedule.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{minute} = $args{'minute'};
   $self->{hour} = $args{'hour'};
   $self->{days} = $args{'days'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.recurrence_info');
   $self->set_binding_field('key' => 'minute', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'hour', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'days', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'RecurrenceInfo::DayOfWeek'))));
   bless $self, $class;
   return $self;
}

## @method get_minute ()
# Gets the value of 'minute' property.
#
# @retval minute - The current value of the field.
# Minute when backup should run.
#
# Long#
sub get_minute {
   my ($self, %args) = @_;
   return $self->{'minute'}; 	
}

## @method set_minute ()
# Sets the given value for 'minute' property.
# 
# @param minute  - New value for the field.
# Minute when backup should run.
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
# Hour when backup should run. The hour should be specified in 24-hour clock format.
#
# Long#
sub get_hour {
   my ($self, %args) = @_;
   return $self->{'hour'}; 	
}

## @method set_hour ()
# Sets the given value for 'hour' property.
# 
# @param hour  - New value for the field.
# Hour when backup should run. The hour should be specified in 24-hour clock format.
#
sub set_hour {
   my ($self, %args) = @_;
   $self->{'hour'} = $args{'hour'}; 
   return;	
}

## @method get_days ()
# Gets the value of 'days' property.
#
# @retval days - The current value of the field.
# Day of week when the backup should be run. Days can be specified as list of days.
#
# Optional#
sub get_days {
   my ($self, %args) = @_;
   return $self->{'days'}; 	
}

## @method set_days ()
# Sets the given value for 'days' property.
# 
# @param days  - New value for the field.
# Day of week when the backup should be run. Days can be specified as list of days.
#
sub set_days {
   my ($self, %args) = @_;
   $self->{'days'} = $args{'days'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek``
#     *enumerated type*  defines the set of days when backup can be scheduled. The days can
#     be specified as a list of individual days. You specify the days when you set the
#     recurrence for a schedule. See 
#     :attr:`Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo.days`
#     .
#
#
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek::MONDAY #
#Monday
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek::TUESDAY #
#Tuesday
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek::WEDNESDAY #
#Wednesday
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek::THURSDAY #
#Thursday
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek::FRIDAY #
#Friday
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek::SATURDAY #
#Saturday
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek::SUNDAY #
#Sunday

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek;

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
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.recurrence_info.day_of_week',
                           'binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::RecurrenceInfo::DayOfWeek');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


