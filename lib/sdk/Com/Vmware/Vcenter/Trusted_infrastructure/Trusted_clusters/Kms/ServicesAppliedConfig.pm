########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ServicesAppliedConfig.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Trusted_infrastructure;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig``
#     *interface*  provides information about the aggregate health of the applied Key
#     Provider Service configuration on the Trusted Clusters. The desired state of the Key
#     Provider Service is stored within vCenter, while the applied configuration is stored
#     on the hosts in the cluster. The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig``
#     *interface*  is available for all clusters, not only Trusted Clusters. In such cases
#     empty desired state is assumed, e.g. when an applied Key Provider Service
#     configuration is found outside of a Trusted Cluster it is considered an 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health.ERROR`
#     . The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig``
#     *interface*  is able to put the applied Key Provider Service configuration into a
#     consistent state when individual host configurations have diverged from the desired
#     state. This  *interface*  was added in vSphere API 7.0.1.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfigStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.kms.services_applied_config';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'list_task'} = 'list$task';
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

## @method list_task ()
# Returns basic information about the health of all Key Provider Service configurations
# applied to the cluster with respect to the desired state. This  *method*  was added in
# vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] The ID of the cluster against which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [OPTIONAL] The specification for the subset of results desired to be returned.
# If {@term.unset} all results are returned.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::FilterSpec
# or None.
#
# @retval 
# The health status for each applied configuration in the given cluster.
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
sub list_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'list$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'list$task',
                         method_args => \%args);
}


## @method get_task ()
# Returns detailed information about the health of the specified Key Provider Service
# configuration applied to the cluster with respect to the desired state. This  *method* 
# was added in vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] The ID of the cluster against which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param address [REQUIRED] The network address of the Key Provider service instance.
# . The value must be Com::Vmware::Vcenter::Trusted_infrastructure::NetworkAddress.
#
# @retval 
# Detailed information about the health of the specified Key Provider Service
#     configuration applied to the cluster with respect to the desired state.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the cluster ID is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no cluster corresponding to the given ID is found within this vCenter or if no
#     service corresponding to the given address is found.
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
   my $address = $args {address};

   $self->validate_args (method_name => 'get$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'get$task',
                         method_args => \%args);
}


## @method update_task ()
# Update the applied Key Provider Service configuration on the given Trusted Cluster to be
# consistent with the desired state. This method has no affect on the desired state, apart
# from it being used as a reference point for the remediation. This  *method*  was added in
# vSphere API 7.0.1.0.
#
# @param cluster [REQUIRED] The ID of the Trusted Cluster against which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the cluster ID is empty
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
# Delete the Key Provider Service configuration that has been applied to the given cluster.
# This method has no affect on the desired state, it only removes applied Key Provider
# Service configuration from any Trusted Hosts within the given cluster. This  *method*  was
# added in vSphere API 7.0.1.0.
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
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health``
#     *enumerated type*  is an indicator for the consistency of the applied Key Provider
#     Service configuration in a cluster with respect to the desired state. This 
#     *enumeration*  was added in vSphere API 7.0.1.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health::NONE #
#The consistency of the applied configuration is unknown. This  *constant*  was added in
# vSphere API 7.0.1.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health::OK #
#The applied Key Provider Service configuration is consistent with the desired state. This 
# *constant*  was added in vSphere API 7.0.1.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health::ERROR #
#The applied Key Provider Service configuration has diverged from the desired state. This 
# *constant*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health;

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
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.kms.services_applied_config.health',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Summary``
#     *class*  contains basic information about the aggregated health status for a service.
#     This  *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Summary structure
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
   $self->{address} = $args{'address'};
   $self->{service} = $args{'service'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.kms.services_applied_config.summary');
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms', 'type_name' => 'ServicesAppliedConfig::Health'));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress'));
   $self->set_binding_field('key' => 'service', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# The health value indicates whether the configuration applied to the cluster differs
#     from the desired state. This  *field*  was added in vSphere API 7.0.1.0.
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
# The health value indicates whether the configuration applied to the cluster differs
#     from the desired state. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The network address of the Key Provider Service configured for use in the Trusted
#     Cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
# NetworkAddress#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The network address of the Key Provider Service configured for use in the Trusted
#     Cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_service ()
# Gets the value of 'service' property.
#
# @retval service - The current value of the field.
# The unique identifier of a Key Provider Service configuration from the desired state.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
# Optional#
sub get_service {
   my ($self, %args) = @_;
   return $self->{'service'}; 	
}

## @method set_service ()
# Sets the given value for 'service' property.
# 
# @param service  - New value for the field.
# The unique identifier of a Key Provider Service configuration from the desired state.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_service {
   my ($self, %args) = @_;
   $self->{'service'} = $args{'service'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::FilterSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::FilterSpec``
#     *class*  specifies the matching criteria to be applied when filtering out 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Summary``
#     structures from the collection returned by the list method. Only 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Summary``
#     structures containing the values specified in this structure will be returned from the
#     list method. If multiple members of the filter spec are set, all of them must match
#     for a result to be filtered out and returned. This  *class*  was added in vSphere API
#     7.0.1.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::FilterSpec structure
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
   $self->{address} = $args{'address'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.kms.services_applied_config.filter_spec');
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms', 'type_name' => 'ServicesAppliedConfig::Health')))));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress'))));
   bless $self, $class;
   return $self;
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# The health of the applied Key Provider Service configuration. This  *field*  was added
#     in vSphere API 7.0.1.0.
#
# Optional#
sub get_health {
   my ($self, %args) = @_;
   return $self->{'health'}; 	
}

