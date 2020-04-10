########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CounterMetadata.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vstats::CounterMetadata
# The  ``Com::Vmware::Vstats::CounterMetadata``   *interface*  provides access to the
#     different historical editions of counters. As computing platforms evolve over time the
#     measurement units for different characteristics of the systems change. As such changes
#     occur, counters will receive different editions reflected in a new metadata record.
#     For example computer memory had changes from kilobytes through megabytes into
#     gigabytes. <b>Warning:</b> This  *interface*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#

package Com::Vmware::Vstats::CounterMetadata;

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
use Com::Vmware::Vstats::CounterMetadataStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vstats.counter_metadata';


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

## @method list ()
# Returns information about all counter metadata records for a specific Counter.
# <b>Warning:</b> This  *method*  is available as Technology Preview. These are early access
# APIs provided to test, automate and provide feedback on the feature. Since this can change
# based on feedback, VMware does not guarantee backwards compatibility and recommends
# against using them in production environments. Some Technology Preview APIs might only be
# applicable to specific environments.
#
# @param cid [REQUIRED] Counter ID.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.Counter).
# . The value must be str.
#
# @param filter [OPTIONAL] Filter specification.
# When  *null*  no filtering will be performed.
# . The value must be Com::Vmware::Vstats::CounterMetadata::FilterSpec or None.
#
# @retval 
# List of counter metadata for the specified counter.
# The return type will be Array of Com::Vmware::Vstats::CounterMetadata::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if Counter could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub list {
   my ($self, %args) = @_;
   my $cid = $args {cid};
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method get_default ()
# This  *method*  returns the &quot;default&quot; CounterMetadata. A Counter has at least
# one related metadata object. Usually, stats providers (for example hosts) are in agreement
# about the default metadata. In this case the returned list has a single metadata object.
# <p>
# 
# Sometimes, when providers are in &quot;disagreement&quot; about the default, then the
# returned list would include all the possible &quot;defaults&quot;. This potential
# ambiguity isn&apos;t a real issue because consumers of the vStats API rarely need to
# specify the &quot;mid&quot; of metadata. Therefore, this API is used primarily for
# informational purposes.</p>
# 
# . <b>Warning:</b> This  *method*  is available as Technology Preview. These are early
# access APIs provided to test, automate and provide feedback on the feature. Since this can
# change based on feedback, VMware does not guarantee backwards compatibility and recommends
# against using them in production environments. Some Technology Preview APIs might only be
# applicable to specific environments.
#
# @param cid [REQUIRED] Counter ID.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.Counter).
# . The value must be str.
#
# @retval 
# List of counter metadata records.
# The return type will be Array of Com::Vmware::Vstats::CounterMetadata::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``cid``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if Counter could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub get_default {
   my ($self, %args) = @_;
   my $cid = $args {cid};

   $self->validate_args (method_name => 'get_default',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get_default',
                         method_args => \%args);
}

## @method get ()
# Returns information about a specific CounterMetadata. <b>Warning:</b> This  *method*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @param cid [REQUIRED] Counter ID.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.Counter).
# . The value must be str.
#
# @param mid [REQUIRED] CounterMetadata ID.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.CounterMetadata).
# . The value must be str.
#
# @retval 
# Information about the desired CounterMetadata.
# The return type will be Com::Vmware::Vstats::CounterMetadata::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if Counter or CounterMetadata could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub get {
   my ($self, %args) = @_;
   my $cid = $args {cid};
   my $mid = $args {mid};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vstats::CounterMetadata service
#########################################################################################

## @class Com::Vmware::Vstats::CounterMetadata::CounterEditionStatus
#
# Counter metadata status. <b>Warning:</b> This  *enumeration*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
#
#
# Constant Com::Vmware::Vstats::CounterMetadata::CounterEditionStatus::DEFAULT #
#The counter edition is current and is the default. <b>Warning:</b> This  *constant*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::CounterEditionStatus::CURRENT #
#The counter edition is current. This implies a support commitment. <b>Warning:</b> This 
# *constant*  is available as Technology Preview. These are early access APIs provided to
# test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::CounterEditionStatus::DEPRECATED #
#The counter edition is deprecated. It will be decommissioned rather soon. <b>Warning:</b>
# This  *constant*  is available as Technology Preview. These are early access APIs provided
# to test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::CounterEditionStatus::EXPERIMENTAL #
#The counter edition is experimental. Consumers shouldn&apos;t rely on it for the long
# haul. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::CounterEditionStatus::REMOVED #
#The counter edition was removed. <b>Warning:</b> This  *constant*  is available as
# Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.

