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
package Com::Vmware::Vapi::Security::SamlTokenSecurityContext;

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
use Com::Vmware::Vapi::Core::SecurityContext;
use Com::Vmware::Vapi::Security::StdSecuritySchemes;
use Com::Vmware::Vapi::l10n::Runtime;

use base qw(Com::Vmware::Vapi::Core::SecurityContext);

# Constants
our $SAML_TOKEN_ID  = "samlToken";
our $PRIVATE_KEY_ID = "privateKey";

my %properties;

#
# @method new
# Constructor for creating SamlTokenSecurityContext
#
# @param saml_token SAML token element. Must not be null.
# @param private_key [optional] private key for signature verification
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = $class->SUPER::new();
   my $token      = $args{'saml_token'};
   my $privateKey = $args{'private_key'};

   if ( !$token ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Security.SamlTokenSecurityContext.InvalidParameter',
         args => ['saml_token']
      );
      throw InvalidParameter( $msg->str() );
   }

   $properties{'$SAML_TOKEN_ID'}  = $token;
   $properties{'$PRIVATE_KEY_ID'} = $privateKey;

   my $prop = $Com::Vmware::Vapi::Core::SecurityContext::AUTHENTICATION_SCHEME_ID;
   my $tokenType = $Com::Vmware::Vapi::Security::StdSecuritySchemes::SAML_TOKEN;
   if (!$privateKey) {
   	   $tokenType = $Com::Vmware::Vapi::Security::StdSecuritySchemes::SAML_BEARER_TOKEN;
   }

   $properties{$prop} = $tokenType;

   return bless( $self, $class );
}

#
# @method get_property
# Get a security context property under the specified key
#
# @param key key of the required property
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
         id => 'Com.Vmware.Vapi.Security.SamlTokenSecurityContext.InvalidParameter',
         args => ['key']
      );
      throw InvalidParameter( $msg->str() );
   }

   if ( exists( $properties{'$key'} ) ) {
      return $properties{'$key'};
   }
   else {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Security.SamlTokenSecurityContext.Key.Not.Exists.InvalidParameter',
         args => [$key]
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
