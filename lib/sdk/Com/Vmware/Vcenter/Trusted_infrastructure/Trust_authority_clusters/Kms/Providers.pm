########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Providers.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vcenter::Trusted_infrastructure;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers``
#     *interface*  provides  *methods*  to create, update and delete Key Providers that
#     handoff to key servers. This  *interface*  was added in vSphere API 7.0.0.0.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for a Key Provider. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::ProvidersStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'list_task'} = 'list$task';
$_VAPI_OPERATION_IDS->{'create_task'} = 'create$task';
$_VAPI_OPERATION_IDS->{'update_task'} = 'update$task';
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
# Return a list of summary of Key Providers. This  *method*  was added in vSphere API
# 7.0.0.0.
#
# Note:
# Privileges required for this operation are VcIdentityProviders.Read, VcIdentityProviders.Manage.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# List of providers.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the cluster is not found.
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

   $self->validate_args (method_name => 'list$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'list$task',
                         method_args => \%args);
}


## @method create_task ()
# Add a new Key Provider. This  *method*  was added in vSphere API 7.0.0.0.
#
# Note:
# Privileges required for this operation are VcIdentityProviders.Create, VcIdentityProviders.Manage.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] Provider information.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CreateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# If the provider already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the spec is invalid or cluster id is empty.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the cluster is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# For any other error.
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


## @method update_task ()
# Update an existing Key Provider. This  *method*  was added in vSphere API 7.0.0.0.
#
# Note:
# Privileges required for this operation are VcIdentityProviders.Manage.
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
# @param spec [REQUIRED] Provider information.
# . The value must be
# Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the cluster or provider id is empty, or the spec is invalid.
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


## @method delete_task ()
# Remove a Key Provider. This  *method*  was added in vSphere API 7.0.0.0.
#
# Note:
# Privileges required for this operation are VcIdentityProviders.Manage.
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
sub delete_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $provider = $args {provider};

   $self->validate_args (method_name => 'delete$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'delete$task',
                         method_args => \%args);
}


## @method get_task ()
# Return information about a Key Provider. This  *method*  was added in vSphere API 7.0.0.0.
#
# Note:
# Privileges required for this operation are VcIdentityProviders.Read, VcIdentityProviders.Manage.
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
# Provider information.
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
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health``
#     *enumerated type*  defines the possible health states. This  *enumeration*  was added
#     in vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health::NONE #
#No status available. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health::OK #
#Health is normal. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health::WARNING #
#Health is normal, however there is an issue that requires attention. This  *constant*  was
# added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health::ERROR #
#Not healthy. This  *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health;

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
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.health',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ServerInfo
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ServerInfo``
#     *class*  contains  *fields*  that describe the status of a key server. This  *class* 
#     was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ServerInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ServerInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{health} = $args{'health'};
   $self->{details} = $args{'details'};
   $self->{client_trust_server} = $args{'client_trust_server'};
   $self->{server_trust_client} = $args{'server_trust_client'};
   $self->{name} = $args{'name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::ServerInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.server_info');
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::Health'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'client_trust_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'server_trust_client', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# The connection status health of the server. This  *field*  was added in vSphere API
#     7.0.0.0.
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
# The connection status health of the server. This  *field*  was added in vSphere API
#     7.0.0.0.
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
# Details regarding the health of the server connection. <p>
# 
# When the service 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health.OK`
#     , this  *field*  will provide an actionable description of the issue.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
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
# Details regarding the health of the server connection. <p>
# 
# When the service 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health.OK`
#     , this  *field*  will provide an actionable description of the issue.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}

## @method get_client_trust_server ()
# Gets the value of 'client_trust_server' property.
#
# @retval client_trust_server - The current value of the field.
# Whether this client trusts the server. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# boolean#
sub get_client_trust_server {
   my ($self, %args) = @_;
   return $self->{'client_trust_server'}; 	
}

