####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonMsgSerializer.pm
# The file implements JsonMsgSerializer perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonMsgSerializer
# This class is used for serializing vAPI request and convert it into json string.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgSerializer;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper log_debug);
use Com::Vmware::Vapi::Protocol::Common::Json::VapiToJsonVisitor;

#
# Perl CPAN module
#
use JSON::PP;

#
# @method serialize
# Serialize the request object as json string.
#
# @param RequestObject as vAPI data object
#
# @return json_txt Returns the json text
#
sub serialize {
   my (%args) = @_;
   log_debug(MSG => "Serializing the request object as a json string..");
   my $visitor =
     new Com::Vmware::Vapi::Protocol::Common::Json::VapiToJsonVisitor(
      request_object => $args{request_object} );
   my $dataObject = $args{request_object}->accept( visitor => $visitor );
   my %result = %$dataObject;
   # Convert vAPI data type into JSON format
   my $json = JSON::PP->new->utf8;
   $json->allow_nonref->allow_blessed->allow_bignum;
   $json->escape_slash(JSON::PP::false);
   $json->canonical(JSON::PP::true);
   my $json_txt = $json->encode(\%result);
   log_debug(MSG => "Completed the JSON serialization.");
   log_dumper(MSG => $json_txt);
   return $json_txt;
}

1;
