####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file MirrorClient.pm
# The file implements MirrorClient perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class MirrorClient
# Invokes Mirror Echo and Mirror Sort services running on the server
#
package Com::Vmware::Vapi::Tests::Protocol::MirrorClient;

#
# Core Perl modules
#
use strict;
use warnings;
use LWP::UserAgent;
use Carp qw(cluck);

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Protocol::HttpConfiguration;
use Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpUtil;

#
# @method new
# Constructor
#
# @param JsonString - JSON Input String
# @param AcceptHeader - Proper accept header
# @param ContentTypeHeader - Proper content type header
# @param Url - POST Url
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   log_info( MSG => "new()\n");

   $self->{'jsonString'}        = $args{'JsonString'};
   $self->{'acceptHeader'}      = $args{'AcceptHeader'};
   $self->{'contentTypeHeader'} = $args{'ContentTypeHeader'};
   $self->{'url'}               = $args{'Url'};

   return bless( $self, $class );
}

#
# @method getMirrorConnection
# Get JSON String
#
# @param None
# @return JSON String
#
sub getJsonString {
   my $self = shift;
   log_info( MSG => "getJsonString()\n");

   return $self->{'jsonString'};
}

#
# @method getMirrorConnection
# Instantiate and initialize HTTP::Request object
#
# @param None
# @return HTTP::Request instance
#
sub getMirrorConnection {
   my $self = shift;
   log_info( MSG => "getMirrorConnection()\n");

   $self->{'request'} = HTTP::Request->new( POST => $self->{'url'} );
   ( $self->{'request'} )->header( 'Accept' => $self->{'acceptHeader'} );
   ( $self->{'request'} )->header( 'Content-Type' => $self->{'contentTypeHeader'} );
   ( $self->{'request'} )->content( $self->{'jsonString'} );

   return $self->{'request'};
}

#
# @method getHttpConfig
# Instantiate and initialize Protocol::HttpConfiguration object
#
# @param None
# @return HttpConfiguration instance
#
sub getHttpConfig {
   my $self = shift;
   log_info( MSG => "getHttpConfig()\n");

   $self->{'httpConfig'} =
     Com::Vmware::Vapi::Protocol::HttpConfiguration->new( 'SSOTimeout' => 5 );

   return $self->{'httpConfig'};
}

#
# @method getMirrorService
# Creates complete Http request and sends it on wire
#
# @param HttpRequest HTTP::Request object with proper headers being set, must not be null
# @param HttpConfig Object of Com::Vmware::Vapi::Protocol::HttpConfiguration, must not be null
#
# @return response object
#
sub getMirrorService {
   my ( $self, %args ) = @_;
   log_info( MSG => "getMirrorService()\n");
   my $httpRequest = $args{'HttpRequest'};
   my $httpConfig  = $args{'HttpConfig'};

   my $httpUtil =
     Com::Vmware::Vapi::Protocol::Client::Rpc::Http::HttpUtil->new();
   $self->{'response'} = $httpUtil->sendHttpRequest(
      'HttpRequest' => $httpRequest,
      'HttpConfig'  => $httpConfig
   );

   return $self->{'response'};
}

#
# @method echoMirrorClient
# Collects and validates the response of Mirror Echo Service
#
# @param HttpResponse  response object
#
# @return Decoded response object content, for successfull response
#               else throws TransportProtocolException with proper status code
#
sub echoMirrorClient {
   my ( $self, %args ) = @_;
   log_info( MSG => "echoMirrorClient()\n");
   my $response = $args{'HttpResponse'};

   if ( $response->is_success() ) {
      return ( ( $self->{'response'} )->decoded_content() );
   }
   else {
      cluck "\nTransportProtocolException occured";    #compiler don't die here
      throw TransportProtocolException( "\n"
           . TransportProtocolException->description
           . "Invalid Http Response: "
           . ( $self->{'response'} )->status_line()
           . "\n" );
   }
}

1;
