####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file HttpClient.pm
# The file implements HttpClient perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class HttpClient
# Implementation of the HTTP client rpc layer
#
package Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpClient;

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
    qw(log_info log_error log_verbose log_warning log_framework log_debug log_dumper);
use Com::Vmware::Vapi::Protocol::Client::Rpc::ICorrelatingClient;
use Com::Vmware::Vapi::Protocol::Common::Http::Constants::HttpConstants;
use Com::Vmware::Vapi::Protocol::HttpConfiguration;
use Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpUtil;
use Com::Vmware::Vapi::l10n::Runtime;

#
# @method new
# Constructor for creating Http Client
#
# @param uri URI representing the server to connect. Should be of the
#        form http(s)://<IP_address>:<port>/<Service_endpoint>. Can not be null.
# @param http_config [optional] Com::Vmware::Vapi::Protocol::HttpConfiguration object
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   $self->{'uri'}         = $args{'uri'};
   # Block to add square bracket for IPv6 host
   my $str = $self->{'uri'};
   if ($str =~ m,^((?:$URI::scheme_re:)?)//([^/?\#]*)(.*)$,os) {
       my($scheme, $host, $rest) = ($1, $2, $3);
       my $ui = $host =~ s/(.*@)// ? $1 : "";
       if (($host =~ tr/:/:/) > 1) {
         #
         # Load INET6 module when it's required (IPV6 environment)
         #
         require Net::INET6Glue::INET_is_INET6;
         if ($host =~ /]/) {
            if ($^O =~ /MSWin32/) {
               $host = "[" . $host ."]";
            }
         }
         else {
            if ($^O =~ /MSWin32/) {
               $host = "[[" . $host ."]]";
            }
            else{
               $host = "[" . $host ."]";
            }
         }
      }
       $str = "$scheme//$ui$host$rest";
   }
   $self->{'uri'} = $str;
   $self->{'http_config'}  = $args{'http_config'};

   return bless( $self, $class );
}

#
# @method prepare_request
# Prepares Http Request by setting headers and content, if any
#
# @param http_request HTTP::Request core Perl CPAN module's object
# @param http_content [optional] Http request body.
#        (Must pass this value for POST and PUT requests)
#
# @return request Complete Http request with proper headers and body, if any
#
sub prepare_request {
   my ( $self, %args ) = @_;
   my $request = $args{'http_request'};
   my $content = $args{'http_content'};
   $request->header( 'Accept' =>
        $Com::Vmware::Vapi::Protocol::Common::Http::Constants::HttpConstants::HEADER_ACCEPT
   );

   if ( !$content ) {

      # Do nothing
   }
   else {
      $request->header( 'Content-Type' =>
           $Com::Vmware::Vapi::Protocol::Common::Http::Constants::HttpConstants::HEADER_CONTENT_TYPE
      );
      $request->content($content);
   }

   log_dumper( MSG => $request );

   return $request;
}

#
# @method send
# @overriden
# Sends the request object on wire
#
# @param http_request HTTP::Request core Perl CPAN module's object
# @param http_config [optional] Com::Vmware::Vapi::Protocol::HttpConfiguration object
#
# @return response Http response from the server
#
sub send {
   my ( $self, %args ) = @_;
   my $request    = $args{'http_request'};
   my $httpConfig = $args{'http_config'};

   log_debug(MSG => "Sending http request..");
   log_dumper(MSG => $request);
   log_dumper(MSG => $httpConfig);

   if ( !$httpConfig ) {
      $httpConfig = Com::Vmware::Vapi::Protocol::HttpConfiguration->new(
         'sso_time_out' => 5 );

      #		  Com::Vmware::Vapi::Protocol::HttpConfiguration::Builder->new()
      #		  ->getConfig();
   }

   my $httpUtil =
     Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpUtil->new();

   my $response = $httpUtil->send_http_request(
      'http_request' => $request,
      'http_config'  => $httpConfig
   );
   log_debug(MSG => "Got the http response..");
   log_dumper( MSG => $response );

   return $response;
}

#
# @method validate_response
# Validates the HTTP response and throws exception for invalid response
#
# @param http_response Http response from the server
#
# @return None
#
sub validate_response {
   my ( $self, %args ) = @_;
   my $response = $args{'http_response'};

   my $httpUtil =
     Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpUtil->new();
   log_debug(MSG => "Validating the response ...");
   $httpUtil->validate_http_response(
      'http_response'          => $response,
      'response_content_length' => length($response)
   );
}

#
# @method decode_response
# Extracts the HTTP response content from the response object
#
# @param http_response Http response from the server
#
# @return decoded response content from the response object
#
sub decode_response {
   my ( $self, %args ) = @_;
   my $response = $args{'http_response'};

   return $response->decoded_content();
}

#
# @method invoke
# Http POST request
#
# @param content Http POST request body <string>
#
# @return response Http response from the server
#
sub invoke {
   my ( $self, %args ) = @_;
   my $content = $args{'content'};

   if ( !$content ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpClient.InvalidParameter',
         args => ['content']
      );
      throw InvalidParameter( $msg->str() );
   }

   if ( !$self->{'uri'} ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.Http.HttpClient.VariableNotDefined',
         args => ['uri']
      );
      throw VariableNotDefined( $msg->str() );
   }

   # Instantiating HTTP::Request core CPAN module
   my $request = HTTP::Request->new( POST => $self->{'uri'} );

   # Preparing Http Request with complete headers and content
   $self->{'http_request'} = $self->prepare_request( 'http_request' => $request, 'http_content' => $content );

   # Sending Http Request on wire
   $self->{'http_response'} = $self->send(
      'http_request' => $self->{'http_request'},
      'http_config'  => $self->{'http_config'}
   );

   # Validating Http Response
   $self->validate_response( 'http_response' => $self->{'http_response'} );

   return $self->{'http_response'};
}

#
# @method close
# @overriden
# Closes the transport protocol connection
#
# @param None
#
# @return None
#
sub close {
   my ( $self, %args ) = @_;

   # TODO: connection close implementation
}

1;
