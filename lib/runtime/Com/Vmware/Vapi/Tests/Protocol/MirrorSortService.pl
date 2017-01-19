####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file MirrorSortService.pl
# MirrorSortService sample
#
# @copy 2013, VMware Inc.
#

#
# @class MirrorSortService
# Mirror Sort Service sample
#
package Com::Vmware::Vapi::Tests::Protocol::MirrorSortService;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Tests::Protocol::MirrorClient;
use Com::Vmware::Vapi::Tests::Protocol::MirrorConstants;

# Instantiating MirrorClient
my $mirrorClient =
  Com::Vmware::Vapi::Tests::Protocol::MirrorClient->new(
   'JsonString' =>
     $Com::Vmware::Vapi::Tests::Protocol::MirrorConstants::JSON_SORT_STRING,
   'AcceptHeader' =>
     $Com::Vmware::Vapi::Tests::Protocol::MirrorConstants::ACCEPT_HEADER,
   'ContentTypeHeader' =>
     $Com::Vmware::Vapi::Tests::Protocol::MirrorConstants::CONTENT_TYPE_HEADER,
   'Url' =>
     $Com::Vmware::Vapi::Tests::Protocol::MirrorConstants::POST_URL,
  );

print "*******************************************";
print "\n\tMirror Sort Service Test";
print "\n*******************************************";

# Getting JSON String
# Current implemantation with hardcoded JSON String
# TODO:
# Need to integrate with Binding and Data Layer for Dynamic JSON String
print "\n\n";
log_info( MSG => "JSON String:\n" );
log_dumper( MSG => $mirrorClient->getJsonString());

# Instantiating and initializing HTTP::Request object
my $httpRequest = $mirrorClient->getMirrorConnection();
print "\n\n";
log_info( MSG => "Http Request:\n");
log_dumper( MSG => $httpRequest);

# Instantiating and initializing Protocol::HttpConfiguration object
my $httpConfig = $mirrorClient->getHttpConfig();
print "\n\n";
log_info( MSG => "Http Configuration:\n");
log_dumper( MSG => $httpConfig);

# Creating complete Http request and sending it on wire
my $httpResponse = $mirrorClient->getMirrorService(
   'HttpRequest' => $httpRequest,
   'HttpConfig'  => $httpConfig
);

print "\n\n.........................Sending request on wire.........................";
print "\n\n.........................Connecting with Server..........................";
print "\n\n.........................Waiting for response............................";
print "\n\n";
log_info( MSG => "Http Response:\n");
log_dumper( MSG => $httpResponse);

# Collecting and validating the response of Mirror Echo Service
my $decodedResponse =
  $mirrorClient->echoMirrorClient( 'HttpResponse' => $httpResponse );
print "\n\n";
log_info( MSG => "Http Decoded Response after proper validation:\n");
log_dumper( MSG => $decodedResponse);
