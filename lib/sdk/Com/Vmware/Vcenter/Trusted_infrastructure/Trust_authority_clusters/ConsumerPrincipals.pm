########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ConsumerPrincipals.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Trusted_infrastructure;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals``
#     *interface*  configures the token policies and STS trust necessary for the workload
#     vCenter to query the trusted services for their status. This  *interface*  was added
#     in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipalsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.consumer_principals';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'create_task'} = 'create$task';
$_VAPI_OPERATION_IDS->{'delete_task'} = 'delete$task';
$_VAPI_OPERATION_IDS->{'get_task'} = 'get$task';
$_VAPI_OPERATION_IDS->{'list_task'} = 'list$task';

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
# Creates a profile with the specified connection information on all hosts from a Trust
# Authority Cluster. This  *method*  was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The ID of the Trust Authority Cluster to configure.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] The CreateSpec specifying the connection information.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::CreateSpec.
#
# @retval 
# a unique identifier of the profile
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.authentication.clientprofile).
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a profile for the issuer already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no such cluster.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
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
# Removes the read-only policy configured on ESX for a specific principal. This  *method* 
# was added in vSphere API 7.0.0.
#
# @param cluster [REQUIRED] The ID of the Trust Authority Cluster to configure.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param profile [REQUIRED] The ID of the connection profile to modify.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.authentication.clientprofile).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no profile configured with that ID.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub delete_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $profile = $args {profile};

   $self->validate_args (method_name => 'delete$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'delete$task',
                         method_args => \%args);
}


## @method get_task ()
# Retrieve information for a specific profile. This  *method*  was added in vSphere API
# 7.0.0.
#
# @param cluster [REQUIRED] The ID of the Trust Authority Cluster on which the profile is configured.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param profile [REQUIRED] The ID of the profile.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.authentication.clientprofile).
# . The value must be str.
#
# @retval 
# information for a specific profile.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no profile configured with that ID.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub get_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $profile = $args {profile};

   $self->validate_args (method_name => 'get$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'get$task',
                         method_args => \%args);
}


## @method list_task ()
# Lists all policies configured on a specific cluster. This  *method*  was added in vSphere
# API 7.0.0.
#
# @param cluster [REQUIRED] The ID of the Trust Authority Cluster on which the profile is configured.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [OPTIONAL] A FilterSpec specifying the profiles to be listed.
# If {@term.unset} return all policies.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::FilterSpec
# or None.
#
# @retval 
# the list of profiles matching the filter for that cluster.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no profile configured with that ID.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub list_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'list$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'list$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Health
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Health``
#     *enumerated type*  defines the possible health states. This  *enumeration*  was added
#     in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Health::NONE #
#None. No status available. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Health::OK #
#OK. Health is normal. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Health::WARNING #
#Warning. Health is normal, however there is an issue that requires attention. This 
# *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Health::ERROR #
#Error. Not healthy. This  *constant*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Health;

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
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Health enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.consumer_principals.health',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Health');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::CreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::CreateSpec``
#     *class*  contains the information necessary to establish trust between a workload
#     vCenter and a Trust Authority Host. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::CreateSpec structure
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
   $self->{issuer_alias} = $args{'issuer_alias'};
   $self->{issuer} = $args{'issuer'};
   $self->{principal} = $args{'principal'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.consumer_principals.create_spec');
   $self->set_binding_field('key' => 'certificates', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'X509CertChain')));
   $self->set_binding_field('key' => 'issuer_alias', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'principal', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'StsPrincipal'));
   bless $self, $class;
   return $self;
}

## @method get_certificates ()
# Gets the value of 'certificates' property.
#
# @retval certificates - The current value of the field.
# The certificates used by the vCenter STS to sign tokens. This  *field*  was added in
#     vSphere API 7.0.0.
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
# The certificates used by the vCenter STS to sign tokens. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_certificates {
   my ($self, %args) = @_;
   $self->{'certificates'} = $args{'certificates'}; 
   return;	
}

