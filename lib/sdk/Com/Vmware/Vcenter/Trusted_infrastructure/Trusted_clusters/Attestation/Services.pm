########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Services.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Trusted_infrastructure;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services``
#     *interface*  manages the Attestation Service instances a Trusted Cluster is configured
#     to use. This  *interface*  was added in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::ServicesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.attestation.services';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'create_task'} = 'create$task';
$_VAPI_OPERATION_IDS->{'delete_task'} = 'delete$task';

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

## @method list ()
# Returns the basic information about all configured Attestation Service instances used by
# this cluster. This  *method*  was added in vSphere API 7.0.0.
#
# Note:
# Privileges required for this operation are TrustedAdmin.ReadTrustedHosts, System.View.
#
# @param cluster [REQUIRED] The ID of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [OPTIONAL] Only return services matching the filters.
# If {@term.unset} return all services.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::FilterSpec
# or None.
#
# @retval 
# Basic information about all configured Attestation Service instances used by this
#     cluster.
# The return type will be Array of
# Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the cluster ID is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``TrustedAdmin.ReadTrustedHosts`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``System.View`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method get ()
# Returns detailed information about the given registered Attestation Service instance that
# is configured for the given cluster. This  *method*  was added in vSphere API 7.0.0.
#
# Note:
# Privileges required for this operation are TrustedAdmin.ReadTrustedHosts, System.View.
#
# @param cluster [REQUIRED] The ID of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param service [REQUIRED] The ID of the service.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.attestation.Service).
# . The value must be str.
#
# @retval 
# Detailed information about the specified Attestation Service configured for the given
#     cluster.
# The return type will be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the cluster or the service ID is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``TrustedAdmin.ReadTrustedHosts`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``System.View`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $service = $args {service};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method create_task ()
# Configures the cluster to use a the given registered Attestation Service. This  *method* 
# was added in vSphere API 7.0.0.
#
# Note:
# Privileges required for this operation are TrustedAdmin.ManageTrustedHosts.
#
# @param cluster [REQUIRED] The ID of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] Describes the registered instance of the Attestation Service
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec.
#
# @retval 
# ID of the configured Attestation Service instance.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.attestation.Service).
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the Attestation Service is already configured for this cluster
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# for any other error.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the CreateSpec is not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the cluster ID is not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if all the hosts in the cluster do not have VMware vSphere Trust Authority enabled
#     license.
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
# Removes the Attestation Service instance from the configuration of the given cluster. This
#  *method*  was added in vSphere API 7.0.0.
#
# Note:
# Privileges required for this operation are TrustedAdmin.ManageTrustedHosts.
#
# @param cluster [REQUIRED] the unique ID of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param service [REQUIRED] the registered Attestation Service instance unique identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.trusted_infrastructure.attestation.Service).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the Attestation Service instance or the cluster are not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub delete_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $service = $args {service};

   $self->validate_args (method_name => 'delete$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'delete$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Summary``
#     *class*  contains basic information about a registered Attestation Service instance
#     that is configured for a cluster. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{service} = $args{'service'};
   $self->{address} = $args{'address'};
   $self->{group} = $args{'group'};
   $self->{trust_authority_cluster} = $args{'trust_authority_cluster'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.attestation.services.summary');
   $self->set_binding_field('key' => 'service', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress'));
   $self->set_binding_field('key' => 'group', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'trust_authority_cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_service ()
# Gets the value of 'service' property.
#
# @retval service - The current value of the field.
# The service&apos;s unique identifier. This  *field*  was added in vSphere API 7.0.0.
#
# ID#
sub get_service {
   my ($self, %args) = @_;
   return $self->{'service'}; 	
}

## @method set_service ()
# Sets the given value for 'service' property.
# 
# @param service  - New value for the field.
# The service&apos;s unique identifier. This  *field*  was added in vSphere API 7.0.0.
#
sub set_service {
   my ($self, %args) = @_;
   $self->{'service'} = $args{'service'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.
#
# NetworkAddress#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_group ()
# Gets the value of 'group' property.
#
# @retval group - The current value of the field.
# The group specifies the Key Provider Service instances can accept reports issued by
#     this Attestation Service instance. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_group {
   my ($self, %args) = @_;
   return $self->{'group'}; 	
}

## @method set_group ()
# Sets the given value for 'group' property.
# 
# @param group  - New value for the field.
# The group specifies the Key Provider Service instances can accept reports issued by
#     this Attestation Service instance. This  *field*  was added in vSphere API 7.0.0.
#
sub set_group {
   my ($self, %args) = @_;
   $self->{'group'} = $args{'group'}; 
   return;	
}

## @method get_trust_authority_cluster ()
# Gets the value of 'trust_authority_cluster' property.
#
# @retval trust_authority_cluster - The current value of the field.
# The cluster specifies the Trust Authority Cluster this Attestation Service belongs to.
#     This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_trust_authority_cluster {
   my ($self, %args) = @_;
   return $self->{'trust_authority_cluster'}; 	
}

## @method set_trust_authority_cluster ()
# Sets the given value for 'trust_authority_cluster' property.
# 
# @param trust_authority_cluster  - New value for the field.
# The cluster specifies the Trust Authority Cluster this Attestation Service belongs to.
#     This  *field*  was added in vSphere API 7.0.0.
#
sub set_trust_authority_cluster {
   my ($self, %args) = @_;
   $self->{'trust_authority_cluster'} = $args{'trust_authority_cluster'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Info``
#     *class*  contains all the stored information about a registered Attestation Service
#     instance that is configured for a cluster. This  *class*  was added in vSphere API
#     7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{address} = $args{'address'};
   $self->{trusted_CA} = $args{'trusted_CA'};
   $self->{group} = $args{'group'};
   $self->{trust_authority_cluster} = $args{'trust_authority_cluster'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.attestation.services.info');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress'));
   $self->set_binding_field('key' => 'trusted_CA', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'X509CertChain'));
   $self->set_binding_field('key' => 'group', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'trust_authority_cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.
#
# NetworkAddress#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_trusted_CA ()
# Gets the value of 'trusted_CA' property.
#
# @retval trusted_CA - The current value of the field.
# The service&apos;s TLS certificate chain. This  *field*  was added in vSphere API
#     7.0.0.
#
# X509CertChain#
sub get_trusted_CA {
   my ($self, %args) = @_;
   return $self->{'trusted_CA'}; 	
}

## @method set_trusted_CA ()
# Sets the given value for 'trusted_CA' property.
# 
# @param trusted_CA  - New value for the field.
# The service&apos;s TLS certificate chain. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_trusted_CA {
   my ($self, %args) = @_;
   $self->{'trusted_CA'} = $args{'trusted_CA'}; 
   return;	
}

## @method get_group ()
# Gets the value of 'group' property.
#
# @retval group - The current value of the field.
# The group determines the Key Provider Service instances can accept reports issued by
#     this Attestation Service instance. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_group {
   my ($self, %args) = @_;
   return $self->{'group'}; 	
}

## @method set_group ()
# Sets the given value for 'group' property.
# 
# @param group  - New value for the field.
# The group determines the Key Provider Service instances can accept reports issued by
#     this Attestation Service instance. This  *field*  was added in vSphere API 7.0.0.
#
sub set_group {
   my ($self, %args) = @_;
   $self->{'group'} = $args{'group'}; 
   return;	
}

## @method get_trust_authority_cluster ()
# Gets the value of 'trust_authority_cluster' property.
#
# @retval trust_authority_cluster - The current value of the field.
# The cluster specifies the Trust Authority Cluster this Attestation Service belongs to.
#     This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_trust_authority_cluster {
   my ($self, %args) = @_;
   return $self->{'trust_authority_cluster'}; 	
}

## @method set_trust_authority_cluster ()
# Sets the given value for 'trust_authority_cluster' property.
# 
# @param trust_authority_cluster  - New value for the field.
# The cluster specifies the Trust Authority Cluster this Attestation Service belongs to.
#     This  *field*  was added in vSphere API 7.0.0.
#
sub set_trust_authority_cluster {
   my ($self, %args) = @_;
   $self->{'trust_authority_cluster'} = $args{'trust_authority_cluster'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec``
#     *class*  contains the data necessary for configuring a registered Attestation Service
#     instance with a cluster in the environment. This  *class*  was added in vSphere API
#     7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'SERVICE' => ['service'],
               'CLUSTER' => ['trust_authority_cluster'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{service} = $args{'service'};
   $self->{trust_authority_cluster} = $args{'trust_authority_cluster'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.attestation.services.create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation', 'type_name' => 'Services::CreateSpec::SourceType'));
   $self->set_binding_field('key' => 'service', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'trust_authority_cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Source of truth for the configuration of the Attestation Service. This  *field*  was
#     added in vSphere API 7.0.0.
#
# SourceType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Source of truth for the configuration of the Attestation Service. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_service ()
# Gets the value of 'service' property.
#
# @retval service - The current value of the field.
# The service&apos;s unique ID. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_service {
   my ($self, %args) = @_;
   return $self->{'service'}; 	
}

## @method set_service ()
# Sets the given value for 'service' property.
# 
# @param service  - New value for the field.
# The service&apos;s unique ID. This  *field*  was added in vSphere API 7.0.0.
#
sub set_service {
   my ($self, %args) = @_;
   $self->{'service'} = $args{'service'}; 
   return;	
}

## @method get_trust_authority_cluster ()
# Gets the value of 'trust_authority_cluster' property.
#
# @retval trust_authority_cluster - The current value of the field.
# The attestation cluster&apos;s unique ID. This  *field*  was added in vSphere API
#     7.0.0.
#
# optional#
sub get_trust_authority_cluster {
   my ($self, %args) = @_;
   return $self->{'trust_authority_cluster'}; 	
}

## @method set_trust_authority_cluster ()
# Sets the given value for 'trust_authority_cluster' property.
# 
# @param trust_authority_cluster  - New value for the field.
# The attestation cluster&apos;s unique ID. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_trust_authority_cluster {
   my ($self, %args) = @_;
   $self->{'trust_authority_cluster'} = $args{'trust_authority_cluster'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec::SourceType
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec::SourceType``
#     *enumerated type*  specifies the source of truth the Attestation Service will use for
#     its configuration. This  *enumeration*  was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec::SourceType::SERVICE #
#The Attestation Service will be configured based on an ID of an specific Attestation
# Service. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec::SourceType::CLUSTER #
#The Attestation Service will be configured based on an ID of a whole attestation cluster.
# This  *constant*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec::SourceType;

use constant {
    SERVICE =>  'SERVICE',
    CLUSTER =>  'CLUSTER',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec::SourceType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.attestation.services.create_spec.source_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::CreateSpec::SourceType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::FilterSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::FilterSpec``
#     *class*  contains the data necessary for identifying a Attestation service instance.
#     This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{services} = $args{'services'};
   $self->{address} = $args{'address'};
   $self->{group} = $args{'group'};
   $self->{trust_authority_cluster} = $args{'trust_authority_cluster'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trusted_clusters.attestation.services.filter_spec');
   $self->set_binding_field('key' => 'services', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress'))));
   $self->set_binding_field('key' => 'group', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'trust_authority_cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_services ()
# Gets the value of 'services' property.
#
# @retval services - The current value of the field.
# A set of IDs by which to filter the services. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_services {
   my ($self, %args) = @_;
   return $self->{'services'}; 	
}

## @method set_services ()
# Sets the given value for 'services' property.
# 
# @param services  - New value for the field.
# A set of IDs by which to filter the services. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_services {
   my ($self, %args) = @_;
   $self->{'services'} = $args{'services'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The service&apos;s address. This  *field*  was added in vSphere API 7.0.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_group ()
# Gets the value of 'group' property.
#
# @retval group - The current value of the field.
# The group specifies the Key Provider Service instances can accept reports issued by
#     this Attestation Service instance. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_group {
   my ($self, %args) = @_;
   return $self->{'group'}; 	
}

## @method set_group ()
# Sets the given value for 'group' property.
# 
# @param group  - New value for the field.
# The group specifies the Key Provider Service instances can accept reports issued by
#     this Attestation Service instance. This  *field*  was added in vSphere API 7.0.0.
#
sub set_group {
   my ($self, %args) = @_;
   $self->{'group'} = $args{'group'}; 
   return;	
}

## @method get_trust_authority_cluster ()
# Gets the value of 'trust_authority_cluster' property.
#
# @retval trust_authority_cluster - The current value of the field.
# The cluster specifies the Trust Authority Cluster this Attestation Service instance
#     belongs to. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_trust_authority_cluster {
   my ($self, %args) = @_;
   return $self->{'trust_authority_cluster'}; 	
}

## @method set_trust_authority_cluster ()
# Sets the given value for 'trust_authority_cluster' property.
# 
# @param trust_authority_cluster  - New value for the field.
# The cluster specifies the Trust Authority Cluster this Attestation Service instance
#     belongs to. This  *field*  was added in vSphere API 7.0.0.
#
sub set_trust_authority_cluster {
   my ($self, %args) = @_;
   $self->{'trust_authority_cluster'} = $args{'trust_authority_cluster'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trusted_clusters::Attestation::Services service
#########################################################################################
