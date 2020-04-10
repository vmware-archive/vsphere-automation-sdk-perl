########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Providers.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Certificate_management;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Identity::Providers
# The  ``Com::Vmware::Vcenter::Identity::Providers``   *interface*  provides  *methods* 
#     to list, read and modify vCenter Server identity providers. This  *interface*  was
#     added in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Identity::Providers;

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
use Com::Vmware::Vcenter::Identity::ProvidersStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.identity.providers';


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
# Retrieve all identity providers. This  *method*  was added in vSphere API 7.0.0.
#
# @retval 
# Commonly used information about the identity providers.
# The return type will be Array of Com::Vmware::Vcenter::Identity::Providers::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if authorization is not given to caller.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method get ()
# Retrieve detailed information of the specified identity provider. This  *method*  was
# added in vSphere API 7.0.0.
#
# @param provider [REQUIRED] the identifier of the provider
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.identity.Providers).
# . The value must be str.
#
# @retval 
# Detailed information of the specified identity provider.
# The return type will be Com::Vmware::Vcenter::Identity::Providers::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if authorization is not given to caller.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no provider found with the given provider identifier.
#
sub get {
   my ($self, %args) = @_;
   my $provider = $args {provider};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method create ()
# Create a vCenter Server identity provider. This  *method*  was added in vSphere API 7.0.0.
#
# @param spec [REQUIRED] the CreateSpec contains the information used to create the provider
# . The value must be Com::Vmware::Vcenter::Identity::Providers::CreateSpec.
#
# @retval 
# The identifier of the created identity provider.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.identity.Providers).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if authorization is not given to caller.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if invalid arguments are provided in createSpec.
#
sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method update ()
# Update a vCenter Server identity provider. This  *method*  was added in vSphere API 7.0.0.
#
# @param provider [REQUIRED] the identifier of the provider to update
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.identity.Providers).
# . The value must be str.
#
# @param spec [REQUIRED] the UpdateSpec contains the information used to update the provider
# . The value must be Com::Vmware::Vcenter::Identity::Providers::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if authorization is not given to caller.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if invalid arguments are provided in updateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no provider found with the given provider identifier.
#
sub update {
   my ($self, %args) = @_;
   my $provider = $args {provider};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method delete ()
# Delete a vCenter Server identity provider. This  *method*  was added in vSphere API 7.0.0.
#
# @param provider [REQUIRED] the identifier of the provider to delete
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.identity.Providers).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if authorization is not given to caller.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no provider found with the given provider identifier.
#
sub delete {
   my ($self, %args) = @_;
   my $provider = $args {provider};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Identity::Providers service
#########################################################################################

## @class Com::Vmware::Vcenter::Identity::Providers::ConfigType
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::ConfigType``   *class*  contains the
#     possible types of vCenter Server identity providers. This  *enumeration*  was added in
#     vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Identity::Providers::ConfigType::OAUTH2 #
#Config for OAuth2. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Identity::Providers::ConfigType::OIDC #
#Config for OIDC. This  *constant*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::ConfigType;

use constant {
    Oauth2 =>  'Oauth2',
    Oidc =>  'Oidc',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::ConfigType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.identity.providers.config_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::ConfigType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Identity::Providers::IdmProtocol
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::IdmProtocol``   *class*  contains
#     the possible types of communication protocols to the identity management endpoints.
#     This  *enumeration*  was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Identity::Providers::IdmProtocol::REST #
#REST protocol based identity management endpoints. This  *constant*  was added in vSphere
# API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Identity::Providers::IdmProtocol::SCIM #
#SCIM protocol based identity management endpoints. This  *constant*  was added in vSphere
# API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Identity::Providers::IdmProtocol::LDAP #
#LDAP protocol based identity management endpoints. This  *constant*  was added in vSphere
# API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::IdmProtocol;

use constant {
    REST =>  'REST',
    SCIM =>  'SCIM',
    LDAP =>  'LDAP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::IdmProtocol enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.identity.providers.idm_protocol',
                           'binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::IdmProtocol');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Identity::Providers::Oauth2AuthenticationMethod
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::Oauth2AuthenticationMethod``  
#     *class*  contains the possible types of OAuth2 authentication methods. This 
#     *enumeration*  was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Identity::Providers::Oauth2AuthenticationMethod::CLIENT_SECRET_BASIC #
#Clients that have received a client_secret value from the Authorization Server,
# authenticate with the Authorization Server in accordance with Section 3.2.1 of OAuth 2.0
# [RFC6749] using the HTTP Basic authentication scheme. This  *constant*  was added in
# vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Identity::Providers::Oauth2AuthenticationMethod::CLIENT_SECRET_POST #
#Clients that have received a client_secret value from the Authorization Server,
# authenticate with the Authorization Server in accordance with Section 3.2.1 of OAuth 2.0
# [RFC6749] by including the Client Credentials in the request body. This  *constant*  was
# added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Identity::Providers::Oauth2AuthenticationMethod::CLIENT_SECRET_JWT #
#Clients that have received a client_secret value from the Authorization Server, create a
# JWT using an HMAC SHA algorithm, such as HMAC SHA-256. The HMAC (Hash-based Message
# Authentication Code) is calculated using the octets of the UTF-8 representation of the
# client_secret as the shared key. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Identity::Providers::Oauth2AuthenticationMethod::PRIVATE_KEY_JWT #
#Clients that have registered a public key sign a JWT using that key. The client
# authenticates in accordance with JSON Web Token (JWT) Profile for OAuth 2.0 Client
# Authentication and Authorization Grants [OAuth.JWT] and Assertion Framework for OAuth 2.0
# Client Authentication and Authorization Grants [OAuth.Assertions]. This  *constant*  was
# added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::Oauth2AuthenticationMethod;

use constant {
    CLIENT_SECRET_BASIC =>  'CLIENT_SECRET_BASIC',
    CLIENT_SECRET_POST =>  'CLIENT_SECRET_POST',
    CLIENT_SECRET_JWT =>  'CLIENT_SECRET_JWT',
    PRIVATE_KEY_JWT =>  'PRIVATE_KEY_JWT',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::Oauth2AuthenticationMethod enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.identity.providers.oauth2_authentication_method',
                           'binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::Oauth2AuthenticationMethod');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Identity::Providers service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Identity::Providers service
#########################################################################################

## @class Com::Vmware::Vcenter::Identity::Providers::Summary
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::Summary``   *class*  contains
#     commonly used information about an identity provider. This  *class*  was added in
#     vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::Summary structure
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
         'discriminant_name' => 'config_tag',
         'case_map' => {
               'Oauth2' => ['oauth2'],
               'Oidc' => ['oidc'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{provider} = $args{'provider'};
   $self->{name} = $args{'name'};
   $self->{config_tag} = $args{'config_tag'};
   $self->{oauth2} = $args{'oauth2'};
   $self->{oidc} = $args{'oidc'};
   $self->{is_default} = $args{'is_default'};
   $self->{domain_names} = $args{'domain_names'};
   $self->{auth_query_params} = $args{'auth_query_params'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.summary');
   $self->set_binding_field('key' => 'provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'config_tag', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::ConfigType'));
   $self->set_binding_field('key' => 'oauth2', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::Oauth2Summary')));
   $self->set_binding_field('key' => 'oidc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::OidcSummary')));
   $self->set_binding_field('key' => 'is_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'domain_names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))));
   bless $self, $class;
   return $self;
}

## @method get_provider ()
# Gets the value of 'provider' property.
#
# @retval provider - The current value of the field.
# The identifier of the provider. This  *field*  was added in vSphere API 7.0.0.
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
# The identifier of the provider. This  *field*  was added in vSphere API 7.0.0.
#
sub set_provider {
   my ($self, %args) = @_;
   $self->{'provider'} = $args{'provider'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The user friendly name for the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The user friendly name for the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_config_tag ()
# Gets the value of 'config_tag' property.
#
# @retval config_tag - The current value of the field.
# The config type of the identity provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# ConfigType#
sub get_config_tag {
   my ($self, %args) = @_;
   return $self->{'config_tag'}; 	
}

## @method set_config_tag ()
# Sets the given value for 'config_tag' property.
# 
# @param config_tag  - New value for the field.
# The config type of the identity provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_config_tag {
   my ($self, %args) = @_;
   $self->{'config_tag'} = $args{'config_tag'}; 
   return;	
}

## @method get_oauth2 ()
# Gets the value of 'oauth2' property.
#
# @retval oauth2 - The current value of the field.
# OAuth2 Summary. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_oauth2 {
   my ($self, %args) = @_;
   return $self->{'oauth2'}; 	
}

## @method set_oauth2 ()
# Sets the given value for 'oauth2' property.
# 
# @param oauth2  - New value for the field.
# OAuth2 Summary. This  *field*  was added in vSphere API 7.0.0.
#
sub set_oauth2 {
   my ($self, %args) = @_;
   $self->{'oauth2'} = $args{'oauth2'}; 
   return;	
}

## @method get_oidc ()
# Gets the value of 'oidc' property.
#
# @retval oidc - The current value of the field.
# OIDC Summary. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_oidc {
   my ($self, %args) = @_;
   return $self->{'oidc'}; 	
}

## @method set_oidc ()
# Sets the given value for 'oidc' property.
# 
# @param oidc  - New value for the field.
# OIDC Summary. This  *field*  was added in vSphere API 7.0.0.
#
sub set_oidc {
   my ($self, %args) = @_;
   $self->{'oidc'} = $args{'oidc'}; 
   return;	
}

## @method get_is_default ()
# Gets the value of 'is_default' property.
#
# @retval is_default - The current value of the field.
# Specifies whether the provider is the default provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# boolean#
sub get_is_default {
   my ($self, %args) = @_;
   return $self->{'is_default'}; 	
}

## @method set_is_default ()
# Sets the given value for 'is_default' property.
# 
# @param is_default  - New value for the field.
# Specifies whether the provider is the default provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_is_default {
   my ($self, %args) = @_;
   $self->{'is_default'} = $args{'is_default'}; 
   return;	
}

## @method get_domain_names ()
# Gets the value of 'domain_names' property.
#
# @retval domain_names - The current value of the field.
# Set of fully qualified domain names to trust when federating with this identity
#     provider. Tokens from this identity provider will only be validated if the user
#     belongs to one of these domains, and any domain-qualified groups in the tokens will be
#     filtered to include only those groups that belong to one of these domains. If
#     domainNames is an empty set, domain validation behavior at login with this identity
#     provider will be as follows: the user&apos;s domain will be parsed from the User
#     Principal Name (UPN) value that is found in the tokens returned by the identity
#     provider. This domain will then be implicitly trusted and used to filter any groups
#     that are also provided in the tokens. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_domain_names {
   my ($self, %args) = @_;
   return $self->{'domain_names'}; 	
}

