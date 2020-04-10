########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Data.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vstats::Data
# The  ``Com::Vmware::Vstats::Data``   *interface*  provides  *methods*  to query
#     measurement and statistic data. <b>Warning:</b> This  *interface*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#

package Com::Vmware::Vstats::Data;

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
use Com::Vmware::Vstats::DataStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vstats.data';


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

## @method query_data_points ()
# Returns  class Com::Vmware::Vstats::Data::DataPointsResult  matching the filter
# parameters. <p>
# 
#   ``/vstats/data/dp?types=VM&types=VCPU``  </p>
# 
# <p>
# 
#   ``/vstats/data/dp?rsrcs=type.HOST=host-16&rsrcs=type.VM=vm-31`` </p>
# 
# . <b>Warning:</b> This  *method*  is available as Technology Preview. These are early
# access APIs provided to test, automate and provide feedback on the feature. Since this can
# change based on feedback, VMware does not guarantee backwards compatibility and recommends
# against using them in production environments. Some Technology Preview APIs might only be
# applicable to specific environments.
#
# @param filter [OPTIONAL] Specification to match DataPoints.
# When  *set*  filtering will be applied to the result.
# . The value must be Com::Vmware::Vstats::Data::FilterSpec or None.
#
# @retval 
# Data points matching the filter.
# The return type will be Com::Vmware::Vstats::Data::DataPointsResult
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
sub query_data_points {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'query_data_points',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'query_data_points',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vstats::Data service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vstats::Data service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vstats::Data service
#########################################################################################

## @class Com::Vmware::Vstats::Data::DataPoint
#
#
# The  ``Com::Vmware::Vstats::Data::DataPoint``   *class*  is an instance of a
#     measurement or stat. A data point is comprised of a Counter, CounterMetadata,
#     Resource, timestamp and value. <b>Warning:</b> This  *class*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.

package Com::Vmware::Vstats::Data::DataPoint;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::Data::DataPoint structure
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
   $self->{rid} = $args{'rid'};
   $self->{ts} = $args{'ts'};
   $self->{val} = $args{'val'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::Data::DataPoint');
   $self->set_binding_name('name' => 'com.vmware.vstats.data.data_point');
   $self->set_binding_field('key' => 'cid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'mid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'rid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ts', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'val', 'value' => new Com::Vmware::Vapi::Bindings::Type::DoubleType());
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
# CounterMetadata Id. <b>Warning:</b> This  *field*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
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
# CounterMetadata Id. <b>Warning:</b> This  *field*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_mid {
   my ($self, %args) = @_;
   $self->{'mid'} = $args{'mid'}; 
   return;	
}

## @method get_rid ()
# Gets the value of 'rid' property.
#
# @retval rid - The current value of the field.
# Resource Id. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# String#
sub get_rid {
   my ($self, %args) = @_;
   return $self->{'rid'}; 	
}

## @method set_rid ()
# Sets the given value for 'rid' property.
# 
# @param rid  - New value for the field.
# Resource Id. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_rid {
   my ($self, %args) = @_;
   $self->{'rid'} = $args{'rid'}; 
   return;	
}

## @method get_ts ()
# Gets the value of 'ts' property.
#
# @retval ts - The current value of the field.
# Timestamp for the data point. format: 64-bit integer. <b>Warning:</b> This  *field* 
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# long#
sub get_ts {
   my ($self, %args) = @_;
   return $self->{'ts'}; 	
}

## @method set_ts ()
# Sets the given value for 'ts' property.
# 
# @param ts  - New value for the field.
# Timestamp for the data point. format: 64-bit integer. <b>Warning:</b> This  *field* 
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_ts {
   my ($self, %args) = @_;
   $self->{'ts'} = $args{'ts'}; 
   return;	
}

## @method get_val ()
# Gets the value of 'val' property.
#
# @retval val - The current value of the field.
# Stat value. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# double#
sub get_val {
   my ($self, %args) = @_;
   return $self->{'val'}; 	
}

