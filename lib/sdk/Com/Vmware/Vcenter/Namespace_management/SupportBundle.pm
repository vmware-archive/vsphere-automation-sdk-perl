########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file SupportBundle.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::SupportBundle
# The  ``Com::Vmware::Vcenter::Namespace_management::SupportBundle``   *interface* 
#     provides  *methods*  to retrieve the cluster&apos;s Namespaces-related support bundle
#     download location.
#

package Com::Vmware::Vcenter::Namespace_management::SupportBundle;

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
use Com::Vmware::Vcenter::Namespace_management::SupportBundleStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.support_bundle';


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
# Returns the location  class
# Com::Vmware::Vcenter::Namespace_management::SupportBundle::Location  information for
# downloading the Namespaces-related support bundle for the specified cluster. <p>
# 
#  Retrieving a support bundle involves two steps: </p>
# 
# <ul>
#  <li>Step 1: Invoke  *method*  to provision a token and a URI.</li>
# <li>Step 2: Make an HTTP GET request using URI and one time used token returned in step 1
# to generate the support bundle and return it.</li>
# </ul> There can only be one valid token per cluster at any given time. If this  *method* 
# is invoked again for the same cluster identifier while a token still valid, the API will
# return the same  class Com::Vmware::Vcenter::Namespace_management::SupportBundle::Location
#  response. <p>
# 
#  The HTTP GET request will: </p>
# 
# <ul>
# <li> return 401 (Not Authorized) if the download URL is recognized, but the token is
# invalid.</li>
# <li> otherwise return 200 (OK), mark the token used (invalidating it for any future use),
# open a application/tar download stream for the client, and start the bundle process. As
# part of its work, the API will orchestrate support bundling on the worker nodes of a
# cluster. If a failure occurs during the collection of support bundle from worker node, the
# API will not abort the request, but will log a warning and move on to processing other
# worker nodes&apos; bundles. The API will only abort its operation if the content of the
# stream has been corrupted. When the API has to abort its operation (and the response
# stream), it will not provide any indication of failures to the client. The client will
# need to verify validity of the resultant file based on the format specified in the
# response&apos;s Content-Disposition header.</li>
#  </ul>
#
# @param cluster [REQUIRED] Identifier of cluster for which the Namespaces-related support bundle should be
#     generated.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# the download location of the support bundle for the cluster.
# The return type will be
# Com::Vmware::Vcenter::Namespace_management::SupportBundle::Location
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the specified cluster is not registered on this vCenter server.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Global.Diagnostics privilege.
#
sub create {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::SupportBundle service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::SupportBundle service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::SupportBundle service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::SupportBundle::Token
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::SupportBundle::Token``   *class* 
#     contains information about the token required in the HTTP GET request to generate the
#     support bundle.

package Com::Vmware::Vcenter::Namespace_management::SupportBundle::Token;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::SupportBundle::Token structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{token} = $args{'token'};
   $self->{expiry} = $args{'expiry'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::SupportBundle::Token');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.support_bundle.token');
   $self->set_binding_field('key' => 'token', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'expiry', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_token ()
# Gets the value of 'token' property.
#
# @retval token - The current value of the field.
# A one-time, short-lived token required in the HTTP header of the request to the url.
#     This token needs to be passed in as a header with the name
#     &quot;wcp-support-bundle-token&quot;.
#
# String#
sub get_token {
   my ($self, %args) = @_;
   return $self->{'token'}; 	
}

## @method set_token ()
# Sets the given value for 'token' property.
# 
# @param token  - New value for the field.
# A one-time, short-lived token required in the HTTP header of the request to the url.
#     This token needs to be passed in as a header with the name
#     &quot;wcp-support-bundle-token&quot;.
#
sub set_token {
   my ($self, %args) = @_;
   $self->{'token'} = $args{'token'}; 
   return;	
}

## @method get_expiry ()
# Gets the value of 'expiry' property.
#
# @retval expiry - The current value of the field.
# Expiry time of the token
#
# String#
sub get_expiry {
   my ($self, %args) = @_;
   return $self->{'expiry'}; 	
}

## @method set_expiry ()
# Sets the given value for 'expiry' property.
# 
# @param expiry  - New value for the field.
# Expiry time of the token
#
sub set_expiry {
   my ($self, %args) = @_;
   $self->{'expiry'} = $args{'expiry'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::SupportBundle::Location
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::SupportBundle::Location``   *class*
#     contains the URI location to download the per-cluster support bundle from, as well as
#     a token required (as a header on the HTTP request) to get the bundle. The validity of
#     the token is 5 minutes. After the token expires, any attempt to call the URI with said
#     token will fail.

package Com::Vmware::Vcenter::Namespace_management::SupportBundle::Location;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::SupportBundle::Location structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{url} = $args{'url'};
   $self->{wcp_support_bundle_token} = $args{'wcp_support_bundle_token'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::SupportBundle::Location');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.support_bundle.location');
   $self->set_binding_field('key' => 'url', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'wcp_support_bundle_token', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'SupportBundle::Token'));
   bless $self, $class;
   return $self;
}

## @method get_url ()
# Gets the value of 'url' property.
#
# @retval url - The current value of the field.
# Support Bundle Download URL.
#
# String#
sub get_url {
   my ($self, %args) = @_;
   return $self->{'url'}; 	
}

## @method set_url ()
# Sets the given value for 'url' property.
# 
# @param url  - New value for the field.
# Support Bundle Download URL.
#
sub set_url {
   my ($self, %args) = @_;
   $self->{'url'} = $args{'url'}; 
   return;	
}

## @method get_wcp_support_bundle_token ()
# Gets the value of 'wcp_support_bundle_token' property.
#
# @retval wcp_support_bundle_token - The current value of the field.
# Information about the token required in the HTTP GET request to generate the support
#     bundle.
#
# Token#
sub get_wcp_support_bundle_token {
   my ($self, %args) = @_;
   return $self->{'wcp_support_bundle_token'}; 	
}

## @method set_wcp_support_bundle_token ()
# Sets the given value for 'wcp_support_bundle_token' property.
# 
# @param wcp_support_bundle_token  - New value for the field.
# Information about the token required in the HTTP GET request to generate the support
#     bundle.
#
sub set_wcp_support_bundle_token {
   my ($self, %args) = @_;
   $self->{'wcp_support_bundle_token'} = $args{'wcp_support_bundle_token'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::SupportBundle service
#########################################################################################
