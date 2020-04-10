########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Credential.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Credential
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Credential``
#     *interface*  provides  *methods*  to add a credential for external key management
#     service(s). This  *interface*  was added in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Credential;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CredentialStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.credential';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'set_task'} = 'set$task';

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

## @method set_task ()
# Set the key server credential. This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param provider [REQUIRED] Identifier of the provider.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.Provider).
# . The value must be str.
#
# @param credential [REQUIRED] KMIP KMS password or AWS access key.
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If cluster or provider id are empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the provider or cluster is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#
sub set_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $provider = $args {provider};
   my $credential = $args {credential};

   $self->validate_args (method_name => 'set$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'set$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Credential service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Credential service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Credential service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Credential service
#########################################################################################
