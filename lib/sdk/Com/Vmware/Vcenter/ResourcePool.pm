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

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.resource_pool';


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

## @method create ()
# Creates a resource pool. This  *method*  was added in vSphere API 7.0.0.0.
#
# Note:
# Privileges required for this operation are Resource.CreatePool.
#
# @param spec [REQUIRED] Specification of the new resource pool to be created, see  class
#     Com::Vmware::Vcenter::ResourcePool::CreateSpec .
# . The value must be Com::Vmware::Vcenter::ResourcePool::CreateSpec.
#
# @retval 
# The identifier of the newly created resource pool.
# The value will be an identifier for the resource type getQualifiedName(ResourcePool).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If a parameter passed in the spec is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the resource specified in  *parent*  could not be found
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# If the specified resource in  *parent*  is not accessible.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if any of the resources needed to create the resource pool could not be allocated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``ResourcePool``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::ResourcePool::CreateSpec.parent`  requires 
#     ``Resource.CreatePool`` . </li>
# </ul>
#
sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method delete ()
# Deletes a resource pool. This  *method*  was added in vSphere API 7.0.0.0.
#
# @param resource_pool [REQUIRED] Identifier of the resource pool to be deleted.
# The value must be an identifier for the resource type getQualifiedName(ResourcePool).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the resource pool is not found.
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
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# If the resource pool is a root resource pool.
#
sub delete {
   my ($self, %args) = @_;
   my $resource_pool = $args {resource_pool};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method update ()
# Updates the configuration of a resource pool. This  *method*  was added in vSphere API
# 7.0.0.0.
#
# Note:
# Privileges required for this operation are Resource.EditPool.
#
# @param resource_pool [REQUIRED] Identifier of the resource pool.
# The value must be an identifier for the resource type getQualifiedName(ResourcePool).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the configuration of the resource pool.
# . The value must be Com::Vmware::Vcenter::ResourcePool::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If any of the specified parameters is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the resource pool is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# If any of the resources needed to reconfigure the resource pool could not be
#     allocated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``ResourcePool``  referenced by the  *parameter*  
#     ``resource_pool``  requires  ``Resource.EditPool`` . </li>
# </ul>
#
sub update {
   my ($self, %args) = @_;
   my $resource_pool = $args {resource_pool};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
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

## @class Com::Vmware::Vcenter::ResourcePool::SharesInfo
#
#
# The  ``Com::Vmware::Vcenter::ResourcePool::SharesInfo``   *class*  provides
#     specification of shares. <p>
# 
# Shares are used to determine relative allocation between resource consumers. In
#     general, a consumer with more shares gets proportionally more of the resource, subject
#     to certain other constraints.</p>
# 
# . This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::ResourcePool::SharesInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::SharesInfo structure
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
         'discriminant_name' => 'level',
         'case_map' => {
               'CUSTOM' => ['shares'],
               'LOW' => [],
               'NORMAL' => [],
               'HIGH' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{level} = $args{'level'};
   $self->{shares} = $args{'shares'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::SharesInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.shares_info');
   $self->set_binding_field('key' => 'level', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::SharesInfo::Level'));
   $self->set_binding_field('key' => 'shares', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_level ()
# Gets the value of 'level' property.
#
# @retval level - The current value of the field.
# The allocation level. It maps to a pre-determined set of numeric values for shares. If
#     the shares value does not map to a predefined size, then the level is set as CUSTOM.
#     This  *field*  was added in vSphere API 7.0.0.0.
#
# Level#
sub get_level {
   my ($self, %args) = @_;
   return $self->{'level'}; 	
}

## @method set_level ()
# Sets the given value for 'level' property.
# 
# @param level  - New value for the field.
# The allocation level. It maps to a pre-determined set of numeric values for shares. If
#     the shares value does not map to a predefined size, then the level is set as CUSTOM.
#     This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_level {
   my ($self, %args) = @_;
   $self->{'level'} = $args{'level'}; 
   return;	
}

## @method get_shares ()
# Gets the value of 'shares' property.
#
# @retval shares - The current value of the field.
# When  :attr:`Com::Vmware::Vcenter::ResourcePool::SharesInfo.level`  is set to CUSTOM,
#     it is the number of shares allocated. Otherwise, this value is ignored. <p>
# 
# There is no unit for this value. It is a relative measure based on the settings for
#     other resource pools.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# optional#
sub get_shares {
   my ($self, %args) = @_;
   return $self->{'shares'}; 	
}

## @method set_shares ()
# Sets the given value for 'shares' property.
# 
# @param shares  - New value for the field.
# When  :attr:`Com::Vmware::Vcenter::ResourcePool::SharesInfo.level`  is set to CUSTOM,
#     it is the number of shares allocated. Otherwise, this value is ignored. <p>
# 
# There is no unit for this value. It is a relative measure based on the settings for
#     other resource pools.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_shares {
   my ($self, %args) = @_;
   $self->{'shares'} = $args{'shares'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::ResourcePool::SharesInfo::Level
#
# The  ``Com::Vmware::Vcenter::ResourcePool::SharesInfo::Level``   *enumerated type* 
#     defines the possible values for the allocation level. This  *enumeration*  was added
#     in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::ResourcePool::SharesInfo::Level::LOW #
#For CPU: Shares = 500 * number of virtual CPUs.
#  For Memory: Shares = 5 * virtual machine memory size in MB.
# . This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::ResourcePool::SharesInfo::Level::NORMAL #
#For CPU: Shares = 1000 * number of virtual CPUs.
#  For Memory: Shares = 10 * virtual machine memory size in MB.
# . This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::ResourcePool::SharesInfo::Level::HIGH #
#For CPU: Shares = 2000 * nmumber of virtual CPUs.
#  For Memory: Shares = 20 * virtual machine memory size in MB.
# . This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::ResourcePool::SharesInfo::Level::CUSTOM #
#If  *set* , in case there is resource contention the server uses the shares value to
# determine the resource allocation. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::ResourcePool::SharesInfo::Level;

use constant {
    LOW =>  'LOW',
    NORMAL =>  'NORMAL',
    HIGH =>  'HIGH',
    CUSTOM =>  'CUSTOM',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::SharesInfo::Level enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.resource_pool.shares_info.level',
                           'binding_class' => 'Com::Vmware::Vcenter::ResourcePool::SharesInfo::Level');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::ResourcePool::ResourceAllocationInfo
#
#
# The  ``Com::Vmware::Vcenter::ResourcePool::ResourceAllocationInfo``   *class* 
#     contains resource allocation information of a resource pool. This  *class*  was added
#     in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::ResourcePool::ResourceAllocationInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::ResourceAllocationInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{reservation} = $args{'reservation'};
   $self->{expandable_reservation} = $args{'expandable_reservation'};
   $self->{limit} = $args{'limit'};
   $self->{shares} = $args{'shares'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::ResourceAllocationInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.resource_allocation_info');
   $self->set_binding_field('key' => 'reservation', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'expandable_reservation', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'shares', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::SharesInfo'));
   bless $self, $class;
   return $self;
}

## @method get_reservation ()
# Gets the value of 'reservation' property.
#
# @retval reservation - The current value of the field.
# Amount of resource that is guaranteed available to a resource pool. Reserved resources
#     are not wasted if they are not used. If the utilization is less than the reservation,
#     the resources can be utilized by other running virtual machines. Units are MB fo
#     memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
# long#
sub get_reservation {
   my ($self, %args) = @_;
   return $self->{'reservation'}; 	
}

## @method set_reservation ()
# Sets the given value for 'reservation' property.
# 
# @param reservation  - New value for the field.
# Amount of resource that is guaranteed available to a resource pool. Reserved resources
#     are not wasted if they are not used. If the utilization is less than the reservation,
#     the resources can be utilized by other running virtual machines. Units are MB fo
#     memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_reservation {
   my ($self, %args) = @_;
   $self->{'reservation'} = $args{'reservation'}; 
   return;	
}

## @method get_expandable_reservation ()
# Gets the value of 'expandable_reservation' property.
#
# @retval expandable_reservation - The current value of the field.
# In a resource pool with an expandable reservation, the reservation can grow beyond the
#     specified value, if the parent resource pool has unreserved resources. A
#     non-expandable reservation is called a fixed reservation. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# boolean#
sub get_expandable_reservation {
   my ($self, %args) = @_;
   return $self->{'expandable_reservation'}; 	
}

## @method set_expandable_reservation ()
# Sets the given value for 'expandable_reservation' property.
# 
# @param expandable_reservation  - New value for the field.
# In a resource pool with an expandable reservation, the reservation can grow beyond the
#     specified value, if the parent resource pool has unreserved resources. A
#     non-expandable reservation is called a fixed reservation. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_expandable_reservation {
   my ($self, %args) = @_;
   $self->{'expandable_reservation'} = $args{'expandable_reservation'}; 
   return;	
}

## @method get_limit ()
# Gets the value of 'limit' property.
#
# @retval limit - The current value of the field.
# The utilization of a resource pool will not exceed this limit, even if there are
#     available resources. This is typically used to ensure a consistent performance of
#     resource pools independent of available resources. If set to -1, then there is no
#     fixed limit on resource usage (only bounded by available resources and shares). Units
#     are MB for memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
# long#
sub get_limit {
   my ($self, %args) = @_;
   return $self->{'limit'}; 	
}

## @method set_limit ()
# Sets the given value for 'limit' property.
# 
# @param limit  - New value for the field.
# The utilization of a resource pool will not exceed this limit, even if there are
#     available resources. This is typically used to ensure a consistent performance of
#     resource pools independent of available resources. If set to -1, then there is no
#     fixed limit on resource usage (only bounded by available resources and shares). Units
#     are MB for memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_limit {
   my ($self, %args) = @_;
   $self->{'limit'} = $args{'limit'}; 
   return;	
}

## @method get_shares ()
# Gets the value of 'shares' property.
#
# @retval shares - The current value of the field.
# Shares are used in case of resource contention. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
# SharesInfo#
sub get_shares {
   my ($self, %args) = @_;
   return $self->{'shares'}; 	
}

## @method set_shares ()
# Sets the given value for 'shares' property.
# 
# @param shares  - New value for the field.
# Shares are used in case of resource contention. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
sub set_shares {
   my ($self, %args) = @_;
   $self->{'shares'} = $args{'shares'}; 
   return;	
}


1;


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
   $self->{cpu_allocation} = $args{'cpu_allocation'};
   $self->{memory_allocation} = $args{'memory_allocation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'resource_pools', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'cpu_allocation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::ResourceAllocationInfo')));
   $self->set_binding_field('key' => 'memory_allocation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::ResourceAllocationInfo')));
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

## @method get_cpu_allocation ()
# Gets the value of 'cpu_allocation' property.
#
# @retval cpu_allocation - The current value of the field.
# Resource allocation information for CPU. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# optional#
sub get_cpu_allocation {
   my ($self, %args) = @_;
   return $self->{'cpu_allocation'}; 	
}

## @method set_cpu_allocation ()
# Sets the given value for 'cpu_allocation' property.
# 
# @param cpu_allocation  - New value for the field.
# Resource allocation information for CPU. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_cpu_allocation {
   my ($self, %args) = @_;
   $self->{'cpu_allocation'} = $args{'cpu_allocation'}; 
   return;	
}

## @method get_memory_allocation ()
# Gets the value of 'memory_allocation' property.
#
# @retval memory_allocation - The current value of the field.
# Resource allocation information for memory. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# optional#
sub get_memory_allocation {
   my ($self, %args) = @_;
   return $self->{'memory_allocation'}; 	
}

## @method set_memory_allocation ()
# Sets the given value for 'memory_allocation' property.
# 
# @param memory_allocation  - New value for the field.
# Resource allocation information for memory. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_memory_allocation {
   my ($self, %args) = @_;
   $self->{'memory_allocation'} = $args{'memory_allocation'}; 
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


## @class Com::Vmware::Vcenter::ResourcePool::ResourceAllocationCreateSpec
#
#
# The  ``Com::Vmware::Vcenter::ResourcePool::ResourceAllocationCreateSpec``   *class* 
#     contains resource allocation information used to create a resource pool, see 
#     :func:`Com::Vmware::Vcenter::ResourcePool.create` . This  *class*  was added in
#     vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::ResourcePool::ResourceAllocationCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::ResourceAllocationCreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{reservation} = $args{'reservation'};
   $self->{expandable_reservation} = $args{'expandable_reservation'};
   $self->{limit} = $args{'limit'};
   $self->{shares} = $args{'shares'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::ResourceAllocationCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.resource_allocation_create_spec');
   $self->set_binding_field('key' => 'reservation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'expandable_reservation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'shares', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::SharesInfo')));
   bless $self, $class;
   return $self;
}

## @method get_reservation ()
# Gets the value of 'reservation' property.
#
# @retval reservation - The current value of the field.
# Amount of resource that is guaranteed available to a resource pool. Reserved resources
#     are not wasted if they are not used. If the utilization is less than the reservation,
#     the resources can be utilized by other running virtual machines. Units are MB fo
#     memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_reservation {
   my ($self, %args) = @_;
   return $self->{'reservation'}; 	
}

## @method set_reservation ()
# Sets the given value for 'reservation' property.
# 
# @param reservation  - New value for the field.
# Amount of resource that is guaranteed available to a resource pool. Reserved resources
#     are not wasted if they are not used. If the utilization is less than the reservation,
#     the resources can be utilized by other running virtual machines. Units are MB fo
#     memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_reservation {
   my ($self, %args) = @_;
   $self->{'reservation'} = $args{'reservation'}; 
   return;	
}

## @method get_expandable_reservation ()
# Gets the value of 'expandable_reservation' property.
#
# @retval expandable_reservation - The current value of the field.
# In a resource pool with an expandable reservation, the reservation can grow beyond the
#     specified value, if the parent resource pool has unreserved resources. A
#     non-expandable reservation is called a fixed reservation. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# Optional#
sub get_expandable_reservation {
   my ($self, %args) = @_;
   return $self->{'expandable_reservation'}; 	
}

## @method set_expandable_reservation ()
# Sets the given value for 'expandable_reservation' property.
# 
# @param expandable_reservation  - New value for the field.
# In a resource pool with an expandable reservation, the reservation can grow beyond the
#     specified value, if the parent resource pool has unreserved resources. A
#     non-expandable reservation is called a fixed reservation. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_expandable_reservation {
   my ($self, %args) = @_;
   $self->{'expandable_reservation'} = $args{'expandable_reservation'}; 
   return;	
}

