####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonBaseResponse.pm
# The file implements JasonBaseResponse perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonBaseResponse
# Super class to represent a JSON RPC 2.0 response.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonBaseResponse;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# @method new
# Constructor
# @param id Identifier to be used in the JSON-RPC 2.0 response
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{id} = $args{id};
   $self->{json_rpc} =
     $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::JSON_RPC_VERSION;
   return bless( $self, $class );
}

#
# @method set_id
# Sets the id to be used in the JSON-RPC 2.0 response
#
# @param id Identifier to be used in the JSON-RPC 2.0 response
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
# @return id to be used in the JSON-RPC 2.0 response
#
sub get_id {
   my $self = shift;
   return $self->{id};
}

#
# @method set_json_rpc
# Sets the jsonRPC version to be used in the JSON-RPC 2.0 response
#
# @param json_rpc  JSON-RPC Version
#
# @return None
#
sub set_json_rpc {
   my ( $self, %args ) = @_;
   $self->{json_rpc} = $args{json_rpc};
}

#
# @method get_json_rpc
# Get JsonRpc Version
#
# @param None
#
# @return json_rpc version to be used in the JSON-RPC 2.0 response
#
sub get_json_rpc {
   my $self = shift;
   return $self->{json_rpc};
}

1;
