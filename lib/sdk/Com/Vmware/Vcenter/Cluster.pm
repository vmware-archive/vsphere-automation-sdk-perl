########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Cluster.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Cluster
# The  ``Com::Vmware::Vcenter::Cluster``   *interface*  provides  *methods*  to manage
#     clusters in the vCenter Server.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the vCenter Cluster

package Com::Vmware::Vcenter::Cluster;

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
use Com::Vmware::Vcenter::ClusterStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.cluster';


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
# Returns information about at most 1000 visible (subject to permission checks) clusters in
# vCenter matching the  class Com::Vmware::Vcenter::Cluster::FilterSpec .
#
# @param filter [OPTIONAL] Specification of matching clusters for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Cluster::FilterSpec  with all  *fields*   *null*  which means
#     all clusters match the filter.
# . The value must be Com::Vmware::Vcenter::Cluster::FilterSpec or None.
#
# @retval 
# Commonly used information about the clusters matching the  class
#     Com::Vmware::Vcenter::Cluster::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::Cluster::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 1000 clusters match the  class Com::Vmware::Vcenter::Cluster::FilterSpec
#     .
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
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
# Retrieves information about the cluster corresponding to  ``cluster`` .
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vcenter::Cluster::Info  instances that corresponds to the 
#     ``cluster`` .
# The return type will be Com::Vmware::Vcenter::Cluster::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the session id is missing from the request or the corresponding session object
#     cannot be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t not have the required privileges.
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Cluster service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Cluster service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Cluster service
#########################################################################################

## @class Com::Vmware::Vcenter::Cluster::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Cluster::FilterSpec``   *class*  contains  *fields*  used
#     to filter the results when listing clusters (see 
#     :func:`Com::Vmware::Vcenter::Cluster.list` ). If multiple  *fields*  are specified,
#     only clusters matching all of the  *fields*  match the filter.

package Com::Vmware::Vcenter::Cluster::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Cluster::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{clusters} = $args{'clusters'};
   $self->{names} = $args{'names'};
   $self->{folders} = $args{'folders'};
   $self->{datacenters} = $args{'datacenters'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Cluster::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.cluster.filter_spec');
   $self->set_binding_field('key' => 'clusters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'folders', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'datacenters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_clusters ()
# Gets the value of 'clusters' property.
#
# @retval clusters - The current value of the field.
# Identifiers of clusters that can match the filter.
#
# Optional#
sub get_clusters {
   my ($self, %args) = @_;
   return $self->{'clusters'}; 	
}

## @method set_clusters ()
# Sets the given value for 'clusters' property.
# 
# @param clusters  - New value for the field.
# Identifiers of clusters that can match the filter.
#
sub set_clusters {
   my ($self, %args) = @_;
   $self->{'clusters'} = $args{'clusters'}; 
   return;	
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that clusters must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Cluster::Info.name` ).
#
# Optional#
sub get_names {
   my ($self, %args) = @_;
   return $self->{'names'}; 	
}

## @method set_names ()
# Sets the given value for 'names' property.
# 
# @param names  - New value for the field.
# Names that clusters must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Cluster::Info.name` ).
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_folders ()
# Gets the value of 'folders' property.
#
# @retval folders - The current value of the field.
# Folders that must contain the cluster for the cluster to match the filter.
#
# Optional#
sub get_folders {
   my ($self, %args) = @_;
   return $self->{'folders'}; 	
}

## @method set_folders ()
# Sets the given value for 'folders' property.
# 
# @param folders  - New value for the field.
# Folders that must contain the cluster for the cluster to match the filter.
#
sub set_folders {
   my ($self, %args) = @_;
   $self->{'folders'} = $args{'folders'}; 
   return;	
}

## @method get_datacenters ()
# Gets the value of 'datacenters' property.
#
# @retval datacenters - The current value of the field.
# Datacenters that must contain the cluster for the cluster to match the filter.
#
# Optional#
sub get_datacenters {
   my ($self, %args) = @_;
   return $self->{'datacenters'}; 	
}

## @method set_datacenters ()
# Sets the given value for 'datacenters' property.
# 
# @param datacenters  - New value for the field.
# Datacenters that must contain the cluster for the cluster to match the filter.
#
sub set_datacenters {
   my ($self, %args) = @_;
   $self->{'datacenters'} = $args{'datacenters'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Cluster::Summary
#
#
# The  ``Com::Vmware::Vcenter::Cluster::Summary``   *class*  contains commonly used
#     information about a cluster in vCenter Server.

package Com::Vmware::Vcenter::Cluster::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Cluster::Summary structure
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
   $self->{name} = $args{'name'};
   $self->{ha_enabled} = $args{'ha_enabled'};
   $self->{drs_enabled} = $args{'drs_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Cluster::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.cluster.summary');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ha_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'drs_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
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

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the cluster.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the cluster.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_ha_enabled ()
# Gets the value of 'ha_enabled' property.
#
# @retval ha_enabled - The current value of the field.
# Flag indicating whether the vSphere HA feature is enabled for the cluster.
#
# boolean#
sub get_ha_enabled {
   my ($self, %args) = @_;
   return $self->{'ha_enabled'}; 	
}

## @method set_ha_enabled ()
# Sets the given value for 'ha_enabled' property.
# 
# @param ha_enabled  - New value for the field.
# Flag indicating whether the vSphere HA feature is enabled for the cluster.
#
sub set_ha_enabled {
   my ($self, %args) = @_;
   $self->{'ha_enabled'} = $args{'ha_enabled'}; 
   return;	
}

## @method get_drs_enabled ()
# Gets the value of 'drs_enabled' property.
#
# @retval drs_enabled - The current value of the field.
# Flag indicating whether the vSphere DRS service is enabled for the cluster.
#
# boolean#
sub get_drs_enabled {
   my ($self, %args) = @_;
   return $self->{'drs_enabled'}; 	
}

## @method set_drs_enabled ()
# Sets the given value for 'drs_enabled' property.
# 
# @param drs_enabled  - New value for the field.
# Flag indicating whether the vSphere DRS service is enabled for the cluster.
#
sub set_drs_enabled {
   my ($self, %args) = @_;
   $self->{'drs_enabled'} = $args{'drs_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Cluster::Info
#
#
# The  ``Com::Vmware::Vcenter::Cluster::Info``   *class*  contains information about a
#     cluster in vCenter Server.

package Com::Vmware::Vcenter::Cluster::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Cluster::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{resource_pool} = $args{'resource_pool'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Cluster::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.cluster.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the cluster
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The name of the cluster
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_resource_pool ()
# Gets the value of 'resource_pool' property.
#
# @retval resource_pool - The current value of the field.
# Identifier of the root resource pool of the cluster
#
# ID#
sub get_resource_pool {
   my ($self, %args) = @_;
   return $self->{'resource_pool'}; 	
}

## @method set_resource_pool ()
# Sets the given value for 'resource_pool' property.
# 
# @param resource_pool  - New value for the field.
# Identifier of the root resource pool of the cluster
#
sub set_resource_pool {
   my ($self, %args) = @_;
   $self->{'resource_pool'} = $args{'resource_pool'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Cluster service
#########################################################################################