## @method get_limit ()
# Gets the value of 'limit' property.
#
# @retval limit - The current value of the field.
# The utilization of a resource pool will not exceed this limit, even if there are
#     available resources. This is typically used to ensure a consistent performance of
#     resource pools independent of available resources. If set to -1, then there is no
#     fixed limit on resource usage (only bounded by available resources and shares). Units
#     are MB for memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_limit {
   my ($self, %args) = @_;
   return $self->{'limit'}; 	
}

## @method set_limit ()
# Sets the given value for 'limit' property.
# 
# @param limit  - New value for the field.
# The utilization of a resource pool will not exceed this limit, even if there are
#     available resources. This is typically used to ensure a consistent performance of
#     resource pools independent of available resources. If set to -1, then there is no
#     fixed limit on resource usage (only bounded by available resources and shares). Units
#     are MB for memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_limit {
   my ($self, %args) = @_;
   $self->{'limit'} = $args{'limit'}; 
   return;	
}

## @method get_shares ()
# Gets the value of 'shares' property.
#
# @retval shares - The current value of the field.
# Shares are used in case of resource contention. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
# Optional#
sub get_shares {
   my ($self, %args) = @_;
   return $self->{'shares'}; 	
}

## @method set_shares ()
# Sets the given value for 'shares' property.
# 
# @param shares  - New value for the field.
# Shares are used in case of resource contention. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
sub set_shares {
   my ($self, %args) = @_;
   $self->{'shares'} = $args{'shares'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::ResourcePool::CreateSpec
#
#
# The   *class*  contains information used to create a resource pool, see 
#     :func:`Com::Vmware::Vcenter::ResourcePool.create` . This  *class*  was added in
#     vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::ResourcePool::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::CreateSpec structure
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
   $self->{parent} = $args{'parent'};
   $self->{cpu_allocation} = $args{'cpu_allocation'};
   $self->{memory_allocation} = $args{'memory_allocation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'parent', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cpu_allocation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::ResourceAllocationCreateSpec')));
   $self->set_binding_field('key' => 'memory_allocation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::ResourceAllocationCreateSpec')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the resource pool. This  *field*  was added in vSphere API 7.0.0.0.
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
# Name of the resource pool. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_parent ()
# Gets the value of 'parent' property.
#
# @retval parent - The current value of the field.
# Parent of the created resource pool. This  *field*  was added in vSphere API 7.0.0.0.
#
# ID#
sub get_parent {
   my ($self, %args) = @_;
   return $self->{'parent'}; 	
}