## @method set_domain_names ()
# Sets the given value for 'domain_names' property.
# 
# @param domain_names  - New value for the field.
# Set of fully qualified domain names to trust when federating with this identity
#     provider. Tokens from this identity provider will only be validated if the user
#     belongs to one of these domains, and any domain-qualified groups in the tokens will be
#     filtered to include only those groups that belong to one of these domains. If
#     domainNames is an empty set, domain validation behavior at login with this identity
#     provider will be as follows: the user&apos;s domain will be parsed from the User
#     Principal Name (UPN) value that is found in the tokens returned by the identity
#     provider. This domain will then be implicitly trusted and used to filter any groups
#     that are also provided in the tokens. This  *field*  was added in vSphere API 7.0.0.
#
sub set_domain_names {
   my ($self, %args) = @_;
   $self->{'domain_names'} = $args{'domain_names'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::Info
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::Info``   *class*  contains the
#     information about an identity provider. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::Info structure
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
         'discriminant_name' => 'config_tag',
         'case_map' => {
               'Oauth2' => ['oauth2'],
               'Oidc' => ['oidc'],
            }),
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'idm_protocol',
         'case_map' => {
               'REST' => ['idm_endpoints'],
               'SCIM' => ['idm_endpoints'],
               'LDAP' => ['active_directory_over_ldap'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{org_ids} = $args{'org_ids'};
   $self->{config_tag} = $args{'config_tag'};
   $self->{oauth2} = $args{'oauth2'};
   $self->{oidc} = $args{'oidc'};
   $self->{is_default} = $args{'is_default'};
   $self->{domain_names} = $args{'domain_names'};
   $self->{auth_query_params} = $args{'auth_query_params'};
   $self->{idm_protocol} = $args{'idm_protocol'};
   $self->{idm_endpoints} = $args{'idm_endpoints'};
   $self->{active_directory_over_ldap} = $args{'active_directory_over_ldap'};
   $self->{upn_claim} = $args{'upn_claim'};
   $self->{groups_claim} = $args{'groups_claim'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'org_ids', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'config_tag', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::ConfigType'));
   $self->set_binding_field('key' => 'oauth2', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::Oauth2Info')));
   $self->set_binding_field('key' => 'oidc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::OidcInfo')));
   $self->set_binding_field('key' => 'is_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'domain_names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))));
   $self->set_binding_field('key' => 'idm_protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::IdmProtocol')));
   $self->set_binding_field('key' => 'idm_endpoints', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::URIType())));
   $self->set_binding_field('key' => 'active_directory_over_ldap', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::ActiveDirectoryOverLdap')));
   $self->set_binding_field('key' => 'upn_claim', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'groups_claim', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The user friendly name for the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The user friendly name for the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_org_ids ()
# Gets the value of 'org_ids' property.
#
# @retval org_ids - The current value of the field.
# The set of orgIds as part of SDDC creation which provides the basis for tenancy. This 
#     *field*  was added in vSphere API 7.0.0.
#
# Set#
sub get_org_ids {
   my ($self, %args) = @_;
   return $self->{'org_ids'}; 	
}

## @method set_org_ids ()
# Sets the given value for 'org_ids' property.
# 
# @param org_ids  - New value for the field.
# The set of orgIds as part of SDDC creation which provides the basis for tenancy. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_org_ids {
   my ($self, %args) = @_;
   $self->{'org_ids'} = $args{'org_ids'}; 
   return;	
}

## @method get_config_tag ()
# Gets the value of 'config_tag' property.
#
# @retval config_tag - The current value of the field.
# The config type of the identity provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# ConfigType#
sub get_config_tag {
   my ($self, %args) = @_;
   return $self->{'config_tag'}; 	
}

## @method set_config_tag ()
# Sets the given value for 'config_tag' property.
# 
# @param config_tag  - New value for the field.
# The config type of the identity provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_config_tag {
   my ($self, %args) = @_;
   $self->{'config_tag'} = $args{'config_tag'}; 
   return;	
}

## @method get_oauth2 ()
# Gets the value of 'oauth2' property.
#
# @retval oauth2 - The current value of the field.
# OAuth2 Info. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_oauth2 {
   my ($self, %args) = @_;
   return $self->{'oauth2'}; 	
}

## @method set_oauth2 ()
# Sets the given value for 'oauth2' property.
# 
# @param oauth2  - New value for the field.
# OAuth2 Info. This  *field*  was added in vSphere API 7.0.0.
#
sub set_oauth2 {
   my ($self, %args) = @_;
   $self->{'oauth2'} = $args{'oauth2'}; 
   return;	
}

## @method get_oidc ()
# Gets the value of 'oidc' property.
#
# @retval oidc - The current value of the field.
# OIDC Info. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_oidc {
   my ($self, %args) = @_;
   return $self->{'oidc'}; 	
}

## @method set_oidc ()
# Sets the given value for 'oidc' property.
# 
# @param oidc  - New value for the field.
# OIDC Info. This  *field*  was added in vSphere API 7.0.0.
#
sub set_oidc {
   my ($self, %args) = @_;
   $self->{'oidc'} = $args{'oidc'}; 
   return;	
}

## @method get_is_default ()
# Gets the value of 'is_default' property.
#
# @retval is_default - The current value of the field.
# Specifies whether the provider is the default provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# boolean#
sub get_is_default {
   my ($self, %args) = @_;
   return $self->{'is_default'}; 	
}

## @method set_is_default ()
# Sets the given value for 'is_default' property.
# 
# @param is_default  - New value for the field.
# Specifies whether the provider is the default provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_is_default {
   my ($self, %args) = @_;
   $self->{'is_default'} = $args{'is_default'}; 
   return;	
}

## @method get_domain_names ()
# Gets the value of 'domain_names' property.
#
# @retval domain_names - The current value of the field.
# Set of fully qualified domain names to trust when federating with this identity
#     provider. Tokens from this identity provider will only be validated if the user
#     belongs to one of these domains, and any domain-qualified groups in the tokens will be
#     filtered to include only those groups that belong to one of these domains. If
#     domainNames is an empty set, domain validation behavior at login with this identity
#     provider will be as follows: the user&apos;s domain will be parsed from the User
#     Principal Name (UPN) value that is found in the tokens returned by the identity
#     provider. This domain will then be implicitly trusted and used to filter any groups
#     that are also provided in the tokens. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_domain_names {
   my ($self, %args) = @_;
   return $self->{'domain_names'}; 	
}

## @method set_domain_names ()
# Sets the given value for 'domain_names' property.
# 
# @param domain_names  - New value for the field.
# Set of fully qualified domain names to trust when federating with this identity
#     provider. Tokens from this identity provider will only be validated if the user
#     belongs to one of these domains, and any domain-qualified groups in the tokens will be
#     filtered to include only those groups that belong to one of these domains. If
#     domainNames is an empty set, domain validation behavior at login with this identity
#     provider will be as follows: the user&apos;s domain will be parsed from the User
#     Principal Name (UPN) value that is found in the tokens returned by the identity
#     provider. This domain will then be implicitly trusted and used to filter any groups
#     that are also provided in the tokens. This  *field*  was added in vSphere API 7.0.0.
#
sub set_domain_names {
   my ($self, %args) = @_;
   $self->{'domain_names'} = $args{'domain_names'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}

## @method get_idm_protocol ()
# Gets the value of 'idm_protocol' property.
#
# @retval idm_protocol - The current value of the field.
# Communication protocol to the identity management endpoints. This  *field*  was added
#     in vSphere API 7.0.0.
#
# Optional#
sub get_idm_protocol {
   my ($self, %args) = @_;
   return $self->{'idm_protocol'}; 	
}

## @method set_idm_protocol ()
# Sets the given value for 'idm_protocol' property.
# 
# @param idm_protocol  - New value for the field.
# Communication protocol to the identity management endpoints. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_idm_protocol {
   my ($self, %args) = @_;
   $self->{'idm_protocol'} = $args{'idm_protocol'}; 
   return;	
}

## @method get_idm_endpoints ()
# Gets the value of 'idm_endpoints' property.
#
# @retval idm_endpoints - The current value of the field.
# Identity management endpoints. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_idm_endpoints {
   my ($self, %args) = @_;
   return $self->{'idm_endpoints'}; 	
}

## @method set_idm_endpoints ()
# Sets the given value for 'idm_endpoints' property.
# 
# @param idm_endpoints  - New value for the field.
# Identity management endpoints. This  *field*  was added in vSphere API 7.0.0.
#
sub set_idm_endpoints {
   my ($self, %args) = @_;
   $self->{'idm_endpoints'} = $args{'idm_endpoints'}; 
   return;	
}

## @method get_active_directory_over_ldap ()
# Gets the value of 'active_directory_over_ldap' property.
#
# @retval active_directory_over_ldap - The current value of the field.
# Identity management configuration. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_active_directory_over_ldap {
   my ($self, %args) = @_;
   return $self->{'active_directory_over_ldap'}; 	
}

## @method set_active_directory_over_ldap ()
# Sets the given value for 'active_directory_over_ldap' property.
# 
# @param active_directory_over_ldap  - New value for the field.
# Identity management configuration. This  *field*  was added in vSphere API 7.0.0.
#
sub set_active_directory_over_ldap {
   my ($self, %args) = @_;
   $self->{'active_directory_over_ldap'} = $args{'active_directory_over_ldap'}; 
   return;	
}

## @method get_upn_claim ()
# Gets the value of 'upn_claim' property.
#
# @retval upn_claim - The current value of the field.
# Specifies which claim provides the user principal name (UPN) for the user. This 
#     *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_upn_claim {
   my ($self, %args) = @_;
   return $self->{'upn_claim'}; 	
}

## @method set_upn_claim ()
# Sets the given value for 'upn_claim' property.
# 
# @param upn_claim  - New value for the field.
# Specifies which claim provides the user principal name (UPN) for the user. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_upn_claim {
   my ($self, %args) = @_;
   $self->{'upn_claim'} = $args{'upn_claim'}; 
   return;	
}

## @method get_groups_claim ()
# Gets the value of 'groups_claim' property.
#
# @retval groups_claim - The current value of the field.
# Specifies which claim provides the group membership for the token subject. If empty,
#     the default behavior for CSP is used. In this case, the groups for the subject will be
#     comprised of the groups in &apos;group_names&apos; and &apos;group_ids&apos; claims.
#     This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_groups_claim {
   my ($self, %args) = @_;
   return $self->{'groups_claim'}; 	
}

