########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file TrustedPeerCertificates.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates
# Provides management operations for the TLS certificates trusted for communication with
#     peer key servers. <p>
# 
# To obtain the currently used TLS certificates use the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates
#       *interface* </p>
# 
# . This  *interface*  was added in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificatesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.trusted_peer_certificates';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'update_task'} = 'update$task';
$_VAPI_OPERATION_IDS->{'get_task'} = 'get$task';

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

## @method update_task ()
# Update trusted server certificate(s). <p>
# 
# The client will use these certificates to validate the server connection. The existing
# list of trusted certificates will be overwritten. </p>
# 
# <p>
# 
# The client will not trust the server connection until a server certificate has been
# set.</p>
# 
# . This  *method*  was added in vSphere API 7.0.0.
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
# @param spec [REQUIRED] The update spec
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If one or more certificates are invalid or the cluster/provider Id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the cluster or provider is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#
sub update_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $provider = $args {provider};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'update$task',
                         method_args => \%args);
}


## @method get_task ()
# Return the list of trusted server certificates. This  *method*  was added in vSphere API
# 7.0.0.
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
# @retval 
# Info containing server certificates, PEM.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If cluster or provider id are empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the cluster or provider is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#
sub get_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $provider = $args {provider};

   $self->validate_args (method_name => 'get$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'get$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::Info``
#     *class*  contains x509 certificate list. This  *class*  was added in vSphere API
#     7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{certificates} = $args{'certificates'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.trusted_peer_certificates.info');
   $self->set_binding_field('key' => 'certificates', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_certificates ()
# Gets the value of 'certificates' property.
#
# @retval certificates - The current value of the field.
# List of certificate strings, PEM format. This  *field*  was added in vSphere API
#     7.0.0.
#
# List#
sub get_certificates {
   my ($self, %args) = @_;
   return $self->{'certificates'}; 	
}

## @method set_certificates ()
# Sets the given value for 'certificates' property.
# 
# @param certificates  - New value for the field.
# List of certificate strings, PEM format. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_certificates {
   my ($self, %args) = @_;
   $self->{'certificates'} = $args{'certificates'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::UpdateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::UpdateSpec``
#     *class*  contains  *fields*  that describe the server certificate update for a Key
#     Provider. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{certificates} = $args{'certificates'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.trusted_peer_certificates.update_spec');
   $self->set_binding_field('key' => 'certificates', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_certificates ()
# Gets the value of 'certificates' property.
#
# @retval certificates - The current value of the field.
# Public certificates of key server to trust. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_certificates {
   my ($self, %args) = @_;
   return $self->{'certificates'}; 	
}

## @method set_certificates ()
# Sets the given value for 'certificates' property.
# 
# @param certificates  - New value for the field.
# Public certificates of key server to trust. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_certificates {
   my ($self, %args) = @_;
   $self->{'certificates'} = $args{'certificates'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates service
#########################################################################################
