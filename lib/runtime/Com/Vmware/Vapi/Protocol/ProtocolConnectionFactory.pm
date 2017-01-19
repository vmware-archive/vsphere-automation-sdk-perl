####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ProtocolConnectionFactory.pm
# The file implements ProtocolConnectionFactory perl module.
#
# @copy 2013, VMware Inc.
#


## @class Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory
# Class to allow encapsulation of connections. This is likely a placeholder.
#
package Com::Vmware::Vapi::Protocol::ProtocolConnectionFactory;

#
# Core Perl modules
#
use strict;
use warnings;
use LWP::UserAgent;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Protocol::ProtocolConnectionImpl;
use Com::Vmware::Vapi::Protocol::ProtocolConstants;
use Com::Vmware::Vapi::Protocol::IProtocolConnectionFactory;
use Com::Vmware::Vapi::Protocol::HttpConfiguration;
use Com::Vmware::Vapi::Protocol::Client::Msg::JsonApiProvider;
use Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpClient;
use Com::Vmware::Vapi::l10n::Runtime;


## @method new ()
# Constructor
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


## @method get_connection ()
# Get Secured Protocol Connection of specified type, if CertificatePath info has been passed
#
# @param protocol_type - Protocol type [http / https etc]. Must not be null.
# @param uri - URI representing the server to connect. Must not be null.
#        Should be of the form: http(s)://<IP_address>:<port>/<Service_endpoint>.
# @param http_config [optional] - Com::Vmware::Vapi::Protocol::HttpConfiguration object
# @param certificate_path [optional] - Complete certificate [.der file] path
#
# @retval Com::Vmware::Vapi::Protocol::ProtocolConnectionImpl object
#
sub get_connection {
   my ( $self, %args ) = @_;
   my $protocolType = $args{'protocol_type'};
   my $uri          = $args{'uri'};
   my $config       = $args{'http_config'};
   my $cert         = $args{'certificate_path'};

   if ( !$protocolType || !$uri ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.ProtocolConnectionFactory.InvalidParameter',
         args => ['protocol_type and uri']
      );
      throw InvalidParameter( $msg->str() );
   }

   if ( $protocolType eq
      $Com::Vmware::Vapi::Protocol::ProtocolConstants::PROTOCOL_TYPE_HTTPS )
   {
      if ( !$cert ) {
         $cert = undef;
      }

      my $httpBuilder =
        Com::Vmware::Vapi::Protocol::HttpConfiguration::Builder->new();
      my $sslConfig =
        Com::Vmware::Vapi::Protocol::HttpConfiguration::SslConfiguration->new(
         'trust_store' => $cert );
      $httpBuilder->set_ssl_configuration( 'ssl_config_builder' => $sslConfig );

      if (defined $config) {
         $httpBuilder->set_so_timeout(
            'so_timeout_builder' => $config->get_sso_timeout() );
         $httpBuilder->set_io_thread_count(
            'io_thread_count_builder' => $config->get_io_thread_count() );
         $httpBuilder->set_library_type(
            'library_type_builder' => $config->get_library_type() );
      }

      my $httpConfig = $httpBuilder->get_config();

      return $self->get_http_connection(
         'uri'          => $uri,
         'client_config' => undef,
         'http_config'   => $httpConfig,
      );
   }
   elsif ( $protocolType eq
      $Com::Vmware::Vapi::Protocol::ProtocolConstants::PROTOCOL_TYPE_HTTP )
   {
      return $self->get_insecure_connection(
         protocol_type => $protocolType,
         uri          => $uri,
         http_config   => $config,
      );
   }
   else {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.ProtocolConnectionFactory.UnsupportedProtocolTypeException',
         args => [ UnsupportedProtocolTypeException->description ]
      );
      throw UnsupportedProtocolTypeException( $msg->str() );
   }
}


