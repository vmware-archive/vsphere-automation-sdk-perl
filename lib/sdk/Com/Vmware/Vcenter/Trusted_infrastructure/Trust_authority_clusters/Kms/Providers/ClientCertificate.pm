########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ClientCertificate.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate``
#     *interface*  provides  *methods*  to add and retrieve client certificate. This 
#     *interface*  was added in vSphere API 7.0.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificateStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.client_certificate';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'create_task'} = 'create$task';
$_VAPI_OPERATION_IDS->{'get_task'} = 'get$task';
$_VAPI_OPERATION_IDS->{'update_task'} = 'update$task';

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

## @method create_task ()
# Generate a new self signed client certificate. Existing client certificate is overwritten.
# The key server will use this certificate to validate the client connection. This  *method*
#  was added in vSphere API 7.0.0.0.
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
sub create_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $provider = $args {provider};

   $self->validate_args (method_name => 'create$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'create$task',
                         method_args => \%args);
}


## @method get_task ()
# Return the existing client certificate. This  *method*  was added in vSphere API 7.0.0.0.
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
# Client certificate, PEM.
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


## @method update_task ()
# Update the client certificate. <p>
# 
# The key server will use this certificate to validate the client connection. If a client
# certificate already exists, it will be replaced. </p>
# 
# <p>
# 
# An optional private key can be specified if the certificate has already been
# provisioned.</p>
# 
# . This  *method*  was added in vSphere API 7.0.0.0.
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
# @param spec [REQUIRED] The update spec.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the certificate or private key is invalid or cluster/provider id are empty.
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


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::Info``
#     *class*  contains the client certificate used by the hosts in a cluster for
#     authenticating with the Provider. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{certificate} = $args{'certificate'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.client_certificate.info');
   $self->set_binding_field('key' => 'certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_certificate ()
# Gets the value of 'certificate' property.
#
# @retval certificate - The current value of the field.
# Public certificate. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_certificate {
   my ($self, %args) = @_;
   return $self->{'certificate'}; 	
}

## @method set_certificate ()
# Sets the given value for 'certificate' property.
# 
# @param certificate  - New value for the field.
# Public certificate. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_certificate {
   my ($self, %args) = @_;
   $self->{'certificate'} = $args{'certificate'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::UpdateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::UpdateSpec``
#     *class*  contains  *fields*  that describe the client certificate update for a Key
#     Provider. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{certificate} = $args{'certificate'};
   $self->{private_key} = $args{'private_key'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.client_certificate.update_spec');
   $self->set_binding_field('key' => 'certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'private_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   bless $self, $class;
   return $self;
}

## @method get_certificate ()
# Gets the value of 'certificate' property.
#
# @retval certificate - The current value of the field.
# Public certificate used by every host in the cluster. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# String#
sub get_certificate {
   my ($self, %args) = @_;
   return $self->{'certificate'}; 	
}

## @method set_certificate ()
# Sets the given value for 'certificate' property.
# 
# @param certificate  - New value for the field.
# Public certificate used by every host in the cluster. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_certificate {
   my ($self, %args) = @_;
   $self->{'certificate'} = $args{'certificate'}; 
   return;	
}

## @method get_private_key ()
# Gets the value of 'private_key' property.
#
# @retval private_key - The current value of the field.
# Private part of the certificate. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_private_key {
   my ($self, %args) = @_;
   return $self->{'private_key'}; 	
}

## @method set_private_key ()
# Sets the given value for 'private_key' property.
# 
# @param private_key  - New value for the field.
# Private part of the certificate. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_private_key {
   my ($self, %args) = @_;
   $self->{'private_key'} = $args{'private_key'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ClientCertificate service
#########################################################################################
