########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file TimeSeries.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries
# The  ``Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries``   *interface* 
#     provides  *methods*  to gather statistical values for clusters, namespaces and pods.
#

package Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries;

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
use Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeriesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.stats.time_series';


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
# Gather statistical values for a cluster, namespace, or pod.
#
# @param spec [REQUIRED] Specification of the statistical values that should be returned.
# . The value must be Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec.
#
# @retval 
# A list of TimeSeries values for each counter specified in the request.
# The return type will be Array of
# Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::TimeSeries
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the start time in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec.start`  is
#     invalid, or the end time in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec.end`  is
#     invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the specified cluster in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec.cluster` 
#     or the namespace in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec.namespace` 
#     or  :attr:`Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec.pod` 
#     does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the specified cluster in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec.cluster` 
#     is not enabled for Namespaces.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub get {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::TimeSeries
#
#
# A set of timestamps and statistical values representing a time series. The lengths of 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::TimeSeries.time_stamps`
#     and 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::TimeSeries.values`
#      will always match each other.

package Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::TimeSeries;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::TimeSeries structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{counter} = $args{'counter'};
   $self->{time_stamps} = $args{'time_stamps'};
   $self->{values} = $args{'values'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::TimeSeries');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.stats.time_series.time_series');
   $self->set_binding_field('key' => 'counter', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'time_stamps', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'values', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_counter ()
# Gets the value of 'counter' property.
#
# @retval counter - The current value of the field.
# Counter identifier.
#
# String#
sub get_counter {
   my ($self, %args) = @_;
   return $self->{'counter'}; 	
}

## @method set_counter ()
# Sets the given value for 'counter' property.
# 
# @param counter  - New value for the field.
# Counter identifier.
#
sub set_counter {
   my ($self, %args) = @_;
   $self->{'counter'} = $args{'counter'}; 
   return;	
}

## @method get_time_stamps ()
# Gets the value of 'time_stamps' property.
#
# @retval time_stamps - The current value of the field.
# Sequence of UNIX timestamp values at which statistical values were sampled.
#     https://en.wikipedia.org/wiki/Unix_time
#
# list#
sub get_time_stamps {
   my ($self, %args) = @_;
   return $self->{'time_stamps'}; 	
}

## @method set_time_stamps ()
# Sets the given value for 'time_stamps' property.
# 
# @param time_stamps  - New value for the field.
# Sequence of UNIX timestamp values at which statistical values were sampled.
#     https://en.wikipedia.org/wiki/Unix_time
#
sub set_time_stamps {
   my ($self, %args) = @_;
   $self->{'time_stamps'} = $args{'time_stamps'}; 
   return;	
}

## @method get_values ()
# Gets the value of 'values' property.
#
# @retval values - The current value of the field.
# Sequence of sampled values corresponding to the timestamps in tss.
#
# list#
sub get_values {
   my ($self, %args) = @_;
   return $self->{'values'}; 	
}

## @method set_values ()
# Sets the given value for 'values' property.
# 
# @param values  - New value for the field.
# Sequence of sampled values corresponding to the timestamps in tss.
#
sub set_values {
   my ($self, %args) = @_;
   $self->{'values'} = $args{'values'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::PodIdentifier
#
#
# Pod identifier. These are the fields required to uniquely identify a pod.

package Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::PodIdentifier;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::PodIdentifier structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{namespace} = $args{'namespace'};
   $self->{pod_name} = $args{'pod_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::PodIdentifier');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.stats.time_series.pod_identifier');
   $self->set_binding_field('key' => 'namespace', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'pod_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_namespace ()
# Gets the value of 'namespace' property.
#
# @retval namespace - The current value of the field.
# The namespace that the pod is running in.
#
# ID#
sub get_namespace {
   my ($self, %args) = @_;
   return $self->{'namespace'}; 	
}

## @method set_namespace ()
# Sets the given value for 'namespace' property.
# 
# @param namespace  - New value for the field.
# The namespace that the pod is running in.
#
sub set_namespace {
   my ($self, %args) = @_;
   $self->{'namespace'} = $args{'namespace'}; 
   return;	
}

## @method get_pod_name ()
# Gets the value of 'pod_name' property.
#
# @retval pod_name - The current value of the field.
# The name of the pod itself.
#
# String#
sub get_pod_name {
   my ($self, %args) = @_;
   return $self->{'pod_name'}; 	
}

## @method set_pod_name ()
# Sets the given value for 'pod_name' property.
# 
# @param pod_name  - New value for the field.
# The name of the pod itself.
#
sub set_pod_name {
   my ($self, %args) = @_;
   $self->{'pod_name'} = $args{'pod_name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec
#
#
# This structure is sent in a request for TimeSeries data and is used to specify what
#     object stats should be returned for.

package Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec structure
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
         'discriminant_name' => 'obj_type',
         'case_map' => {
               'POD' => ['pod'],
               'NAMESPACE' => ['namespace'],
               'CLUSTER' => ['cluster'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{obj_type} = $args{'obj_type'};
   $self->{pod} = $args{'pod'};
   $self->{namespace} = $args{'namespace'};
   $self->{cluster} = $args{'cluster'};
   $self->{start} = $args{'start'};
   $self->{end} = $args{'end'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.stats.time_series.spec');
   $self->set_binding_field('key' => 'obj_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Stats', 'type_name' => 'TimeSeries::Spec::ObjType'));
   $self->set_binding_field('key' => 'pod', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Stats', 'type_name' => 'TimeSeries::PodIdentifier')));
   $self->set_binding_field('key' => 'namespace', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'start', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'end', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_obj_type ()
# Gets the value of 'obj_type' property.
#
# @retval obj_type - The current value of the field.
# Type of statistics object that the request is operating on.
#
# ObjType#
sub get_obj_type {
   my ($self, %args) = @_;
   return $self->{'obj_type'}; 	
}

## @method set_obj_type ()
# Sets the given value for 'obj_type' property.
# 
# @param obj_type  - New value for the field.
# Type of statistics object that the request is operating on.
#
sub set_obj_type {
   my ($self, %args) = @_;
   $self->{'obj_type'} = $args{'obj_type'}; 
   return;	
}

## @method get_pod ()
# Gets the value of 'pod' property.
#
# @retval pod - The current value of the field.
# Pod Identifier for queries on an individual pod.
#
# optional#
sub get_pod {
   my ($self, %args) = @_;
   return $self->{'pod'}; 	
}

## @method set_pod ()
# Sets the given value for 'pod' property.
# 
# @param pod  - New value for the field.
# Pod Identifier for queries on an individual pod.
#
sub set_pod {
   my ($self, %args) = @_;
   $self->{'pod'} = $args{'pod'}; 
   return;	
}

## @method get_namespace ()
# Gets the value of 'namespace' property.
#
# @retval namespace - The current value of the field.
# Namespace name for queries for a namespace.
#
# optional#
sub get_namespace {
   my ($self, %args) = @_;
   return $self->{'namespace'}; 	
}

## @method set_namespace ()
# Sets the given value for 'namespace' property.
# 
# @param namespace  - New value for the field.
# Namespace name for queries for a namespace.
#
sub set_namespace {
   my ($self, %args) = @_;
   $self->{'namespace'} = $args{'namespace'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Cluster identifier for queries for a cluster.
#
# optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Cluster identifier for queries for a cluster.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_start ()
# Gets the value of 'start' property.
#
# @retval start - The current value of the field.
# UNIX timestamp value indicating when the requested series of statistical samples
#     should begin. https://en.wikipedia.org/wiki/Unix_time
#
# long#
sub get_start {
   my ($self, %args) = @_;
   return $self->{'start'}; 	
}

## @method set_start ()
# Sets the given value for 'start' property.
# 
# @param start  - New value for the field.
# UNIX timestamp value indicating when the requested series of statistical samples
#     should begin. https://en.wikipedia.org/wiki/Unix_time
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
# UNIX timestamp value indicating when the requested series of statistical samples
#     should end. https://en.wikipedia.org/wiki/Unix_time
#
# long#
sub get_end {
   my ($self, %args) = @_;
   return $self->{'end'}; 	
}

## @method set_end ()
# Sets the given value for 'end' property.
# 
# @param end  - New value for the field.
# UNIX timestamp value indicating when the requested series of statistical samples
#     should end. https://en.wikipedia.org/wiki/Unix_time
#
sub set_end {
   my ($self, %args) = @_;
   $self->{'end'} = $args{'end'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec::ObjType
#
# Type of statistics object that this request is operating on.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec::ObjType::CLUSTER #
#The CLUSTER object type is used when specifying a vSphere cluster.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec::ObjType::NAMESPACE #
#The NAMESPACE object type is used to specify a namespace.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec::ObjType::POD #
#The POD object type is used to specify an individual pod within a namespace.

package Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec::ObjType;

use constant {
    CLUSTER =>  'CLUSTER',
    NAMESPACE =>  'NAMESPACE',
    POD =>  'POD',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec::ObjType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.stats.time_series.spec.obj_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries::Spec::ObjType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::Stats::TimeSeries service
#########################################################################################
