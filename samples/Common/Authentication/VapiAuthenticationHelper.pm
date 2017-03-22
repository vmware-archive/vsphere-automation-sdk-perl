
####################################################
# Copyright 2016 VMware, Inc.  All rights reserved.
# SODX-License-Identifier: MIT
####################################################
#
# @file VapiAuthenticationHelper.pm
# The file implements VapiAuthenticationHelper perl module.
#
# @copy 2016, VMware Inc.
#

#
# @class VapiAuthenticationHelper
# Helper class for SSO login and basic authentication.
#
package Common::Authentication::VapiAuthenticationHelper;

#
# Perl Core Modules
#
use strict;

#
# vApi runtime libraries
#
use Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory;
use Com::Vmware::Vapi::Dsig::SecurityContextFactory;
use Com::Vmware::Vapi::Bindings::StubConfiguration;
use Com::Vmware::Vapi::Bindings::StubFactory;
use Com::Vmware::Cis::Session;
use VMware::SSOConnection;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_dumper log_framework log_warning set_verbosity);

#
# @method loginByUsernameAndPassword
# Creates a session with the server using username and password
#
# @param server hostname or ip address of the server to log in to
# @param username username for login
# @param password password for login
#
# @return the hash array of stub_config and stub_factory configured with an authenticated session
#
sub loginByUsernameAndPassword {
   my (%args)   = @_;
   my $ip       = $args{'server'};
   my $username = $args{'username'};
   my $password = $args{'password'};

   #
   # Create a VAPI transport connection
   #
   my $protocolConn =
     new Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory();
   my $config = $protocolConn->get_connection(
      'protocol_type' => 'https',
      'uri'           => "$ip/api"
   );

   #
   # Create a VAPI security context
   #
   my $scFactory = new Com::Vmware::Vapi::Dsig::SecurityContextFactory();
   my $userPassSecurityContext = $scFactory->create_user_pass_security_context(
      'user_name'     => $username,
      'user_password' => $password
   );
   my $stubConfig = new Com::Vmware::Vapi::Bindings::StubConfiguration();
   $stubConfig->set_security_context(
      security_context => $userPassSecurityContext );

   #
   # Get the instance of stub factory
   #
   my $stubFactory = new Com::Vmware::Vapi::Bindings::StubFactory(
      'api_provider' => $config->get_api_provider() );

   #
   # Get the Session Service
   #
   my $session = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Cis::Session',
      'stub_config'  => $stubConfig
   );

   log_info( MSG => "Login in to VAPI server using basic authentication..." );
   my $sessionId = $session->create();
   log_info( MSG => "Got the Session Id" );

   #
   # Update the VAPI security context with session id
   #
   my $ssContext =
     $scFactory->create_session_security_context( 'session_id' => $sessionId );

   $stubConfig->set_security_context( security_context => $ssContext );
   my $self = {};
   $self->{'stub_config'}  = $stubConfig;
   $self->{'stub_factory'} = $stubFactory;
   return $self;
}

#
# @method loginBySamlBearerToken
# Creates a session with the server using SAML Bearer Token
#
# @param server hostname or ip address of the server to log in to
# @param username username for login
# @param password password for login
# @param lookup_service lookup service to get the sso url
# @param cert certificate
# @param private_key private key
#
# @return the hash array of stub_config and stub_factory configured with an authenticated session
#
sub loginBySamlBearerToken {
   my (%args)         = @_;
   my $ip             = $args{'server'};
   my $username       = $args{'username'};
   my $password       = $args{'password'};
   my $lookup_service = $args{'lookup_service'};
   my $cert           = $args{'cert'};
   my $private_key    = $args{'private_key'};

   my $sso_url = $lookup_service->find_sso_url();

   #
   # Get the SSO token
   #
   log_info( MSG => $sso_url );

   log_info( MSG => "Getting the SSO token..." );
   my $ssoConnection = new SSOConnection( 'sso_url' => $sso_url );
   $ssoConnection->login(
      'user_name'   => $username,
      'password'    => $password,
      'public_key'  => $cert,
      'private_key' => $private_key
   );
   my $token = $ssoConnection->get_token();

   #
   # Create a VAPI transport connection
   #
   my $protocolConn =
     new Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory();
   my $config = $protocolConn->get_connection(
      'protocol_type' => 'https',
      'uri'           => "$ip/api"
   );

   #
   # Create a VAPI security context
   #
   my $scFactory = new Com::Vmware::Vapi::Dsig::SecurityContextFactory();
   my $samlTokenSecurityContext = $scFactory->create_saml_security_context(
      'token'       => $token,
      'private_key' => $private_key
   );

   my $stubConfig = new Com::Vmware::Vapi::Bindings::StubConfiguration();
   $stubConfig->set_security_context(
      security_context => $samlTokenSecurityContext );

   #
   # Get the instance of stub factory
   #
   my $stubFactory = new Com::Vmware::Vapi::Bindings::StubFactory(
      'api_provider' => $config->get_api_provider() );

   #
   # Get the Session Service
   #
   my $session = $stubFactory->create_stub(
      'service_name' => 'Com::Vmware::Cis::Session',
      'stub_config'  => $stubConfig
   );

   log_info( MSG => "Login in to VAPI server using token..." );
   my $sessionId = $session->create();
   log_info( MSG => "Got the Session Id" );

   #
   # Update the VAPI security context with session id
   #
   my $ssContext =
     $scFactory->create_session_security_context( 'session_id' => $sessionId );

   $stubConfig->set_security_context( security_context => $ssContext );
   my $self = {};
   $self->{'stub_config'}  = $stubConfig;
   $self->{'stub_factory'} = $stubFactory;
   return $self;
}

1;

