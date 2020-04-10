########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file TokenExchange.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Tokenservice::TokenExchange
# The  ``Com::Vmware::Vcenter::Tokenservice::TokenExchange``   *interface*  provides
#     possibility to exchange between different tokens types. Implementation of &quot;OAuth
#     2.0 Token Exchange&quot; standard
#     (https://tools.ietf.org/html/draft-ietf-oauth-token-exchange-12).
#
#
# Constant String::TOKEN_EXCHANGE_GRANT #
# *Constant*  indicates that token exchange grant type.
#
# Constant String::ACCESS_TOKEN_TYPE #
# *Constant*  indicates OAuth 2.0 access token type.
#
# Constant String::REFRESH_TOKEN_TYPE #
# *Constant*  indicates OAuth 2.0 refresh token type.
#
# Constant String::ID_TOKEN_TYPE #
# *Constant*  indicates OIDC ID token type.
#
# Constant String::SAML1_TOKEN_TYPE #
# *Constant*  indicates base64-encoded SAML 1.1 token type.
#
# Constant String::SAML2_TOKEN_TYPE #
# *Constant*  indicates base64-encoded SAML 2.0 token type.
#
# Constant String::BEARER_TOKEN_METHOD_TYPE #
# *Constant*  indicates that the security token is a bearer token.
#
# Constant String::N_A_TOKEN_METHOD_TYPE #
#*Constant*  indicates 
# :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info.token_type`  identifier is
# not applicable in that context.

package Com::Vmware::Vcenter::Tokenservice::TokenExchange;

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
use Com::Vmware::Vcenter::Tokenservice::TokenExchangeStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.tokenservice.token_exchange';


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