## @method set_parent ()
# Sets the given value for 'parent' property.
# 
# @param parent  - New value for the field.
# Parent of the created resource pool. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_parent {
   my ($self, %args) = @_;
   $self->{'parent'} = $args{'parent'}; 
   return;	
}

## @method get_cpu_allocation ()
# Gets the value of 'cpu_allocation' property.
#
# @retval cpu_allocation - The current value of the field.
# Resource allocation for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_cpu_allocation {
   my ($self, %args) = @_;
   return $self->{'cpu_allocation'}; 	
}

## @method set_cpu_allocation ()
# Sets the given value for 'cpu_allocation' property.
# 
# @param cpu_allocation  - New value for the field.
# Resource allocation for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_cpu_allocation {
   my ($self, %args) = @_;
   $self->{'cpu_allocation'} = $args{'cpu_allocation'}; 
   return;	
}

## @method get_memory_allocation ()
# Gets the value of 'memory_allocation' property.
#
# @retval memory_allocation - The current value of the field.
# Resource allocation for memory. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_memory_allocation {
   my ($self, %args) = @_;
   return $self->{'memory_allocation'}; 	
}

## @method set_memory_allocation ()
# Sets the given value for 'memory_allocation' property.
# 
# @param memory_allocation  - New value for the field.
# Resource allocation for memory. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_memory_allocation {
   my ($self, %args) = @_;
   $self->{'memory_allocation'} = $args{'memory_allocation'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::ResourcePool::ResourceAllocationUpdateSpec
#
#
# The  ``ResourceAllocationUpdateSpec``   *class*  descrives the updates to be made to
#     the resource allocation settings of a resource pool. This  *class*  was added in
#     vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::ResourcePool::ResourceAllocationUpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::ResourceAllocationUpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{reservation} = $args{'reservation'};
   $self->{expandable_reservation} = $args{'expandable_reservation'};
   $self->{limit} = $args{'limit'};
   $self->{shares} = $args{'shares'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::ResourceAllocationUpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.resource_allocation_update_spec');
   $self->set_binding_field('key' => 'reservation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'expandable_reservation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'shares', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::SharesInfo')));
   bless $self, $class;
   return $self;
}

## @method get_reservation ()
# Gets the value of 'reservation' property.
#
# @retval reservation - The current value of the field.
# Amount of resource that is guaranteed available to a resource pool. Reserved resources
#     are not wasted if they are not used. If the utilization is less than the reservation,
#     the resources can be utilized by other running virtual machines. Units are MB fo
#     memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_reservation {
   my ($self, %args) = @_;
   return $self->{'reservation'}; 	
}

## @method set_reservation ()
# Sets the given value for 'reservation' property.
# 
# @param reservation  - New value for the field.
# Amount of resource that is guaranteed available to a resource pool. Reserved resources
#     are not wasted if they are not used. If the utilization is less than the reservation,
#     the resources can be utilized by other running virtual machines. Units are MB fo
#     memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_reservation {
   my ($self, %args) = @_;
   $self->{'reservation'} = $args{'reservation'}; 
   return;	
}