## @method get_insecure_connection ()
# Get insecured Protocol Connection of specified type
#
# @param protocol_type - Protocol type [http / https etc]. Must not be null.
# @param uri - URI representing the server to connect. Must not be null.
#        Should be of the form: http(s)://<IP_address>:<port>/<Service_endpoint>.
# @param http_config [optional] - Com::Vmware::Vapi::Protocol::HttpConfiguration object
#
# @retval Com::Vmware::Vapi::Protocol::ProtocolConnectionImpl object
#
sub get_insecure_connection {
   my ( $self, %args ) = @_;

   my $protocolType = $args{'protocol_type'};
   my $uri          = $args{'uri'};
   my $config       = $args{'http_config'};

   if ( !$uri ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.ProtocolConnectionFactory.InvalidParameter',
         args => ['uri']
      );
      throw InvalidParameter( $msg->str() );
   }

   if ( !$protocolType ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.ProtocolConnectionFactory.InvalidParameter',
         args => ['protocol_type']
      );
      throw InvalidParameter( $msg->str() );
   }

   if ( $protocolType eq
      $Com::Vmware::Vapi::Protocol::ProtocolConstants::PROTOCOL_TYPE_HTTP )
   {
      return $self->get_http_connection(
         'uri'        => $uri,
         'http_config' => $config,
      );
   }
   elsif ( $protocolType eq
      $Com::Vmware::Vapi::Protocol::ProtocolConstants::PROTOCOL_TYPE_HTTPS )
   {
      return $self->get_connection(
         'protocol_type' => 'https',
         'uri'          => $uri,
         'http_config' => $config,
      );
   }
   else {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.ProtocolConnectionFactory.UnsupportedProtocolTypeException',
         args => [ UnsupportedProtocolTypeException->description ]
      );
      throw UnsupportedProtocolTypeException( $msg->str() );
   }
}


## @method get_http_connection ()
# Get Http Connection
#
# @param uri - URI representing the server to connect. Must not be null.
#        Should be of the form: http(s)://<IP_address>:<port>/<Service_endpoint>.
# @param client_config -  Com::Vmware::Vapi::Protocol::ClientConfiguration object
# @param http_config - Com::Vmware::Vapi::Protocol::HttpConfiguration object
#
# @retval Com::Vmware::Vapi::Protocol::ProtocolConnectionImpl object
#
sub get_http_connection {
   my ( $self, %args ) = @_;
   my $uri = $args{'uri'};

   my $httpConfig      = $args{'http_config'};
   my $clientTransport = $self->_create_http_client_transport(
      'uri'        => $uri,
      'http_config' => $httpConfig,
   );

   my $provider =
     Com::Vmware::Vapi::Protocol::Client::Msg::JsonApiProvider->new(
      'uri'    => $uri,
      'client' => $clientTransport,
      'config' => $httpConfig,
     );

   return Com::Vmware::Vapi::Protocol::ProtocolConnectionImpl->new(
      'transport' => $clientTransport,
      'provider'  => $provider,
   );
}


## @method _create_http_client_transport ()
# Create Http transport client
#
# @param uri - URI representing the server to connect. Must not be null.
#        Should be of the form: http(s)://<IP_address>:<port>/<Service_endpoint>.
# @param http_config - Com::Vmware::Vapi::Protocol::HttpConfiguration object
#
# @retval Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpClient object
#
sub _create_http_client_transport {
   my ( $self, %args ) = @_;
   my $uri        = $args{'uri'};
   my $httpConfig = $args{'http_config'};
   if ( !$httpConfig ) {
      my $httpBuilder =
        Com::Vmware::Vapi::Protocol::HttpConfiguration::Builder->new();
      $httpConfig = $httpBuilder->get_config();
   }

   # TODO: Check 3rd party Library used, if any
   #	if ( !$httpConfig->{LibraryType} ) {
   #		if ( $httpConfig->LibraryType eq "3rd_party_lib" ) {
   #
   #			# TODO: Make HttpClient for each library type
   #		}
   #	}

   my $httpClient =
     Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpClient->new(
      'uri'        => $uri,
      'http_config' => $httpConfig,
     );

   return $httpClient;
}

1;
