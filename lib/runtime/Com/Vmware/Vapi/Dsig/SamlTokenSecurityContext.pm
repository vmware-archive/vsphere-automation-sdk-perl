####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file SamlTokenSecurityContext.pm
# The file implements SamlTokenSecurityContext perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class SamlTokenSecurityContext
# This class represents the security context needed for authentication
# using SAML tokens.
#
package Com::Vmware::Vapi::Dsig::SamlTokenSecurityContext;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Util::Logger
    qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Security::StdSecuritySchemes;
use Com::Vmware::Vapi::l10n::Runtime;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Core::SecurityContext);

# Constants
our $SAML_TOKEN_ID  = "saml_token";
our $PRIVATE_KEY_ID = "private_key";

my %properties;

#
# @method new
# Constructor for creating SamlTokenSecurityContext
#
# @param saml_token SAML token element. Must not be null.
# @param private_key [optional] private key for signature verification
# @param X509Certificate Complete X509 certificate [.der file] path
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   $class = ref($class) || $class;

   # 'self' stores the object of base class SecurityContext
   my $self = $class->SUPER::new();


   my $token      = $args{'saml_token'};
   my $privateKey = $args{'private_key'};

   if ( !$token ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.Json.SamlTokenSecurityContext.InvalidParameter',
         args => [ 'saml_token' ]
      );
      throw InvalidParameter( $msg->str() );
   }

   $properties{$SAML_TOKEN_ID}  = $token;
   $properties{$PRIVATE_KEY_ID} = $privateKey;

   if ($privateKey) {
      $properties{
         $Com::Vmware::Vapi::Core::SecurityContext::AUTHENTICATION_SCHEME_ID} =
        $Com::Vmware::Vapi::Security::StdSecuritySchemes::SAML_TOKEN;
   }
   else {
      $properties{
         $Com::Vmware::Vapi::Core::SecurityContext::AUTHENTICATION_SCHEME_ID} =
        $Com::Vmware::Vapi::Security::StdSecuritySchemes::SAML_BEARER_TOKEN;
   }

   return bless( $self, $class );
}

#
# @method get_property
# Get a security context property under the specified key
#
# @param Key key of the required property
#
# @return the security context property under the specified key
#
sub get_property {
   my ( $self, %args ) = @_;
   my $key = $args{'key'};

   if ( !$key ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.Json.SamlTokenSecurityContext.InvalidParameter',
         args => [ 'key' ]
      );
      throw InvalidParameter( $msg->str() );
   }

   if ( exists( $properties{$key} ) ) {
      return $properties{$key};
   }
   else {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.Json.SamlTokenSecurityContext.InvalidParameter.Not.Exists',
         args => [ $key ]
      );
      throw InvalidParameter( $msg->str() );
   }
}

#
# @method get_all_properties
# Get the complete hash representing all the properties
#
# @param None
#
# @return Hash representing all the properties
#
sub get_all_properties {
   my ( $self, %args ) = @_;

   return %properties;
}

1;
