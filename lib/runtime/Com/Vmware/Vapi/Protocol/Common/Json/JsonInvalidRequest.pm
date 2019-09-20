####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonInvalidRequest.pm
# The file implements JsonInvalidRequest perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonInvalidRequest
# Exception class to denote an invalid JSON request.
# This does not include JSON parse errors.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonInvalidRequest;

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
# @param id ID of the JSON-RPC 2.0 message
# @param message Reason why JSON request is invalid
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{id}      = $args{id};
   $self->{message} = $args{message};
   return bless( $self, $class );
}

#
# @method set_id
# Sets ID of the JSON-RPC 2.0 message
#
# @param id ID of the JSON-RPC 2.0 message
#
# @return None
#
sub set_id {
   my ( $self, %args ) = @_;
   $self->{id} = $args{id};
}

#
# @method get_id
# Get id
#
# @param None
#
# @return id ID of the JSON-RPC 2.0 message
#
sub get_id {
   my $self = shift;
   return $self->{id};
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
   $self->{message} = $args{message};
}

#
# @method get_msg
# Get message
#
# @param None
#
# @return message Reason why JSON request is invalid
#
sub get_msg {
   my $self = shift;
   return $self->{message};
}

1;
