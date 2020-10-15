########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ServicesAppliedConfig.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig``
#     *interface*  provides information about the aggregate health of the applied Trust
#     Authority Component configurations on the Trusted Clusters. The desired state of the
#     Trust Authority Component configurations is stored within vCenter, while the applied
#     configuration is stored on the hosts in the cluster and is a copy of the desired
#     state. The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig``
#     *interface*  is available for all clusters, not only Trusted Clusters. When an applied
#     Trust Authority Component configuration is found outside of a Trusted Cluster it is
#     considered an 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health.ERROR`
#     . The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig``
#     *interface*  is able to make the applied Trust Authority Component configuration
#     consistent with the desired state when individual host configurations have diverged
#     from the desired state. This  *interface*  was added in vSphere API 7.0.1.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfigStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.services_applied_config';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'get_task'} = 'get$task';
$_VAPI_OPERATION_IDS->{'update_task'} = 'update$task';
$_VAPI_OPERATION_IDS->{'delete_task'} = 'delete$task';

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

## @method get_task ()
# Returns detailed information about the health of the applied Trust Authority Component
# configurations in the given cluster. This  *method*  was added in vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] The ID of the cluster against which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Detailed information about the health of the applied Trust Authority Component
#     configurations in the given cluster.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the cluster ID is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no cluster corresponding to the given ID is found within this vCenter.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if there are ongoing mutating operations.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub get_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'get$task',
                         method_args => \%args);
}


## @method update_task ()
# Update all applied Trust Authority Component configuration on the given cluster to be
# consistent with the desired state. This method has no affect on the desired state, apart
# from it being used as a reference point for the remediation. If the cluster is not a
# Trusted Cluster, the method will remove all Trust Authority Component configuration from
# the Trusted Hosts in the cluster, if such hosts are found. This  *method*  was added in
# vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] The ID of the cluster against which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the cluster ID is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no cluster corresponding to the given ID is found within this vCenter.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if there are ongoing mutating operations.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub update_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'update$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'update$task',
                         method_args => \%args);
}


## @method delete_task ()
# Delete all Trust Authority Components configuration that has been applied to the given
# cluster. This method has no affect on the desired state, it only removes applied Trust
# Authority Component configurations from any Trusted Hosts within the given cluster. This 
# *method*  was added in vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] The ID of the cluster against which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the cluster ID is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no cluster corresponding to the given ID is found within this vCenter.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if there are ongoing mutating operations.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub delete_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'delete$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'delete$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health``
#     *enumerated type*  is an indicator for the consistency of all applied Trust Authority
#     Component configurations in a cluster with respect to the desired state. This 
#     *enumeration*  was added in vSphere API 7.0.1.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health::NONE #
#The consistency of some applied configurations is unknown. This  *constant*  was added in
# vSphere API 7.0.1.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health::OK #
#All the applied Trust Authority Component configurations are consistent with the desired
# state. This  *constant*  was added in vSphere API 7.0.1.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health::ERROR #
#Some applied Trust Authority Component configurations have diverged from the desired
# state. This  *constant*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health;

use constant {
    NONE =>  'NONE',
    OK =>  'OK',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.services_applied_config.health',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Info``
#     *class*  contains detailed information about the health of the applied Trust Authority
#     Component configurations in a cluster. This  *class*  was added in vSphere API
#     7.0.1.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{health} = $args{'health'};
   $self->{details} = $args{'details'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.services_applied_config.info');
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters', 'type_name' => 'ServicesAppliedConfig::Health'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# The health value which indicates whether the configuration applied to the cluster
#     differs from the desired state. This  *field*  was added in vSphere API 7.0.1.0.
#
# Health#
sub get_health {
   my ($self, %args) = @_;
   return $self->{'health'}; 	
}

## @method set_health ()
# Sets the given value for 'health' property.
# 
# @param health  - New value for the field.
# The health value which indicates whether the configuration applied to the cluster
#     differs from the desired state. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}

## @method get_details ()
# Gets the value of 'details' property.
#
# @retval details - The current value of the field.
# Details regarding the health. When the 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health.OK`
#     , this member will provide a detailed description of the issues present. This  *field*
#      was added in vSphere API 7.0.1.0.
#
# List#
sub get_details {
   my ($self, %args) = @_;
   return $self->{'details'}; 	
}

## @method set_details ()
# Sets the given value for 'details' property.
# 
# @param details  - New value for the field.
# Details regarding the health. When the 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig::Health.OK`
#     , this member will provide a detailed description of the issues present. This  *field*
#      was added in vSphere API 7.0.1.0.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::ServicesAppliedConfig service
#########################################################################################
