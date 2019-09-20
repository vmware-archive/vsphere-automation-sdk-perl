########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ResourcePool.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::ResourcePool
# The  *ResourcePool*   *interface*  provides  *methods*  for manipulating a vCenter
#     Server resource pool. <p>
# 
# This  *interface*  does not include virtual appliances in the inventory of resource
#     pools even though part of the behavior of a virtual appliance is to act like a
#     resource pool.</p>
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the vCenter resource pool

package Com::Vmware::Vcenter::ResourcePool;

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
use Com::Vmware::Vcenter::ResourcePoolStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

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
# Retrieves information about the resource pool indicated by  ``resource_pool`` .
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param resource_pool [REQUIRED] Identifier of the resource pool for which information should be retrieved.
# The value must be an identifier for the resource type getQualifiedName(ResourcePool).
# . The value must be str.
#
# @retval 
# Information about the resource pool.
# The return type will be Com::Vmware::Vcenter::ResourcePool::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the resource pool indicated by  ``resource_pool``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``ResourcePool``  referenced by the  *parameter*  
#     ``resource_pool``  requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $resource_pool = $args {resource_pool};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Returns information about at most 1000 visible (subject to permission checks) resource
# pools in vCenter matching the  class Com::Vmware::Vcenter::ResourcePool::FilterSpec .
#
# @param filter [OPTIONAL] Specification of matching resource pools for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::ResourcePool::FilterSpec  with all  *fields*   *null*  which
#     means all resource pools match the filter.
# . The value must be Com::Vmware::Vcenter::ResourcePool::FilterSpec or None.
#
# @retval 
# Commonly used information about the resource pools matching the  class
#     Com::Vmware::Vcenter::ResourcePool::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::ResourcePool::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# If more than 1000 resource pools match the  class
#     Com::Vmware::Vcenter::ResourcePool::FilterSpec .
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user doesn&apos;t have the required privileges.
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
# Begins enumerations for the Com::Vmware::Vcenter::ResourcePool service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::ResourcePool service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::ResourcePool service
#########################################################################################

## @class Com::Vmware::Vcenter::ResourcePool::Info
#
#
# The  ``Com::Vmware::Vcenter::ResourcePool::Info``   *class*  contains information
#     about a resource pool.

package Com::Vmware::Vcenter::ResourcePool::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::Info structure
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
   $self->{resource_pools} = $args{'resource_pools'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'resource_pools', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the vCenter Server resource pool.
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
# Name of the vCenter Server resource pool.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_resource_pools ()
# Gets the value of 'resource_pools' property.
#
# @retval resource_pools - The current value of the field.
# Identifiers of the child resource pools contained in this resource pool.
#
# Set#
sub get_resource_pools {
   my ($self, %args) = @_;
   return $self->{'resource_pools'}; 	
}

## @method set_resource_pools ()
# Sets the given value for 'resource_pools' property.
# 
# @param resource_pools  - New value for the field.
# Identifiers of the child resource pools contained in this resource pool.
#
sub set_resource_pools {
   my ($self, %args) = @_;
   $self->{'resource_pools'} = $args{'resource_pools'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::ResourcePool::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::ResourcePool::FilterSpec``   *class*  contains  *fields* 
#     used to filter the results when listing resource pools (see 
#     :func:`Com::Vmware::Vcenter::ResourcePool.list` ). If multiple  *fields*  are
#     specified, only resource pools matching all of the  *fields*  match the filter.

package Com::Vmware::Vcenter::ResourcePool::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{resource_pools} = $args{'resource_pools'};
   $self->{names} = $args{'names'};
   $self->{parent_resource_pools} = $args{'parent_resource_pools'};
   $self->{datacenters} = $args{'datacenters'};
   $self->{hosts} = $args{'hosts'};
   $self->{clusters} = $args{'clusters'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.filter_spec');
   $self->set_binding_field('key' => 'resource_pools', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'parent_resource_pools', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'datacenters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'clusters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_resource_pools ()
# Gets the value of 'resource_pools' property.
#
# @retval resource_pools - The current value of the field.
# Identifiers of resource pools that can match the filter.
#
# Optional#
sub get_resource_pools {
   my ($self, %args) = @_;
   return $self->{'resource_pools'}; 	
}

## @method set_resource_pools ()
# Sets the given value for 'resource_pools' property.
# 
# @param resource_pools  - New value for the field.
# Identifiers of resource pools that can match the filter.
#
sub set_resource_pools {
   my ($self, %args) = @_;
   $self->{'resource_pools'} = $args{'resource_pools'}; 
   return;	
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that resource pools must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::ResourcePool::Info.name` ).
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
# Names that resource pools must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::ResourcePool::Info.name` ).
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_parent_resource_pools ()
# Gets the value of 'parent_resource_pools' property.
#
# @retval parent_resource_pools - The current value of the field.
# Resource pools that must contain the resource pool for the resource pool to match the
#     filter.
#
# Optional#
sub get_parent_resource_pools {
   my ($self, %args) = @_;
   return $self->{'parent_resource_pools'}; 	
}

## @method set_parent_resource_pools ()
# Sets the given value for 'parent_resource_pools' property.
# 
# @param parent_resource_pools  - New value for the field.
# Resource pools that must contain the resource pool for the resource pool to match the
#     filter.
#
sub set_parent_resource_pools {
   my ($self, %args) = @_;
   $self->{'parent_resource_pools'} = $args{'parent_resource_pools'}; 
   return;	
}

## @method get_datacenters ()
# Gets the value of 'datacenters' property.
#
# @retval datacenters - The current value of the field.
# Datacenters that must contain the resource pool for the resource pool to match the
#     filter.
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
# Datacenters that must contain the resource pool for the resource pool to match the
#     filter.
#
sub set_datacenters {
   my ($self, %args) = @_;
   $self->{'datacenters'} = $args{'datacenters'}; 
   return;	
}

## @method get_hosts ()
# Gets the value of 'hosts' property.
#
# @retval hosts - The current value of the field.
# Hosts that must contain the resource pool for the resource pool to match the filter.
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
# Hosts that must contain the resource pool for the resource pool to match the filter.
#
sub set_hosts {
   my ($self, %args) = @_;
   $self->{'hosts'} = $args{'hosts'}; 
   return;	
}

## @method get_clusters ()
# Gets the value of 'clusters' property.
#
# @retval clusters - The current value of the field.
# Clusters that must contain the resource pool for the resource pool to match the
#     filter.
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
# Clusters that must contain the resource pool for the resource pool to match the
#     filter.
#
sub set_clusters {
   my ($self, %args) = @_;
   $self->{'clusters'} = $args{'clusters'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::ResourcePool::Summary
#
#
# The  ``Com::Vmware::Vcenter::ResourcePool::Summary``   *class*  contains commonly used
#     information about a resource pool in vCenter Server.

package Com::Vmware::Vcenter::ResourcePool::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{resource_pool} = $args{'resource_pool'};
   $self->{name} = $args{'name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.summary');
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_resource_pool ()
# Gets the value of 'resource_pool' property.
#
# @retval resource_pool - The current value of the field.
# Identifier of the resource pool.
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
# Identifier of the resource pool.
#
sub set_resource_pool {
   my ($self, %args) = @_;
   $self->{'resource_pool'} = $args{'resource_pool'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the resource pool.
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
# Name of the resource pool.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::ResourcePool service
#########################################################################################