## @method set_groups_claim ()
# Sets the given value for 'groups_claim' property.
# 
# @param groups_claim  - New value for the field.
# Specifies which claim provides the group membership for the token subject. If empty,
#     the default behavior for CSP is used. In this case, the groups for the subject will be
#     comprised of the groups in &apos;group_names&apos; and &apos;group_ids&apos; claims.
#     This  *field*  was added in vSphere API 7.0.0.
#
sub set_groups_claim {
   my ($self, %args) = @_;
   $self->{'groups_claim'} = $args{'groups_claim'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::CreateSpec``   *class*  contains the
#     information used to create an identity provider. This  *class*  was added in vSphere
#     API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::CreateSpec structure
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
         'discriminant_name' => 'config_tag',
         'case_map' => {
               'Oauth2' => ['oauth2'],
               'Oidc' => ['oidc'],
            }),
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'idm_protocol',
         'case_map' => {
               'REST' => ['idm_endpoints'],
               'SCIM' => ['idm_endpoints'],
               'LDAP' => ['active_directory_over_ldap'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{config_tag} = $args{'config_tag'};
   $self->{oauth2} = $args{'oauth2'};
   $self->{oidc} = $args{'oidc'};
   $self->{org_ids} = $args{'org_ids'};
   $self->{is_default} = $args{'is_default'};
   $self->{name} = $args{'name'};
   $self->{domain_names} = $args{'domain_names'};
   $self->{auth_query_params} = $args{'auth_query_params'};
   $self->{idm_protocol} = $args{'idm_protocol'};
   $self->{idm_endpoints} = $args{'idm_endpoints'};
   $self->{active_directory_over_ldap} = $args{'active_directory_over_ldap'};
   $self->{upn_claim} = $args{'upn_claim'};
   $self->{groups_claim} = $args{'groups_claim'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.create_spec');
   $self->set_binding_field('key' => 'config_tag', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::ConfigType'));
   $self->set_binding_field('key' => 'oauth2', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::Oauth2CreateSpec')));
   $self->set_binding_field('key' => 'oidc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::OidcCreateSpec')));
   $self->set_binding_field('key' => 'org_ids', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'is_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'domain_names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))));
   $self->set_binding_field('key' => 'idm_protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::IdmProtocol')));
   $self->set_binding_field('key' => 'idm_endpoints', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::URIType())));
   $self->set_binding_field('key' => 'active_directory_over_ldap', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::ActiveDirectoryOverLdap')));
   $self->set_binding_field('key' => 'upn_claim', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'groups_claim', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_config_tag ()
# Gets the value of 'config_tag' property.
#
# @retval config_tag - The current value of the field.
# The config type of the identity provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# ConfigType#
sub get_config_tag {
   my ($self, %args) = @_;
   return $self->{'config_tag'}; 	
}

## @method set_config_tag ()
# Sets the given value for 'config_tag' property.
# 
# @param config_tag  - New value for the field.
# The config type of the identity provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_config_tag {
   my ($self, %args) = @_;
   $self->{'config_tag'} = $args{'config_tag'}; 
   return;	
}

## @method get_oauth2 ()
# Gets the value of 'oauth2' property.
#
# @retval oauth2 - The current value of the field.
# OAuth2 CreateSpec. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_oauth2 {
   my ($self, %args) = @_;
   return $self->{'oauth2'}; 	
}

## @method set_oauth2 ()
# Sets the given value for 'oauth2' property.
# 
# @param oauth2  - New value for the field.
# OAuth2 CreateSpec. This  *field*  was added in vSphere API 7.0.0.
#
sub set_oauth2 {
   my ($self, %args) = @_;
   $self->{'oauth2'} = $args{'oauth2'}; 
   return;	
}

## @method get_oidc ()
# Gets the value of 'oidc' property.
#
# @retval oidc - The current value of the field.
# OIDC CreateSpec. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_oidc {
   my ($self, %args) = @_;
   return $self->{'oidc'}; 	
}

## @method set_oidc ()
# Sets the given value for 'oidc' property.
# 
# @param oidc  - New value for the field.
# OIDC CreateSpec. This  *field*  was added in vSphere API 7.0.0.
#
sub set_oidc {
   my ($self, %args) = @_;
   $self->{'oidc'} = $args{'oidc'}; 
   return;	
}

## @method get_org_ids ()
# Gets the value of 'org_ids' property.
#
# @retval org_ids - The current value of the field.
# The set of orgIds as part of SDDC creation which provides the basis for tenancy. This 
#     *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_org_ids {
   my ($self, %args) = @_;
   return $self->{'org_ids'}; 	
}

## @method set_org_ids ()
# Sets the given value for 'org_ids' property.
# 
# @param org_ids  - New value for the field.
# The set of orgIds as part of SDDC creation which provides the basis for tenancy. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_org_ids {
   my ($self, %args) = @_;
   $self->{'org_ids'} = $args{'org_ids'}; 
   return;	
}

## @method get_is_default ()
# Gets the value of 'is_default' property.
#
# @retval is_default - The current value of the field.
# Specifies whether the provider is the default provider. Setting  ``isDefault``  of
#     current provider to True makes all other providers non-default. If no other providers
#     created in this vCenter Server before, this parameter will be disregarded, and the
#     provider will always be set to the default. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_is_default {
   my ($self, %args) = @_;
   return $self->{'is_default'}; 	
}

## @method set_is_default ()
# Sets the given value for 'is_default' property.
# 
# @param is_default  - New value for the field.
# Specifies whether the provider is the default provider. Setting  ``isDefault``  of
#     current provider to True makes all other providers non-default. If no other providers
#     created in this vCenter Server before, this parameter will be disregarded, and the
#     provider will always be set to the default. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_is_default {
   my ($self, %args) = @_;
   $self->{'is_default'} = $args{'is_default'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The user friendly name for the provider. This name can be used for human-readable
#     identification purposes, but it does not have to be unique, as the system will use
#     internal UUIDs to differentiate providers. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The user friendly name for the provider. This name can be used for human-readable
#     identification purposes, but it does not have to be unique, as the system will use
#     internal UUIDs to differentiate providers. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_domain_names ()
# Gets the value of 'domain_names' property.
#
# @retval domain_names - The current value of the field.
# Set of fully qualified domain names to trust when federating with this identity
#     provider. Tokens from this identity provider will only be validated if the user
#     belongs to one of these domains, and any domain-qualified groups in the tokens will be
#     filtered to include only those groups that belong to one of these domains. This 
#     *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_domain_names {
   my ($self, %args) = @_;
   return $self->{'domain_names'}; 	
}

## @method set_domain_names ()
# Sets the given value for 'domain_names' property.
# 
# @param domain_names  - New value for the field.
# Set of fully qualified domain names to trust when federating with this identity
#     provider. Tokens from this identity provider will only be validated if the user
#     belongs to one of these domains, and any domain-qualified groups in the tokens will be
#     filtered to include only those groups that belong to one of these domains. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_domain_names {
   my ($self, %args) = @_;
   $self->{'domain_names'} = $args{'domain_names'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}

## @method get_idm_protocol ()
# Gets the value of 'idm_protocol' property.
#
# @retval idm_protocol - The current value of the field.
# Communication protocol to the identity management endpoints. This  *field*  was added
#     in vSphere API 7.0.0.
#
# Optional#
sub get_idm_protocol {
   my ($self, %args) = @_;
   return $self->{'idm_protocol'}; 	
}

## @method set_idm_protocol ()
# Sets the given value for 'idm_protocol' property.
# 
# @param idm_protocol  - New value for the field.
# Communication protocol to the identity management endpoints. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_idm_protocol {
   my ($self, %args) = @_;
   $self->{'idm_protocol'} = $args{'idm_protocol'}; 
   return;	
}

## @method get_idm_endpoints ()
# Gets the value of 'idm_endpoints' property.
#
# @retval idm_endpoints - The current value of the field.
# Identity management endpoints. When specified, at least one endpoint must be provided.
#     This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_idm_endpoints {
   my ($self, %args) = @_;
   return $self->{'idm_endpoints'}; 	
}

## @method set_idm_endpoints ()
# Sets the given value for 'idm_endpoints' property.
# 
# @param idm_endpoints  - New value for the field.
# Identity management endpoints. When specified, at least one endpoint must be provided.
#     This  *field*  was added in vSphere API 7.0.0.
#
sub set_idm_endpoints {
   my ($self, %args) = @_;
   $self->{'idm_endpoints'} = $args{'idm_endpoints'}; 
   return;	
}

## @method get_active_directory_over_ldap ()
# Gets the value of 'active_directory_over_ldap' property.
#
# @retval active_directory_over_ldap - The current value of the field.
# Identity management configuration. If the protocol is LDAP, the configuration must be
#     set, else InvalidArgument is thrown. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_active_directory_over_ldap {
   my ($self, %args) = @_;
   return $self->{'active_directory_over_ldap'}; 	
}

## @method set_active_directory_over_ldap ()
# Sets the given value for 'active_directory_over_ldap' property.
# 
# @param active_directory_over_ldap  - New value for the field.
# Identity management configuration. If the protocol is LDAP, the configuration must be
#     set, else InvalidArgument is thrown. This  *field*  was added in vSphere API 7.0.0.
#
sub set_active_directory_over_ldap {
   my ($self, %args) = @_;
   $self->{'active_directory_over_ldap'} = $args{'active_directory_over_ldap'}; 
   return;	
}

## @method get_upn_claim ()
# Gets the value of 'upn_claim' property.
#
# @retval upn_claim - The current value of the field.
# Specifies which claim provides the user principal name (UPN) for the user. This 
#     *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_upn_claim {
   my ($self, %args) = @_;
   return $self->{'upn_claim'}; 	
}

## @method set_upn_claim ()
# Sets the given value for 'upn_claim' property.
# 
# @param upn_claim  - New value for the field.
# Specifies which claim provides the user principal name (UPN) for the user. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_upn_claim {
   my ($self, %args) = @_;
   $self->{'upn_claim'} = $args{'upn_claim'}; 
   return;	
}

## @method get_groups_claim ()
# Gets the value of 'groups_claim' property.
#
# @retval groups_claim - The current value of the field.
# Specifies which claim provides the group membership for the token subject. These
#     groups will be used for mapping to local groups per the claim map. This  *field*  was
#     added in vSphere API 7.0.0.
#
# Optional#
sub get_groups_claim {
   my ($self, %args) = @_;
   return $self->{'groups_claim'}; 	
}

## @method set_groups_claim ()
# Sets the given value for 'groups_claim' property.
# 
# @param groups_claim  - New value for the field.
# Specifies which claim provides the group membership for the token subject. These
#     groups will be used for mapping to local groups per the claim map. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_groups_claim {
   my ($self, %args) = @_;
   $self->{'groups_claim'} = $args{'groups_claim'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::UpdateSpec``   *class*  contains the
#     information used to update the identity provider. This  *class*  was added in vSphere
#     API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::UpdateSpec structure
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
         'discriminant_name' => 'config_tag',
         'case_map' => {
               'Oauth2' => ['oauth2'],
               'Oidc' => ['oidc'],
            }),
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'idm_protocol',
         'case_map' => {
               'REST' => ['idm_endpoints'],
               'SCIM' => ['idm_endpoints'],
               'LDAP' => ['active_directory_over_ldap'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{config_tag} = $args{'config_tag'};
   $self->{oauth2} = $args{'oauth2'};
   $self->{oidc} = $args{'oidc'};
   $self->{org_ids} = $args{'org_ids'};
   $self->{make_default} = $args{'make_default'};
   $self->{name} = $args{'name'};
   $self->{domain_names} = $args{'domain_names'};
   $self->{auth_query_params} = $args{'auth_query_params'};
   $self->{idm_protocol} = $args{'idm_protocol'};
   $self->{idm_endpoints} = $args{'idm_endpoints'};
   $self->{active_directory_over_ldap} = $args{'active_directory_over_ldap'};
   $self->{upn_claim} = $args{'upn_claim'};
   $self->{reset_upn_claim} = $args{'reset_upn_claim'};
   $self->{groups_claim} = $args{'groups_claim'};
   $self->{reset_groups_claim} = $args{'reset_groups_claim'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.update_spec');
   $self->set_binding_field('key' => 'config_tag', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::ConfigType'));
   $self->set_binding_field('key' => 'oauth2', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::Oauth2UpdateSpec')));
   $self->set_binding_field('key' => 'oidc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::OidcUpdateSpec')));
   $self->set_binding_field('key' => 'org_ids', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'make_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'domain_names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))));
   $self->set_binding_field('key' => 'idm_protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::IdmProtocol')));
   $self->set_binding_field('key' => 'idm_endpoints', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::URIType())));
   $self->set_binding_field('key' => 'active_directory_over_ldap', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::ActiveDirectoryOverLdap')));
   $self->set_binding_field('key' => 'upn_claim', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'reset_upn_claim', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'groups_claim', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'reset_groups_claim', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_config_tag ()
# Gets the value of 'config_tag' property.
#
# @retval config_tag - The current value of the field.
# The config type of the identity provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# ConfigType#
sub get_config_tag {
   my ($self, %args) = @_;
   return $self->{'config_tag'}; 	
}

## @method set_config_tag ()
# Sets the given value for 'config_tag' property.
# 
# @param config_tag  - New value for the field.
# The config type of the identity provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_config_tag {
   my ($self, %args) = @_;
   $self->{'config_tag'} = $args{'config_tag'}; 
   return;	
}

## @method get_oauth2 ()
# Gets the value of 'oauth2' property.
#
# @retval oauth2 - The current value of the field.
# OAuth2 UpdateSpec. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_oauth2 {
   my ($self, %args) = @_;
   return $self->{'oauth2'}; 	
}

