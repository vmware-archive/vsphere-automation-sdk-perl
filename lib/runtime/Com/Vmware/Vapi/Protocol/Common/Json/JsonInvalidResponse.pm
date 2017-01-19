####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonInvalidResponse.pm
# The file implements JsonInvalidResponse perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonInvalidResponse
# Exception class to denote an invalid JSON request.
# This does not include JSON parse errors.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonInvalidResponse;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# @method new
# Constructor
# [optional]@param json_error_code JSON-RPC error code, or null if this instance is not created for JSON-RPC error
# @param message Reason why JSON request is invalid
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   if (defined($args{message}) && defined($args{json_error_code})){
      $self->{json_error_code}      = $args{json_error_code};
      $self->{msg} = $args{message};
   }
   else {
      $self->{msg} = $args{message};
   }
   return bless( $self, $class );
}

#
# @method set_json_error_code
# Sets JsonErrorCode of the JSON-RPC 2.0 message
#
# @param json_error_code JsonErrorCode of the JSON-RPC 2.0 message
#
# @return None
#
sub set_json_error_code {
   my ( $self, %args ) = @_;
   $self->{json_error_code} = $args{json_error_code};
}

#
# @method get_json_error_code
# Get JsonErrorCode
#
# @param None
#
# @return json_error_code of the JSON-RPC 2.0 message
#
sub get_json_error_code {
   my $self = shift;
   return $self->{json_error_code};
}

#
# @method set_msg
# Sets Reason why JSON request is invalid
#
# @param message Reason why JSON request is invalid
#
# @return None
#
sub set_msg {
   my ( $self, %args ) = @_;
   $self->{msg} = $args{message};
}

#
# @method get_msg
# Get message
#
# @param None
#
# @return msg Reason why JSON request is invalid
#
sub get_msg {
   my $self = shift;
   return $self->{msg};
}

1;
