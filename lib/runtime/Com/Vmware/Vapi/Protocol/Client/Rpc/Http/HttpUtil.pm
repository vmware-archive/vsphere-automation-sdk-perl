####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file HttpUtil.pm
# The file implements HttpUtil perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class HttpUtil
# Utility class for transport implementations
#
package Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpUtil;

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
use Com::Vmware::Vapi::l10n::Runtime;

#
# Other CPAN modules
#
use Crypt::X509;

#
# @method new
# Constructor
#
# @param None
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   return bless( $self, $class );
}

#
# @method send_http_request
# Sends the Http request on wire
#
# @param http_request HTTP::Request core Perl CPAN module's object, must not be null
# @param HttpConfig Com::Vmware::Vapi::Protocol::HttpConfiguration object, must not be null
#
# @return response HTTP::Response type object
#
sub send_http_request {
   my ( $self, %args ) = @_;
   my $httpRequest = $args{'http_request'};
   my $httpConfig  = $args{'http_config'};

   if ( !$httpRequest ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.InvalidParameter',
         args => ['http_request']
      );
      throw InvalidParameter( $msg->str() );
   }

   if ( !$httpConfig ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.InvalidParameter',
         args => ['http_config']
      );
      throw InvalidParameter( $msg->str() );
   }

   my $userAgent = LWP::UserAgent->new();
   my $config    = $httpConfig->get_ssl_configuration();
   my $sslConfig;

   if ( $config ) {
      $sslConfig = $config->get_trust_store();
   }

   # For Secure Socket Layer (SSL) - HTTPs connection
   if ( !defined($sslConfig) ) {

      # Do Nothing!!
      # This is the case of insecure protocol connection
   }
   else {

      # Validate / Bypass the Certificate
      $userAgent = $self->create_ssl_context(
         'user_agent'   => $userAgent,
         'http_request' => $httpRequest,
         'ssl_config'   => $sslConfig,
      );
   }

   my $timeout = $httpConfig->get_sso_timeout();
   $userAgent->timeout( $httpConfig->get_sso_timeout() );

   return $userAgent->request($httpRequest);
}

#
# @method validate_http_response
# Validates the HTTP response and throws exception for invalid response
#
# @param http_response HTTP response, must not be null
# @param response_content_length Response content length
#
# @return None
#
sub validate_http_response {
   my ( $self, %args ) = @_;
   my $httpResponse          = $args{'http_response'};
   my $responseContentLength = $args{'response_content_length'};

   if ( !$httpResponse ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.InvalidParameter',
         args => ['http_response']
      );
      throw InvalidParameter( $msg->str() );
   }

   my $statusCode = $httpResponse->code();

   if ( $statusCode >= 300 && $statusCode <= 399 ) {

      # redirect is a transport error
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.TransportProtocolException',
         args => [$statusCode]
      );
      throw TransportProtocolException( $msg->str() );
   }

   if ( $responseContentLength == 0 ) {

      # no content is a transport error
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.TransportProtocolException',
         args => [$statusCode]
      );
      throw TransportProtocolException( $msg->str() );
   }

   if (!$httpResponse->is_success()
      && (   index( $httpResponse->status_line(), "SSL" ) != -1
         || index( $httpResponse->status_line(), "ssl" ) != -1 ) ) {

      # i.e. when we have some exception related to SSL
      # no content is a transport error
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.InvalidCertificateException',
         args => [ $httpResponse->status_line() ]
      );
      throw InvalidCertificateException( $msg->str() );
   }

   if ( !$httpResponse->is_success() ) {

      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.TransportProtocolException',
         args => [ $httpResponse->status_line() ]
      );
      # no content is a transport error
      throw TransportProtocolException( $msg->str() );
   }
}

