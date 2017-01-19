#########################################################
# Copyright 2013, 2016 VMware, Inc.  All rights reserved.
#########################################################
#
# @file SecurityContextFactory.pm
# The file implements SecurityContextFactory perl module.
#
# copy 2013, 2016, VMware Inc.
#

#
# @class Com::Vmware::Vapi::Dsig::SecurityContextFactory
# This factory class have methods for creating and parsing SecurityContext
# for all known authentication type
#
package Com::Vmware::Vapi::Dsig::SecurityContextFactory;

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
use Com::Vmware::Vapi::Dsig::SamlTokenSecurityContext;
use Com::Vmware::Vapi::Security::StdSecuritySchemes;
use Com::Vmware::Vapi::Security::SessionSecurityContext;
use Com::Vmware::Vapi::Core::SecurityContext;
use Com::Vmware::Vapi::Dsig::UserPassSecurityContext;

## @method new ()
# Constructor for creating SecurityContextFactory
#
# @param None
#
# @retval "Blessed object"
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   return bless( $self, $class );
}

## @method create_saml_security_context ()
# Creates a SAML token security context
#
# @param token - The token that should be used for authentication
# @param private_key - The private key that should be used to sign the request
#
# @retval Com::Vmware::Vapi::Dsig::SamlTokenSecurityContext object
#
sub create_saml_security_context {
   my ( $self, %args ) = @_;
   my $token      = $args{'token'};
   my $privateKey = $args{'private_key'};

   if (!defined($privateKey)){
      #To remove host verification
      $ENV{PERL_LWP_SSL_VERIFY_HOSTNAME} = 0;
   }

   return Com::Vmware::Vapi::Dsig::SamlTokenSecurityContext->new(
      saml_token       => $token,
      private_key      => $privateKey
   );
}

## @method create_user_pass_security_context ()
# Creates a user password security context
#
# @param user_name - The username that should be used for authentication
# @param user_password - The password that should be used for authentication
#
# @retval Com::Vmware::Vapi::Dsig::UserPassSecurityContext object
#
sub create_user_pass_security_context {
   my ( $self, %args ) = @_;
   return Com::Vmware::Vapi::Dsig::UserPassSecurityContext->new(
      'schemeId'      => 'com.vmware.vapi.std.security.user_pass',
      'user_name'     => $args{'user_name'},
      'user_password' => $args{'user_password'}
   );
}

## @method create_session_security_context()
# Creates a security context which represents and attempt to reuse
# an existing session. This is only usable with session-aware services.
# Such attempt would succeed only if the client has already been
# authenticated by the service and has a valid session with it.
#
# @param session_id - session id
#
# @retval Com::Vmware::Vapi::Security::SessionSecurityContext object
#
sub create_session_security_context {
   my ( $self, %args ) = @_;
   my $sessionId = $args{'session_id'};

   return Com::Vmware::Vapi::Security::SessionSecurityContext->new(
      session_id => $sessionId );
}

## @method parse_session_security_context ()
# Parses the SecurityContext looking for session information
#
# @param security_context - Com::Vmware::Vapi::Core::SecurityContext object
#
# @retval Com::Vmware::Vapi::Security::SessionSecurityContext object
#
sub parse_session_security_context {
   my ( $self, %args ) = @_;
   my $securityContext = $args{'security_context'};

   return Com::Vmware::Vapi::Security::SessionSecurityContext->newInstance(
      security_context => $securityContext );
}
1;
