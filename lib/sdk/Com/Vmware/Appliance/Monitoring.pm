########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Monitoring.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Monitoring
# ``Com::Vmware::Appliance::Monitoring``   *interface*  provides  *methods*  Get and
#     list monitoring data for requested item.
#

package Com::Vmware::Appliance::Monitoring;

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
use Com::Vmware::Appliance::MonitoringStub;

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

## @method query ()
# Get monitoring data.
#
# @param item [REQUIRED] MonitoredItemDataRequest Structure
# . The value must be Com::Vmware::Appliance::Monitoring::MonitoredItemDataRequest.
#
# @retval 
# list of MonitoredItemData structure
# The return type will be Array of Com::Vmware::Appliance::Monitoring::MonitoredItemData
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub query {
   my ($self, %args) = @_;
   my $item = $args {item};

   $self->validate_args (method_name => 'query',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'query',
                         method_args => \%args);
}


## @method list ()
# Get monitored items list
#
# @retval 
# list of names
# The return type will be Array of Com::Vmware::Appliance::Monitoring::MonitoredItem
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Get monitored item info
#
# @param stat_id [REQUIRED] statistic item id
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.monitoring).
# . The value must be str.
#
# @retval 
# MonitoredItem structure
# The return type will be Com::Vmware::Appliance::Monitoring::MonitoredItem
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   my $stat_id = $args {stat_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Monitoring service
#########################################################################################

## @class Com::Vmware::Appliance::Monitoring::FunctionType
#
# ``Com::Vmware::Appliance::Monitoring::FunctionType``   *enumerated type*  Defines
#     aggregation function
#
#
#
# Constant Com::Vmware::Appliance::Monitoring::FunctionType::COUNT #
#Aggregation takes count per period (sum)
#
# Constant Com::Vmware::Appliance::Monitoring::FunctionType::MAX #
#Aggregation takes maximums per period
#
# Constant Com::Vmware::Appliance::Monitoring::FunctionType::AVG #
#Aggregation takes average per period
#
# Constant Com::Vmware::Appliance::Monitoring::FunctionType::MIN #
#Aggregation takes minimums per period

package Com::Vmware::Appliance::Monitoring::FunctionType;

use constant {
    COUNT =>  'COUNT',
    MAX =>  'MAX',
    AVG =>  'AVG',
    MIN =>  'MIN',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Monitoring::FunctionType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.monitoring.function_type',
                           'binding_class' => 'Com::Vmware::Appliance::Monitoring::FunctionType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Monitoring::IntervalType
#
# ``Com::Vmware::Appliance::Monitoring::IntervalType``   *enumerated type*  Defines
#     interval between the values in hours and mins, for which aggregation will apply
#
#
#
# Constant Com::Vmware::Appliance::Monitoring::IntervalType::MINUTE_S30 #
#Thirty minutes interval between values. One week is 336 values.
#
# Constant Com::Vmware::Appliance::Monitoring::IntervalType::HOUR_S2 #
#Two hours interval between values. One month has 360 values.
#
# Constant Com::Vmware::Appliance::Monitoring::IntervalType::MINUTE_S5 #
#Five minutes interval between values (finest). One day would have 288 values, one week is
# 2016.
#
# Constant Com::Vmware::Appliance::Monitoring::IntervalType::DA_Y1 #
#24 hours interval between values. One year has 365 values.
#
# Constant Com::Vmware::Appliance::Monitoring::IntervalType::HOUR_S6 #
#Six hour interval between values. One quarter is 360 values.

package Com::Vmware::Appliance::Monitoring::IntervalType;

use constant {
    MINUTES30 =>  'MINUTES30',
    HOURS2 =>  'HOURS2',
    MINUTES5 =>  'MINUTES5',
    DAY1 =>  'DAY1',
    HOURS6 =>  'HOURS6',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Monitoring::IntervalType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.monitoring.interval_type',
                           'binding_class' => 'Com::Vmware::Appliance::Monitoring::IntervalType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Monitoring service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Monitoring service
#########################################################################################

## @class Com::Vmware::Appliance::Monitoring::MonitoredItemData
#
#
# ``Com::Vmware::Appliance::Monitoring::MonitoredItemData``   *class*  Structure
#     representing monitored item data.

package Com::Vmware::Appliance::Monitoring::MonitoredItemData;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Monitoring::MonitoredItemData structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{interval} = $args{'interval'};
   $self->{function} = $args{'function'};
   $self->{start_time} = $args{'start_time'};
   $self->{end_time} = $args{'end_time'};
   $self->{data} = $args{'data'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Monitoring::MonitoredItemData');
   $self->set_binding_name('name' => 'com.vmware.appliance.monitoring.monitored_item_data');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'interval', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Monitoring::IntervalType'));
   $self->set_binding_field('key' => 'function', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Monitoring::FunctionType'));
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'end_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'data', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Monitored item IDs Ex: CPU, MEMORY, STORAGE_TOTAL
#
# ID#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Monitored item IDs Ex: CPU, MEMORY, STORAGE_TOTAL
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_interval ()
# Gets the value of 'interval' property.
#
# @retval interval - The current value of the field.
# interval between values in hours, minutes
#
# IntervalType#
sub get_interval {
   my ($self, %args) = @_;
   return $self->{'interval'}; 	
}

## @method set_interval ()
# Sets the given value for 'interval' property.
# 
# @param interval  - New value for the field.
# interval between values in hours, minutes
#
sub set_interval {
   my ($self, %args) = @_;
   $self->{'interval'} = $args{'interval'}; 
   return;	
}

## @method get_function ()
# Gets the value of 'function' property.
#
# @retval function - The current value of the field.
# aggregation function
#
# FunctionType#
sub get_function {
   my ($self, %args) = @_;
   return $self->{'function'}; 	
}

## @method set_function ()
# Sets the given value for 'function' property.
# 
# @param function  - New value for the field.
# aggregation function
#
sub set_function {
   my ($self, %args) = @_;
   $self->{'function'} = $args{'function'}; 
   return;	
}

## @method get_start_time ()
# Gets the value of 'start_time' property.
#
# @retval start_time - The current value of the field.
# Starting time
#
# DateTime#
sub get_start_time {
   my ($self, %args) = @_;
   return $self->{'start_time'}; 	
}

## @method set_start_time ()
# Sets the given value for 'start_time' property.
# 
# @param start_time  - New value for the field.
# Starting time
#
sub set_start_time {
   my ($self, %args) = @_;
   $self->{'start_time'} = $args{'start_time'}; 
   return;	
}

## @method get_end_time ()
# Gets the value of 'end_time' property.
#
# @retval end_time - The current value of the field.
# Ending time
#
# DateTime#
sub get_end_time {
   my ($self, %args) = @_;
   return $self->{'end_time'}; 	
}

## @method set_end_time ()
# Sets the given value for 'end_time' property.
# 
# @param end_time  - New value for the field.
# Ending time
#
sub set_end_time {
   my ($self, %args) = @_;
   $self->{'end_time'} = $args{'end_time'}; 
   return;	
}

## @method get_data ()
# Gets the value of 'data' property.
#
# @retval data - The current value of the field.
# list of values
#
# List#
sub get_data {
   my ($self, %args) = @_;
   return $self->{'data'}; 	
}

## @method set_data ()
# Sets the given value for 'data' property.
# 
# @param data  - New value for the field.
# list of values
#
sub set_data {
   my ($self, %args) = @_;
   $self->{'data'} = $args{'data'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Monitoring::MonitoredItemDataRequest
#
#
# ``Com::Vmware::Appliance::Monitoring::MonitoredItemDataRequest``   *class*  Structure
#     representing requested monitored item data.

package Com::Vmware::Appliance::Monitoring::MonitoredItemDataRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Monitoring::MonitoredItemDataRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{names} = $args{'names'};
   $self->{interval} = $args{'interval'};
   $self->{function} = $args{'function'};
   $self->{start_time} = $args{'start_time'};
   $self->{end_time} = $args{'end_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Monitoring::MonitoredItemDataRequest');
   $self->set_binding_name('name' => 'com.vmware.appliance.monitoring.monitored_item_data_request');
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'interval', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Monitoring::IntervalType'));
   $self->set_binding_field('key' => 'function', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Monitoring::FunctionType'));
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'end_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   bless $self, $class;
   return $self;
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# monitored item IDs Ex: CPU, MEMORY
#
# List#
sub get_names {
   my ($self, %args) = @_;
   return $self->{'names'}; 	
}

## @method set_names ()
# Sets the given value for 'names' property.
# 
# @param names  - New value for the field.
# monitored item IDs Ex: CPU, MEMORY
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_interval ()
# Gets the value of 'interval' property.
#
# @retval interval - The current value of the field.
# interval between values in hours, minutes
#
# IntervalType#
sub get_interval {
   my ($self, %args) = @_;
   return $self->{'interval'}; 	
}

## @method set_interval ()
# Sets the given value for 'interval' property.
# 
# @param interval  - New value for the field.
# interval between values in hours, minutes
#
sub set_interval {
   my ($self, %args) = @_;
   $self->{'interval'} = $args{'interval'}; 
   return;	
}

## @method get_function ()
# Gets the value of 'function' property.
#
# @retval function - The current value of the field.
# aggregation function
#
# FunctionType#
sub get_function {
   my ($self, %args) = @_;
   return $self->{'function'}; 	
}

## @method set_function ()
# Sets the given value for 'function' property.
# 
# @param function  - New value for the field.
# aggregation function
#
sub set_function {
   my ($self, %args) = @_;
   $self->{'function'} = $args{'function'}; 
   return;	
}

## @method get_start_time ()
# Gets the value of 'start_time' property.
#
# @retval start_time - The current value of the field.
# Starting time
#
# DateTime#
sub get_start_time {
   my ($self, %args) = @_;
   return $self->{'start_time'}; 	
}

## @method set_start_time ()
# Sets the given value for 'start_time' property.
# 
# @param start_time  - New value for the field.
# Starting time
#
sub set_start_time {
   my ($self, %args) = @_;
   $self->{'start_time'} = $args{'start_time'}; 
   return;	
}

## @method get_end_time ()
# Gets the value of 'end_time' property.
#
# @retval end_time - The current value of the field.
# Ending time
#
# DateTime#
sub get_end_time {
   my ($self, %args) = @_;
   return $self->{'end_time'}; 	
}

## @method set_end_time ()
# Sets the given value for 'end_time' property.
# 
# @param end_time  - New value for the field.
# Ending time
#
sub set_end_time {
   my ($self, %args) = @_;
   $self->{'end_time'} = $args{'end_time'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Monitoring::MonitoredItem
#
#
# ``Com::Vmware::Appliance::Monitoring::MonitoredItem``   *class*  Structure
#     representing requested monitored item data.

package Com::Vmware::Appliance::Monitoring::MonitoredItem;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Monitoring::MonitoredItem structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{name} = $args{'name'};
   $self->{units} = $args{'units'};
   $self->{category} = $args{'category'};
   $self->{instance} = $args{'instance'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Monitoring::MonitoredItem');
   $self->set_binding_name('name' => 'com.vmware.appliance.monitoring.monitored_item');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'units', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'category', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'instance', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# monitored item ID Ex: CPU, MEMORY
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# monitored item ID Ex: CPU, MEMORY
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# monitored item name Ex: &quot;Network write speed&quot;
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# monitored item name Ex: &quot;Network write speed&quot;
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_units ()
# Gets the value of 'units' property.
#
# @retval units - The current value of the field.
# Y-axis label EX: &quot;Mbps&quot;, &quot;%&quot;
#
# String#
sub get_units {
   my ($self, %args) = @_;
   return $self->{'units'}; 	
}

## @method set_units ()
# Sets the given value for 'units' property.
# 
# @param units  - New value for the field.
# Y-axis label EX: &quot;Mbps&quot;, &quot;%&quot;
#
sub set_units {
   my ($self, %args) = @_;
   $self->{'units'} = $args{'units'}; 
   return;	
}

## @method get_category ()
# Gets the value of 'category' property.
#
# @retval category - The current value of the field.
# category Ex: network, storage etc
#
# String#
sub get_category {
   my ($self, %args) = @_;
   return $self->{'category'}; 	
}

## @method set_category ()
# Sets the given value for 'category' property.
# 
# @param category  - New value for the field.
# category Ex: network, storage etc
#
sub set_category {
   my ($self, %args) = @_;
   $self->{'category'} = $args{'category'}; 
   return;	
}

## @method get_instance ()
# Gets the value of 'instance' property.
#
# @retval instance - The current value of the field.
# instance name Ex: eth0
#
# String#
sub get_instance {
   my ($self, %args) = @_;
   return $self->{'instance'}; 	
}

## @method set_instance ()
# Sets the given value for 'instance' property.
# 
# @param instance  - New value for the field.
# instance name Ex: eth0
#
sub set_instance {
   my ($self, %args) = @_;
   $self->{'instance'} = $args{'instance'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# monitored item description Ex: com.vmware.applmgmt.mon.descr.net.rx.packetRate.eth0
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# monitored item description Ex: com.vmware.applmgmt.mon.descr.net.rx.packetRate.eth0
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Monitoring service
#########################################################################################