package Com::Vmware::Vstats::CounterMetadata::CounterEditionStatus;

use constant {
    DEFAULT =>  'DEFAULT',
    CURRENT =>  'CURRENT',
    DEPRECATED =>  'DEPRECATED',
    EXPERIMENTAL =>  'EXPERIMENTAL',
    REMOVED =>  'REMOVED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::CounterMetadata::CounterEditionStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vstats.counter_metadata.counter_edition_status',
                           'binding_class' => 'Com::Vmware::Vstats::CounterMetadata::CounterEditionStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vstats::CounterMetadata::SampleType
#
# Type of the sampled data. <b>Warning:</b> This  *enumeration*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
#
#
# Constant Com::Vmware::Vstats::CounterMetadata::SampleType::RAW #
#Raw samples. The value unprocessed as-is sampled. <b>Warning:</b> This  *constant*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::SampleType::ABSOLUTE #
#Absolute value samples. Represents an actual value of the counter. <b>Warning:</b> This 
# *constant*  is available as Technology Preview. These are early access APIs provided to
# test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::SampleType::FRACTION #
#Fraction samples. Implies range from 0.00 to 1.00. <b>Warning:</b> This  *constant*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::SampleType::RATE #
#Rate samples. Represents a value that has been normalized over the time period.
# <b>Warning:</b> This  *constant*  is available as Technology Preview. These are early
# access APIs provided to test, automate and provide feedback on the feature. Since this can
# change based on feedback, VMware does not guarantee backwards compatibility and recommends
# against using them in production environments. Some Technology Preview APIs might only be
# applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::SampleType::DELTA #
#Delta samples. Represents an amount of change for the counter between the current
# time-stamp and the last time-stamp when the counter was sampled. <b>Warning:</b> This 
# *constant*  is available as Technology Preview. These are early access APIs provided to
# test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::SampleType::LOGN #
#Log(n) samples. A natural logarithm of the value. <b>Warning:</b> This  *constant*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.

package Com::Vmware::Vstats::CounterMetadata::SampleType;

use constant {
    RAW =>  'RAW',
    ABSOLUTE =>  'ABSOLUTE',
    FRACTION =>  'FRACTION',
    RATE =>  'RATE',
    DELTA =>  'DELTA',
    LOGN =>  'LOGN',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::CounterMetadata::SampleType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vstats.counter_metadata.sample_type',
                           'binding_class' => 'Com::Vmware::Vstats::CounterMetadata::SampleType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vstats::CounterMetadata::MetricUnits
#
# Unit used by a metric. <b>Warning:</b> This  *enumeration*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
#
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::PERCENT #
#Percent. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::NUMBER #
#Number. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::SECOND #
#Second. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::HERTZ #
#Hertz. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::METER #
#Meter. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::METERSPERSECOND #
#Meters per second. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::METERSPERSECONDSQUARED #
#Meters per second squared. <b>Warning:</b> This  *constant*  is available as Technology
# Preview. These are early access APIs provided to test, automate and provide feedback on
# the feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::BYTE #
#Byte. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::BIT #
#Bit. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are early
# access APIs provided to test, automate and provide feedback on the feature. Since this can
# change based on feedback, VMware does not guarantee backwards compatibility and recommends
# against using them in production environments. Some Technology Preview APIs might only be
# applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::BYTESPERSECOND #
#Bytes per second. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::BITSPERSECOND #
#Bits per second. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::KILOGRAM #
#Kilogram. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::GRAM #
#Gram. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::CELSIUS #
#Celsius. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::KELVIN #
#Kelvin. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::JOULE #
#Joule. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::WATT #
#Watt. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::VOLT #
#Volt. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::AMPERE #
#Ampere. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::VOLTAMPERE #
#Volt Ampere. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::CANDELA #
#Candela. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::MetricUnits::MOLE #
#Mole. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.

package Com::Vmware::Vstats::CounterMetadata::MetricUnits;

use constant {
    PERCENT =>  'PERCENT',
    NUMBER =>  'NUMBER',
    SECOND =>  'SECOND',
    HERTZ =>  'HERTZ',
    METER =>  'METER',
    METERSPERSECOND =>  'METERSPERSECOND',
    METERSPERSECONDSQUARED =>  'METERSPERSECONDSQUARED',
    BYTE =>  'BYTE',
    BIT =>  'BIT',
    BYTESPERSECOND =>  'BYTESPERSECOND',
    BITSPERSECOND =>  'BITSPERSECOND',
    KILOGRAM =>  'KILOGRAM',
    GRAM =>  'GRAM',
    CELSIUS =>  'CELSIUS',
    KELVIN =>  'KELVIN',
    JOULE =>  'JOULE',
    WATT =>  'WATT',
    VOLT =>  'VOLT',
    AMPERE =>  'AMPERE',
    VOLTAMPERE =>  'VOLTAMPERE',
    CANDELA =>  'CANDELA',
    MOLE =>  'MOLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::CounterMetadata::MetricUnits enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vstats.counter_metadata.metric_units',
                           'binding_class' => 'Com::Vmware::Vstats::CounterMetadata::MetricUnits');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vstats::CounterMetadata::UnitsFactor
#
# Unit factor of measurement. <b>Warning:</b> This  *enumeration*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
#
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::YOTTA #
#Yotta 10^24. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::ZETTA #
#Zetta 10^21. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::EXA #
#Exa 10^18. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::PETA #
#Peta 10^15. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::TERA #
#Tera 10^12. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::GIGA #
#Giga 10^9. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::MEGA #
#Mega 10^6. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::KILO #
#Kilo 10^3. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::HECTO #
#Hecto 10^2. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::DECA #
#Deca 10. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::ONE #
#One. <b>Warning:</b> This  *constant*  is available as Technology Preview. These are early
# access APIs provided to test, automate and provide feedback on the feature. Since this can
# change based on feedback, VMware does not guarantee backwards compatibility and recommends
# against using them in production environments. Some Technology Preview APIs might only be
# applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::DECI #
#Deci 10^-1. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::CENTI #
#Centi 10^-2. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::MILLI #
#Milli 10^-3. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::MICRO #
#Micro 10^-6. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::NANO #
#Nano 10^-9. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::PIKO #
#Pico 10^-12. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::FEMTO #
#Femto 10^-15. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::ATTO #
#Atto 10^-18. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::ZEPTO #
#Zepto 10^-21. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::YOCTO #
#Yocto 10^-24. <b>Warning:</b> This  *constant*  is available as Technology Preview. These
# are early access APIs provided to test, automate and provide feedback on the feature.
# Since this can change based on feedback, VMware does not guarantee backwards compatibility
# and recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::YOBI #
#Yobi 2^80, 1024^8. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::ZEBI #
#Zebi 2^70, 1024^7. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::EXBI #
#Exbi 2^60, 1024^6. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::PEBI #
#Pebi 2^50, 1024^5. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::TEBI #
#Tebi 2^40, 1024^4. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::GIBI #
#Gibi 2^30, 1024^3. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::MEBI #
#Mebi 2^20, 1024^2. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# Constant Com::Vmware::Vstats::CounterMetadata::UnitsFactor::KIBI #
#Kibi 2^10, 1024. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::CounterMetadata::UnitsFactor;

use constant {
    YOTTA =>  'YOTTA',
    ZETTA =>  'ZETTA',
    EXA =>  'EXA',
    PETA =>  'PETA',
    TERA =>  'TERA',
    GIGA =>  'GIGA',
    MEGA =>  'MEGA',
    KILO =>  'KILO',
    HECTO =>  'HECTO',
    DECA =>  'DECA',
    ONE =>  'ONE',
    DECI =>  'DECI',
    CENTI =>  'CENTI',
    MILLI =>  'MILLI',
    MICRO =>  'MICRO',
    NANO =>  'NANO',
    PIKO =>  'PIKO',
    FEMTO =>  'FEMTO',
    ATTO =>  'ATTO',
    ZEPTO =>  'ZEPTO',
    YOCTO =>  'YOCTO',
    YOBI =>  'YOBI',
    ZEBI =>  'ZEBI',
    EXBI =>  'EXBI',
    PEBI =>  'PEBI',
    TEBI =>  'TEBI',
    GIBI =>  'GIBI',
    MEBI =>  'MEBI',
    KIBI =>  'KIBI',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::CounterMetadata::UnitsFactor enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vstats.counter_metadata.units_factor',
                           'binding_class' => 'Com::Vmware::Vstats::CounterMetadata::UnitsFactor');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vstats::CounterMetadata service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vstats::CounterMetadata service
#########################################################################################

## @class Com::Vmware::Vstats::CounterMetadata::Info
#
#
# The  ``Com::Vmware::Vstats::CounterMetadata::Info``   *class*  contains information
#     about CounterMetadata. It represents edition of the Counter. <b>Warning:</b> This 
#     *class*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.

package Com::Vmware::Vstats::CounterMetadata::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::CounterMetadata::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cid} = $args{'cid'};
   $self->{mid} = $args{'mid'};
   $self->{status} = $args{'status'};
   $self->{type} = $args{'type'};
   $self->{units} = $args{'units'};
   $self->{scale} = $args{'scale'};
   $self->{user_info} = $args{'user_info'};
   $self->{pid} = $args{'pid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::CounterMetadata::Info');
   $self->set_binding_name('name' => 'com.vmware.vstats.counter_metadata.info');
   $self->set_binding_field('key' => 'cid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'mid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'CounterMetadata::CounterEditionStatus'));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'CounterMetadata::SampleType'));
   $self->set_binding_field('key' => 'units', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'CounterMetadata::MetricUnits'));
   $self->set_binding_field('key' => 'scale', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'CounterMetadata::UnitsFactor')));
   $self->set_binding_field('key' => 'user_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'UserInfo')));
   $self->set_binding_field('key' => 'pid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_cid ()
# Gets the value of 'cid' property.
#
# @retval cid - The current value of the field.
# Counter Id. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# ID#
sub get_cid {
   my ($self, %args) = @_;
   return $self->{'cid'}; 	
}

## @method set_cid ()
# Sets the given value for 'cid' property.
# 
# @param cid  - New value for the field.
# Counter Id. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_cid {
   my ($self, %args) = @_;
   $self->{'cid'} = $args{'cid'}; 
   return;	
}

## @method get_mid ()
# Gets the value of 'mid' property.
#
# @retval mid - The current value of the field.
# Metadata Id. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# ID#
sub get_mid {
   my ($self, %args) = @_;
   return $self->{'mid'}; 	
}

## @method set_mid ()
# Sets the given value for 'mid' property.
# 
# @param mid  - New value for the field.
# Metadata Id. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_mid {
   my ($self, %args) = @_;
   $self->{'mid'} = $args{'mid'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Counter Edition status. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# CounterEditionStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Counter Edition status. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Numeric properties of the sampled data. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# SampleType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Numeric properties of the sampled data. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_units ()
# Gets the value of 'units' property.
#
# @retval units - The current value of the field.
# The units of the measurement. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# MetricUnits#
sub get_units {
   my ($self, %args) = @_;
   return $self->{'units'}; 	
}

## @method set_units ()
# Sets the given value for 'units' property.
# 
# @param units  - New value for the field.
# The units of the measurement. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_units {
   my ($self, %args) = @_;
   $self->{'units'} = $args{'units'}; 
   return;	
}

## @method get_scale ()
# Gets the value of 'scale' property.
#
# @retval scale - The current value of the field.
# Additional multiplier factors to be used with units. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# Optional#
sub get_scale {
   my ($self, %args) = @_;
   return $self->{'scale'}; 	
}

## @method set_scale ()
# Sets the given value for 'scale' property.
# 
# @param scale  - New value for the field.
# Additional multiplier factors to be used with units. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_scale {
   my ($self, %args) = @_;
   $self->{'scale'} = $args{'scale'}; 
   return;	
}

