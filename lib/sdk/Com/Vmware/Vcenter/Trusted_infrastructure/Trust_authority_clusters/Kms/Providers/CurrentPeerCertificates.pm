########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CurrentPeerCertificates.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates
# Retrieves the list of TLS certificates used by peer key servers. Those are meant for
#     review. Following approval these certificates should be added as trusted certificates
#     in the  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates
#       *interface* . This  *interface*  was added in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificatesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.current_peer_certificates';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
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

## @method list_task ()
# Return the remote server certificates. <p>
# 
# Contacts the configured key servers and attempts to retrieve their certificates. These
# certificates might not yet be trusted. </p>
# 
# <p>
# 
# If the returned certificates are to be considered trustworthy, then it must be added to
# the list of trusted server certificates by adding to the certificates returned by 
# :func:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates.get`
# and invoking 
# :func:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::TrustedPeerCertificates.update`
#  with the updated  *list*  of certificates.</p>
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
# @param spec [OPTIONAL] Filter spec.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::FilterSpec
#      with all  *fields*   *null* 
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::FilterSpec
# or None.
#
# @retval 
# Summary of server certificates.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the cluster or provider id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the cluster or provider is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# For any other error.
#
sub list_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $provider = $args {provider};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'list$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'list$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary``
#     *class*  contains a summary of the current key server certificates. This  *class*  was
#     added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{server_name} = $args{'server_name'};
   $self->{certificate} = $args{'certificate'};
   $self->{error_messages} = $args{'error_messages'};
   $self->{trusted} = $args{'trusted'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.current_peer_certificates.summary');
   $self->set_binding_field('key' => 'server_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'error_messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'trusted', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_server_name ()
# Gets the value of 'server_name' property.
#
# @retval server_name - The current value of the field.
# Name of the server. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_server_name {
   my ($self, %args) = @_;
   return $self->{'server_name'}; 	
}

## @method set_server_name ()
# Sets the given value for 'server_name' property.
# 
# @param server_name  - New value for the field.
# Name of the server. This  *field*  was added in vSphere API 7.0.0.
#
sub set_server_name {
   my ($self, %args) = @_;
   $self->{'server_name'} = $args{'server_name'}; 
   return;	
}

## @method get_certificate ()
# Gets the value of 'certificate' property.
#
# @retval certificate - The current value of the field.
# Server certificate. This  *field*  was added in vSphere API 7.0.0.
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
# Server certificate. This  *field*  was added in vSphere API 7.0.0.
#
sub set_certificate {
   my ($self, %args) = @_;
   $self->{'certificate'} = $args{'certificate'}; 
   return;	
}

## @method get_error_messages ()
# Gets the value of 'error_messages' property.
#
# @retval error_messages - The current value of the field.
# Server certificate retrieval errors. <p>
# 
# Specifies error details when retrieving the remote server certificate fails. This list
#     will be empty when 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary.certificate`
#      is  *set* .</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
# List#
sub get_error_messages {
   my ($self, %args) = @_;
   return $self->{'error_messages'}; 	
}

## @method set_error_messages ()
# Sets the given value for 'error_messages' property.
# 
# @param error_messages  - New value for the field.
# Server certificate retrieval errors. <p>
# 
# Specifies error details when retrieving the remote server certificate fails. This list
#     will be empty when 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary.certificate`
#      is  *set* .</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.
#
sub set_error_messages {
   my ($self, %args) = @_;
   $self->{'error_messages'} = $args{'error_messages'}; 
   return;	
}

## @method get_trusted ()
# Gets the value of 'trusted' property.
#
# @retval trusted - The current value of the field.
# whether server certificate is already trusted . This  *field*  was added in vSphere
#     API 7.0.0.
#
# boolean#
sub get_trusted {
   my ($self, %args) = @_;
   return $self->{'trusted'}; 	
}

## @method set_trusted ()
# Sets the given value for 'trusted' property.
# 
# @param trusted  - New value for the field.
# whether server certificate is already trusted . This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_trusted {
   my ($self, %args) = @_;
   $self->{'trusted'} = $args{'trusted'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::FilterSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::FilterSpec``
#     *class*  contains  *fields*  used to filter the results when listing remote server
#     certificates. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{server_names} = $args{'server_names'};
   $self->{trusted} = $args{'trusted'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.current_peer_certificates.filter_spec');
   $self->set_binding_field('key' => 'server_names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'trusted', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_server_names ()
# Gets the value of 'server_names' property.
#
# @retval server_names - The current value of the field.
# Names that key server must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary.server_name`
#     ). This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_server_names {
   my ($self, %args) = @_;
   return $self->{'server_names'}; 	
}

## @method set_server_names ()
# Sets the given value for 'server_names' property.
# 
# @param server_names  - New value for the field.
# Names that key server must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary.server_name`
#     ). This  *field*  was added in vSphere API 7.0.0.
#
sub set_server_names {
   my ($self, %args) = @_;
   $self->{'server_names'} = $args{'server_names'}; 
   return;	
}

## @method get_trusted ()
# Gets the value of 'trusted' property.
#
# @retval trusted - The current value of the field.
# Trust status that server certificates must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary.trusted`
#     ). This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_trusted {
   my ($self, %args) = @_;
   return $self->{'trusted'}; 	
}

## @method set_trusted ()
# Sets the given value for 'trusted' property.
# 
# @param trusted  - New value for the field.
# Trust status that server certificates must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates::Summary.trusted`
#     ). This  *field*  was added in vSphere API 7.0.0.
#
sub set_trusted {
   my ($self, %args) = @_;
   $self->{'trusted'} = $args{'trusted'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CurrentPeerCertificates service
#########################################################################################
