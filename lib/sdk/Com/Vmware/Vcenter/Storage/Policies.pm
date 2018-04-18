########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Policies.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Storage::Policies
# The  ``Com::Vmware::Vcenter::Storage::Policies``   *interface*  provides  *methods* 
#     for managing the storage policies. This  *interface*  was added in vSphere API 6.7
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for vAPI metadata policy. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Vcenter::Storage::Policies;

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
use Com::Vmware::Vcenter::Storage::PoliciesStub;

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

## @method list ()
# Returns information about at most 1024 visible (subject to permission checks) storage
# solicies availabe in vCenter. These storage policies can be used for provisioning virtual
# machines or disks. This  *method*  was added in vSphere API 6.7
#
# @param filter [OPTIONAL] Specification of matching storage policies for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Storage::Policies::FilterSpec  with all  *fields*   *null* 
#     which means all storage policies match the filter
# . The value must be Com::Vmware::Vcenter::Storage::Policies::FilterSpec or None.
#
# @retval 
# Commonly used Information about the storage policies.
# The return type will be Array of Com::Vmware::Vcenter::Storage::Policies::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  class Com::Vmware::Vcenter::Storage::Policies::FilterSpec  contains a value
#     that is not supported by the server.
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
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 1024 storage policies exist.
#

sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method check_compatibility ()
# Returns datastore compatibility summary about a specific storage policy. This  *method* 
# was added in vSphere API 6.7
#
# @param policy [REQUIRED] The storage policy identifier
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.StoragePolicy).
# . The value must be str.
#
# @param datastores [REQUIRED] Datastores used to check compatibility against a storage policy. The number of
#     datastores is limited to 1024.
# The value must be an identifier for the resource type getQualifiedName(Datastore).
# . The value must be Set of str.
#
# @retval 
# datastore compatibility summary about a specific storage policy.
# The return type will be Com::Vmware::Vcenter::Storage::Policies::CompatibilityInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the storage policy specified does not exist.
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
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if input more than 1024 datastores.
#

sub check_compatibility {
   my ($self, %args) = @_;
   my $policy = $args {policy};
   my $datastores = $args {datastores};

   $self->validate_args (method_name => 'check_compatibility',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_compatibility',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Storage::Policies service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Storage::Policies service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Storage::Policies service
#########################################################################################

## @class Com::Vmware::Vcenter::Storage::Policies::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Storage::Policies::FilterSpec``   *class*  contains 
#     *fields*  used to filter the results when listing the storage policies (see 
#     :func:`Com::Vmware::Vcenter::Storage::Policies.list` ). This  *class*  was added in
#     vSphere API 6.7

package Com::Vmware::Vcenter::Storage::Policies::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{policies} = $args{'policies'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.storage.policies.filter_spec');
   $self->set_binding_field('key' => 'policies', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_policies ()
# Gets the value of 'policies' property.
#
# @retval policies - The current value of the field.
# Identifiers of storage policies that can match the filter. This  *field*  was added in
#     vSphere API 6.7
#
# Optional#
sub get_policies {
   my ($self, %args) = @_;
   return $self->{'policies'}; 	
}

## @method set_policies ()
# Sets the given value for 'policies' property.
# 
# @param policies  - New value for the field.
# Identifiers of storage policies that can match the filter. This  *field*  was added in
#     vSphere API 6.7
#
sub set_policies {
   my ($self, %args) = @_;
   $self->{'policies'} = $args{'policies'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Storage::Policies::Summary
#
#
# The  ``Com::Vmware::Vcenter::Storage::Policies::Summary``   *class*  contains commonly
#     used information about a storage policy. This  *class*  was added in vSphere API 6.7

package Com::Vmware::Vcenter::Storage::Policies::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::Summary structure
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
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.storage.policies.summary');
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier of the storage policy. This  *field*  was added in vSphere API 6.7
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
# Identifier of the storage policy. This  *field*  was added in vSphere API 6.7
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the storage policy. This  *field*  was added in vSphere API 6.7
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
# Name of the storage policy. This  *field*  was added in vSphere API 6.7
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the storage policy. This  *field*  was added in vSphere API 6.7
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the storage policy. This  *field*  was added in vSphere API 6.7
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Storage::Policies::CompatibleDatastoreInfo
#
#
# The  ``Com::Vmware::Vcenter::Storage::Policies::CompatibleDatastoreInfo``   *class* 
#     contains compatible datastore&apos;s information. This  *class*  was added in vSphere
#     API 6.7

package Com::Vmware::Vcenter::Storage::Policies::CompatibleDatastoreInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::CompatibleDatastoreInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore} = $args{'datastore'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::CompatibleDatastoreInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.storage.policies.compatible_datastore_info');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Identifier of the datastore. This  *field*  was added in vSphere API 6.7
#
# ID#
sub get_datastore {
   my ($self, %args) = @_;
   return $self->{'datastore'}; 	
}

## @method set_datastore ()
# Sets the given value for 'datastore' property.
# 
# @param datastore  - New value for the field.
# Identifier of the datastore. This  *field*  was added in vSphere API 6.7
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Storage::Policies::CompatibilityInfo
#
#
# The  ``Com::Vmware::Vcenter::Storage::Policies::CompatibilityInfo``   *class* 
#     contains info about a list of datastores compatible with a specific storage policy.
#     This  *class*  was added in vSphere API 6.7

package Com::Vmware::Vcenter::Storage::Policies::CompatibilityInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Storage::Policies::CompatibilityInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{compatible_datastores} = $args{'compatible_datastores'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Storage::Policies::CompatibilityInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.storage.policies.compatibility_info');
   $self->set_binding_field('key' => 'compatible_datastores', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Storage', 'type_name' => 'Policies::CompatibleDatastoreInfo')));
   bless $self, $class;
   return $self;
}

## @method get_compatible_datastores ()
# Gets the value of 'compatible_datastores' property.
#
# @retval compatible_datastores - The current value of the field.
# Info about a list of datastores compatible with a specific storage policy. This 
#     *field*  was added in vSphere API 6.7
#
# List#
sub get_compatible_datastores {
   my ($self, %args) = @_;
   return $self->{'compatible_datastores'}; 	
}

## @method set_compatible_datastores ()
# Sets the given value for 'compatible_datastores' property.
# 
# @param compatible_datastores  - New value for the field.
# Info about a list of datastores compatible with a specific storage policy. This 
#     *field*  was added in vSphere API 6.7
#
sub set_compatible_datastores {
   my ($self, %args) = @_;
   $self->{'compatible_datastores'} = $args{'compatible_datastores'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Storage::Policies service
#########################################################################################
