## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time
#
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time`` 
#      *class*  defines weekday and time the automatic check for new updates will be run

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hour} = $args{'hour'};
   $self->{minute} = $args{'minute'};
   $self->{day} = $args{'day'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.time');
   $self->set_binding_field('key' => 'hour', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'minute', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'day', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Time::UpdateDay')));
   bless $self, $class;
   return $self;
}

## @method get_hour ()
# Gets the value of 'hour' property.
#
# @retval hour - The current value of the field.
# Time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
#
# Optional#
sub get_hour {
   my ($self, %args) = @_;
   return $self->{'hour'}; 	
}

## @method set_hour ()
# Sets the given value for 'hour' property.
# 
# @param hour  - New value for the field.
# Time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
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
# Time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
#
# Optional#
sub get_minute {
   my ($self, %args) = @_;
   return $self->{'minute'}; 	
}

## @method set_minute ()
# Sets the given value for 'minute' property.
# 
# @param minute  - New value for the field.
# Time to query for updates Format: HH:MM:SS Military (24 hour) Time Format
#
sub set_minute {
   my ($self, %args) = @_;
   $self->{'minute'} = $args{'minute'}; 
   return;	
}

## @method get_day ()
# Gets the value of 'day' property.
#
# @retval day - The current value of the field.
# Day to query for updates
#
# Optional#
sub get_day {
   my ($self, %args) = @_;
   return $self->{'day'}; 	
}

## @method set_day ()
# Sets the given value for 'day' property.
# 
# @param day  - New value for the field.
# Day to query for updates
#
sub set_day {
   my ($self, %args) = @_;
   $self->{'day'} = $args{'day'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay``
#       *enumerated type*  Defines days to query for updates.
#
#
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay::MONDAY #
#Query for updates on Monday.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay::TUESDAY #
#Query for updates on Tuesday.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay::FRIDAY #
#Query for updates on Friday.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay::WEDNESDAY #
#Query for updates on Wednesday.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay::THURSDAY #
#Query for updates on Thursday.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay::SATURDAY #
#Query for updates on Saturday.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay::SUNDAY #
#Query for updates on Sunday.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay::EVERYDAY #
#Query for updates everyday.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay;

use constant {
    MONDAY =>  'MONDAY',
    TUESDAY =>  'TUESDAY',
    FRIDAY =>  'FRIDAY',
    WEDNESDAY =>  'WEDNESDAY',
    THURSDAY =>  'THURSDAY',
    SATURDAY =>  'SATURDAY',
    SUNDAY =>  'SUNDAY',
    EVERYDAY =>  'EVERYDAY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.time.update_day',
                           'binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Time::UpdateDay');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


