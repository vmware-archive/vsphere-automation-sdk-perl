########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Settings.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings``
#     *interface*  provides  *methods*  to get or update settings related to the TPM 2.0
#     attestation protocol behavior. This  *interface*  was added in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::SettingsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.settings';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
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

## @method get_task ()
# Return the TPM 2.0 protocol settings. This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# The settings.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``cluster``  doesn&apos;t match to any cluster in the vCenter.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub get_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'get$task',
                         method_args => \%args);
}


## @method update_task ()
# Set the TPM 2.0 protocol settings. This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The id of the cluster on which the operation will be executed.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] The settings.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the spec is invalid or cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``cluster``  doesn&apos;t match to any cluster in the vCenter.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub update_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'update$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health``
#     *enumerated type*  is indicator for the consistency of the hosts status in the
#     cluster. This  *enumeration*  was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health::NONE #
#No status available. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health::OK #
#Each host in the cluster is in consistent state with the rest hosts in the cluster. This 
# *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health::WARNING #
#Attestation is functioning, however there is an issue that requires attention. This 
# *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health::ERROR #
#Not all hosts in the cluster are in consistent state. This  *constant*  was added in
# vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health;

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
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.settings.health',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Info``
#     *class*  contains information that describes the TPM 2.0 protocol settings. This 
#     *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{require_endorsement_keys} = $args{'require_endorsement_keys'};
   $self->{require_certificate_validation} = $args{'require_certificate_validation'};
   $self->{health} = $args{'health'};
   $self->{details} = $args{'details'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.settings.info');
   $self->set_binding_field('key' => 'require_endorsement_keys', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'require_certificate_validation', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2', 'type_name' => 'Settings::Health'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_require_endorsement_keys ()
# Gets the value of 'require_endorsement_keys' property.
#
# @retval require_endorsement_keys - The current value of the field.
# Require registered TPM endorsement keys. <p>
# 
# During attestation, the attested host will always send its endorsement key to the
#     Attestation Service. With this option is set, the Attestation Service will only
#     proceed with attestation if the endorsement key has been added to the list of
#     configured trusted endorsement keys.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
# boolean#
sub get_require_endorsement_keys {
   my ($self, %args) = @_;
   return $self->{'require_endorsement_keys'}; 	
}

## @method set_require_endorsement_keys ()
# Sets the given value for 'require_endorsement_keys' property.
# 
# @param require_endorsement_keys  - New value for the field.
# Require registered TPM endorsement keys. <p>
# 
# During attestation, the attested host will always send its endorsement key to the
#     Attestation Service. With this option is set, the Attestation Service will only
#     proceed with attestation if the endorsement key has been added to the list of
#     configured trusted endorsement keys.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
sub set_require_endorsement_keys {
   my ($self, %args) = @_;
   $self->{'require_endorsement_keys'} = $args{'require_endorsement_keys'}; 
   return;	
}

## @method get_require_certificate_validation ()
# Gets the value of 'require_certificate_validation' property.
#
# @retval require_certificate_validation - The current value of the field.
# Require TPM endorsement key certificate validation. <p>
# 
# During attestation, the attested host will send its endorsement key certificate if one
#     is available. With this option set, the Attestation Service will validate the
#     endorsement key certificate against the list of configured trusted TPM CA
#     certificates. Only endorsement key certificates that are signed by a trusted TPM CA
#     certificate will be able to successfully attest.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
# boolean#
sub get_require_certificate_validation {
   my ($self, %args) = @_;
   return $self->{'require_certificate_validation'}; 	
}

## @method set_require_certificate_validation ()
# Sets the given value for 'require_certificate_validation' property.
# 
# @param require_certificate_validation  - New value for the field.
# Require TPM endorsement key certificate validation. <p>
# 
# During attestation, the attested host will send its endorsement key certificate if one
#     is available. With this option set, the Attestation Service will validate the
#     endorsement key certificate against the list of configured trusted TPM CA
#     certificates. Only endorsement key certificates that are signed by a trusted TPM CA
#     certificate will be able to successfully attest.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
sub set_require_certificate_validation {
   my ($self, %args) = @_;
   $self->{'require_certificate_validation'} = $args{'require_certificate_validation'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# A health indicator which indicates whether each host in the cluster has the same
#     attestation settings. This  *field*  was added in vSphere API 7.0.0.
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
#     attestation settings. This  *field*  was added in vSphere API 7.0.0.
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
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health.OK`
#     or 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health.NONE`
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
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health.OK`
#     or 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::Health.NONE`
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


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::UpdateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::UpdateSpec``
#     *class*  contains information that describes changes to the TPM 2.0 protocol settings.
#     This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{require_endorsement_keys} = $args{'require_endorsement_keys'};
   $self->{require_certificate_validation} = $args{'require_certificate_validation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.attestation.tpm2.settings.update_spec');
   $self->set_binding_field('key' => 'require_endorsement_keys', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'require_certificate_validation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_require_endorsement_keys ()
# Gets the value of 'require_endorsement_keys' property.
#
# @retval require_endorsement_keys - The current value of the field.
# Require registered TPM endorsement keys. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_require_endorsement_keys {
   my ($self, %args) = @_;
   return $self->{'require_endorsement_keys'}; 	
}

## @method set_require_endorsement_keys ()
# Sets the given value for 'require_endorsement_keys' property.
# 
# @param require_endorsement_keys  - New value for the field.
# Require registered TPM endorsement keys. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_require_endorsement_keys {
   my ($self, %args) = @_;
   $self->{'require_endorsement_keys'} = $args{'require_endorsement_keys'}; 
   return;	
}

## @method get_require_certificate_validation ()
# Gets the value of 'require_certificate_validation' property.
#
# @retval require_certificate_validation - The current value of the field.
# Require TPM endorsement key certificate validation. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Optional#
sub get_require_certificate_validation {
   my ($self, %args) = @_;
   return $self->{'require_certificate_validation'}; 	
}

## @method set_require_certificate_validation ()
# Sets the given value for 'require_certificate_validation' property.
# 
# @param require_certificate_validation  - New value for the field.
# Require TPM endorsement key certificate validation. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_require_certificate_validation {
   my ($self, %args) = @_;
   $self->{'require_certificate_validation'} = $args{'require_certificate_validation'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Attestation::Tpm2::Settings service
#########################################################################################