## @method set_client_trust_server ()
# Sets the given value for 'client_trust_server' property.
# 
# @param client_trust_server  - New value for the field.
# Whether this client trusts the server. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_client_trust_server {
   my ($self, %args) = @_;
   $self->{'client_trust_server'} = $args{'client_trust_server'}; 
   return;	
}

## @method get_server_trust_client ()
# Gets the value of 'server_trust_client' property.
#
# @retval server_trust_client - The current value of the field.
# Whether the server trusts this client. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# boolean#
sub get_server_trust_client {
   my ($self, %args) = @_;
   return $self->{'server_trust_client'}; 	
}

## @method set_server_trust_client ()
# Sets the given value for 'server_trust_client' property.
# 
# @param server_trust_client  - New value for the field.
# Whether the server trusts this client. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_server_trust_client {
   my ($self, %args) = @_;
   $self->{'server_trust_client'} = $args{'server_trust_client'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the server. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the server. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Status
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Status``
#     *class*  contains  *fields*  that describe the status of the Key Provider. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Status;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Status structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{health} = $args{'health'};
   $self->{details} = $args{'details'};
   $self->{servers} = $args{'servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Status');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.status');
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::Health'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::ServerInfo')));
   bless $self, $class;
   return $self;
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# The health of the provider. This  *field*  was added in vSphere API 7.0.0.0.
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
# The health of the provider. This  *field*  was added in vSphere API 7.0.0.0.
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
# Details regarding the health of the provider. <p>
# 
# When the service 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health.OK`
#     , this  *field*  will provide an actionable description of the issue.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
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
# Details regarding the health of the provider. <p>
# 
# When the service 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health``
#     is not 
#     :attr:`Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Health.OK`
#     , this  *field*  will provide an actionable description of the issue.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# Health of the key servers. This  *field*  was added in vSphere API 7.0.0.0.
#
# List#
sub get_servers {
   my ($self, %args) = @_;
   return $self->{'servers'}; 	
}

## @method set_servers ()
# Sets the given value for 'servers' property.
# 
# @param servers  - New value for the field.
# Health of the key servers. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Server
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Server``
#     *class*  contains  *fields*  that describe a connection endpoint. This  *class*  was
#     added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Server;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Server structure
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
   $self->{address} = $args{'address'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Server');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.server');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress'));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the server. <p>
# 
#  A unique string chosen by the client.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the server. <p>
# 
#  A unique string chosen by the client.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The server&apos;s address. This  *field*  was added in vSphere API 7.0.0.0.
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
# The server&apos;s address. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerCreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerCreateSpec``
#     *class*  contains  *fields*  that describe Key Management Interoperability Protocol
#     (KMIP) desired key server configuration. This  *class*  was added in vSphere API
#     7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerCreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{servers} = $args{'servers'};
   $self->{username} = $args{'username'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.kmip_server_create_spec');
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::Server')));
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# List of Key Management Interoperability Protocol (KMIP) compliant key servers. <p>
# 
# Key servers must be configured for active-active replication. If the server port is 
#     *null* , a default value for KMIP&apos;s port will be used.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# List#
sub get_servers {
   my ($self, %args) = @_;
   return $self->{'servers'}; 	
}

## @method set_servers ()
# Sets the given value for 'servers' property.
# 
# @param servers  - New value for the field.
# List of Key Management Interoperability Protocol (KMIP) compliant key servers. <p>
# 
# Key servers must be configured for active-active replication. If the server port is 
#     *null* , a default value for KMIP&apos;s port will be used.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Username for authentication. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Username for authentication. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec``
#     *class*  contains  *fields*  that describe the desired configuration for the key
#     server. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec structure
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
               'KMIP' => ['kmip_server'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{description} = $args{'description'};
   $self->{proxy_server} = $args{'proxy_server'};
   $self->{connection_timeout} = $args{'connection_timeout'};
   $self->{kmip_server} = $args{'kmip_server'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.key_server_create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::KeyServerCreateSpec::Type'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'proxy_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress')));
   $self->set_binding_field('key' => 'connection_timeout', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'kmip_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::KmipServerCreateSpec')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the key server. This  *field*  was added in vSphere API 7.0.0.0.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the key server. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the key server. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the key server. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_proxy_server ()
# Gets the value of 'proxy_server' property.
#
# @retval proxy_server - The current value of the field.
# Proxy server configuration. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_proxy_server {
   my ($self, %args) = @_;
   return $self->{'proxy_server'}; 	
}

## @method set_proxy_server ()
# Sets the given value for 'proxy_server' property.
# 
# @param proxy_server  - New value for the field.
# Proxy server configuration. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_proxy_server {
   my ($self, %args) = @_;
   $self->{'proxy_server'} = $args{'proxy_server'}; 
   return;	
}

## @method get_connection_timeout ()
# Gets the value of 'connection_timeout' property.
#
# @retval connection_timeout - The current value of the field.
# Connection timeout in seconds. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_connection_timeout {
   my ($self, %args) = @_;
   return $self->{'connection_timeout'}; 	
}

