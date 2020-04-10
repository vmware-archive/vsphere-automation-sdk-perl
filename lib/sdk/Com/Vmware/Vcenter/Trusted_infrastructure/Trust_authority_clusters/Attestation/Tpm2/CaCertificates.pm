########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CaCertificates.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Trusted_infrastructure;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates``
#     *interface*  provides  *methods*  to manage Trusted Platform Module (TPM) CA
#     certificates. <p>
# 
# Endorsement Keys are typically packaged in a certificate that is signed by a
#     certificate authority (CA). This  *interface*  allows the CA certificate to be
#     registered with the Attestation Service in order to validate TPM EK certificates when
#     presented at attestation time.</p>
# 
# . This  *interface*  was added in vSphere API 7.0.0.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for TPM 2.0 CA certificates. This  *constant*  was added in vSphere API
# 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificatesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.ca_certificates';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'list_task'} = 'list$task';
$_VAPI_OPERATION_IDS->{'create_task'} = 'create$task';
$_VAPI_OPERATION_IDS->{'delete_task'} = 'delete$task';
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

## @method list_task ()
# Return a list of configured TPM CA certificates on a cluster. This  *method*  was added in
# vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# A list of configured TPM CA certificates.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the  ``cluster``  doesn&apos;t match to any cluster in the vCenter or given name is
#     not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub list_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'list$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'list$task',
                         method_args => \%args);
}


## @method create_task ()
# Add a new TPM CA certificate on a cluster. This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] The new CA certificate details.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::CreateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the certificate name exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the configuration is invalid or the cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``cluster``  doesn&apos;t match to any cluster in the vCenter.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub create_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'create$task',
                         method_args => \%args);
}


## @method delete_task ()
# Remove a TPM CA certificate on a cluster. This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param name [REQUIRED] The CA certificate name.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.CaCertificate).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the name is invalid or cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the  ``cluster``  doesn&apos;t match to any cluster in the vCenter or given name is
#     not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub delete_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $name = $args {name};

   $self->validate_args (method_name => 'delete$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'delete$task',
                         method_args => \%args);
}