## @method exchange ()
# Exchanges incoming token based on the spec and current client authorization data.
#
# @param spec [REQUIRED] ``Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec``   *class* 
#     contains arguments that define exchange process.
# . The value must be Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.
#
# @retval 
# class Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info   *class*  that contains
#     new token.
# The return type will be Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info
#
#
#
# @throw Com::Vmware::Vcenter::Tokenservice::InvalidGrant 
# provided authorization grant (e.g., authorization code, resource owner credentials) or
#     refresh token is invalid, expired, revoked, does not match the redirection URI used in
#     the authorization request, or was issued to another client.
#
# @throw Com::Vmware::Vcenter::Tokenservice::InvalidScope 
# If the server is unwilling or unable to issue a token for all the target services
#     indicated by the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.resource`  or 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.audience` 
#     parameters.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if authorization is not given to a caller.
#
sub exchange {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'exchange',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'exchange',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Tokenservice::TokenExchange service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Tokenservice::TokenExchange service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Tokenservice::TokenExchange service
#########################################################################################

## @class Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec
#
#
# The  ``Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec``   *class* 
#     contains arguments required for token exchange.

package Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{grant_type} = $args{'grant_type'};
   $self->{resource} = $args{'resource'};
   $self->{audience} = $args{'audience'};
   $self->{scope} = $args{'scope'};
   $self->{requested_token_type} = $args{'requested_token_type'};
   $self->{subject_token} = $args{'subject_token'};
   $self->{subject_token_type} = $args{'subject_token_type'};
   $self->{actor_token} = $args{'actor_token'};
   $self->{actor_token_type} = $args{'actor_token_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.tokenservice.token_exchange.exchange_spec');
   $self->set_binding_field('key' => 'grant_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'resource', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'audience', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'scope', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'requested_token_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'subject_token', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subject_token_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'actor_token', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'actor_token_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_grant_type ()
# Gets the value of 'grant_type' property.
#
# @retval grant_type - The current value of the field.
# The value of 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange.TOKEN_EXCHANGE_GRANT` 
#     indicates that a token exchange is being performed.
#
# String#
sub get_grant_type {
   my ($self, %args) = @_;
   return $self->{'grant_type'}; 	
}

## @method set_grant_type ()
# Sets the given value for 'grant_type' property.
# 
# @param grant_type  - New value for the field.
# The value of 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange.TOKEN_EXCHANGE_GRANT` 
#     indicates that a token exchange is being performed.
#
sub set_grant_type {
   my ($self, %args) = @_;
   $self->{'grant_type'} = $args{'grant_type'}; 
   return;	
}

## @method get_resource ()
# Gets the value of 'resource' property.
#
# @retval resource - The current value of the field.
# Indicates the location of the target service or resource where the client intends to
#     use the requested security token.
#
# Optional#
sub get_resource {
   my ($self, %args) = @_;
   return $self->{'resource'}; 	
}

## @method set_resource ()
# Sets the given value for 'resource' property.
# 
# @param resource  - New value for the field.
# Indicates the location of the target service or resource where the client intends to
#     use the requested security token.
#
sub set_resource {
   my ($self, %args) = @_;
   $self->{'resource'} = $args{'resource'}; 
   return;	
}

## @method get_audience ()
# Gets the value of 'audience' property.
#
# @retval audience - The current value of the field.
# The logical name of the target service where the client intends to use the requested
#     security token. This serves a purpose similar to the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.resource` 
#     parameter, but with the client providing a logical name rather than a location.
#
# Optional#
sub get_audience {
   my ($self, %args) = @_;
   return $self->{'audience'}; 	
}

## @method set_audience ()
# Sets the given value for 'audience' property.
# 
# @param audience  - New value for the field.
# The logical name of the target service where the client intends to use the requested
#     security token. This serves a purpose similar to the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.resource` 
#     parameter, but with the client providing a logical name rather than a location.
#
sub set_audience {
   my ($self, %args) = @_;
   $self->{'audience'} = $args{'audience'}; 
   return;	
}

## @method get_scope ()
# Gets the value of 'scope' property.
#
# @retval scope - The current value of the field.
# A list of space-delimited, case-sensitive strings, that allow the client to specify
#     the desired scope of the requested security token in the context of the service or
#     resource where the token will be used.
#
# Optional#
sub get_scope {
   my ($self, %args) = @_;
   return $self->{'scope'}; 	
}

## @method set_scope ()
# Sets the given value for 'scope' property.
# 
# @param scope  - New value for the field.
# A list of space-delimited, case-sensitive strings, that allow the client to specify
#     the desired scope of the requested security token in the context of the service or
#     resource where the token will be used.
#
sub set_scope {
   my ($self, %args) = @_;
   $self->{'scope'} = $args{'scope'}; 
   return;	
}

## @method get_requested_token_type ()
# Gets the value of 'requested_token_type' property.
#
# @retval requested_token_type - The current value of the field.
# An identifier for the type of the requested security token. If the requested type is
#     unspecified, the issued token type is at the discretion of the server and may be
#     dictated by knowledge of the requirements of the service or resource indicated by the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.resource`  or 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.audience` 
#     parameter.
#
# Optional#
sub get_requested_token_type {
   my ($self, %args) = @_;
   return $self->{'requested_token_type'}; 	
}

## @method set_requested_token_type ()
# Sets the given value for 'requested_token_type' property.
# 
# @param requested_token_type  - New value for the field.
# An identifier for the type of the requested security token. If the requested type is
#     unspecified, the issued token type is at the discretion of the server and may be
#     dictated by knowledge of the requirements of the service or resource indicated by the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.resource`  or 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.audience` 
#     parameter.
#
sub set_requested_token_type {
   my ($self, %args) = @_;
   $self->{'requested_token_type'} = $args{'requested_token_type'}; 
   return;	
}

## @method get_subject_token ()
# Gets the value of 'subject_token' property.
#
# @retval subject_token - The current value of the field.
# A security token that represents the identity of the party on behalf of whom exchange
#     is being made. Typically, the subject of this token will be the subject of the
#     security token issued. Token is base64-encoded.
#
# String#
sub get_subject_token {
   my ($self, %args) = @_;
   return $self->{'subject_token'}; 	
}

## @method set_subject_token ()
# Sets the given value for 'subject_token' property.
# 
# @param subject_token  - New value for the field.
# A security token that represents the identity of the party on behalf of whom exchange
#     is being made. Typically, the subject of this token will be the subject of the
#     security token issued. Token is base64-encoded.
#
sub set_subject_token {
   my ($self, %args) = @_;
   $self->{'subject_token'} = $args{'subject_token'}; 
   return;	
}

## @method get_subject_token_type ()
# Gets the value of 'subject_token_type' property.
#
# @retval subject_token_type - The current value of the field.
# An identifier, that indicates the type of the security token in the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.subject_token` 
#     parameter.
#
# String#
sub get_subject_token_type {
   my ($self, %args) = @_;
   return $self->{'subject_token_type'}; 	
}

## @method set_subject_token_type ()
# Sets the given value for 'subject_token_type' property.
# 
# @param subject_token_type  - New value for the field.
# An identifier, that indicates the type of the security token in the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.subject_token` 
#     parameter.
#
sub set_subject_token_type {
   my ($self, %args) = @_;
   $self->{'subject_token_type'} = $args{'subject_token_type'}; 
   return;	
}

## @method get_actor_token ()
# Gets the value of 'actor_token' property.
#
# @retval actor_token - The current value of the field.
# A security token that represents the identity of the acting party. Typically, this
#     will be the party that is authorized to use the requested security token and act on
#     behalf of the subject.
#
# Optional#
sub get_actor_token {
   my ($self, %args) = @_;
   return $self->{'actor_token'}; 	
}

## @method set_actor_token ()
# Sets the given value for 'actor_token' property.
# 
# @param actor_token  - New value for the field.
# A security token that represents the identity of the acting party. Typically, this
#     will be the party that is authorized to use the requested security token and act on
#     behalf of the subject.
#
sub set_actor_token {
   my ($self, %args) = @_;
   $self->{'actor_token'} = $args{'actor_token'}; 
   return;	
}

## @method get_actor_token_type ()
# Gets the value of 'actor_token_type' property.
#
# @retval actor_token_type - The current value of the field.
# An identifier, that indicates the type of the security token in the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.actor_token` 
#     parameter.
#
# Optional#
sub get_actor_token_type {
   my ($self, %args) = @_;
   return $self->{'actor_token_type'}; 	
}

## @method set_actor_token_type ()
# Sets the given value for 'actor_token_type' property.
# 
# @param actor_token_type  - New value for the field.
# An identifier, that indicates the type of the security token in the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.actor_token` 
#     parameter.
#
sub set_actor_token_type {
   my ($self, %args) = @_;
   $self->{'actor_token_type'} = $args{'actor_token_type'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info
#
#
# The  ``Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info``   *class*  contains
#     data that represents successful token exchange response.

package Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{access_token} = $args{'access_token'};
   $self->{issued_token_type} = $args{'issued_token_type'};
   $self->{token_type} = $args{'token_type'};
   $self->{expires_in} = $args{'expires_in'};
   $self->{scope} = $args{'scope'};
   $self->{refresh_token} = $args{'refresh_token'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.tokenservice.token_exchange.info');
   $self->set_binding_field('key' => 'access_token', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'issued_token_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'token_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'expires_in', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'scope', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'refresh_token', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_access_token ()
# Gets the value of 'access_token' property.
#
# @retval access_token - The current value of the field.
# The security token issued by the server in response to the token exchange request.
#     Token is base64-encoded.
#
# String#
sub get_access_token {
   my ($self, %args) = @_;
   return $self->{'access_token'}; 	
}

## @method set_access_token ()
# Sets the given value for 'access_token' property.
# 
# @param access_token  - New value for the field.
# The security token issued by the server in response to the token exchange request.
#     Token is base64-encoded.
#
sub set_access_token {
   my ($self, %args) = @_;
   $self->{'access_token'} = $args{'access_token'}; 
   return;	
}

## @method get_issued_token_type ()
# Gets the value of 'issued_token_type' property.
#
# @retval issued_token_type - The current value of the field.
# An identifier, that indicates the type of the security token in the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info.access_token` 
#     parameter.
#
# String#
sub get_issued_token_type {
   my ($self, %args) = @_;
   return $self->{'issued_token_type'}; 	
}

## @method set_issued_token_type ()
# Sets the given value for 'issued_token_type' property.
# 
# @param issued_token_type  - New value for the field.
# An identifier, that indicates the type of the security token in the 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::Info.access_token` 
#     parameter.
#
sub set_issued_token_type {
   my ($self, %args) = @_;
   $self->{'issued_token_type'} = $args{'issued_token_type'}; 
   return;	
}

## @method get_token_type ()
# Gets the value of 'token_type' property.
#
# @retval token_type - The current value of the field.
# A case-insensitive value specifying the method of using the access token issued.
#
# String#
sub get_token_type {
   my ($self, %args) = @_;
   return $self->{'token_type'}; 	
}

## @method set_token_type ()
# Sets the given value for 'token_type' property.
# 
# @param token_type  - New value for the field.
# A case-insensitive value specifying the method of using the access token issued.
#
sub set_token_type {
   my ($self, %args) = @_;
   $self->{'token_type'} = $args{'token_type'}; 
   return;	
}

## @method get_expires_in ()
# Gets the value of 'expires_in' property.
#
# @retval expires_in - The current value of the field.
# The validity lifetime, in seconds, of the token issued by the server.
#
# Optional#
sub get_expires_in {
   my ($self, %args) = @_;
   return $self->{'expires_in'}; 	
}

## @method set_expires_in ()
# Sets the given value for 'expires_in' property.
# 
# @param expires_in  - New value for the field.
# The validity lifetime, in seconds, of the token issued by the server.
#
sub set_expires_in {
   my ($self, %args) = @_;
   $self->{'expires_in'} = $args{'expires_in'}; 
   return;	
}

## @method get_scope ()
# Gets the value of 'scope' property.
#
# @retval scope - The current value of the field.
# Scope of the issued security token.
#
# Optional#
sub get_scope {
   my ($self, %args) = @_;
   return $self->{'scope'}; 	
}

## @method set_scope ()
# Sets the given value for 'scope' property.
# 
# @param scope  - New value for the field.
# Scope of the issued security token.
#
sub set_scope {
   my ($self, %args) = @_;
   $self->{'scope'} = $args{'scope'}; 
   return;	
}

## @method get_refresh_token ()
# Gets the value of 'refresh_token' property.
#
# @retval refresh_token - The current value of the field.
# A refresh token can be issued in cases where the client of the token exchange needs
#     the ability to access a resource even when the original credential is no longer valid.
#
# Optional#
sub get_refresh_token {
   my ($self, %args) = @_;
   return $self->{'refresh_token'}; 	
}

## @method set_refresh_token ()
# Sets the given value for 'refresh_token' property.
# 
# @param refresh_token  - New value for the field.
# A refresh token can be issued in cases where the client of the token exchange needs
#     the ability to access a resource even when the original credential is no longer valid.
#
sub set_refresh_token {
   my ($self, %args) = @_;
   $self->{'refresh_token'} = $args{'refresh_token'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Tokenservice::TokenExchange service
#########################################################################################
