########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file DepotOverrides.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::DepotOverrides
# The  ``Com::Vmware::Esx::Settings::Clusters::DepotOverrides``   *interface*  provides 
#     *methods*  to manage software depots overriden for a given cluster. In general ESX
#     servers reach out to vCenter (VUM) to fetch the metadata and payloads required for
#     lifecycle operations. But in ROBO environments ESX clusters can&apos;t (or because of
#     bandwidth requirements shouldn&apos;t) reach out to vCenter to fetch payloads and
#     metadata. This  *interface*  allows setting cluster level overrides for depots. If any
#     depots are provided for a cluster, then vCenter level depots are not used for that
#     cluster&apos;s remediation. These are not synced periodically at vCenter and are only
#     used by ESXs for lifecycle operations.
#

package Com::Vmware::Esx::Settings::Clusters::DepotOverrides;

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
use Com::Vmware::Esx::Settings::Clusters::DepotOverridesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.depot_overrides';


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
# Returns the information about currently configured depot overrides for a given cluster.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @param cluster [REQUIRED] Identifier for the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Information about currently configured depot overrides for a given cluster.
# The return type will be Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method add ()
# Adds a new depot override to the list of currently configured depot overrides for a given
# cluster.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @param cluster [REQUIRED] Identifier for the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param depot [REQUIRED] Information of a depot override.
# . The value must be Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Depot.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If an invalid location is provided.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if depot override with given information already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Write`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSettings.Write`` . </li>
# </ul>
#
sub add {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $depot = $args {depot};

   $self->validate_args (method_name => 'add',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add',
                         method_args => \%args);
}

## @method remove ()
# Removes a depot override from the list of currently configured depot overrides for a given
# cluster.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Write.
#
# @param cluster [REQUIRED] Identifier for the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param depot [REQUIRED] Information of the depot override to be removed.
# . The value must be Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Depot.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no depot override with given information or no cluster associated with
#     identifier {param.name cluster} in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Write`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSettings.Write`` . </li>
# </ul>
#
sub remove {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $depot = $args {depot};

   $self->validate_args (method_name => 'remove',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'remove',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::DepotOverrides service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::DepotOverrides service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::DepotOverrides service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Info``   *class*  defines
#     the information regarding depot overrides for a given cluster.

package Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{depots} = $args{'depots'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.depot_overrides.info');
   $self->set_binding_field('key' => 'depots', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'DepotOverrides::Depot')));
   bless $self, $class;
   return $self;
}

## @method get_depots ()
# Gets the value of 'depots' property.
#
# @retval depots - The current value of the field.
# List of the depot overrides.
#
# List#
sub get_depots {
   my ($self, %args) = @_;
   return $self->{'depots'}; 	
}

## @method set_depots ()
# Sets the given value for 'depots' property.
# 
# @param depots  - New value for the field.
# List of the depot overrides.
#
sub set_depots {
   my ($self, %args) = @_;
   $self->{'depots'} = $args{'depots'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Depot
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Depot``   *class* 
#     defines the information regarding a particular depot override for a given cluster.

package Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Depot;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Depot structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{location} = $args{'location'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::DepotOverrides::Depot');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.depot_overrides.depot');
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   bless $self, $class;
   return $self;
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Location of the depot override. This could be a location of zip file or location to an
#     index.xml file.
#
# URI#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Location of the depot override. This could be a location of zip file or location to an
#     index.xml file.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::DepotOverrides service
#########################################################################################