## @method set_oauth2 ()
# Sets the given value for 'oauth2' property.
# 
# @param oauth2  - New value for the field.
# OAuth2 UpdateSpec. This  *field*  was added in vSphere API 7.0.0.
#
sub set_oauth2 {
   my ($self, %args) = @_;
   $self->{'oauth2'} = $args{'oauth2'}; 
   return;	
}

## @method get_oidc ()
# Gets the value of 'oidc' property.
#
# @retval oidc - The current value of the field.
# OIDC UpdateSpec. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_oidc {
   my ($self, %args) = @_;
   return $self->{'oidc'}; 	
}

## @method set_oidc ()
# Sets the given value for 'oidc' property.
# 
# @param oidc  - New value for the field.
# OIDC UpdateSpec. This  *field*  was added in vSphere API 7.0.0.
#
sub set_oidc {
   my ($self, %args) = @_;
   $self->{'oidc'} = $args{'oidc'}; 
   return;	
}

## @method get_org_ids ()
# Gets the value of 'org_ids' property.
#
# @retval org_ids - The current value of the field.
# The set orgIds as part of SDDC creation which provides the basis for tenancy. This 
#     *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_org_ids {
   my ($self, %args) = @_;
   return $self->{'org_ids'}; 	
}

## @method set_org_ids ()
# Sets the given value for 'org_ids' property.
# 
# @param org_ids  - New value for the field.
# The set orgIds as part of SDDC creation which provides the basis for tenancy. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_org_ids {
   my ($self, %args) = @_;
   $self->{'org_ids'} = $args{'org_ids'}; 
   return;	
}

## @method get_make_default ()
# Gets the value of 'make_default' property.
#
# @retval make_default - The current value of the field.
# Specifies whether to make this the default provider. If  ``makeDefault``  is set to
#     true, this provider will be flagged as the default provider and any other providers
#     that had previously been flagged as the default will be made non-default. If 
#     ``makeDefault``  is set to false, this provider&apos;s default flag will not be
#     modified. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_make_default {
   my ($self, %args) = @_;
   return $self->{'make_default'}; 	
}

## @method set_make_default ()
# Sets the given value for 'make_default' property.
# 
# @param make_default  - New value for the field.
# Specifies whether to make this the default provider. If  ``makeDefault``  is set to
#     true, this provider will be flagged as the default provider and any other providers
#     that had previously been flagged as the default will be made non-default. If 
#     ``makeDefault``  is set to false, this provider&apos;s default flag will not be
#     modified. This  *field*  was added in vSphere API 7.0.0.
#
sub set_make_default {
   my ($self, %args) = @_;
   $self->{'make_default'} = $args{'make_default'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The user friendly name for the provider. This name can be used for human-readable
#     identification purposes, but it does not have to be unique, as the system will use
#     internal UUIDs to differentiate providers. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The user friendly name for the provider. This name can be used for human-readable
#     identification purposes, but it does not have to be unique, as the system will use
#     internal UUIDs to differentiate providers. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_domain_names ()
# Gets the value of 'domain_names' property.
#
# @retval domain_names - The current value of the field.
# Set of fully qualified domain names to trust when federating with this identity
#     provider. Tokens from this identity provider will only be validated if the user
#     belongs to one of these domains, and any domain-qualified groups in the tokens will be
#     filtered to include only those groups that belong to one of these domains. This 
#     *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_domain_names {
   my ($self, %args) = @_;
   return $self->{'domain_names'}; 	
}

## @method set_domain_names ()
# Sets the given value for 'domain_names' property.
# 
# @param domain_names  - New value for the field.
# Set of fully qualified domain names to trust when federating with this identity
#     provider. Tokens from this identity provider will only be validated if the user
#     belongs to one of these domains, and any domain-qualified groups in the tokens will be
#     filtered to include only those groups that belong to one of these domains. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_domain_names {
   my ($self, %args) = @_;
   $self->{'domain_names'} = $args{'domain_names'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# key/value pairs that are to be appended to the authEndpoint request. How to append to
#     authEndpoint request: If the map is not empty, a &quot;?&quot; is added to the
#     endpoint URL, and combination of each k and each string in the v is added with an
#     &quot;&amp;&quot; delimiter. Details: If the value contains only one string, then the
#     key is added with &quot;k=v&quot;. If the value is an empty list, then the key is
#     added without a &quot;=v&quot;. If the value contains multiple strings, then the key
#     is repeated in the query-string for each string in the value. If the map is empty,
#     deletes all params. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# key/value pairs that are to be appended to the authEndpoint request. How to append to
#     authEndpoint request: If the map is not empty, a &quot;?&quot; is added to the
#     endpoint URL, and combination of each k and each string in the v is added with an
#     &quot;&amp;&quot; delimiter. Details: If the value contains only one string, then the
#     key is added with &quot;k=v&quot;. If the value is an empty list, then the key is
#     added without a &quot;=v&quot;. If the value contains multiple strings, then the key
#     is repeated in the query-string for each string in the value. If the map is empty,
#     deletes all params. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}

## @method get_idm_protocol ()
# Gets the value of 'idm_protocol' property.
#
# @retval idm_protocol - The current value of the field.
# The protocol to communicate to the identity management endpoints. This  *field*  was
#     added in vSphere API 7.0.0.
#
# Optional#
sub get_idm_protocol {
   my ($self, %args) = @_;
   return $self->{'idm_protocol'}; 	
}

## @method set_idm_protocol ()
# Sets the given value for 'idm_protocol' property.
# 
# @param idm_protocol  - New value for the field.
# The protocol to communicate to the identity management endpoints. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_idm_protocol {
   my ($self, %args) = @_;
   $self->{'idm_protocol'} = $args{'idm_protocol'}; 
   return;	
}

## @method get_idm_endpoints ()
# Gets the value of 'idm_endpoints' property.
#
# @retval idm_endpoints - The current value of the field.
# Identity management endpoints. When specified, at least one endpoint must be provided.
#     This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_idm_endpoints {
   my ($self, %args) = @_;
   return $self->{'idm_endpoints'}; 	
}

## @method set_idm_endpoints ()
# Sets the given value for 'idm_endpoints' property.
# 
# @param idm_endpoints  - New value for the field.
# Identity management endpoints. When specified, at least one endpoint must be provided.
#     This  *field*  was added in vSphere API 7.0.0.
#
sub set_idm_endpoints {
   my ($self, %args) = @_;
   $self->{'idm_endpoints'} = $args{'idm_endpoints'}; 
   return;	
}

## @method get_active_directory_over_ldap ()
# Gets the value of 'active_directory_over_ldap' property.
#
# @retval active_directory_over_ldap - The current value of the field.
# Identity management configuration. If the protocol is LDAP, the configuration must be
#     set, else InvalidArgument is thrown. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_active_directory_over_ldap {
   my ($self, %args) = @_;
   return $self->{'active_directory_over_ldap'}; 	
}

## @method set_active_directory_over_ldap ()
# Sets the given value for 'active_directory_over_ldap' property.
# 
# @param active_directory_over_ldap  - New value for the field.
# Identity management configuration. If the protocol is LDAP, the configuration must be
#     set, else InvalidArgument is thrown. This  *field*  was added in vSphere API 7.0.0.
#
sub set_active_directory_over_ldap {
   my ($self, %args) = @_;
   $self->{'active_directory_over_ldap'} = $args{'active_directory_over_ldap'}; 
   return;	
}

## @method get_upn_claim ()
# Gets the value of 'upn_claim' property.
#
# @retval upn_claim - The current value of the field.
# Specifies which claim provides the user principal name (UPN) for the subject of the
#     token. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_upn_claim {
   my ($self, %args) = @_;
   return $self->{'upn_claim'}; 	
}

## @method set_upn_claim ()
# Sets the given value for 'upn_claim' property.
# 
# @param upn_claim  - New value for the field.
# Specifies which claim provides the user principal name (UPN) for the subject of the
#     token. This  *field*  was added in vSphere API 7.0.0.
#
sub set_upn_claim {
   my ($self, %args) = @_;
   $self->{'upn_claim'} = $args{'upn_claim'}; 
   return;	
}

## @method get_reset_upn_claim ()
# Gets the value of 'reset_upn_claim' property.
#
# @retval reset_upn_claim - The current value of the field.
# Flag indicating whether the user principal name (UPN) claim should be set back to its
#     default value. If this field is set to  ``true`` , the user principal name (UPN) claim
#     will be set to &apos;acct&apos;, which is used for backwards compatibility with CSP.
#     If this field is set to  ``false`` , the existing user principal name (UPN) claim will
#     be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Identity::Providers::UpdateSpec.upn_claim` , if any. This
#      *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_reset_upn_claim {
   my ($self, %args) = @_;
   return $self->{'reset_upn_claim'}; 	
}

## @method set_reset_upn_claim ()
# Sets the given value for 'reset_upn_claim' property.
# 
# @param reset_upn_claim  - New value for the field.
# Flag indicating whether the user principal name (UPN) claim should be set back to its
#     default value. If this field is set to  ``true`` , the user principal name (UPN) claim
#     will be set to &apos;acct&apos;, which is used for backwards compatibility with CSP.
#     If this field is set to  ``false`` , the existing user principal name (UPN) claim will
#     be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Identity::Providers::UpdateSpec.upn_claim` , if any. This
#      *field*  was added in vSphere API 7.0.0.
#
sub set_reset_upn_claim {
   my ($self, %args) = @_;
   $self->{'reset_upn_claim'} = $args{'reset_upn_claim'}; 
   return;	
}

## @method get_groups_claim ()
# Gets the value of 'groups_claim' property.
#
# @retval groups_claim - The current value of the field.
# Specifies which claim provides the group membership for the token subject. This 
#     *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_groups_claim {
   my ($self, %args) = @_;
   return $self->{'groups_claim'}; 	
}

## @method set_groups_claim ()
# Sets the given value for 'groups_claim' property.
# 
# @param groups_claim  - New value for the field.
# Specifies which claim provides the group membership for the token subject. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_groups_claim {
   my ($self, %args) = @_;
   $self->{'groups_claim'} = $args{'groups_claim'}; 
   return;	
}

