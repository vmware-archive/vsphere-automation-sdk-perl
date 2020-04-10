########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Metrics.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vstats::Metrics
# The  ``Com::Vmware::Vstats::Metrics``   *interface*  provides  *method*  to list
#     metrics. A metric is a fundamental concept. It means a measurable aspect or property.
#     For instance, temperature, count, velocity, data size, bandwidth. <b>Warning:</b> This
#     *interface*  is available as Technology Preview. These are early access APIs provided
#     to test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for metrics. <b>Warning:</b> This  *constant*  is available as Technology
# Preview. These are early access APIs provided to test, automate and provide feedback on
# the feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::Metrics;

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
use Com::Vmware::Vstats::MetricsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vstats.metrics';


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
# Returns list of available Metrics as supplied by the discovered providers. <b>Warning:</b>
# This  *method*  is available as Technology Preview. These are early access APIs provided
# to test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# @retval 
# List of Metrics.
# The return type will be Array of Com::Vmware::Vstats::Metrics::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vstats::Metrics service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vstats::Metrics service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vstats::Metrics service
#########################################################################################

## @class Com::Vmware::Vstats::Metrics::Summary
#
#
# The  ``Com::Vmware::Vstats::Metrics::Summary``   *class*  contains metric summary.
#     <b>Warning:</b> This  *class*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.

package Com::Vmware::Vstats::Metrics::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::Metrics::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{metric} = $args{'metric'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::Metrics::Summary');
   $self->set_binding_name('name' => 'com.vmware.vstats.metrics.summary');
   $self->set_binding_field('key' => 'metric', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_metric ()
# Gets the value of 'metric' property.
#
# @retval metric - The current value of the field.
# Metric name. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# ID#
sub get_metric {
   my ($self, %args) = @_;
   return $self->{'metric'}; 	
}

## @method set_metric ()
# Sets the given value for 'metric' property.
# 
# @param metric  - New value for the field.
# Metric name. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_metric {
   my ($self, %args) = @_;
   $self->{'metric'} = $args{'metric'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vstats::Metrics service
#########################################################################################