## @method set_connection_timeout ()
# Sets the given value for 'connection_timeout' property.
# 
# @param connection_timeout  - New value for the field.
# Connection timeout in seconds. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_connection_timeout {
   my ($self, %args) = @_;
   $self->{'connection_timeout'} = $args{'connection_timeout'}; 
   return;	
}

## @method get_kmip_server ()
# Gets the value of 'kmip_server' property.
#
# @retval kmip_server - The current value of the field.
# Configuration information for Key Management Interoperability Protocol (KMIP) based
#     key server. This  *field*  was added in vSphere API 7.0.0.0.
#
# optional#
sub get_kmip_server {
   my ($self, %args) = @_;
   return $self->{'kmip_server'}; 	
}

## @method set_kmip_server ()
# Sets the given value for 'kmip_server' property.
# 
# @param kmip_server  - New value for the field.
# Configuration information for Key Management Interoperability Protocol (KMIP) based
#     key server. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_kmip_server {
   my ($self, %args) = @_;
   $self->{'kmip_server'} = $args{'kmip_server'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec::Type
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec::Type``
#     *enumerated type*  lists the key server types. This  *enumeration*  was added in
#     vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec::Type::KMIP #
#Key Management Interoperability Protocol (KMIP) based key management server. This 
# *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec::Type;

use constant {
    KMIP =>  'KMIP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.key_server_create_spec.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerCreateSpec::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CreateSpec``
#     *class*  contains  *fields*  that describe the desired configuration for a new Key
#     Provider. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{provider} = $args{'provider'};
   $self->{master_key_id} = $args{'master_key_id'};
   $self->{key_server} = $args{'key_server'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.create_spec');
   $self->set_binding_field('key' => 'provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'master_key_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'key_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::KeyServerCreateSpec'));
   bless $self, $class;
   return $self;
}

## @method get_provider ()
# Gets the value of 'provider' property.
#
# @retval provider - The current value of the field.
# Name of the provider. <p>
# 
#  A unique string chosen by the client.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# ID#
sub get_provider {
   my ($self, %args) = @_;
   return $self->{'provider'}; 	
}

## @method set_provider ()
# Sets the given value for 'provider' property.
# 
# @param provider  - New value for the field.
# Name of the provider. <p>
# 
#  A unique string chosen by the client.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_provider {
   my ($self, %args) = @_;
   $self->{'provider'} = $args{'provider'}; 
   return;	
}

## @method get_master_key_id ()
# Gets the value of 'master_key_id' property.
#
# @retval master_key_id - The current value of the field.
# Master key ID created for the provider. <p>
# 
#  A unique Key ID.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_master_key_id {
   my ($self, %args) = @_;
   return $self->{'master_key_id'}; 	
}

## @method set_master_key_id ()
# Sets the given value for 'master_key_id' property.
# 
# @param master_key_id  - New value for the field.
# Master key ID created for the provider. <p>
# 
#  A unique Key ID.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_master_key_id {
   my ($self, %args) = @_;
   $self->{'master_key_id'} = $args{'master_key_id'}; 
   return;	
}