## @method get_reset_groups_claim ()
# Gets the value of 'reset_groups_claim' property.
#
# @retval reset_groups_claim - The current value of the field.
# Flag indicating whether any existing groups claim value should be removed. If this
#     field is set to  ``true`` , the existing groups claim value is removed which defaults
#     to backwards compatibility with CSP. In this case, the groups for the subject will be
#     comprised of the groups in &apos;group_names&apos; and &apos;group_ids&apos; claims.
#     If this field is set to  ``false`` , the existing groups claim will be changed to the
#     value specified in 
#     :attr:`Com::Vmware::Vcenter::Identity::Providers::UpdateSpec.groups_claim` , if any.
#     This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_reset_groups_claim {
   my ($self, %args) = @_;
   return $self->{'reset_groups_claim'}; 	
}

## @method set_reset_groups_claim ()
# Sets the given value for 'reset_groups_claim' property.
# 
# @param reset_groups_claim  - New value for the field.
# Flag indicating whether any existing groups claim value should be removed. If this
#     field is set to  ``true`` , the existing groups claim value is removed which defaults
#     to backwards compatibility with CSP. In this case, the groups for the subject will be
#     comprised of the groups in &apos;group_names&apos; and &apos;group_ids&apos; claims.
#     If this field is set to  ``false`` , the existing groups claim will be changed to the
#     value specified in 
#     :attr:`Com::Vmware::Vcenter::Identity::Providers::UpdateSpec.groups_claim` , if any.
#     This  *field*  was added in vSphere API 7.0.0.
#
sub set_reset_groups_claim {
   my ($self, %args) = @_;
   $self->{'reset_groups_claim'} = $args{'reset_groups_claim'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::Oauth2Summary
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::Oauth2Summary``   *class*  contains
#     commonly used information about an OAuth2 identity provider. This  *class*  was added
#     in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::Oauth2Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::Oauth2Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{auth_endpoint} = $args{'auth_endpoint'};
   $self->{token_endpoint} = $args{'token_endpoint'};
   $self->{client_id} = $args{'client_id'};
   $self->{authentication_header} = $args{'authentication_header'};
   $self->{auth_query_params} = $args{'auth_query_params'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::Oauth2Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.oauth2_summary');
   $self->set_binding_field('key' => 'auth_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'token_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'client_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'authentication_header', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())}))));
   bless $self, $class;
   return $self;
}

## @method get_auth_endpoint ()
# Gets the value of 'auth_endpoint' property.
#
# @retval auth_endpoint - The current value of the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# URI#
sub get_auth_endpoint {
   my ($self, %args) = @_;
   return $self->{'auth_endpoint'}; 	
}

## @method set_auth_endpoint ()
# Sets the given value for 'auth_endpoint' property.
# 
# @param auth_endpoint  - New value for the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_auth_endpoint {
   my ($self, %args) = @_;
   $self->{'auth_endpoint'} = $args{'auth_endpoint'}; 
   return;	
}

## @method get_token_endpoint ()
# Gets the value of 'token_endpoint' property.
#
# @retval token_endpoint - The current value of the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
# URI#
sub get_token_endpoint {
   my ($self, %args) = @_;
   return $self->{'token_endpoint'}; 	
}

## @method set_token_endpoint ()
# Sets the given value for 'token_endpoint' property.
# 
# @param token_endpoint  - New value for the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
sub set_token_endpoint {
   my ($self, %args) = @_;
   $self->{'token_endpoint'} = $args{'token_endpoint'}; 
   return;	
}

## @method get_client_id ()
# Gets the value of 'client_id' property.
#
# @retval client_id - The current value of the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_client_id {
   my ($self, %args) = @_;
   return $self->{'client_id'}; 	
}

## @method set_client_id ()
# Sets the given value for 'client_id' property.
# 
# @param client_id  - New value for the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_client_id {
   my ($self, %args) = @_;
   $self->{'client_id'} = $args{'client_id'}; 
   return;	
}

## @method get_authentication_header ()
# Gets the value of 'authentication_header' property.
#
# @retval authentication_header - The current value of the field.
# The authentication data used as part of request header to acquire or refresh an OAuth2
#     token. The data format depends on the authentication method used. Example of basic
#     authentication format: Authorization: Basic [base64Encode(clientId + &quot;:&quot; +
#     secret)]. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_authentication_header {
   my ($self, %args) = @_;
   return $self->{'authentication_header'}; 	
}

## @method set_authentication_header ()
# Sets the given value for 'authentication_header' property.
# 
# @param authentication_header  - New value for the field.
# The authentication data used as part of request header to acquire or refresh an OAuth2
#     token. The data format depends on the authentication method used. Example of basic
#     authentication format: Authorization: Basic [base64Encode(clientId + &quot;:&quot; +
#     secret)]. This  *field*  was added in vSphere API 7.0.0.
#
sub set_authentication_header {
   my ($self, %args) = @_;
   $self->{'authentication_header'} = $args{'authentication_header'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
# Map#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::Oauth2Info
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::Oauth2Info``   *class*  contains the
#     information about an OAuth2 identity provider. This  *class*  was added in vSphere API
#     7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::Oauth2Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::Oauth2Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{auth_endpoint} = $args{'auth_endpoint'};
   $self->{token_endpoint} = $args{'token_endpoint'};
   $self->{public_key_uri} = $args{'public_key_uri'};
   $self->{client_id} = $args{'client_id'};
   $self->{client_secret} = $args{'client_secret'};
   $self->{claim_map} = $args{'claim_map'};
   $self->{issuer} = $args{'issuer'};
   $self->{authentication_method} = $args{'authentication_method'};
   $self->{auth_query_params} = $args{'auth_query_params'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::Oauth2Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.oauth2_info');
   $self->set_binding_field('key' => 'auth_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'token_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'public_key_uri', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'client_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'client_secret', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'claim_map', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))}))));
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'authentication_method', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::Oauth2AuthenticationMethod'));
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())}))));
   bless $self, $class;
   return $self;
}

## @method get_auth_endpoint ()
# Gets the value of 'auth_endpoint' property.
#
# @retval auth_endpoint - The current value of the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# URI#
sub get_auth_endpoint {
   my ($self, %args) = @_;
   return $self->{'auth_endpoint'}; 	
}

## @method set_auth_endpoint ()
# Sets the given value for 'auth_endpoint' property.
# 
# @param auth_endpoint  - New value for the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_auth_endpoint {
   my ($self, %args) = @_;
   $self->{'auth_endpoint'} = $args{'auth_endpoint'}; 
   return;	
}

## @method get_token_endpoint ()
# Gets the value of 'token_endpoint' property.
#
# @retval token_endpoint - The current value of the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
# URI#
sub get_token_endpoint {
   my ($self, %args) = @_;
   return $self->{'token_endpoint'}; 	
}

## @method set_token_endpoint ()
# Sets the given value for 'token_endpoint' property.
# 
# @param token_endpoint  - New value for the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
sub set_token_endpoint {
   my ($self, %args) = @_;
   $self->{'token_endpoint'} = $args{'token_endpoint'}; 
   return;	
}

## @method get_public_key_uri ()
# Gets the value of 'public_key_uri' property.
#
# @retval public_key_uri - The current value of the field.
# Endpoint to retrieve the provider public key for validation. This  *field*  was added
#     in vSphere API 7.0.0.
#
# URI#
sub get_public_key_uri {
   my ($self, %args) = @_;
   return $self->{'public_key_uri'}; 	
}

## @method set_public_key_uri ()
# Sets the given value for 'public_key_uri' property.
# 
# @param public_key_uri  - New value for the field.
# Endpoint to retrieve the provider public key for validation. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_public_key_uri {
   my ($self, %args) = @_;
   $self->{'public_key_uri'} = $args{'public_key_uri'}; 
   return;	
}

## @method get_client_id ()
# Gets the value of 'client_id' property.
#
# @retval client_id - The current value of the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_client_id {
   my ($self, %args) = @_;
   return $self->{'client_id'}; 	
}

## @method set_client_id ()
# Sets the given value for 'client_id' property.
# 
# @param client_id  - New value for the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_client_id {
   my ($self, %args) = @_;
   $self->{'client_id'} = $args{'client_id'}; 
   return;	
}

## @method get_client_secret ()
# Gets the value of 'client_secret' property.
#
# @retval client_secret - The current value of the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# String#
sub get_client_secret {
   my ($self, %args) = @_;
   return $self->{'client_secret'}; 	
}

## @method set_client_secret ()
# Sets the given value for 'client_secret' property.
# 
# @param client_secret  - New value for the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_client_secret {
   my ($self, %args) = @_;
   $self->{'client_secret'} = $args{'client_secret'}; 
   return;	
}

## @method get_claim_map ()
# Gets the value of 'claim_map' property.
#
# @retval claim_map - The current value of the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
# Map#
sub get_claim_map {
   my ($self, %args) = @_;
   return $self->{'claim_map'}; 	
}

## @method set_claim_map ()
# Sets the given value for 'claim_map' property.
# 
# @param claim_map  - New value for the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
sub set_claim_map {
   my ($self, %args) = @_;
   $self->{'claim_map'} = $args{'claim_map'}; 
   return;	
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# The identity provider namespace. It is used to validate the issuer in the acquired
#     OAuth2 token. This  *field*  was added in vSphere API 7.0.0.
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
# The identity provider namespace. It is used to validate the issuer in the acquired
#     OAuth2 token. This  *field*  was added in vSphere API 7.0.0.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}

## @method get_authentication_method ()
# Gets the value of 'authentication_method' property.
#
# @retval authentication_method - The current value of the field.
# Authentication method used by the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# Oauth2AuthenticationMethod#
sub get_authentication_method {
   my ($self, %args) = @_;
   return $self->{'authentication_method'}; 	
}

## @method set_authentication_method ()
# Sets the given value for 'authentication_method' property.
# 
# @param authentication_method  - New value for the field.
# Authentication method used by the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_authentication_method {
   my ($self, %args) = @_;
   $self->{'authentication_method'} = $args{'authentication_method'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
# Map#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::Oauth2CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::Oauth2CreateSpec``   *class* 
#     contains the information used to create an OAuth2 identity provider. This  *class* 
#     was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::Oauth2CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::Oauth2CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{auth_endpoint} = $args{'auth_endpoint'};
   $self->{token_endpoint} = $args{'token_endpoint'};
   $self->{public_key_uri} = $args{'public_key_uri'};
   $self->{client_id} = $args{'client_id'};
   $self->{client_secret} = $args{'client_secret'};
   $self->{claim_map} = $args{'claim_map'};
   $self->{issuer} = $args{'issuer'};
   $self->{authentication_method} = $args{'authentication_method'};
   $self->{auth_query_params} = $args{'auth_query_params'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::Oauth2CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.oauth2_create_spec');
   $self->set_binding_field('key' => 'auth_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'token_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'public_key_uri', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'client_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'client_secret', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'claim_map', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))}))));
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'authentication_method', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::Oauth2AuthenticationMethod'));
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))));
   bless $self, $class;
   return $self;
}

## @method get_auth_endpoint ()
# Gets the value of 'auth_endpoint' property.
#
# @retval auth_endpoint - The current value of the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# URI#
sub get_auth_endpoint {
   my ($self, %args) = @_;
   return $self->{'auth_endpoint'}; 	
}

## @method set_auth_endpoint ()
# Sets the given value for 'auth_endpoint' property.
# 
# @param auth_endpoint  - New value for the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_auth_endpoint {
   my ($self, %args) = @_;
   $self->{'auth_endpoint'} = $args{'auth_endpoint'}; 
   return;	
}