## @method get_expandable_reservation ()
# Gets the value of 'expandable_reservation' property.
#
# @retval expandable_reservation - The current value of the field.
# In a resource pool with an expandable reservation, the reservation can grow beyond the
#     specified value, if the parent resource pool has unreserved resources. A
#     non-expandable reservation is called a fixed reservation. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# Optional#
sub get_expandable_reservation {
   my ($self, %args) = @_;
   return $self->{'expandable_reservation'}; 	
}

## @method set_expandable_reservation ()
# Sets the given value for 'expandable_reservation' property.
# 
# @param expandable_reservation  - New value for the field.
# In a resource pool with an expandable reservation, the reservation can grow beyond the
#     specified value, if the parent resource pool has unreserved resources. A
#     non-expandable reservation is called a fixed reservation. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_expandable_reservation {
   my ($self, %args) = @_;
   $self->{'expandable_reservation'} = $args{'expandable_reservation'}; 
   return;	
}

## @method get_limit ()
# Gets the value of 'limit' property.
#
# @retval limit - The current value of the field.
# The utilization of a resource pool will not exceed this limit, even if there are
#     available resources. This is typically used to ensure a consistent performance of
#     resource pools independent of available resources. If set to -1, then there is no
#     fixed limit on resource usage (only bounded by available resources and shares). Units
#     are MB for memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_limit {
   my ($self, %args) = @_;
   return $self->{'limit'}; 	
}