## @method get_key_server ()
# Gets the value of 'key_server' property.
#
# @retval key_server - The current value of the field.
# Key server associated with this Provider. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# KeyServerCreateSpec#
sub get_key_server {
   my ($self, %args) = @_;
   return $self->{'key_server'}; 	
}

## @method set_key_server ()
# Sets the given value for 'key_server' property.
# 
# @param key_server  - New value for the field.
# Key server associated with this Provider. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_key_server {
   my ($self, %args) = @_;
   $self->{'key_server'} = $args{'key_server'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerUpdateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerUpdateSpec``
#     *class*  contains  *fields*  that describe new configuration for KMIP based key
#     server. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerUpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerUpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{servers} = $args{'servers'};
   $self->{username} = $args{'username'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerUpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.kmip_server_update_spec');
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::Server'))));
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# List of KMIP compliant key servers. <p>
# 
# Key servers must be configured for active-active replication. If the server port is 
#     *null* , a default value for KMIP&apos;s port will be used. </p>
# 
# <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_servers {
   my ($self, %args) = @_;
   return $self->{'servers'}; 	
}

## @method set_servers ()
# Sets the given value for 'servers' property.
# 
# @param servers  - New value for the field.
# List of KMIP compliant key servers. <p>
# 
# Key servers must be configured for active-active replication. If the server port is 
#     *null* , a default value for KMIP&apos;s port will be used. </p>
# 
# <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Username for authentication. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Username for authentication. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec``
#     *class*  contains  *fields*  that describe new configuration for an existing key
#     server. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec structure
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
               'KMIP' => ['kmip_server'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{description} = $args{'description'};
   $self->{proxy_server} = $args{'proxy_server'};
   $self->{connection_timeout} = $args{'connection_timeout'};
   $self->{kmip_server} = $args{'kmip_server'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.key_server_update_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::KeyServerUpdateSpec::Type')));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'proxy_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress')));
   $self->set_binding_field('key' => 'connection_timeout', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'kmip_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::KmipServerUpdateSpec')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the key server. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the key server. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the key server. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the key server. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_proxy_server ()
# Gets the value of 'proxy_server' property.
#
# @retval proxy_server - The current value of the field.
# Proxy server configuration. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_proxy_server {
   my ($self, %args) = @_;
   return $self->{'proxy_server'}; 	
}

## @method set_proxy_server ()
# Sets the given value for 'proxy_server' property.
# 
# @param proxy_server  - New value for the field.
# Proxy server configuration. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_proxy_server {
   my ($self, %args) = @_;
   $self->{'proxy_server'} = $args{'proxy_server'}; 
   return;	
}

## @method get_connection_timeout ()
# Gets the value of 'connection_timeout' property.
#
# @retval connection_timeout - The current value of the field.
# Connection timeout in seconds. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_connection_timeout {
   my ($self, %args) = @_;
   return $self->{'connection_timeout'}; 	
}

## @method set_connection_timeout ()
# Sets the given value for 'connection_timeout' property.
# 
# @param connection_timeout  - New value for the field.
# Connection timeout in seconds. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_connection_timeout {
   my ($self, %args) = @_;
   $self->{'connection_timeout'} = $args{'connection_timeout'}; 
   return;	
}

## @method get_kmip_server ()
# Gets the value of 'kmip_server' property.
#
# @retval kmip_server - The current value of the field.
# Configuration information for KMIP based key server. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_kmip_server {
   my ($self, %args) = @_;
   return $self->{'kmip_server'}; 	
}