## @method get_token_endpoint ()
# Gets the value of 'token_endpoint' property.
#
# @retval token_endpoint - The current value of the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
# URI#
sub get_token_endpoint {
   my ($self, %args) = @_;
   return $self->{'token_endpoint'}; 	
}

## @method set_token_endpoint ()
# Sets the given value for 'token_endpoint' property.
# 
# @param token_endpoint  - New value for the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
sub set_token_endpoint {
   my ($self, %args) = @_;
   $self->{'token_endpoint'} = $args{'token_endpoint'}; 
   return;	
}

## @method get_public_key_uri ()
# Gets the value of 'public_key_uri' property.
#
# @retval public_key_uri - The current value of the field.
# Endpoint to retrieve the provider public key for validation. This  *field*  was added
#     in vSphere API 7.0.0.
#
# URI#
sub get_public_key_uri {
   my ($self, %args) = @_;
   return $self->{'public_key_uri'}; 	
}

## @method set_public_key_uri ()
# Sets the given value for 'public_key_uri' property.
# 
# @param public_key_uri  - New value for the field.
# Endpoint to retrieve the provider public key for validation. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_public_key_uri {
   my ($self, %args) = @_;
   $self->{'public_key_uri'} = $args{'public_key_uri'}; 
   return;	
}

## @method get_client_id ()
# Gets the value of 'client_id' property.
#
# @retval client_id - The current value of the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_client_id {
   my ($self, %args) = @_;
   return $self->{'client_id'}; 	
}

## @method set_client_id ()
# Sets the given value for 'client_id' property.
# 
# @param client_id  - New value for the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_client_id {
   my ($self, %args) = @_;
   $self->{'client_id'} = $args{'client_id'}; 
   return;	
}

## @method get_client_secret ()
# Gets the value of 'client_secret' property.
#
# @retval client_secret - The current value of the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# String#
sub get_client_secret {
   my ($self, %args) = @_;
   return $self->{'client_secret'}; 	
}

## @method set_client_secret ()
# Sets the given value for 'client_secret' property.
# 
# @param client_secret  - New value for the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_client_secret {
   my ($self, %args) = @_;
   $self->{'client_secret'} = $args{'client_secret'}; 
   return;	
}

## @method get_claim_map ()
# Gets the value of 'claim_map' property.
#
# @retval claim_map - The current value of the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
# Map#
sub get_claim_map {
   my ($self, %args) = @_;
   return $self->{'claim_map'}; 	
}

## @method set_claim_map ()
# Sets the given value for 'claim_map' property.
# 
# @param claim_map  - New value for the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
sub set_claim_map {
   my ($self, %args) = @_;
   $self->{'claim_map'} = $args{'claim_map'}; 
   return;	
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# The identity provider namespace. It is used to validate the issuer in the acquired
#     OAuth2 token. This  *field*  was added in vSphere API 7.0.0.
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
# The identity provider namespace. It is used to validate the issuer in the acquired
#     OAuth2 token. This  *field*  was added in vSphere API 7.0.0.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}

## @method get_authentication_method ()
# Gets the value of 'authentication_method' property.
#
# @retval authentication_method - The current value of the field.
# Authentication method used by the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# Oauth2AuthenticationMethod#
sub get_authentication_method {
   my ($self, %args) = @_;
   return $self->{'authentication_method'}; 	
}

## @method set_authentication_method ()
# Sets the given value for 'authentication_method' property.
# 
# @param authentication_method  - New value for the field.
# Authentication method used by the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_authentication_method {
   my ($self, %args) = @_;
   $self->{'authentication_method'} = $args{'authentication_method'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::Oauth2UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::Oauth2UpdateSpec``   *class* 
#     contains the information used to update the OAuth2 identity provider. This  *class* 
#     was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::Oauth2UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::Oauth2UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{auth_endpoint} = $args{'auth_endpoint'};
   $self->{token_endpoint} = $args{'token_endpoint'};
   $self->{public_key_uri} = $args{'public_key_uri'};
   $self->{client_id} = $args{'client_id'};
   $self->{client_secret} = $args{'client_secret'};
   $self->{claim_map} = $args{'claim_map'};
   $self->{issuer} = $args{'issuer'};
   $self->{authentication_method} = $args{'authentication_method'};
   $self->{auth_query_params} = $args{'auth_query_params'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::Oauth2UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.oauth2_update_spec');
   $self->set_binding_field('key' => 'auth_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'token_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'public_key_uri', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'client_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'client_secret', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'claim_map', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))})))));
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'authentication_method', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::Oauth2AuthenticationMethod')));
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))));
   bless $self, $class;
   return $self;
}

## @method get_auth_endpoint ()
# Gets the value of 'auth_endpoint' property.
#
# @retval auth_endpoint - The current value of the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Optional#
sub get_auth_endpoint {
   my ($self, %args) = @_;
   return $self->{'auth_endpoint'}; 	
}

## @method set_auth_endpoint ()
# Sets the given value for 'auth_endpoint' property.
# 
# @param auth_endpoint  - New value for the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_auth_endpoint {
   my ($self, %args) = @_;
   $self->{'auth_endpoint'} = $args{'auth_endpoint'}; 
   return;	
}

## @method get_token_endpoint ()
# Gets the value of 'token_endpoint' property.
#
# @retval token_endpoint - The current value of the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_token_endpoint {
   my ($self, %args) = @_;
   return $self->{'token_endpoint'}; 	
}

## @method set_token_endpoint ()
# Sets the given value for 'token_endpoint' property.
# 
# @param token_endpoint  - New value for the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
sub set_token_endpoint {
   my ($self, %args) = @_;
   $self->{'token_endpoint'} = $args{'token_endpoint'}; 
   return;	
}

## @method get_public_key_uri ()
# Gets the value of 'public_key_uri' property.
#
# @retval public_key_uri - The current value of the field.
# Endpoint to retrieve the provider public key for validation. This  *field*  was added
#     in vSphere API 7.0.0.
#
# Optional#
sub get_public_key_uri {
   my ($self, %args) = @_;
   return $self->{'public_key_uri'}; 	
}

## @method set_public_key_uri ()
# Sets the given value for 'public_key_uri' property.
# 
# @param public_key_uri  - New value for the field.
# Endpoint to retrieve the provider public key for validation. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_public_key_uri {
   my ($self, %args) = @_;
   $self->{'public_key_uri'} = $args{'public_key_uri'}; 
   return;	
}

## @method get_client_id ()
# Gets the value of 'client_id' property.
#
# @retval client_id - The current value of the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_client_id {
   my ($self, %args) = @_;
   return $self->{'client_id'}; 	
}

## @method set_client_id ()
# Sets the given value for 'client_id' property.
# 
# @param client_id  - New value for the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_client_id {
   my ($self, %args) = @_;
   $self->{'client_id'} = $args{'client_id'}; 
   return;	
}

## @method get_client_secret ()
# Gets the value of 'client_secret' property.
#
# @retval client_secret - The current value of the field.
# Shared secret between identity provider and client. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Optional#
sub get_client_secret {
   my ($self, %args) = @_;
   return $self->{'client_secret'}; 	
}

## @method set_client_secret ()
# Sets the given value for 'client_secret' property.
# 
# @param client_secret  - New value for the field.
# Shared secret between identity provider and client. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_client_secret {
   my ($self, %args) = @_;
   $self->{'client_secret'} = $args{'client_secret'}; 
   return;	
}

## @method get_claim_map ()
# Gets the value of 'claim_map' property.
#
# @retval claim_map - The current value of the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_claim_map {
   my ($self, %args) = @_;
   return $self->{'claim_map'}; 	
}

## @method set_claim_map ()
# Sets the given value for 'claim_map' property.
# 
# @param claim_map  - New value for the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
sub set_claim_map {
   my ($self, %args) = @_;
   $self->{'claim_map'} = $args{'claim_map'}; 
   return;	
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# The identity provider namespace. It is used to validate the issuer in the acquired
#     OAuth2 token. This  *field*  was added in vSphere API 7.0.0.
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
# The identity provider namespace. It is used to validate the issuer in the acquired
#     OAuth2 token. This  *field*  was added in vSphere API 7.0.0.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}

## @method get_authentication_method ()
# Gets the value of 'authentication_method' property.
#
# @retval authentication_method - The current value of the field.
# Authentication method used by the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_authentication_method {
   my ($self, %args) = @_;
   return $self->{'authentication_method'}; 	
}

## @method set_authentication_method ()
# Sets the given value for 'authentication_method' property.
# 
# @param authentication_method  - New value for the field.
# Authentication method used by the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_authentication_method {
   my ($self, %args) = @_;
   $self->{'authentication_method'} = $args{'authentication_method'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# key/value pairs that are to be appended to the authEndpoint request. How to append to
#     authEndpoint request: If the map is not empty, a &quot;?&quot; is added to the
#     endpoint URL, and combination of each k and each string in the v is added with an
#     &quot;&amp;&quot; delimiter. Details: If the value contains only one string, then the
#     key is added with &quot;k=v&quot;. If the value is an empty list, then the key is
#     added without a &quot;=v&quot;. If the value contains multiple strings, then the key
#     is repeated in the query-string for each string in the value. If the map is empty,
#     deletes all params. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# key/value pairs that are to be appended to the authEndpoint request. How to append to
#     authEndpoint request: If the map is not empty, a &quot;?&quot; is added to the
#     endpoint URL, and combination of each k and each string in the v is added with an
#     &quot;&amp;&quot; delimiter. Details: If the value contains only one string, then the
#     key is added with &quot;k=v&quot;. If the value is an empty list, then the key is
#     added without a &quot;=v&quot;. If the value contains multiple strings, then the key
#     is repeated in the query-string for each string in the value. If the map is empty,
#     deletes all params. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::OidcSummary
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::OidcSummary``   *class*  contains
#     commonly used information about an OIDC identity provider. OIDC is a discovery
#     protocol for OAuth2 configuration metadata, so 
#     ``Com::Vmware::Vcenter::Identity::Providers::OidcSummary``  contains discovered OAuth2
#     metadata. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::OidcSummary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::OidcSummary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{discovery_endpoint} = $args{'discovery_endpoint'};
   $self->{logout_endpoint} = $args{'logout_endpoint'};
   $self->{auth_endpoint} = $args{'auth_endpoint'};
   $self->{token_endpoint} = $args{'token_endpoint'};
   $self->{client_id} = $args{'client_id'};
   $self->{authentication_header} = $args{'authentication_header'};
   $self->{auth_query_params} = $args{'auth_query_params'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::OidcSummary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.oidc_summary');
   $self->set_binding_field('key' => 'discovery_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'logout_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'auth_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'token_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'client_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'authentication_header', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())}))));
   bless $self, $class;
   return $self;
}

## @method get_discovery_endpoint ()
# Gets the value of 'discovery_endpoint' property.
#
# @retval discovery_endpoint - The current value of the field.
# Endpoint to retrieve the provider metadata. This  *field*  was added in vSphere API
#     7.0.0.
#
# optional#
sub get_discovery_endpoint {
   my ($self, %args) = @_;
   return $self->{'discovery_endpoint'}; 	
}

## @method set_discovery_endpoint ()
# Sets the given value for 'discovery_endpoint' property.
# 
# @param discovery_endpoint  - New value for the field.
# Endpoint to retrieve the provider metadata. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_discovery_endpoint {
   my ($self, %args) = @_;
   $self->{'discovery_endpoint'} = $args{'discovery_endpoint'}; 
   return;	
}

## @method get_logout_endpoint ()
# Gets the value of 'logout_endpoint' property.
#
# @retval logout_endpoint - The current value of the field.
# The endpoint to use for terminating the user&apos;s session at the identity provider.
#     This value is automatically derived from the metadata information provided by the OIDC
#     discovery endpoint. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_logout_endpoint {
   my ($self, %args) = @_;
   return $self->{'logout_endpoint'}; 	
}