## @method get_task ()
# Get the TPM CA certificate details on a cluster. This  *method*  was added in vSphere API
# 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param name [REQUIRED] The CA certificate name.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.CaCertificate).
# . The value must be str.
#
# @retval 
# CA certificate info.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the name is invalid or cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the CA certificate is not found or  ``cluster``  doesn&apos;t match to any cluster
#     in the vCenter.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub get_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $name = $args {name};

   $self->validate_args (method_name => 'get$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'get$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health``
#     *enumerated type*  is indicator for the consistency of the hosts status in the
#     cluster. This  *enumeration*  was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health::NONE #
#No status available. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health::OK #
#Each host in the cluster is in consistent state with the rest hosts in the cluster. This 
# *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health::WARNING #
#Attestation is funtioning, however there is an issue that requires attention. This 
# *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health::ERROR #
#Not all hosts in the cluster are in consistent state. This  *constant*  was added in
# vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health;

use constant {
    NONE =>  'NONE',
    OK =>  'OK',
    WARNING =>  'WARNING',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.ca_certificates.health',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Summary``
#     *class*  contains information that summarizes a TPM CA certificate. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Summary structure
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
   $self->{health} = $args{'health'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.ca_certificates.summary');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2', 'type_name' => 'CaCertificates::Health'));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# A unique name for the TPM CA certificate. This  *field*  was added in vSphere API
#     7.0.0.
#
# ID#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# A unique name for the TPM CA certificate. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# A health indicator which indicates whether each host in the cluster has the same CA
#     certs. This  *field*  was added in vSphere API 7.0.0.
#
# Health#
sub get_health {
   my ($self, %args) = @_;
   return $self->{'health'}; 	
}

## @method set_health ()
# Sets the given value for 'health' property.
# 
# @param health  - New value for the field.
# A health indicator which indicates whether each host in the cluster has the same CA
#     certs. This  *field*  was added in vSphere API 7.0.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Info``
#     *class*  contains information that describes a TPM CA certificate. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cert_chain} = $args{'cert_chain'};
   $self->{health} = $args{'health'};
   $self->{details} = $args{'details'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.ca_certificates.info');
   $self->set_binding_field('key' => 'cert_chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'X509CertChain'));
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2', 'type_name' => 'CaCertificates::Health'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_cert_chain ()
# Gets the value of 'cert_chain' property.
#
# @retval cert_chain - The current value of the field.
# The CA certificate chain. This  *field*  was added in vSphere API 7.0.0.
#
# X509CertChain#
sub get_cert_chain {
   my ($self, %args) = @_;
   return $self->{'cert_chain'}; 	
}

## @method set_cert_chain ()
# Sets the given value for 'cert_chain' property.
# 
# @param cert_chain  - New value for the field.
# The CA certificate chain. This  *field*  was added in vSphere API 7.0.0.
#
sub set_cert_chain {
   my ($self, %args) = @_;
   $self->{'cert_chain'} = $args{'cert_chain'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# A health indicator which indicates whether each host in the cluster has the same CA
#     certs. This  *field*  was added in vSphere API 7.0.0.
#
# Health#
sub get_health {
   my ($self, %args) = @_;
   return $self->{'health'}; 	
}

## @method set_health ()
# Sets the given value for 'health' property.
# 
# @param health  - New value for the field.
# A health indicator which indicates whether each host in the cluster has the same CA
#     certs. This  *field*  was added in vSphere API 7.0.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}

## @method get_details ()
# Gets the value of 'details' property.
#
# @retval details - The current value of the field.
# Details regarding the health. <p>
# 
# When the 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health.OK`
#     or 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health.NONE`
#     , this member will provide an actionable description of the issues present.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
# List#
sub get_details {
   my ($self, %args) = @_;
   return $self->{'details'}; 	
}

## @method set_details ()
# Sets the given value for 'details' property.
# 
# @param details  - New value for the field.
# Details regarding the health. <p>
# 
# When the 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health.OK`
#     or 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::Health.NONE`
#     , this member will provide an actionable description of the issues present.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::CreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::CreateSpec``
#     *class*  contains information that describes a TPM CA certificate. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::CreateSpec structure
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
   $self->{cert_chain} = $args{'cert_chain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.ca_certificates.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cert_chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'X509CertChain')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# A unique name for the TPM CA certificate. This  *field*  was added in vSphere API
#     7.0.0.
#
# ID#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# A unique name for the TPM CA certificate. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_cert_chain ()
# Gets the value of 'cert_chain' property.
#
# @retval cert_chain - The current value of the field.
# The CA certificate chain. <p>
# 
# Certificates may either be added one at a time, or as a chain. Adding the certificates
#     as a chain allows the group to be managed as a whole. For example, an entire chain can
#     be deleted in one 
#     :func:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates.delete`
#      operation. </p>
# 
# <p>
# 
# When certificates are added one at a time, the order must be root first, followed by
#     any intermediates. The intermediates certificates must also be ordered in the
#     direction from root to leaf. </p>
# 
# <p>
# 
# Similarly, when added as a chain the list must be ordered in the direction from root
#     to leaf.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_cert_chain {
   my ($self, %args) = @_;
   return $self->{'cert_chain'}; 	
}

## @method set_cert_chain ()
# Sets the given value for 'cert_chain' property.
# 
# @param cert_chain  - New value for the field.
# The CA certificate chain. <p>
# 
# Certificates may either be added one at a time, or as a chain. Adding the certificates
#     as a chain allows the group to be managed as a whole. For example, an entire chain can
#     be deleted in one 
#     :func:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates.delete`
#      operation. </p>
# 
# <p>
# 
# When certificates are added one at a time, the order must be root first, followed by
#     any intermediates. The intermediates certificates must also be ordered in the
#     direction from root to leaf. </p>
# 
# <p>
# 
# Similarly, when added as a chain the list must be ordered in the direction from root
#     to leaf.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
sub set_cert_chain {
   my ($self, %args) = @_;
   $self->{'cert_chain'} = $args{'cert_chain'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::CaCertificates service
#########################################################################################
