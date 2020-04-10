########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ClusterCompatibility.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility
# The  ``Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility``  
#     *interface*  provides  *methods*  to get Namespace-related compatibility information
#     for clusters in this vCenter.
#

package Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility;

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
use Com::Vmware::Vcenter::Namespace_management::ClusterCompatibilityStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.cluster_compatibility';


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
# Returns Namespaces compatibility information for all clusters in vCenter matching the 
# class Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::FilterSpec . The
# result contains only visible (subject to permission checks) clusters.
#
# @param filter [OPTIONAL] Specification of matching clusters for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::FilterSpec  with all
#      *fields*   *null*  which means all clusters match the filter.
# . The value must be
# Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::FilterSpec or None.
#
# @retval 
# Namespaces compatibility information for the clusters matching the the  class
#     Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::FilterSpec .
# The return type will be Array of
# Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InternalServerError 
# if the server reports an unknown internal error.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::Summary
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::Summary``  
#     *class*  contains the information about the compatibility of a cluster.

package Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cluster} = $args{'cluster'};
   $self->{compatible} = $args{'compatible'};
   $self->{incompatibility_reasons} = $args{'incompatibility_reasons'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.cluster_compatibility.summary');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'compatible', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'incompatibility_reasons', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifier of the cluster.
#
# ID#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Identifier of the cluster.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_compatible ()
# Gets the value of 'compatible' property.
#
# @retval compatible - The current value of the field.
# Compatibility of this cluster.
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
# Compatibility of this cluster.
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
# Reasons for incompatibility.
#
# List#
sub get_incompatibility_reasons {
   my ($self, %args) = @_;
   return $self->{'incompatibility_reasons'}; 	
}

## @method set_incompatibility_reasons ()
# Sets the given value for 'incompatibility_reasons' property.
# 
# @param incompatibility_reasons  - New value for the field.
# Reasons for incompatibility.
#
sub set_incompatibility_reasons {
   my ($self, %args) = @_;
   $self->{'incompatibility_reasons'} = $args{'incompatibility_reasons'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::FilterSpec`` 
#     *class*  contains  *fields*  used to filter the results when listing clusters (see 
#     :func:`Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility.list` ) and
#     their compatibility information.

package Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::FilterSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.cluster_compatibility.filter_spec');
   $self->set_binding_field('key' => 'compatible', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_compatible ()
# Gets the value of 'compatible' property.
#
# @retval compatible - The current value of the field.
# Compatibility criteria for matching the filter. If true, only clusters which are
#     compatible for Namespaces match the filter. If false, all clusters match the filter.
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
# Compatibility criteria for matching the filter. If true, only clusters which are
#     compatible for Namespaces match the filter. If false, all clusters match the filter.
#
sub set_compatible {
   my ($self, %args) = @_;
   $self->{'compatible'} = $args{'compatible'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::ClusterCompatibility service
#########################################################################################