## @method set_logout_endpoint ()
# Sets the given value for 'logout_endpoint' property.
# 
# @param logout_endpoint  - New value for the field.
# The endpoint to use for terminating the user&apos;s session at the identity provider.
#     This value is automatically derived from the metadata information provided by the OIDC
#     discovery endpoint. This  *field*  was added in vSphere API 7.0.0.
#
sub set_logout_endpoint {
   my ($self, %args) = @_;
   $self->{'logout_endpoint'} = $args{'logout_endpoint'}; 
   return;	
}

## @method get_auth_endpoint ()
# Gets the value of 'auth_endpoint' property.
#
# @retval auth_endpoint - The current value of the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# URI#
sub get_auth_endpoint {
   my ($self, %args) = @_;
   return $self->{'auth_endpoint'}; 	
}

## @method set_auth_endpoint ()
# Sets the given value for 'auth_endpoint' property.
# 
# @param auth_endpoint  - New value for the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_auth_endpoint {
   my ($self, %args) = @_;
   $self->{'auth_endpoint'} = $args{'auth_endpoint'}; 
   return;	
}

## @method get_token_endpoint ()
# Gets the value of 'token_endpoint' property.
#
# @retval token_endpoint - The current value of the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
# URI#
sub get_token_endpoint {
   my ($self, %args) = @_;
   return $self->{'token_endpoint'}; 	
}

## @method set_token_endpoint ()
# Sets the given value for 'token_endpoint' property.
# 
# @param token_endpoint  - New value for the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
sub set_token_endpoint {
   my ($self, %args) = @_;
   $self->{'token_endpoint'} = $args{'token_endpoint'}; 
   return;	
}

## @method get_client_id ()
# Gets the value of 'client_id' property.
#
# @retval client_id - The current value of the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_client_id {
   my ($self, %args) = @_;
   return $self->{'client_id'}; 	
}

## @method set_client_id ()
# Sets the given value for 'client_id' property.
# 
# @param client_id  - New value for the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_client_id {
   my ($self, %args) = @_;
   $self->{'client_id'} = $args{'client_id'}; 
   return;	
}

## @method get_authentication_header ()
# Gets the value of 'authentication_header' property.
#
# @retval authentication_header - The current value of the field.
# The authentication data used as part of request header to acquire or refresh an OAuth2
#     token. The data format depends on the authentication method used. Example of basic
#     authentication format: Authorization: Basic [base64Encode(clientId + &quot;:&quot; +
#     secret)]. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_authentication_header {
   my ($self, %args) = @_;
   return $self->{'authentication_header'}; 	
}

## @method set_authentication_header ()
# Sets the given value for 'authentication_header' property.
# 
# @param authentication_header  - New value for the field.
# The authentication data used as part of request header to acquire or refresh an OAuth2
#     token. The data format depends on the authentication method used. Example of basic
#     authentication format: Authorization: Basic [base64Encode(clientId + &quot;:&quot; +
#     secret)]. This  *field*  was added in vSphere API 7.0.0.
#
sub set_authentication_header {
   my ($self, %args) = @_;
   $self->{'authentication_header'} = $args{'authentication_header'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
# Map#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::OidcInfo
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::OidcInfo``   *class*  contains
#     information about an OIDC identity provider. OIDC is a discovery protocol for OAuth2
#     configuration metadata, so  ``Com::Vmware::Vcenter::Identity::Providers::OidcInfo`` 
#     contains additional discovered OAuth2 metadata. This  *class*  was added in vSphere
#     API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::OidcInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::OidcInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{discovery_endpoint} = $args{'discovery_endpoint'};
   $self->{logout_endpoint} = $args{'logout_endpoint'};
   $self->{auth_endpoint} = $args{'auth_endpoint'};
   $self->{token_endpoint} = $args{'token_endpoint'};
   $self->{public_key_uri} = $args{'public_key_uri'};
   $self->{client_id} = $args{'client_id'};
   $self->{client_secret} = $args{'client_secret'};
   $self->{claim_map} = $args{'claim_map'};
   $self->{issuer} = $args{'issuer'};
   $self->{authentication_method} = $args{'authentication_method'};
   $self->{auth_query_params} = $args{'auth_query_params'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::OidcInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.oidc_info');
   $self->set_binding_field('key' => 'discovery_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'logout_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'auth_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'token_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'public_key_uri', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'client_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'client_secret', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'claim_map', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))}))));
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'authentication_method', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Identity', 'type_name' => 'Providers::Oauth2AuthenticationMethod'));
   $self->set_binding_field('key' => 'auth_query_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())}))));
   bless $self, $class;
   return $self;
}

## @method get_discovery_endpoint ()
# Gets the value of 'discovery_endpoint' property.
#
# @retval discovery_endpoint - The current value of the field.
# Endpoint to retrieve the provider metadata. This  *field*  was added in vSphere API
#     7.0.0.
#
# URI#
sub get_discovery_endpoint {
   my ($self, %args) = @_;
   return $self->{'discovery_endpoint'}; 	
}

## @method set_discovery_endpoint ()
# Sets the given value for 'discovery_endpoint' property.
# 
# @param discovery_endpoint  - New value for the field.
# Endpoint to retrieve the provider metadata. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_discovery_endpoint {
   my ($self, %args) = @_;
   $self->{'discovery_endpoint'} = $args{'discovery_endpoint'}; 
   return;	
}

## @method get_logout_endpoint ()
# Gets the value of 'logout_endpoint' property.
#
# @retval logout_endpoint - The current value of the field.
# The endpoint to use for terminating the user&apos;s session at the identity provider.
#     This value is automatically derived from the metadata information provided by the OIDC
#     discovery endpoint. This  *field*  was added in vSphere API 7.0.0.
#
# optional#
sub get_logout_endpoint {
   my ($self, %args) = @_;
   return $self->{'logout_endpoint'}; 	
}

## @method set_logout_endpoint ()
# Sets the given value for 'logout_endpoint' property.
# 
# @param logout_endpoint  - New value for the field.
# The endpoint to use for terminating the user&apos;s session at the identity provider.
#     This value is automatically derived from the metadata information provided by the OIDC
#     discovery endpoint. This  *field*  was added in vSphere API 7.0.0.
#
sub set_logout_endpoint {
   my ($self, %args) = @_;
   $self->{'logout_endpoint'} = $args{'logout_endpoint'}; 
   return;	
}

## @method get_auth_endpoint ()
# Gets the value of 'auth_endpoint' property.
#
# @retval auth_endpoint - The current value of the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# URI#
sub get_auth_endpoint {
   my ($self, %args) = @_;
   return $self->{'auth_endpoint'}; 	
}

## @method set_auth_endpoint ()
# Sets the given value for 'auth_endpoint' property.
# 
# @param auth_endpoint  - New value for the field.
# Authentication/authorization endpoint of the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_auth_endpoint {
   my ($self, %args) = @_;
   $self->{'auth_endpoint'} = $args{'auth_endpoint'}; 
   return;	
}

## @method get_token_endpoint ()
# Gets the value of 'token_endpoint' property.
#
# @retval token_endpoint - The current value of the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
# URI#
sub get_token_endpoint {
   my ($self, %args) = @_;
   return $self->{'token_endpoint'}; 	
}

## @method set_token_endpoint ()
# Sets the given value for 'token_endpoint' property.
# 
# @param token_endpoint  - New value for the field.
# Token endpoint of the provider. This  *field*  was added in vSphere API 7.0.0.
#
sub set_token_endpoint {
   my ($self, %args) = @_;
   $self->{'token_endpoint'} = $args{'token_endpoint'}; 
   return;	
}

## @method get_public_key_uri ()
# Gets the value of 'public_key_uri' property.
#
# @retval public_key_uri - The current value of the field.
# Endpoint to retrieve the provider public key for validation. This  *field*  was added
#     in vSphere API 7.0.0.
#
# URI#
sub get_public_key_uri {
   my ($self, %args) = @_;
   return $self->{'public_key_uri'}; 	
}

## @method set_public_key_uri ()
# Sets the given value for 'public_key_uri' property.
# 
# @param public_key_uri  - New value for the field.
# Endpoint to retrieve the provider public key for validation. This  *field*  was added
#     in vSphere API 7.0.0.
#
sub set_public_key_uri {
   my ($self, %args) = @_;
   $self->{'public_key_uri'} = $args{'public_key_uri'}; 
   return;	
}

## @method get_client_id ()
# Gets the value of 'client_id' property.
#
# @retval client_id - The current value of the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_client_id {
   my ($self, %args) = @_;
   return $self->{'client_id'}; 	
}

## @method set_client_id ()
# Sets the given value for 'client_id' property.
# 
# @param client_id  - New value for the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_client_id {
   my ($self, %args) = @_;
   $self->{'client_id'} = $args{'client_id'}; 
   return;	
}

## @method get_client_secret ()
# Gets the value of 'client_secret' property.
#
# @retval client_secret - The current value of the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# String#
sub get_client_secret {
   my ($self, %args) = @_;
   return $self->{'client_secret'}; 	
}

## @method set_client_secret ()
# Sets the given value for 'client_secret' property.
# 
# @param client_secret  - New value for the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_client_secret {
   my ($self, %args) = @_;
   $self->{'client_secret'} = $args{'client_secret'}; 
   return;	
}

## @method get_claim_map ()
# Gets the value of 'claim_map' property.
#
# @retval claim_map - The current value of the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
# Map#
sub get_claim_map {
   my ($self, %args) = @_;
   return $self->{'claim_map'}; 	
}

## @method set_claim_map ()
# Sets the given value for 'claim_map' property.
# 
# @param claim_map  - New value for the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
sub set_claim_map {
   my ($self, %args) = @_;
   $self->{'claim_map'} = $args{'claim_map'}; 
   return;	
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# The identity provider namespace. It is used to validate the issuer in the acquired
#     OAuth2 token. This  *field*  was added in vSphere API 7.0.0.
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
# The identity provider namespace. It is used to validate the issuer in the acquired
#     OAuth2 token. This  *field*  was added in vSphere API 7.0.0.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}

## @method get_authentication_method ()
# Gets the value of 'authentication_method' property.
#
# @retval authentication_method - The current value of the field.
# Authentication method used by the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# Oauth2AuthenticationMethod#
sub get_authentication_method {
   my ($self, %args) = @_;
   return $self->{'authentication_method'}; 	
}

## @method set_authentication_method ()
# Sets the given value for 'authentication_method' property.
# 
# @param authentication_method  - New value for the field.
# Authentication method used by the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_authentication_method {
   my ($self, %args) = @_;
   $self->{'authentication_method'} = $args{'authentication_method'}; 
   return;	
}

## @method get_auth_query_params ()
# Gets the value of 'auth_query_params' property.
#
# @retval auth_query_params - The current value of the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
# Map#
sub get_auth_query_params {
   my ($self, %args) = @_;
   return $self->{'auth_query_params'}; 	
}