## @method get_issuer_alias ()
# Gets the value of 'issuer_alias' property.
#
# @retval issuer_alias - The current value of the field.
# A user-friendly alias of the service which created and signed the security token. This
#      *field*  was added in vSphere API 7.0.0.
#
# ID#
sub get_issuer_alias {
   my ($self, %args) = @_;
   return $self->{'issuer_alias'}; 	
}

## @method set_issuer_alias ()
# Sets the given value for 'issuer_alias' property.
# 
# @param issuer_alias  - New value for the field.
# A user-friendly alias of the service which created and signed the security token. This
#      *field*  was added in vSphere API 7.0.0.
#
sub set_issuer_alias {
   my ($self, %args) = @_;
   $self->{'issuer_alias'} = $args{'issuer_alias'}; 
   return;	
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
# String#
sub get_issuer {
   my ($self, %args) = @_;
   return $self->{'issuer'}; 	
}

## @method set_issuer ()
# Sets the given value for 'issuer' property.
# 
# @param issuer  - New value for the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}

## @method get_principal ()
# Gets the value of 'principal' property.
#
# @retval principal - The current value of the field.
# The principal used by the vCenter to retrieve tokens. This  *field*  was added in
#     vSphere API 7.0.0.
#
# StsPrincipal#
sub get_principal {
   my ($self, %args) = @_;
   return $self->{'principal'}; 	
}

## @method set_principal ()
# Sets the given value for 'principal' property.
# 
# @param principal  - New value for the field.
# The principal used by the vCenter to retrieve tokens. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_principal {
   my ($self, %args) = @_;
   $self->{'principal'} = $args{'principal'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::FilterSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::FilterSpec``
#     *class*  contains data which identifies a connection profile on the trusted vCenter.
#     This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{principals} = $args{'principals'};
   $self->{issuer} = $args{'issuer'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.consumer_principals.filter_spec');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'principals', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'StsPrincipal'))));
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The unqiue identifier of a connection profile. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# The unqiue identifier of a connection profile. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_principals ()
# Gets the value of 'principals' property.
#
# @retval principals - The current value of the field.
# The principal used by the vCenter to retrieve tokens. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Optional#
sub get_principals {
   my ($self, %args) = @_;
   return $self->{'principals'}; 	
}

## @method set_principals ()
# Sets the given value for 'principals' property.
# 
# @param principals  - New value for the field.
# The principal used by the vCenter to retrieve tokens. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_principals {
   my ($self, %args) = @_;
   $self->{'principals'} = $args{'principals'}; 
   return;	
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Optional#
sub get_issuer {
   my ($self, %args) = @_;
   return $self->{'issuer'}; 	
}

## @method set_issuer ()
# Sets the given value for 'issuer' property.
# 
# @param issuer  - New value for the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Info``
#     *class*  contains the information necessary to establish trust between a workload
#     vCenter and a Trust Authority Host. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{principal} = $args{'principal'};
   $self->{issuer_alias} = $args{'issuer_alias'};
   $self->{issuer} = $args{'issuer'};
   $self->{certificates} = $args{'certificates'};
   $self->{health} = $args{'health'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.consumer_principals.info');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'principal', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'StsPrincipal'));
   $self->set_binding_field('key' => 'issuer_alias', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'certificates', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'X509CertChain')));
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters', 'type_name' => 'ConsumerPrincipals::Health'));
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The unqiue identifier of a connection profile. This  *field*  was added in vSphere API
#     7.0.0.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# The unqiue identifier of a connection profile. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_principal ()
# Gets the value of 'principal' property.
#
# @retval principal - The current value of the field.
# The principal used by the vCenter to retrieve tokens. Currently this is the vCenter
#     solution user. This  *field*  was added in vSphere API 7.0.0.
#
# StsPrincipal#
sub get_principal {
   my ($self, %args) = @_;
   return $self->{'principal'}; 	
}

## @method set_principal ()
# Sets the given value for 'principal' property.
# 
# @param principal  - New value for the field.
# The principal used by the vCenter to retrieve tokens. Currently this is the vCenter
#     solution user. This  *field*  was added in vSphere API 7.0.0.
#
sub set_principal {
   my ($self, %args) = @_;
   $self->{'principal'} = $args{'principal'}; 
   return;	
}

## @method get_issuer_alias ()
# Gets the value of 'issuer_alias' property.
#
# @retval issuer_alias - The current value of the field.
# A user-friendly alias of the service which created and signed the security token. This
#      *field*  was added in vSphere API 7.0.0.
#
# ID#
sub get_issuer_alias {
   my ($self, %args) = @_;
   return $self->{'issuer_alias'}; 	
}

## @method set_issuer_alias ()
# Sets the given value for 'issuer_alias' property.
# 
# @param issuer_alias  - New value for the field.
# A user-friendly alias of the service which created and signed the security token. This
#      *field*  was added in vSphere API 7.0.0.
#
sub set_issuer_alias {
   my ($self, %args) = @_;
   $self->{'issuer_alias'} = $args{'issuer_alias'}; 
   return;	
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
# String#
sub get_issuer {
   my ($self, %args) = @_;
   return $self->{'issuer'}; 	
}

## @method set_issuer ()
# Sets the given value for 'issuer' property.
# 
# @param issuer  - New value for the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}

## @method get_certificates ()
# Gets the value of 'certificates' property.
#
# @retval certificates - The current value of the field.
# The certificates used by the vCenter STS to sign tokens. This  *field*  was added in
#     vSphere API 7.0.0.
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
# The certificates used by the vCenter STS to sign tokens. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_certificates {
   my ($self, %args) = @_;
   $self->{'certificates'} = $args{'certificates'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# The consistency of the profile across the hosts in the cluster. This  *field*  was
#     added in vSphere API 7.0.0.
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
# The consistency of the profile across the hosts in the cluster. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# A localizable message describing the health of the profile. This  *field*  was added
#     in vSphere API 7.0.0.
#
# Optional#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# A localizable message describing the health of the profile. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Summary``
#     *class*  contains a summary of the information necessary to establish trust between a
#     workload vCenter and a Trust Authority Host. This  *class*  was added in vSphere API
#     7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{principal} = $args{'principal'};
   $self->{issuer_alias} = $args{'issuer_alias'};
   $self->{issuer} = $args{'issuer'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.consumer_principals.summary');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'principal', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'StsPrincipal'));
   $self->set_binding_field('key' => 'issuer_alias', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The unqiue identifier of a connection profile. This  *field*  was added in vSphere API
#     7.0.0.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# The unqiue identifier of a connection profile. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_principal ()
# Gets the value of 'principal' property.
#
# @retval principal - The current value of the field.
# The principal used by the vCenter to retrieve tokens. Currently this is the vCenter
#     solution user. This  *field*  was added in vSphere API 7.0.0.
#
# StsPrincipal#
sub get_principal {
   my ($self, %args) = @_;
   return $self->{'principal'}; 	
}

## @method set_principal ()
# Sets the given value for 'principal' property.
# 
# @param principal  - New value for the field.
# The principal used by the vCenter to retrieve tokens. Currently this is the vCenter
#     solution user. This  *field*  was added in vSphere API 7.0.0.
#
sub set_principal {
   my ($self, %args) = @_;
   $self->{'principal'} = $args{'principal'}; 
   return;	
}

## @method get_issuer_alias ()
# Gets the value of 'issuer_alias' property.
#
# @retval issuer_alias - The current value of the field.
# A user-friendly alias of the service which created and signed the security token. This
#      *field*  was added in vSphere API 7.0.0.
#
# ID#
sub get_issuer_alias {
   my ($self, %args) = @_;
   return $self->{'issuer_alias'}; 	
}

## @method set_issuer_alias ()
# Sets the given value for 'issuer_alias' property.
# 
# @param issuer_alias  - New value for the field.
# A user-friendly alias of the service which created and signed the security token. This
#      *field*  was added in vSphere API 7.0.0.
#
sub set_issuer_alias {
   my ($self, %args) = @_;
   $self->{'issuer_alias'} = $args{'issuer_alias'}; 
   return;	
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
# String#
sub get_issuer {
   my ($self, %args) = @_;
   return $self->{'issuer'}; 	
}

## @method set_issuer ()
# Sets the given value for 'issuer' property.
# 
# @param issuer  - New value for the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::ConsumerPrincipals service
#########################################################################################
