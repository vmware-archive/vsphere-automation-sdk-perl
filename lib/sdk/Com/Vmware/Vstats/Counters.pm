########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Counters.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vstats::Counters
# The  ``Com::Vmware::Vstats::Counters``   *interface*  provides  *methods*  to perform
#     various Counter related operations. Counter is derived from metric. It applies the
#     metric to a particular class of a resource. <b>Warning:</b> This  *interface*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for counters. <b>Warning:</b> This  *constant*  is available as Technology
# Preview. These are early access APIs provided to test, automate and provide feedback on
# the feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::Counters;

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
use Com::Vmware::Vstats::CountersStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vstats.counters';


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
# Returns information about all counters matching the filter parameters. <b>Warning:</b>
# This  *method*  is available as Technology Preview. These are early access APIs provided
# to test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# @param filter [OPTIONAL] Filters the returned records.
# When  *null*  no filtering will be applied.
# . The value must be Com::Vmware::Vstats::Counters::FilterSpec or None.
#
# @retval 
# List of Counters.
# The return type will be Array of Com::Vmware::Vstats::Counters::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method get ()
# Returns information about a specific Counter. <b>Warning:</b> This  *method*  is available
# as Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @param cid [REQUIRED] Counter ID.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.Counter).
# . The value must be str.
#
# @retval 
# Information about the requested counter.
# The return type will be Com::Vmware::Vstats::Counters::Info
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
sub get {
   my ($self, %args) = @_;
   my $cid = $args {cid};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vstats::Counters service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vstats::Counters service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vstats::Counters service
#########################################################################################

## @class Com::Vmware::Vstats::Counters::Info
#
#
# The  ``Com::Vmware::Vstats::Counters::Info``   *class*  contains the counter
#     information. Counter is derived from metric. It applies the metric to a particular
#     class of a resource. <b>Warning:</b> This  *class*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::Counters::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::Counters::Info structure
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
   $self->{metric} = $args{'metric'};
   $self->{resource_address_schema} = $args{'resource_address_schema'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::Counters::Info');
   $self->set_binding_name('name' => 'com.vmware.vstats.counters.info');
   $self->set_binding_field('key' => 'cid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'metric', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'resource_address_schema', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
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

## @method get_metric ()
# Gets the value of 'metric' property.
#
# @retval metric - The current value of the field.
# A metric is typically human-legible ASCII/English name of a measurable aspect, for
#     example &quot;length&quot; and &quot;temperature&quot;. It is not internationalizable.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
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
# A metric is typically human-legible ASCII/English name of a measurable aspect, for
#     example &quot;length&quot; and &quot;temperature&quot;. It is not internationalizable.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_metric {
   my ($self, %args) = @_;
   $self->{'metric'} = $args{'metric'}; 
   return;	
}

## @method get_resource_address_schema ()
# Gets the value of 'resource_address_schema' property.
#
# @retval resource_address_schema - The current value of the field.
# Describes formally how to address (or identify) the resources the counter could be
#     bound to (or instantiated for). <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# ID#
sub get_resource_address_schema {
   my ($self, %args) = @_;
   return $self->{'resource_address_schema'}; 	
}

## @method set_resource_address_schema ()
# Sets the given value for 'resource_address_schema' property.
# 
# @param resource_address_schema  - New value for the field.
# Describes formally how to address (or identify) the resources the counter could be
#     bound to (or instantiated for). <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_resource_address_schema {
   my ($self, %args) = @_;
   $self->{'resource_address_schema'} = $args{'resource_address_schema'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::Counters::FilterSpec
#
#
# The  ``Com::Vmware::Vstats::Counters::FilterSpec``   *class*  contains fields that can
#     be used to filter list of counters. <b>Warning:</b> This  *class*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.

package Com::Vmware::Vstats::Counters::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::Counters::FilterSpec structure
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
   $self->{types} = $args{'types'};
   $self->{metric} = $args{'metric'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::Counters::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vstats.counters.filter_spec');
   $self->set_binding_field('key' => 'cid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'types', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'metric', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_cid ()
# Gets the value of 'cid' property.
#
# @retval cid - The current value of the field.
# Counter identifier that will be listed. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_cid {
   my ($self, %args) = @_;
   return $self->{'cid'}; 	
}

## @method set_cid ()
# Sets the given value for 'cid' property.
# 
# @param cid  - New value for the field.
# Counter identifier that will be listed. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_cid {
   my ($self, %args) = @_;
   $self->{'cid'} = $args{'cid'}; 
   return;	
}

## @method get_types ()
# Gets the value of 'types' property.
#
# @retval types - The current value of the field.
# Resource type filter. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# Optional#
sub get_types {
   my ($self, %args) = @_;
   return $self->{'types'}; 	
}

## @method set_types ()
# Sets the given value for 'types' property.
# 
# @param types  - New value for the field.
# Resource type filter. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_types {
   my ($self, %args) = @_;
   $self->{'types'} = $args{'types'}; 
   return;	
}

## @method get_metric ()
# Gets the value of 'metric' property.
#
# @retval metric - The current value of the field.
# Metric for which counters will be listed. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_metric {
   my ($self, %args) = @_;
   return $self->{'metric'}; 	
}

## @method set_metric ()
# Sets the given value for 'metric' property.
# 
# @param metric  - New value for the field.
# Metric for which counters will be listed. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_metric {
   my ($self, %args) = @_;
   $self->{'metric'} = $args{'metric'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vstats::Counters service
#########################################################################################