## @method set_val ()
# Sets the given value for 'val' property.
# 
# @param val  - New value for the field.
# Stat value. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_val {
   my ($self, %args) = @_;
   $self->{'val'} = $args{'val'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::Data::FilterSpec
#
#
# The  ``Com::Vmware::Vstats::Data::FilterSpec``   *class*  contains  *fields*  used to
#     filter the results when listing DataPoint. <b>Warning:</b> This  *class*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.

package Com::Vmware::Vstats::Data::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::Data::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{start} = $args{'start'};
   $self->{end} = $args{'end'};
   $self->{cid} = $args{'cid'};
   $self->{metric} = $args{'metric'};
   $self->{types} = $args{'types'};
   $self->{resources} = $args{'resources'};
   $self->{order} = $args{'order'};
   $self->{page} = $args{'page'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::Data::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vstats.data.filter_spec');
   $self->set_binding_field('key' => 'start', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'end', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'cid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'metric', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'types', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'resources', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'order', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'page', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_start ()
# Gets the value of 'start' property.
#
# @retval start - The current value of the field.
# Start of a time window (included), timestamp in seconds UTC. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# Optional#
sub get_start {
   my ($self, %args) = @_;
   return $self->{'start'}; 	
}

## @method set_start ()
# Sets the given value for 'start' property.
# 
# @param start  - New value for the field.
# Start of a time window (included), timestamp in seconds UTC. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_start {
   my ($self, %args) = @_;
   $self->{'start'} = $args{'start'}; 
   return;	
}

## @method get_end ()
# Gets the value of 'end' property.
#
# @retval end - The current value of the field.
# End of a time window (excluded), timestamp in seconds UTC. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# Optional#
sub get_end {
   my ($self, %args) = @_;
   return $self->{'end'}; 	
}

## @method set_end ()
# Sets the given value for 'end' property.
# 
# @param end  - New value for the field.
# End of a time window (excluded), timestamp in seconds UTC. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_end {
   my ($self, %args) = @_;
   $self->{'end'} = $args{'end'}; 
   return;	
}

## @method get_cid ()
# Gets the value of 'cid' property.
#
# @retval cid - The current value of the field.
# Counter ID. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
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
# Counter ID. <b>Warning:</b> This  *field*  is available as Technology Preview. These
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
# Metric name. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
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

## @method get_types ()
# Gets the value of 'types' property.
#
# @retval types - The current value of the field.
# List of Resource types. <b>Warning:</b> This  *field*  is available as Technology
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
# List of Resource types. <b>Warning:</b> This  *field*  is available as Technology
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

## @method get_resources ()
# Gets the value of 'resources' property.
#
# @retval resources - The current value of the field.
# Resources to include in the query. Each resource is specified through a composite
#     string that follows the following format. <p>
# 
#   ``type.<resource type>[.<scheme>]=<resource id>``  </p>
# 
# <p>
# 
# <b>resource type</b> specifies the type of resource for example  ``VM`` ,  ``VCPU`` 
#     etc. </p>
# 
# <p>
# 
# <b>scheme</b> is an optional element to disambiguate the resource as needed for
#     example to differentiate managed object id from  ``uuid`` . </p>
# 
# <p>
# 
# <b>resource id</b> is the unique resource identifier value for example:  ``vm-41`` 
#     </p>
# 
# <p>
# 
# Example values include:  ``type.VM=vm-41`` ,  ``type.VCPU=1`` , 
#     ``type.VM.moid=vm-41`` </p>
# 
# . <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# Optional#
sub get_resources {
   my ($self, %args) = @_;
   return $self->{'resources'}; 	
}

## @method set_resources ()
# Sets the given value for 'resources' property.
# 
# @param resources  - New value for the field.
# Resources to include in the query. Each resource is specified through a composite
#     string that follows the following format. <p>
# 
#   ``type.<resource type>[.<scheme>]=<resource id>``  </p>
# 
# <p>
# 
# <b>resource type</b> specifies the type of resource for example  ``VM`` ,  ``VCPU`` 
#     etc. </p>
# 
# <p>
# 
# <b>scheme</b> is an optional element to disambiguate the resource as needed for
#     example to differentiate managed object id from  ``uuid`` . </p>
# 
# <p>
# 
# <b>resource id</b> is the unique resource identifier value for example:  ``vm-41`` 
#     </p>
# 
# <p>
# 
# Example values include:  ``type.VM=vm-41`` ,  ``type.VCPU=1`` , 
#     ``type.VM.moid=vm-41`` </p>
# 
# . <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_resources {
   my ($self, %args) = @_;
   $self->{'resources'} = $args{'resources'}; 
   return;	
}

