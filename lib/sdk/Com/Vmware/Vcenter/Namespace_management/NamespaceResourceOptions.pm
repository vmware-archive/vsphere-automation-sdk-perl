########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file NamespaceResourceOptions.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions
# The  ``Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions``  
#     *interface*  provides  *methods*  to get the objects used to create and modify
#     resource quotas on a namespace.
#

package Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions;

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
use Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptionsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.namespace_resource_options';


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
# Get the information about the objects used to set and update resource quota keys for
# version of Kubernetes running on {#link cluster}.
#
# @param cluster [REQUIRED] Identifier for the cluster hosting the namespace on which the resource quota needs to
#     be set.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Information about the structures representing the resource spec.
# The return type will be
# Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if cluster could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the specified cluster is not enabled for Namespaces.
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
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions::Info
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions::Info``  
#     *class*  contains the information about the objects used to set and update resource
#     quota keys on a namespace.

package Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{create_resource_quota_type} = $args{'create_resource_quota_type'};
   $self->{update_resource_quota_type} = $args{'update_resource_quota_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.namespace_resource_options.info');
   $self->set_binding_field('key' => 'create_resource_quota_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'update_resource_quota_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_create_resource_quota_type ()
# Gets the value of 'create_resource_quota_type' property.
#
# @retval create_resource_quota_type - The current value of the field.
# Identifier of the  *class*  used to set resource quotas on the namespace. See null and
#     null.
#
# ID#
sub get_create_resource_quota_type {
   my ($self, %args) = @_;
   return $self->{'create_resource_quota_type'}; 	
}

## @method set_create_resource_quota_type ()
# Sets the given value for 'create_resource_quota_type' property.
# 
# @param create_resource_quota_type  - New value for the field.
# Identifier of the  *class*  used to set resource quotas on the namespace. See null and
#     null.
#
sub set_create_resource_quota_type {
   my ($self, %args) = @_;
   $self->{'create_resource_quota_type'} = $args{'create_resource_quota_type'}; 
   return;	
}

## @method get_update_resource_quota_type ()
# Gets the value of 'update_resource_quota_type' property.
#
# @retval update_resource_quota_type - The current value of the field.
# Identifier of the  *class*  used to update resource quotas on the namespace. See null.
#
# ID#
sub get_update_resource_quota_type {
   my ($self, %args) = @_;
   return $self->{'update_resource_quota_type'}; 	
}

## @method set_update_resource_quota_type ()
# Sets the given value for 'update_resource_quota_type' property.
# 
# @param update_resource_quota_type  - New value for the field.
# Identifier of the  *class*  used to update resource quotas on the namespace. See null.
#
sub set_update_resource_quota_type {
   my ($self, %args) = @_;
   $self->{'update_resource_quota_type'} = $args{'update_resource_quota_type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::NamespaceResourceOptions service
#########################################################################################