## @method set_kmip_server ()
# Sets the given value for 'kmip_server' property.
# 
# @param kmip_server  - New value for the field.
# Configuration information for KMIP based key server. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_kmip_server {
   my ($self, %args) = @_;
   $self->{'kmip_server'} = $args{'kmip_server'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec::Type
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec::Type``
#     *enumerated type*  list the key server types. This  *enumeration*  was added in
#     vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec::Type::KMIP #
#Key Management Interoperability Protocol (KMIP) based key management server. This 
# *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec::Type;

use constant {
    KMIP =>  'KMIP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.key_server_update_spec.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerUpdateSpec::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::UpdateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::UpdateSpec``
#     *class*  contains  *fields*  that describe the new configuration for an existing
#     provider. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{master_key_id} = $args{'master_key_id'};
   $self->{key_server} = $args{'key_server'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.update_spec');
   $self->set_binding_field('key' => 'master_key_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'key_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::KeyServerUpdateSpec')));
   bless $self, $class;
   return $self;
}

## @method get_master_key_id ()
# Gets the value of 'master_key_id' property.
#
# @retval master_key_id - The current value of the field.
# Master key identifier created for the provider. <p>
# 
#  A unique Key identifier. </p>
# 
# <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_master_key_id {
   my ($self, %args) = @_;
   return $self->{'master_key_id'}; 	
}

## @method set_master_key_id ()
# Sets the given value for 'master_key_id' property.
# 
# @param master_key_id  - New value for the field.
# Master key identifier created for the provider. <p>
# 
#  A unique Key identifier. </p>
# 
# <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_master_key_id {
   my ($self, %args) = @_;
   $self->{'master_key_id'} = $args{'master_key_id'}; 
   return;	
}

## @method get_key_server ()
# Gets the value of 'key_server' property.
#
# @retval key_server - The current value of the field.
# Key server associated with this provider. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_key_server {
   my ($self, %args) = @_;
   return $self->{'key_server'}; 	
}

## @method set_key_server ()
# Sets the given value for 'key_server' property.
# 
# @param key_server  - New value for the field.
# Key server associated with this provider. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_key_server {
   my ($self, %args) = @_;
   $self->{'key_server'} = $args{'key_server'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Summary
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Summary``
#     *class*  contains  *fields*  that summarize a provider. This  *class*  was added in
#     vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{provider} = $args{'provider'};
   $self->{health} = $args{'health'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.summary');
   $self->set_binding_field('key' => 'provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::Health'));
   bless $self, $class;
   return $self;
}

## @method get_provider ()
# Gets the value of 'provider' property.
#
# @retval provider - The current value of the field.
# Name of the provider. <p>
# 
#  A unique string chosen by the client.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# ID#
sub get_provider {
   my ($self, %args) = @_;
   return $self->{'provider'}; 	
}

## @method set_provider ()
# Sets the given value for 'provider' property.
# 
# @param provider  - New value for the field.
# Name of the provider. <p>
# 
#  A unique string chosen by the client.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_provider {
   my ($self, %args) = @_;
   $self->{'provider'} = $args{'provider'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# Health of the provider in the cluster. This  *field*  was added in vSphere API
#     7.0.0.0.
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
# Health of the provider in the cluster. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerInfo
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerInfo``
#     *class*  contains  *fields*  that describe the current configuration of a KMIP based
#     key server. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{servers} = $args{'servers'};
   $self->{username} = $args{'username'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KmipServerInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.kmip_server_info');
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::Server')));
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# List of KMIP compliant key servers. This  *field*  was added in vSphere API 7.0.0.0.
#
# List#
sub get_servers {
   my ($self, %args) = @_;
   return $self->{'servers'}; 	
}

## @method set_servers ()
# Sets the given value for 'servers' property.
# 
# @param servers  - New value for the field.
# List of KMIP compliant key servers. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Username for authentication. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Username for authentication. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo``
#     *class*  contains  *fields*  that describe the current configuration of a key server.
#     This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo structure
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
               'KMIP' => ['kmip_server'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{description} = $args{'description'};
   $self->{proxy_server} = $args{'proxy_server'};
   $self->{connection_timeout} = $args{'connection_timeout'};
   $self->{kmip_server} = $args{'kmip_server'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.key_server_info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::KeyServerInfo::Type'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'proxy_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'NetworkAddress')));
   $self->set_binding_field('key' => 'connection_timeout', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'kmip_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::KmipServerInfo')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the key server. This  *field*  was added in vSphere API 7.0.0.0.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the key server. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the key server. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the key server. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_proxy_server ()
# Gets the value of 'proxy_server' property.
#
# @retval proxy_server - The current value of the field.
# Proxy server configuration. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_proxy_server {
   my ($self, %args) = @_;
   return $self->{'proxy_server'}; 	
}