## @method set_auth_query_params ()
# Sets the given value for 'auth_query_params' property.
# 
# @param auth_query_params  - New value for the field.
# <p>
# 
# key/value pairs that are to be appended to the authEndpoint request.</p>
# 
#  <p>
# 
# How to append to authEndpoint request:</p>
# 
# If the map is not empty, a &quot;?&quot; is added to the endpoint URL, and combination
#     of each k and each string in the v is added with an &quot;&amp;&quot; delimiter.
#     Details:<ul>
# <li>If the value contains only one string, then the key is added with
#     &quot;k=v&quot;.</li>
# <li>If the value is an empty list, then the key is added without a
#     &quot;=v&quot;.</li>
# <li>If the value contains multiple strings, then the key is repeated in the
#     query-string for each string in the value.</li>
# </ul>. This  *field*  was added in vSphere API 7.0.0.
#
sub set_auth_query_params {
   my ($self, %args) = @_;
   $self->{'auth_query_params'} = $args{'auth_query_params'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::OidcCreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::OidcCreateSpec``   *class*  contains
#     the information used to create an OIDC identity provider. This  *class*  was added in
#     vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::OidcCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::OidcCreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{discovery_endpoint} = $args{'discovery_endpoint'};
   $self->{client_id} = $args{'client_id'};
   $self->{client_secret} = $args{'client_secret'};
   $self->{claim_map} = $args{'claim_map'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::OidcCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.oidc_create_spec');
   $self->set_binding_field('key' => 'discovery_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'client_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'client_secret', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'claim_map', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))}))));
   bless $self, $class;
   return $self;
}

## @method get_discovery_endpoint ()
# Gets the value of 'discovery_endpoint' property.
#
# @retval discovery_endpoint - The current value of the field.
# Endpoint to retrieve the provider metadata. This  *field*  was added in vSphere API
#     7.0.0.
#
# URI#
sub get_discovery_endpoint {
   my ($self, %args) = @_;
   return $self->{'discovery_endpoint'}; 	
}

## @method set_discovery_endpoint ()
# Sets the given value for 'discovery_endpoint' property.
# 
# @param discovery_endpoint  - New value for the field.
# Endpoint to retrieve the provider metadata. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_discovery_endpoint {
   my ($self, %args) = @_;
   $self->{'discovery_endpoint'} = $args{'discovery_endpoint'}; 
   return;	
}

## @method get_client_id ()
# Gets the value of 'client_id' property.
#
# @retval client_id - The current value of the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# String#
sub get_client_id {
   my ($self, %args) = @_;
   return $self->{'client_id'}; 	
}

## @method set_client_id ()
# Sets the given value for 'client_id' property.
# 
# @param client_id  - New value for the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_client_id {
   my ($self, %args) = @_;
   $self->{'client_id'} = $args{'client_id'}; 
   return;	
}

## @method get_client_secret ()
# Gets the value of 'client_secret' property.
#
# @retval client_secret - The current value of the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# String#
sub get_client_secret {
   my ($self, %args) = @_;
   return $self->{'client_secret'}; 	
}

## @method set_client_secret ()
# Sets the given value for 'client_secret' property.
# 
# @param client_secret  - New value for the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_client_secret {
   my ($self, %args) = @_;
   $self->{'client_secret'} = $args{'client_secret'}; 
   return;	
}

## @method get_claim_map ()
# Gets the value of 'claim_map' property.
#
# @retval claim_map - The current value of the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
# Map#
sub get_claim_map {
   my ($self, %args) = @_;
   return $self->{'claim_map'}; 	
}

## @method set_claim_map ()
# Sets the given value for 'claim_map' property.
# 
# @param claim_map  - New value for the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
sub set_claim_map {
   my ($self, %args) = @_;
   $self->{'claim_map'} = $args{'claim_map'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::OidcUpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::OidcUpdateSpec``   *class*  contains
#     the information used to update the OIDC identity provider. This  *class*  was added in
#     vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::OidcUpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::OidcUpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{discovery_endpoint} = $args{'discovery_endpoint'};
   $self->{client_id} = $args{'client_id'};
   $self->{client_secret} = $args{'client_secret'};
   $self->{claim_map} = $args{'claim_map'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::OidcUpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.oidc_update_spec');
   $self->set_binding_field('key' => 'discovery_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'client_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'client_secret', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'claim_map', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())})))})))));
   bless $self, $class;
   return $self;
}

## @method get_discovery_endpoint ()
# Gets the value of 'discovery_endpoint' property.
#
# @retval discovery_endpoint - The current value of the field.
# Endpoint to retrieve the provider metadata. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_discovery_endpoint {
   my ($self, %args) = @_;
   return $self->{'discovery_endpoint'}; 	
}

## @method set_discovery_endpoint ()
# Sets the given value for 'discovery_endpoint' property.
# 
# @param discovery_endpoint  - New value for the field.
# Endpoint to retrieve the provider metadata. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_discovery_endpoint {
   my ($self, %args) = @_;
   $self->{'discovery_endpoint'} = $args{'discovery_endpoint'}; 
   return;	
}

## @method get_client_id ()
# Gets the value of 'client_id' property.
#
# @retval client_id - The current value of the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_client_id {
   my ($self, %args) = @_;
   return $self->{'client_id'}; 	
}

## @method set_client_id ()
# Sets the given value for 'client_id' property.
# 
# @param client_id  - New value for the field.
# Client identifier to connect to the provider. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_client_id {
   my ($self, %args) = @_;
   $self->{'client_id'} = $args{'client_id'}; 
   return;	
}

## @method get_client_secret ()
# Gets the value of 'client_secret' property.
#
# @retval client_secret - The current value of the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Optional#
sub get_client_secret {
   my ($self, %args) = @_;
   return $self->{'client_secret'}; 	
}

## @method set_client_secret ()
# Sets the given value for 'client_secret' property.
# 
# @param client_secret  - New value for the field.
# The secret shared between the client and the provider. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_client_secret {
   my ($self, %args) = @_;
   $self->{'client_secret'} = $args{'client_secret'}; 
   return;	
}

## @method get_claim_map ()
# Gets the value of 'claim_map' property.
#
# @retval claim_map - The current value of the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_claim_map {
   my ($self, %args) = @_;
   return $self->{'claim_map'}; 	
}

## @method set_claim_map ()
# Sets the given value for 'claim_map' property.
# 
# @param claim_map  - New value for the field.
# The map used to transform an OAuth2 claim to a corresponding claim that vCenter Server
#     understands. Currently only the key &quot;perms&quot; is supported. The key
#     &quot;perms&quot; is used for mapping the &quot;perms&quot; claim of incoming JWT. The
#     value is another map with an external group as the key and a vCenter Server group as
#     value. This  *field*  was added in vSphere API 7.0.0.
#
sub set_claim_map {
   my ($self, %args) = @_;
   $self->{'claim_map'} = $args{'claim_map'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Identity::Providers::ActiveDirectoryOverLdap
#
#
# The  ``Com::Vmware::Vcenter::Identity::Providers::ActiveDirectoryOverLdap``   *class* 
#     contains the information about to how to use an Active Directory over LDAP connection
#     to allow searching for users and groups if the identity provider is an On-Prem
#     service. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Identity::Providers::ActiveDirectoryOverLdap;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Identity::Providers::ActiveDirectoryOverLdap structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{user_name} = $args{'user_name'};
   $self->{password} = $args{'password'};
   $self->{users_base_dn} = $args{'users_base_dn'};
   $self->{groups_base_dn} = $args{'groups_base_dn'};
   $self->{server_endpoints} = $args{'server_endpoints'};
   $self->{cert_chain} = $args{'cert_chain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Identity::Providers::ActiveDirectoryOverLdap');
   $self->set_binding_name('name' => 'com.vmware.vcenter.identity.providers.active_directory_over_ldap');
   $self->set_binding_field('key' => 'user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'users_base_dn', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'groups_base_dn', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'server_endpoints', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'cert_chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Certificate_management', 'type_name' => 'X509CertChain')));
   bless $self, $class;
   return $self;
}

## @method get_user_name ()
# Gets the value of 'user_name' property.
#
# @retval user_name - The current value of the field.
# User name to connect to the active directory server. This  *field*  was added in
#     vSphere API 7.0.0.
#
# String#
sub get_user_name {
   my ($self, %args) = @_;
   return $self->{'user_name'}; 	
}

## @method set_user_name ()
# Sets the given value for 'user_name' property.
# 
# @param user_name  - New value for the field.
# User name to connect to the active directory server. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_user_name {
   my ($self, %args) = @_;
   $self->{'user_name'} = $args{'user_name'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password to connect to the active directory server. This  *field*  was added in
#     vSphere API 7.0.0.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Password to connect to the active directory server. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_users_base_dn ()
# Gets the value of 'users_base_dn' property.
#
# @retval users_base_dn - The current value of the field.
# Base distinguished name for users. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_users_base_dn {
   my ($self, %args) = @_;
   return $self->{'users_base_dn'}; 	
}

## @method set_users_base_dn ()
# Sets the given value for 'users_base_dn' property.
# 
# @param users_base_dn  - New value for the field.
# Base distinguished name for users. This  *field*  was added in vSphere API 7.0.0.
#
sub set_users_base_dn {
   my ($self, %args) = @_;
   $self->{'users_base_dn'} = $args{'users_base_dn'}; 
   return;	
}

## @method get_groups_base_dn ()
# Gets the value of 'groups_base_dn' property.
#
# @retval groups_base_dn - The current value of the field.
# Base distinguished name for groups. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_groups_base_dn {
   my ($self, %args) = @_;
   return $self->{'groups_base_dn'}; 	
}

## @method set_groups_base_dn ()
# Sets the given value for 'groups_base_dn' property.
# 
# @param groups_base_dn  - New value for the field.
# Base distinguished name for groups. This  *field*  was added in vSphere API 7.0.0.
#
sub set_groups_base_dn {
   my ($self, %args) = @_;
   $self->{'groups_base_dn'} = $args{'groups_base_dn'}; 
   return;	
}

## @method get_server_endpoints ()
# Gets the value of 'server_endpoints' property.
#
# @retval server_endpoints - The current value of the field.
# Active directory server endpoints. At least one active directory server endpoint must
#     be set. This  *field*  was added in vSphere API 7.0.0.
#
# List#
sub get_server_endpoints {
   my ($self, %args) = @_;
   return $self->{'server_endpoints'}; 	
}

## @method set_server_endpoints ()
# Sets the given value for 'server_endpoints' property.
# 
# @param server_endpoints  - New value for the field.
# Active directory server endpoints. At least one active directory server endpoint must
#     be set. This  *field*  was added in vSphere API 7.0.0.
#
sub set_server_endpoints {
   my ($self, %args) = @_;
   $self->{'server_endpoints'} = $args{'server_endpoints'}; 
   return;	
}

## @method get_cert_chain ()
# Gets the value of 'cert_chain' property.
#
# @retval cert_chain - The current value of the field.
# SSL certificate chain in base64 encoding. This  *field*  was added in vSphere API
#     7.0.0.
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
# SSL certificate chain in base64 encoding. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_cert_chain {
   my ($self, %args) = @_;
   $self->{'cert_chain'} = $args{'cert_chain'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Identity::Providers service
#########################################################################################
