########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file EndorsementKeys.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys``
#     *interface*  provides  *methods*  to manage Trusted Platform Module (TPM) Endorsement
#     Keys (EK) on a cluster level. This  *interface*  was added in vSphere API 7.0.0.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for TPM 2.0 endorsement keys. This  *constant*  was added in vSphere API
# 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeysStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.endorsement_keys';

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
# Return a list of configured TPM endorsement keys in a cluster. This  *method*  was added
# in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# A list of configured endorsement keys.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the cluster is not found.
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
# Add a new TPM endorsement key on a cluster. This  *method*  was added in vSphere API
# 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] The configuration.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::CreateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the endorsement key name exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the configuration is invalid or cluster id is empty.
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
# Remove a TPM endorsement key on a cluster. This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param name [REQUIRED] The endorsement key name.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.EndorsementKey).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the name is invalid or cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the name is not found or  ``cluster``  doesn&apos;t match to any cluster in the
#     vCenter.
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
# Get the TPM endorsement key details on a cluster. This  *method*  was added in vSphere API
# 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param name [REQUIRED] The endorsement key name.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.EndorsementKey).
# . The value must be str.
#
# @retval 
# The endorsement key info.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the name is invalid or cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the endorsement key is not found or  ``cluster``  doesn&apos;t match to any cluster
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
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health``
#     *enumerated type*  is indicator for the consistency of the hosts status in the
#     cluster. This  *enumeration*  was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health::NONE #
#No status available. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health::OK #
#Each host in the cluster is in consistent state with the rest hosts in the cluster. This 
# *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health::WARNING #
#Attestation is functioning, however there is an issue that requires attention. This 
# *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health::ERROR #
#Not all hosts in the cluster are in consistent state. This  *constant*  was added in
# vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health;

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
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.endorsement_keys.health',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Summary``
#     *class*  contains information that summarizes a TPM endorsement key. This  *class* 
#     was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Summary structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.endorsement_keys.summary');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2', 'type_name' => 'EndorsementKeys::Health'));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# A unique name for the TPM endorsement key. This  *field*  was added in vSphere API
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
# A unique name for the TPM endorsement key. This  *field*  was added in vSphere API
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
# A health indicator which indicates whether each host in the cluster has the same
#     endorsement key. This  *field*  was added in vSphere API 7.0.0.
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
# A health indicator which indicates whether each host in the cluster has the same
#     endorsement key. This  *field*  was added in vSphere API 7.0.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Info``
#     *class*  contains information that describes a TPM endorsement key. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{public_key} = $args{'public_key'};
   $self->{health} = $args{'health'};
   $self->{details} = $args{'details'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.endorsement_keys.info');
   $self->set_binding_field('key' => 'public_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2', 'type_name' => 'EndorsementKeys::Health'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_public_key ()
# Gets the value of 'public_key' property.
#
# @retval public_key - The current value of the field.
# TPM public endorsement key in PEM format. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_public_key {
   my ($self, %args) = @_;
   return $self->{'public_key'}; 	
}

## @method set_public_key ()
# Sets the given value for 'public_key' property.
# 
# @param public_key  - New value for the field.
# TPM public endorsement key in PEM format. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_public_key {
   my ($self, %args) = @_;
   $self->{'public_key'} = $args{'public_key'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# A health indicator which indicates whether each host in the cluster has the same
#     endorsement key. This  *field*  was added in vSphere API 7.0.0.
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
# A health indicator which indicates whether each host in the cluster has the same
#     endorsement key. This  *field*  was added in vSphere API 7.0.0.
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
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health.OK`
#     or 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health.NONE`
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
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health.OK`
#     or 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::Health.NONE`
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


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::CreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::CreateSpec``
#       *class*  contains information that describes a TPM endorsement key. <p>
# 
# Only one of 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::CreateSpec.public_key`
#     or 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::CreateSpec.certificate`
#      must be specified.</p>
# 
# . This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::CreateSpec structure
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
   $self->{public_key} = $args{'public_key'};
   $self->{certificate} = $args{'certificate'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.endorsement_keys.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'public_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# A unique name for the TPM endorsement key. <p>
# 
# The unique name should be something that an administrator can use to easily identify
#     the remote system. For example, the hostname, or hardware UUID.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
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
# A unique name for the TPM endorsement key. <p>
# 
# The unique name should be something that an administrator can use to easily identify
#     the remote system. For example, the hostname, or hardware UUID.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_public_key ()
# Gets the value of 'public_key' property.
#
# @retval public_key - The current value of the field.
# TPM public endorsement key in PEM format. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_public_key {
   my ($self, %args) = @_;
   return $self->{'public_key'}; 	
}

## @method set_public_key ()
# Sets the given value for 'public_key' property.
# 
# @param public_key  - New value for the field.
# TPM public endorsement key in PEM format. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_public_key {
   my ($self, %args) = @_;
   $self->{'public_key'} = $args{'public_key'}; 
   return;	
}

## @method get_certificate ()
# Gets the value of 'certificate' property.
#
# @retval certificate - The current value of the field.
# TPM endorsement key certificate in PEM format. <p>
# 
# When a endorsement key certificate is provided, it will be verified against the CA
#     certificate list. Endorsement key certificates that are not signed by one of the CA
#     certificates will be rejected. </p>
# 
# <p>
# 
# Using this format allows for failures to be caught during configuration rather than
#     later during attestation.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_certificate {
   my ($self, %args) = @_;
   return $self->{'certificate'}; 	
}

## @method set_certificate ()
# Sets the given value for 'certificate' property.
# 
# @param certificate  - New value for the field.
# TPM endorsement key certificate in PEM format. <p>
# 
# When a endorsement key certificate is provided, it will be verified against the CA
#     certificate list. Endorsement key certificates that are not signed by one of the CA
#     certificates will be rejected. </p>
# 
# <p>
# 
# Using this format allows for failures to be caught during configuration rather than
#     later during attestation.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
sub set_certificate {
   my ($self, %args) = @_;
   $self->{'certificate'} = $args{'certificate'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::EndorsementKeys service
#########################################################################################