## @method set_proxy_server ()
# Sets the given value for 'proxy_server' property.
# 
# @param proxy_server  - New value for the field.
# Proxy server configuration. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_proxy_server {
   my ($self, %args) = @_;
   $self->{'proxy_server'} = $args{'proxy_server'}; 
   return;	
}

## @method get_connection_timeout ()
# Gets the value of 'connection_timeout' property.
#
# @retval connection_timeout - The current value of the field.
# Connection timeout in seconds. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_connection_timeout {
   my ($self, %args) = @_;
   return $self->{'connection_timeout'}; 	
}

## @method set_connection_timeout ()
# Sets the given value for 'connection_timeout' property.
# 
# @param connection_timeout  - New value for the field.
# Connection timeout in seconds. <p>
# 
# </p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_connection_timeout {
   my ($self, %args) = @_;
   $self->{'connection_timeout'} = $args{'connection_timeout'}; 
   return;	
}

## @method get_kmip_server ()
# Gets the value of 'kmip_server' property.
#
# @retval kmip_server - The current value of the field.
# Configuration information for KMIP based key server. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
# optional#
sub get_kmip_server {
   my ($self, %args) = @_;
   return $self->{'kmip_server'}; 	
}

## @method set_kmip_server ()
# Sets the given value for 'kmip_server' property.
# 
# @param kmip_server  - New value for the field.
# Configuration information for KMIP based key server. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_kmip_server {
   my ($self, %args) = @_;
   $self->{'kmip_server'} = $args{'kmip_server'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo::Type
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo::Type``
#     *enumerated type*  list the key server types. This  *enumeration*  was added in
#     vSphere API 7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo::Type::KMIP #
#Key Management Interoperability Protocol (KMIP) based key management server. This 
# *constant*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo::Type;

use constant {
    KMIP =>  'KMIP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.key_server_info.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::KeyServerInfo::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Info
#
#
# The 
#     ``Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Info``
#     *class*  contains  *fields*  that describe the current configuration of a provider.
#     This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{master_key_id} = $args{'master_key_id'};
   $self->{key_server} = $args{'key_server'};
   $self->{status} = $args{'status'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.trust_authority_clusters.kms.providers.info');
   $self->set_binding_field('key' => 'master_key_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'key_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::KeyServerInfo'));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms', 'type_name' => 'Providers::Status'));
   bless $self, $class;
   return $self;
}

## @method get_master_key_id ()
# Gets the value of 'master_key_id' property.
#
# @retval master_key_id - The current value of the field.
# Master key identifier created for the provider. <p>
# 
#  A unique Key identifier.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_master_key_id {
   my ($self, %args) = @_;
   return $self->{'master_key_id'}; 	
}

## @method set_master_key_id ()
# Sets the given value for 'master_key_id' property.
# 
# @param master_key_id  - New value for the field.
# Master key identifier created for the provider. <p>
# 
#  A unique Key identifier.</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_master_key_id {
   my ($self, %args) = @_;
   $self->{'master_key_id'} = $args{'master_key_id'}; 
   return;	
}

## @method get_key_server ()
# Gets the value of 'key_server' property.
#
# @retval key_server - The current value of the field.
# Key server associated with this provider. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# KeyServerInfo#
sub get_key_server {
   my ($self, %args) = @_;
   return $self->{'key_server'}; 	
}

## @method set_key_server ()
# Sets the given value for 'key_server' property.
# 
# @param key_server  - New value for the field.
# Key server associated with this provider. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_key_server {
   my ($self, %args) = @_;
   $self->{'key_server'} = $args{'key_server'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status of the provider in the cluster. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status of the provider in the cluster. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Trust_authority_clusters::Kms::Providers service
#########################################################################################