## @method get_order ()
# Gets the value of 'order' property.
#
# @retval order - The current value of the field.
# Directs the server to order the returned data. Passing a value of  ``DEFAULT``  will
#     apply default ordering of the results that makes them easier for consumption.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# Optional#
sub get_order {
   my ($self, %args) = @_;
   return $self->{'order'}; 	
}

## @method set_order ()
# Sets the given value for 'order' property.
# 
# @param order  - New value for the field.
# Directs the server to order the returned data. Passing a value of  ``DEFAULT``  will
#     apply default ordering of the results that makes them easier for consumption.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_order {
   my ($self, %args) = @_;
   $self->{'order'} = $args{'order'}; 
   return;	
}

## @method get_page ()
# Gets the value of 'page' property.
#
# @retval page - The current value of the field.
# Used to retrieve paged data for larger result sets. The value of this token is
#     generated by server and returned as  ``next``   *field*  in the result of 
#     ``queryDataPoints``   *methods* . <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_page {
   my ($self, %args) = @_;
   return $self->{'page'}; 	
}

## @method set_page ()
# Sets the given value for 'page' property.
# 
# @param page  - New value for the field.
# Used to retrieve paged data for larger result sets. The value of this token is
#     generated by server and returned as  ``next``   *field*  in the result of 
#     ``queryDataPoints``   *methods* . <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_page {
   my ($self, %args) = @_;
   $self->{'page'} = $args{'page'}; 
   return;	
}


1;


## @class Com::Vmware::Vstats::Data::DataPointsResult
#
#
# The  ``Com::Vmware::Vstats::Data::DataPointsResult``   *class*  contains  *fields* 
#     used to return DataPoints. <b>Warning:</b> This  *class*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::Data::DataPointsResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::Data::DataPointsResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{data_points} = $args{'data_points'};
   $self->{next} = $args{'next'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::Data::DataPointsResult');
   $self->set_binding_name('name' => 'com.vmware.vstats.data.data_points_result');
   $self->set_binding_field('key' => 'data_points', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'Data::DataPoint')));
   $self->set_binding_field('key' => 'next', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_data_points ()
# Gets the value of 'data_points' property.
#
# @retval data_points - The current value of the field.
# List of DataPoints received. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# List#
sub get_data_points {
   my ($self, %args) = @_;
   return $self->{'data_points'}; 	
}

## @method set_data_points ()
# Sets the given value for 'data_points' property.
# 
# @param data_points  - New value for the field.
# List of DataPoints received. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_data_points {
   my ($self, %args) = @_;
   $self->{'data_points'} = $args{'data_points'}; 
   return;	
}

## @method get_next ()
# Gets the value of 'next' property.
#
# @retval next - The current value of the field.
# The  ``next``   *field*  is a token used to retrieve paged data for larger result
#     sets. This is opaque token generated by the server. It is to be sent in the 
#     :attr:`Com::Vmware::Vstats::Data::FilterSpec.page`   *field*  to issue a subsequent
#     call to the query  *method*  for retrieving results that did not fit the current page.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# Optional#
sub get_next {
   my ($self, %args) = @_;
   return $self->{'next'}; 	
}

## @method set_next ()
# Sets the given value for 'next' property.
# 
# @param next  - New value for the field.
# The  ``next``   *field*  is a token used to retrieve paged data for larger result
#     sets. This is opaque token generated by the server. It is to be sent in the 
#     :attr:`Com::Vmware::Vstats::Data::FilterSpec.page`   *field*  to issue a subsequent
#     call to the query  *method*  for retrieving results that did not fit the current page.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_next {
   my ($self, %args) = @_;
   $self->{'next'} = $args{'next'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vstats::Data service
#########################################################################################
