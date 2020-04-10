########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file EdgeClusterCompatibility.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility
# The  ``Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility``  
#     *interface*  provides  *methods*  to get Namespaces compatibility information of NSX
#     Edge Clusters.
#

package Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility;

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
use Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibilityStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.edge_cluster_compatibility';


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
# Returns Namespaces compatibility information of NSX-T Edge Clusters matching the  class
# Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::FilterSpec .
#
# @param cluster [REQUIRED] Identifier of a vCenter Cluster. Only Edge Clusters that are associated with the
#     particular vCenter Cluster will be considered by the filter.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param distributed_switch [REQUIRED] Identifier of a Distributed Switch. Only Edge Clusters that are associated with the
#     particular Distributed Switch will be considered by the filter.
# The value must be an identifier for the resource type
#     getQualifiedName(vSphereDistributedSwitch).
# . The value must be str.
#
# @param filter [OPTIONAL] Specification of matching Edge Clusters for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::FilterSpec  with
#     all  *fields*   *null*  which means all Edge Clusters match the filter.
# . The value must be
# Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::FilterSpec or None.
#
# @retval 
# List of summaries of Edge Clusters associated with the given vCenter Cluster and
#     Distributed Switch matching the  class
#     Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::FilterSpec .
# The return type will be Array of
# Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::Summary
#
#
#
#
#
#
sub list {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $distributed_switch = $args {distributed_switch};
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::Summary
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::Summary``
#     *class*  contains information about an NSX-T Edge Cluster, including its compatibility
#     with the vCenter Namespaces feature.

package Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{edge_cluster} = $args{'edge_cluster'};
   $self->{display_name} = $args{'display_name'};
   $self->{compatible} = $args{'compatible'};
   $self->{incompatibility_reasons} = $args{'incompatibility_reasons'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.edge_cluster_compatibility.summary');
   $self->set_binding_field('key' => 'edge_cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'compatible', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'incompatibility_reasons', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'))));
   bless $self, $class;
   return $self;
}

## @method get_edge_cluster ()
# Gets the value of 'edge_cluster' property.
#
# @retval edge_cluster - The current value of the field.
# Identifier of the Edge Cluster.
#
# ID#
sub get_edge_cluster {
   my ($self, %args) = @_;
   return $self->{'edge_cluster'}; 	
}

## @method set_edge_cluster ()
# Sets the given value for 'edge_cluster' property.
# 
# @param edge_cluster  - New value for the field.
# Identifier of the Edge Cluster.
#
sub set_edge_cluster {
   my ($self, %args) = @_;
   $self->{'edge_cluster'} = $args{'edge_cluster'}; 
   return;	
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Display name of the Edge Cluster.
#
# String#
sub get_display_name {
   my ($self, %args) = @_;
   return $self->{'display_name'}; 	
}

## @method set_display_name ()
# Sets the given value for 'display_name' property.
# 
# @param display_name  - New value for the field.
# Display name of the Edge Cluster.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_compatible ()
# Gets the value of 'compatible' property.
#
# @retval compatible - The current value of the field.
# Compatibility of this Edge Cluster with Namespaces feature.
#
# boolean#
sub get_compatible {
   my ($self, %args) = @_;
   return $self->{'compatible'}; 	
}

## @method set_compatible ()
# Sets the given value for 'compatible' property.
# 
# @param compatible  - New value for the field.
# Compatibility of this Edge Cluster with Namespaces feature.
#
sub set_compatible {
   my ($self, %args) = @_;
   $self->{'compatible'} = $args{'compatible'}; 
   return;	
}

## @method get_incompatibility_reasons ()
# Gets the value of 'incompatibility_reasons' property.
#
# @retval incompatibility_reasons - The current value of the field.
# List of reasons for incompatibility.
#
# Optional#
sub get_incompatibility_reasons {
   my ($self, %args) = @_;
   return $self->{'incompatibility_reasons'}; 	
}

## @method set_incompatibility_reasons ()
# Sets the given value for 'incompatibility_reasons' property.
# 
# @param incompatibility_reasons  - New value for the field.
# List of reasons for incompatibility.
#
sub set_incompatibility_reasons {
   my ($self, %args) = @_;
   $self->{'incompatibility_reasons'} = $args{'incompatibility_reasons'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::FilterSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::FilterSpec``  
#     *class*  contains  *fields*  used to filter the results when listing Edge Clusters
#     (see 
#     :func:`Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility.list` )
#     and their compatibility information.

package Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{compatible} = $args{'compatible'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.edge_cluster_compatibility.filter_spec');
   $self->set_binding_field('key' => 'compatible', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_compatible ()
# Gets the value of 'compatible' property.
#
# @retval compatible - The current value of the field.
# Compatibility criteria for matching the filter. If true, only Edge Clusters which are
#     compatible with vSphere Namespaces match the filter. If false, only Edge Clusters
#     which are incompatible with vSphere Namespaces match the filter.
#
# Optional#
sub get_compatible {
   my ($self, %args) = @_;
   return $self->{'compatible'}; 	
}

## @method set_compatible ()
# Sets the given value for 'compatible' property.
# 
# @param compatible  - New value for the field.
# Compatibility criteria for matching the filter. If true, only Edge Clusters which are
#     compatible with vSphere Namespaces match the filter. If false, only Edge Clusters
#     which are incompatible with vSphere Namespaces match the filter.
#
sub set_compatible {
   my ($self, %args) = @_;
   $self->{'compatible'} = $args{'compatible'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::EdgeClusterCompatibility service
#########################################################################################