#
# @method create_ssl_context
# Validates the certificate, if Certificate details are passed by the user
# Bypass the certificate validation, if Certificate details are NOT passed by the user
#
# @param user_agent LWP::UserAgent core Perl CPAN module's object, must not be null
# @param http_request HTTP::Request core Perl CPAN module's object, must not be null
# @param ssl_config [optional] Com::Vmware::Vapi::Protocol::HttpConfiguration::SslConfiguration object
#
# @return UserAgent
#
sub create_ssl_context {
   my ( $self, %args ) = @_;
   my $userAgent   = $args{'user_agent'};
   my $httpRequest = $args{'http_request'};
   my $sslConfig   = $args{'ssl_config'};

   if ( !$sslConfig eq "" ) {
      $userAgent = $self->_validate_certificate(
         'user_agent'   => $userAgent,
         'http_request' => $httpRequest,
         'certificate' => $sslConfig,
      );
   }
   else {
      $userAgent =
        $self->_bypass_certificate_validation( 'user_agent' => $userAgent );
   }

   return $userAgent;
}

#
# @method _validate_certificate
# Certificate Validation in 2 modes:
# MOde1 - Internally by passing certificate in ssl_opts
# Mode2 - Forcefully by validating most of the fields of the certificate individually
#
# @param user_agent LWP::UserAgent core Perl CPAN module's object
# @param http_request HTTP::Request core Perl CPAN module's object
# @param certificate Complete certificate [.der file] path
#
# @return UserAgent
#
sub _validate_certificate {
   my ( $self, %args ) = @_;
   my $userAgent   = $args{'user_agent'};
   my $httpRequest = $args{'http_request'};
   my $certFile    = $args{'certificate'};

# Enabling the debug mode, to fetch the complete stack trace in case of incomplete handshake
# TODO:: here, later we will enable/disable conditionally based on the logger level
   $ENV{'HTTPS_DEBUG'} = 1;

   # Verifying certificate internally
   $userAgent->ssl_opts(
      verify_hostname => 1,
      SSL_ca_file     => $certFile,
      SSL_cert_file   => $certFile,
      SSL_verify_mode => 'SSL_VERIFY_PEER',
   );

   # Verifying certificate forcefully
   my $cert = $self->_load_certificate( 'certificate' => $certFile );
   my $decoded = Crypt::X509->new( cert => $cert );

   if ( $decoded->error ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.CertificateDecodeException',
         args => [ $decoded->error() ]
      );
      throw CertificateDecodeException( $msg->str() );
   }

   return $userAgent;
}

#
# @method _bypass_certificate_validation
# Bypass certificate validation
#
# @param user_agent LWP::UserAgent core Perl CPAN module's object
#
# @return UserAgent
#
sub _bypass_certificate_validation {
   my ( $self, %args ) = @_;
   my $userAgent = $args{'user_agent'};

   $userAgent->ssl_opts(

    # Disabling hostname verification, thereby by-passing certificate validation
      verify_hostname => 0,
      SSL_verify_mode => 'SSL_VERIFY_NONE',
   );

   return $userAgent;
}

#
# @method _load_certificate
# Loads the Certificate [.der format ONLY] file into memory
# Throws InvalidCertificateFormatException, if any other certificate file format is found
#
# @param certificate certificate [.der file] path
#
# @return Certificate
#
sub _load_certificate {
   my ( $self, %args ) = @_;

   my $file = $args{'certificate'};

   # Check if the input file is of .der format
   my ($ext) = $file =~ /(\.[^.]+)$/;
   if ( !$ext eq ".der" ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.InvalidCertificateFormatException',
         args => [ InvalidCertificateFormatException->description ]
      );
      throw InvalidCertificateFormatException( $msg->str() );
   }

   my $fileHandle = open( FILE, $file );
   if ( !$fileHandle ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpUtil.FileNotFoundException',
         args => [ FileNotFoundException->description ]
      );
      throw FileNotFoundException( $msg->str() );
   }

   binmode FILE;
   my $holdTerminator = $/;
   undef $/;    # using slurp mode to read the DER-encoded binary certificate
   my $cert = <FILE>;
   $/ = $holdTerminator;
   close FILE;
   return $cert;
}

1;
