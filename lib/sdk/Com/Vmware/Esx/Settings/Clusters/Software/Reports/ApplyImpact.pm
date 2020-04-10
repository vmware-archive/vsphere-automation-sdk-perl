########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ApplyImpact.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact``  
#     *interface*  provides  *methods*  to get the impact of an apply  *method*  on a
#     cluster.
#

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact;

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
use Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpactStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.reports.apply_impact';


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
# Returns a summary of how hosts within the cluster will be impacted during an apply 
# *method* . The impact is generated from the compliance information obtained from 
# :func:`Com::Vmware::Esx::Settings::Clusters::Software::Compliance.get` 
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareRemediation.Read.
#
# @param cluster [REQUIRED] The cluster identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [OPTIONAL] 
# Specification for how much information should be returned.
# . The value must be
# Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ApplyImpactSpec or
# None.
#
# @retval 
# Summary of how hosts will be impacted during an apply  *method* 
# The return type will be
# Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ClusterImpact
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is an unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSoftwareRemediation.Read``
#     . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareRemediation.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ApplyImpactSpec
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ApplyImpactSpec``
#     *class*  contains  *fields*  that describe the specification to be used for getting
#     the impact of an apply  *method*  on an ESXi cluster.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ApplyImpactSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ApplyImpactSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hosts} = $args{'hosts'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ApplyImpactSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.apply_impact.apply_impact_spec');
   $self->set_binding_field('key' => 'hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_hosts ()
# Gets the value of 'hosts' property.
#
# @retval hosts - The current value of the field.
# The specific hosts for which an impact is to be generated.
#
# Optional#
sub get_hosts {
   my ($self, %args) = @_;
   return $self->{'hosts'}; 	
}

## @method set_hosts ()
# Sets the given value for 'hosts' property.
# 
# @param hosts  - New value for the field.
# The specific hosts for which an impact is to be generated.
#
sub set_hosts {
   my ($self, %args) = @_;
   $self->{'hosts'} = $args{'hosts'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::Impact
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::Impact`` 
#     *class*  contains  *fields*  that describe what the impact is of a particular step
#     during the apply  *method* .

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::Impact;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::Impact structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::Impact');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.apply_impact.impact');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Description of the impact.
#
# LocalizableMessage#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# Description of the impact.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ClusterImpact
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ClusterImpact``
#     *class*  contains  *fields*  that describe the summary of how hosts within a cluster
#     will be impacted during an apply  *method* .

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ClusterImpact;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ClusterImpact structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{impact} = $args{'impact'};
   $self->{host_impact} = $args{'host_impact'};
   $self->{commit} = $args{'commit'};
   $self->{host_info} = $args{'host_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact::ClusterImpact');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.apply_impact.cluster_impact');
   $self->set_binding_field('key' => 'impact', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'ApplyImpact::Impact')));
   $self->set_binding_field('key' => 'host_impact', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'ApplyImpact::Impact'))}))));
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HostInfo')}))));
   bless $self, $class;
   return $self;
}

## @method get_impact ()
# Gets the value of 'impact' property.
#
# @retval impact - The current value of the field.
# Impact of steps performed during the setup and cleanup phase of the apply  *method* .
#
# List#
sub get_impact {
   my ($self, %args) = @_;
   return $self->{'impact'}; 	
}

## @method set_impact ()
# Sets the given value for 'impact' property.
# 
# @param impact  - New value for the field.
# Impact of steps performed during the setup and cleanup phase of the apply  *method* .
#
sub set_impact {
   my ($self, %args) = @_;
   $self->{'impact'} = $args{'impact'}; 
   return;	
}

## @method get_host_impact ()
# Gets the value of 'host_impact' property.
#
# @retval host_impact - The current value of the field.
# Impact summary for each host within the clsuter.
#
# Map#
sub get_host_impact {
   my ($self, %args) = @_;
   return $self->{'host_impact'}; 	
}

## @method set_host_impact ()
# Sets the given value for 'host_impact' property.
# 
# @param host_impact  - New value for the field.
# Impact summary for each host within the clsuter.
#
sub set_host_impact {
   my ($self, %args) = @_;
   $self->{'host_impact'} = $args{'host_impact'}; 
   return;	
}

## @method get_commit ()
# Gets the value of 'commit' property.
#
# @retval commit - The current value of the field.
# Identifier of the commit on which the impact is generated.
#
# ID#
sub get_commit {
   my ($self, %args) = @_;
   return $self->{'commit'}; 	
}

## @method set_commit ()
# Sets the given value for 'commit' property.
# 
# @param commit  - New value for the field.
# Identifier of the commit on which the impact is generated.
#
sub set_commit {
   my ($self, %args) = @_;
   $self->{'commit'} = $args{'commit'}; 
   return;	
}

## @method get_host_info ()
# Gets the value of 'host_info' property.
#
# @retval host_info - The current value of the field.
# Information of hosts within the cluster.
#
# Map#
sub get_host_info {
   my ($self, %args) = @_;
   return $self->{'host_info'}; 	
}

## @method set_host_info ()
# Sets the given value for 'host_info' property.
# 
# @param host_info  - New value for the field.
# Information of hosts within the cluster.
#
sub set_host_info {
   my ($self, %args) = @_;
   $self->{'host_info'} = $args{'host_info'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::ApplyImpact service
#########################################################################################