## @method get_user_info ()
# Gets the value of 'user_info' property.
#
# @retval user_info - The current value of the field.
# Human legible localizable text about the counter. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# Optional#
sub get_user_info {
   my ($self, %args) = @_;
   return $self->{'user_info'}; 	
}

## @method set_user_info ()
# Sets the given value for 'user_info' property.
# 
# @param user_info  - New value for the field.
# Human legible localizable text about the counter. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_user_info {
   my ($self, %args) = @_;
   $self->{'user_info'} = $args{'user_info'}; 
   return;	
}

## @method get_pid ()
# Gets the value of 'pid' property.
#
# @retval pid - The current value of the field.
# ID of the respective provider. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_pid {
   my ($self, %args) = @_;
   return $self->{'pid'}; 	
}

## @method set_pid ()
# Sets the given value for 'pid' property.
# 
# @param pid  - New value for the field.
# ID of the respective provider. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_pid {
   my ($self, %args) = @_;
   $self->{'pid'} = $args{'pid'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::CounterMetadata::FilterSpec
#
#
# The  ``Com::Vmware::Vstats::CounterMetadata::FilterSpec``   *class*  is used to filter
#     the counter metadata list. <b>Warning:</b> This  *class*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::CounterMetadata::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::CounterMetadata::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::CounterMetadata::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vstats.counter_metadata.filter_spec');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'CounterMetadata::CounterEditionStatus')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Counter edition status. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Counter edition status. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vstats::CounterMetadata service
#########################################################################################