## @method set_limit ()
# Sets the given value for 'limit' property.
# 
# @param limit  - New value for the field.
# The utilization of a resource pool will not exceed this limit, even if there are
#     available resources. This is typically used to ensure a consistent performance of
#     resource pools independent of available resources. If set to -1, then there is no
#     fixed limit on resource usage (only bounded by available resources and shares). Units
#     are MB for memory, and MHz for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_limit {
   my ($self, %args) = @_;
   $self->{'limit'} = $args{'limit'}; 
   return;	
}

## @method get_shares ()
# Gets the value of 'shares' property.
#
# @retval shares - The current value of the field.
# Shares are used in case of resource contention. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
# Optional#
sub get_shares {
   my ($self, %args) = @_;
   return $self->{'shares'}; 	
}

## @method set_shares ()
# Sets the given value for 'shares' property.
# 
# @param shares  - New value for the field.
# Shares are used in case of resource contention. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
sub set_shares {
   my ($self, %args) = @_;
   $self->{'shares'} = $args{'shares'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::ResourcePool::UpdateSpec
#
#
# The   *class*  contains specification for updating the configuration of a resource
#     pool. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::ResourcePool::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::ResourcePool::UpdateSpec structure
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
   $self->{cpu_allocation} = $args{'cpu_allocation'};
   $self->{memory_allocation} = $args{'memory_allocation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::ResourcePool::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.resource_pool.update_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cpu_allocation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::ResourceAllocationUpdateSpec')));
   $self->set_binding_field('key' => 'memory_allocation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'ResourcePool::ResourceAllocationUpdateSpec')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the resource pool. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the resource pool. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_cpu_allocation ()
# Gets the value of 'cpu_allocation' property.
#
# @retval cpu_allocation - The current value of the field.
# Resource allocation for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_cpu_allocation {
   my ($self, %args) = @_;
   return $self->{'cpu_allocation'}; 	
}

## @method set_cpu_allocation ()
# Sets the given value for 'cpu_allocation' property.
# 
# @param cpu_allocation  - New value for the field.
# Resource allocation for CPU. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_cpu_allocation {
   my ($self, %args) = @_;
   $self->{'cpu_allocation'} = $args{'cpu_allocation'}; 
   return;	
}

## @method get_memory_allocation ()
# Gets the value of 'memory_allocation' property.
#
# @retval memory_allocation - The current value of the field.
# Resource allocation for memory. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_memory_allocation {
   my ($self, %args) = @_;
   return $self->{'memory_allocation'}; 	
}

## @method set_memory_allocation ()
# Sets the given value for 'memory_allocation' property.
# 
# @param memory_allocation  - New value for the field.
# Resource allocation for memory. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_memory_allocation {
   my ($self, %args) = @_;
   $self->{'memory_allocation'} = $args{'memory_allocation'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::ResourcePool service
#########################################################################################