## @method set_health ()
# Sets the given value for 'health' property.
# 
# @param health  - New value for the field.
# The health of the applied Key Provider Service configuration. This  *field*  was added
#     in vSphere API 7.0.1.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The network address of the Key Provider Service configured for use in the Trusted
#     Cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
# Optional#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The network address of the Key Provider Service configured for use in the Trusted
#     Cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Info``
#     *class*  contains detailed information about an applied Key Provider Service
#     configuration in a Trusted cluster. This  *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Info structure
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
   $self->{address} = $args{'address'};
   $self->{service} = $args{'service'};
   $self->{groups} = $args{'groups'};
   $self->{trustedc_as} = $args{'trustedc_as'};
   $self->{details} = $args{'details'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.kms.services_applied_config.info');
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms', 'type_name' => 'ServicesAppliedConfig::Health'));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress'));
   $self->set_binding_field('key' => 'service', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'groups', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'trustedc_as', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'X509CertChain')));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# A health value which indicates whether the configuration applied to the cluster
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
# A health value which indicates whether the configuration applied to the cluster
#     differs from the desired state. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The network address of the Key Provider Service configured for use in the Trusted
#     Cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
# NetworkAddress#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The network address of the Key Provider Service configured for use in the Trusted
#     Cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_service ()
# Gets the value of 'service' property.
#
# @retval service - The current value of the field.
# The unique identifier of a Key Provider Service configuration from the desired state.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
# Optional#
sub get_service {
   my ($self, %args) = @_;
   return $self->{'service'}; 	
}

## @method set_service ()
# Sets the given value for 'service' property.
# 
# @param service  - New value for the field.
# The unique identifier of a Key Provider Service configuration from the desired state.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_service {
   my ($self, %args) = @_;
   $self->{'service'} = $args{'service'}; 
   return;	
}

## @method get_groups ()
# Gets the value of 'groups' property.
#
# @retval groups - The current value of the field.
# The set of distinct groups found on the hosts in the cluster which differ from the
#     desired state. This  *field*  was added in vSphere API 7.0.1.0.
#
# Set#
sub get_groups {
   my ($self, %args) = @_;
   return $self->{'groups'}; 	
}

## @method set_groups ()
# Sets the given value for 'groups' property.
# 
# @param groups  - New value for the field.
# The set of distinct groups found on the hosts in the cluster which differ from the
#     desired state. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_groups {
   my ($self, %args) = @_;
   $self->{'groups'} = $args{'groups'}; 
   return;	
}

## @method get_trustedc_as ()
# Gets the value of 'trustedc_as' property.
#
# @retval trustedc_as - The current value of the field.
# A list of distinct trusted CA chains found on the hosts in the cluster which differ
#     from the desired state. This  *field*  was added in vSphere API 7.0.1.0.
#
# List#
sub get_trustedc_as {
   my ($self, %args) = @_;
   return $self->{'trustedc_as'}; 	
}

## @method set_trustedc_as ()
# Sets the given value for 'trustedc_as' property.
# 
# @param trustedc_as  - New value for the field.
# A list of distinct trusted CA chains found on the hosts in the cluster which differ
#     from the desired state. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_trustedc_as {
   my ($self, %args) = @_;
   $self->{'trustedc_as'} = $args{'trustedc_as'}; 
   return;	
}

## @method get_details ()
# Gets the value of 'details' property.
#
# @retval details - The current value of the field.
# Details regarding the health. When the 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health.OK`
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
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig::Health.OK`
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
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Kms::ServicesAppliedConfig service
#########################################################################################
