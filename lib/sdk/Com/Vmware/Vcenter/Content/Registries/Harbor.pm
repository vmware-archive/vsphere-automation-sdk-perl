########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Harbor.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Content::Registries::Harbor
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor``   *interface*  provides 
#     *methods*  to manage the lifecycle of an integrated Harbor container registry in
#     vCenter.
#

package Com::Vmware::Vcenter::Content::Registries::Harbor;

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
use Com::Vmware::Vcenter::Content::Registries::HarborStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.content.registries.harbor';


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

## @method create ()
# Creates a Harbor registry in the cluster.
#
# @param client_token [OPTIONAL] A unique token generated on the client for each creation request. The token should be
#     a universally unique identifier (UUID), for example: 
#     ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee
#     idempotent creation.
# If not specified, creation is not idempotent.
# . The value must be String or None.
#
# @param spec [REQUIRED] Specification for creating the Harbor registry.
# . The value must be Com::Vmware::Vcenter::Content::Registries::Harbor::CreateSpec.
#
# @retval 
# Identifier of the deployed registry.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a Harbor already exists in the associated cluster.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if resources/objects could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if  :attr:`Com::Vmware::Vcenter::Content::Registries::Harbor::CreateSpec.cluster` 
#     does not have vSphere namespace enabled.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``spec``  contains any errors.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have ContentLibrary.ManageRegistry and/or
#     CertificateAuthority.Manage privilege, or user does not have
#     ContentLibrary.ManageClusterRegistryResource privilege on 
#     :attr:`Com::Vmware::Vcenter::Content::Registries::Harbor::CreateSpec.cluster` .
#
sub create {
   my ($self, %args) = @_;
   my $client_token = $args {client_token};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method delete ()
# Delete the Harbor registry in the cluster. All Harbor projects, repositories and images
# will be deleted upon Harbor registry deletion.
#
# @param registry [REQUIRED] Identifier of the registry.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a registry specified by  ``registry``  could not be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have ContentLibrary.ManageRegistry privilege.
#
sub delete {
   my ($self, %args) = @_;
   my $registry = $args {registry};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method get ()
# Get detailed information of the Harbor registry.
#
# @param registry [REQUIRED] Identifier of the registry.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry).
# . The value must be str.
#
# @retval 
# Information about the registry.
# The return type will be Com::Vmware::Vcenter::Content::Registries::Harbor::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a Harbor registry specified by  ``registry``  could not be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub get {
   my ($self, %args) = @_;
   my $registry = $args {registry};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns basic information of all Harbor registries.
#
# @retval 
# The list of basic information of all Harbor registries.
# The return type will be Array of
# Com::Vmware::Vcenter::Content::Registries::Harbor::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Content::Registries::Harbor service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Content::Registries::Harbor service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Content::Registries::Harbor service
#########################################################################################

## @class Com::Vmware::Vcenter::Content::Registries::Harbor::StorageSpec
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::StorageSpec``   *class* 
#     contains the specification required to configure storage associated with a Harbor
#     registry. In this version, Harbor registry is created in Kubernetes environment,
#     information in this  *class*  will result in storage quotas on a Kubernetes namespace.

package Com::Vmware::Vcenter::Content::Registries::Harbor::StorageSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::StorageSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{policy} = $args{'policy'};
   $self->{limit} = $args{'limit'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::StorageSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.harbor.storage_spec');
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier of the storage policy.
#
# ID#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier of the storage policy.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}

## @method get_limit ()
# Gets the value of 'limit' property.
#
# @retval limit - The current value of the field.
# The maximum amount of storage (in mebibytes) which can be utilized by the registry for
#     this specification.
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
# The maximum amount of storage (in mebibytes) which can be utilized by the registry for
#     this specification.
#
sub set_limit {
   my ($self, %args) = @_;
   $self->{'limit'} = $args{'limit'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Content::Registries::Harbor::StorageInfo
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::StorageInfo``   *class* 
#     contains the detailed information about storage used by the Harbor registry.

package Com::Vmware::Vcenter::Content::Registries::Harbor::StorageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::StorageInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{policy} = $args{'policy'};
   $self->{capacity} = $args{'capacity'};
   $self->{used} = $args{'used'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::StorageInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.harbor.storage_info');
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'used', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier of the storage policy.
#
# ID#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier of the storage policy.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}

## @method get_capacity ()
# Gets the value of 'capacity' property.
#
# @retval capacity - The current value of the field.
# Total capacity for the registry storage (in mebibytes). This is the storage limit set
#     on the Harbor registry. If a storage limit was not set on the registry, the default
#     registry capacity - 204800 mebibytes is used.
#
# long#
sub get_capacity {
   my ($self, %args) = @_;
   return $self->{'capacity'}; 	
}

## @method set_capacity ()
# Sets the given value for 'capacity' property.
# 
# @param capacity  - New value for the field.
# Total capacity for the registry storage (in mebibytes). This is the storage limit set
#     on the Harbor registry. If a storage limit was not set on the registry, the default
#     registry capacity - 204800 mebibytes is used.
#
sub set_capacity {
   my ($self, %args) = @_;
   $self->{'capacity'} = $args{'capacity'}; 
   return;	
}

## @method get_used ()
# Gets the value of 'used' property.
#
# @retval used - The current value of the field.
# Overall storage used by the registry (in mebibytes). This is the sum of used storage
#     associated with storage policies configured for the registry.
#
# long#
sub get_used {
   my ($self, %args) = @_;
   return $self->{'used'}; 	
}

## @method set_used ()
# Sets the given value for 'used' property.
# 
# @param used  - New value for the field.
# Overall storage used by the registry (in mebibytes). This is the sum of used storage
#     associated with storage policies configured for the registry.
#
sub set_used {
   my ($self, %args) = @_;
   $self->{'used'} = $args{'used'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Content::Registries::Harbor::GarbageCollection
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::GarbageCollection``  
#     *class*  contains garbage collection configuration for the Harbor registry.

package Com::Vmware::Vcenter::Content::Registries::Harbor::GarbageCollection;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::GarbageCollection structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'WEEKLY' => ['day_of_week', 'hour', 'minute'],
               'DAILY' => ['hour', 'minute'],
               'NONE' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{day_of_week} = $args{'day_of_week'};
   $self->{hour} = $args{'hour'};
   $self->{minute} = $args{'minute'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::GarbageCollection');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.harbor.garbage_collection');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries', 'type_name' => 'Recurrence'));
   $self->set_binding_field('key' => 'day_of_week', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries', 'type_name' => 'DayOfWeek')));
   $self->set_binding_field('key' => 'hour', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'minute', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Frequency of garbage collection.
#
# Recurrence#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Frequency of garbage collection.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_day_of_week ()
# Gets the value of 'day_of_week' property.
#
# @retval day_of_week - The current value of the field.
# Day of the week when garbage collection should run.
#
# optional#
sub get_day_of_week {
   my ($self, %args) = @_;
   return $self->{'day_of_week'}; 	
}

## @method set_day_of_week ()
# Sets the given value for 'day_of_week' property.
# 
# @param day_of_week  - New value for the field.
# Day of the week when garbage collection should run.
#
sub set_day_of_week {
   my ($self, %args) = @_;
   $self->{'day_of_week'} = $args{'day_of_week'}; 
   return;	
}

## @method get_hour ()
# Gets the value of 'hour' property.
#
# @retval hour - The current value of the field.
# Hour at which garbage collection should run.
#
# optional#
sub get_hour {
   my ($self, %args) = @_;
   return $self->{'hour'}; 	
}

## @method set_hour ()
# Sets the given value for 'hour' property.
# 
# @param hour  - New value for the field.
# Hour at which garbage collection should run.
#
sub set_hour {
   my ($self, %args) = @_;
   $self->{'hour'} = $args{'hour'}; 
   return;	
}

## @method get_minute ()
# Gets the value of 'minute' property.
#
# @retval minute - The current value of the field.
# Minute at which garbage collection should run.
#
# optional#
sub get_minute {
   my ($self, %args) = @_;
   return $self->{'minute'}; 	
}

## @method set_minute ()
# Sets the given value for 'minute' property.
# 
# @param minute  - New value for the field.
# Minute at which garbage collection should run.
#
sub set_minute {
   my ($self, %args) = @_;
   $self->{'minute'} = $args{'minute'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Content::Registries::Harbor::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::CreateSpec``   *class* 
#     contains the specification required to create a Harbor registry.

package Com::Vmware::Vcenter::Content::Registries::Harbor::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::CreateSpec structure
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
   $self->{garbage_collection} = $args{'garbage_collection'};
   $self->{storage} = $args{'storage'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.harbor.create_spec');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'garbage_collection', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries', 'type_name' => 'Harbor::GarbageCollection')));
   $self->set_binding_field('key' => 'storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries', 'type_name' => 'Harbor::StorageSpec')));
   bless $self, $class;
   return $self;
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifier of the cluster hosting the registry.
#
# Optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Identifier of the cluster hosting the registry.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_garbage_collection ()
# Gets the value of 'garbage_collection' property.
#
# @retval garbage_collection - The current value of the field.
# Garbage collection configuration for the Harbor registry.
#
# Optional#
sub get_garbage_collection {
   my ($self, %args) = @_;
   return $self->{'garbage_collection'}; 	
}

## @method set_garbage_collection ()
# Sets the given value for 'garbage_collection' property.
# 
# @param garbage_collection  - New value for the field.
# Garbage collection configuration for the Harbor registry.
#
sub set_garbage_collection {
   my ($self, %args) = @_;
   $self->{'garbage_collection'} = $args{'garbage_collection'}; 
   return;	
}

## @method get_storage ()
# Gets the value of 'storage' property.
#
# @retval storage - The current value of the field.
# Storage associated with the Harbor registry. The list contains only one storage
#     backing in this version.
#
# List#
sub get_storage {
   my ($self, %args) = @_;
   return $self->{'storage'}; 	
}

## @method set_storage ()
# Sets the given value for 'storage' property.
# 
# @param storage  - New value for the field.
# Storage associated with the Harbor registry. The list contains only one storage
#     backing in this version.
#
sub set_storage {
   my ($self, %args) = @_;
   $self->{'storage'} = $args{'storage'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Content::Registries::Harbor::Summary
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::Summary``   *class* 
#     contains basic information about a running Harbor registry.

package Com::Vmware::Vcenter::Content::Registries::Harbor::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::Summary structure
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
   $self->{registry} = $args{'registry'};
   $self->{version} = $args{'version'};
   $self->{ui_access_url} = $args{'ui_access_url'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.harbor.summary');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'registry', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ui_access_url', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   bless $self, $class;
   return $self;
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifier of the cluster.
#
# Optional#
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

## @method get_registry ()
# Gets the value of 'registry' property.
#
# @retval registry - The current value of the field.
# Identifier of the registry.
#
# ID#
sub get_registry {
   my ($self, %args) = @_;
   return $self->{'registry'}; 	
}

## @method set_registry ()
# Sets the given value for 'registry' property.
# 
# @param registry  - New value for the field.
# Identifier of the registry.
#
sub set_registry {
   my ($self, %args) = @_;
   $self->{'registry'} = $args{'registry'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the registry.
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version of the registry.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_ui_access_url ()
# Gets the value of 'ui_access_url' property.
#
# @retval ui_access_url - The current value of the field.
# URL to access the UI of the registry.
#
# URI#
sub get_ui_access_url {
   my ($self, %args) = @_;
   return $self->{'ui_access_url'}; 	
}

## @method set_ui_access_url ()
# Sets the given value for 'ui_access_url' property.
# 
# @param ui_access_url  - New value for the field.
# URL to access the UI of the registry.
#
sub set_ui_access_url {
   my ($self, %args) = @_;
   $self->{'ui_access_url'} = $args{'ui_access_url'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Content::Registries::Harbor::Info
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::Info``   *class*  contains
#     detailed information about a running Harbor registry.

package Com::Vmware::Vcenter::Content::Registries::Harbor::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::Info structure
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
   $self->{namespace} = $args{'namespace'};
   $self->{version} = $args{'version'};
   $self->{creation_time} = $args{'creation_time'};
   $self->{ui_access_url} = $args{'ui_access_url'};
   $self->{cert_chain} = $args{'cert_chain'};
   $self->{garbage_collection} = $args{'garbage_collection'};
   $self->{storage} = $args{'storage'};
   $self->{health} = $args{'health'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.harbor.info');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'namespace', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'creation_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'ui_access_url', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'cert_chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'garbage_collection', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries', 'type_name' => 'Harbor::GarbageCollection'));
   $self->set_binding_field('key' => 'storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries', 'type_name' => 'Harbor::StorageInfo')));
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries', 'type_name' => 'Health::Info'));
   bless $self, $class;
   return $self;
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifier of the cluster.
#
# Optional#
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

## @method get_namespace ()
# Gets the value of 'namespace' property.
#
# @retval namespace - The current value of the field.
# Identifier of the Harbor namespace in case it is created in a Kubernetes environment.
#
# Optional#
sub get_namespace {
   my ($self, %args) = @_;
   return $self->{'namespace'}; 	
}

## @method set_namespace ()
# Sets the given value for 'namespace' property.
# 
# @param namespace  - New value for the field.
# Identifier of the Harbor namespace in case it is created in a Kubernetes environment.
#
sub set_namespace {
   my ($self, %args) = @_;
   $self->{'namespace'} = $args{'namespace'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the registry.
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version of the registry.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_creation_time ()
# Gets the value of 'creation_time' property.
#
# @retval creation_time - The current value of the field.
# The date and time when the harbor registry was created.
#
# DateTime#
sub get_creation_time {
   my ($self, %args) = @_;
   return $self->{'creation_time'}; 	
}

## @method set_creation_time ()
# Sets the given value for 'creation_time' property.
# 
# @param creation_time  - New value for the field.
# The date and time when the harbor registry was created.
#
sub set_creation_time {
   my ($self, %args) = @_;
   $self->{'creation_time'} = $args{'creation_time'}; 
   return;	
}

## @method get_ui_access_url ()
# Gets the value of 'ui_access_url' property.
#
# @retval ui_access_url - The current value of the field.
# URL to access the UI of the registry.
#
# URI#
sub get_ui_access_url {
   my ($self, %args) = @_;
   return $self->{'ui_access_url'}; 	
}

## @method set_ui_access_url ()
# Sets the given value for 'ui_access_url' property.
# 
# @param ui_access_url  - New value for the field.
# URL to access the UI of the registry.
#
sub set_ui_access_url {
   my ($self, %args) = @_;
   $self->{'ui_access_url'} = $args{'ui_access_url'}; 
   return;	
}

## @method get_cert_chain ()
# Gets the value of 'cert_chain' property.
#
# @retval cert_chain - The current value of the field.
# Harbor certificate chain in base64 format.
#
# List#
sub get_cert_chain {
   my ($self, %args) = @_;
   return $self->{'cert_chain'}; 	
}

## @method set_cert_chain ()
# Sets the given value for 'cert_chain' property.
# 
# @param cert_chain  - New value for the field.
# Harbor certificate chain in base64 format.
#
sub set_cert_chain {
   my ($self, %args) = @_;
   $self->{'cert_chain'} = $args{'cert_chain'}; 
   return;	
}

## @method get_garbage_collection ()
# Gets the value of 'garbage_collection' property.
#
# @retval garbage_collection - The current value of the field.
# Garbage collection information for the registry.
#
# GarbageCollection#
sub get_garbage_collection {
   my ($self, %args) = @_;
   return $self->{'garbage_collection'}; 	
}

## @method set_garbage_collection ()
# Sets the given value for 'garbage_collection' property.
# 
# @param garbage_collection  - New value for the field.
# Garbage collection information for the registry.
#
sub set_garbage_collection {
   my ($self, %args) = @_;
   $self->{'garbage_collection'} = $args{'garbage_collection'}; 
   return;	
}

## @method get_storage ()
# Gets the value of 'storage' property.
#
# @retval storage - The current value of the field.
# Storage information associated with the registry.
#
# List#
sub get_storage {
   my ($self, %args) = @_;
   return $self->{'storage'}; 	
}

## @method set_storage ()
# Sets the given value for 'storage' property.
# 
# @param storage  - New value for the field.
# Storage information associated with the registry.
#
sub set_storage {
   my ($self, %args) = @_;
   $self->{'storage'} = $args{'storage'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# Health status of the container registry.
#
# Info#
sub get_health {
   my ($self, %args) = @_;
   return $self->{'health'}; 	
}

## @method set_health ()
# Sets the given value for 'health' property.
# 
# @param health  - New value for the field.
# Health status of the container registry.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Content::Registries::Harbor service
#########################################################################################
