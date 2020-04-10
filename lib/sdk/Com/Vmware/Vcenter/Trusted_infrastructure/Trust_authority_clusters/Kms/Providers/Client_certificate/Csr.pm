########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Csr.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr``
#     *interface*  provides  *methods*  to create a certificate signing request(CSR). This 
#     *interface*  was added in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::CsrStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.client_certificate.csr';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'create_task'} = 'create$task';
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

## @method create_task ()
# Generate a certificate signing request (CSR) for the client certificate. This overwrites
# any existing CSR. <p>
# 
# The CSR will allow the certificate to be signed by a third party. Once the CSR is signed,
# certificate may be added as a client certificate. </p>
# 
# <p>
# 
#  Calling the API repeatedly will result in a generating a new CSR each time.</p>
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
# @retval 
# The client CSR, PEM and host ID which issued it.
# The return type will be string
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
# Get existing certificate signing request (CSR) for the client certificate. <p>
# 
# The CSR will allow the certificate to be signed by a third party. Once the CSR is signed,
# certificate may be added as a client certificate. </p>
# 
# <p>
# 
# </p>
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
# @retval 
# The client CSR, PEM and host ID which issued it.
# The return type will be string
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
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr::Info``
#     *class*  contains the certificate signing request. This  *class*  was added in vSphere
#     API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{csr} = $args{'csr'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.client_certificate.csr.info');
   $self->set_binding_field('key' => 'csr', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_csr ()
# Gets the value of 'csr' property.
#
# @retval csr - The current value of the field.
# Certificate signing request. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_csr {
   my ($self, %args) = @_;
   return $self->{'csr'}; 	
}

## @method set_csr ()
# Sets the given value for 'csr' property.
# 
# @param csr  - New value for the field.
# Certificate signing request. This  *field*  was added in vSphere API 7.0.0.
#
sub set_csr {
   my ($self, %args) = @_;
   $self->{'csr'} = $args{'csr'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Client_certificate::Csr service
#########################################################################################
