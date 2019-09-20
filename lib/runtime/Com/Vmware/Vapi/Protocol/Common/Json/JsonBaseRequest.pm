####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JasonBaseRequest.pm
# The file implements JasonBaseRequest perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonBaseRequest
# Super class to represent a JSON RPC 2.0 request.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonBaseRequest;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants;

#
# @method new
# Constructor
# @param id Identifier to be used in the JSON-RPC 2.0 request
# @param method Method to be invoked. Acceptable values are
#    GET_PROVIDER_IDENTIFIER, GET_METHOD_IDENTIFIERS,
#    GET_INTERFACE_IDENTIFIERS, GET_METHOD_DETAILS,
#    GET_INTERFACE_DETAILS, INVOKE_METHOD
#
# @return Blessed object
#
sub new{
   my ($class, %args) = @_;
   my $self = {};
   $self->{id} = $args{id};
   $self->{method} = $args{method};
   $self->{json_rpc} = $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::JSON_RPC_VERSION;
   return bless($self, $class);
}

#
# @method set_id
# Sets the id to be used in the JSON-RPC 2.0 request
#
# @param id Identifier to be used in the JSON-RPC 2.0 request
#
# @return None
#
sub set_id {
   my ($self, %args) = @_;
   $self->{id} = $args{id};
}

#
# @method get_id
# Get id
#
# @param None
#
# @return id to be used in the JSON-RPC 2.0 request
#
sub get_id {
   my $self = shift;
   return $self->{id};
}

#
# @method set_json_rpc
# Sets the jsonRPC version to be used in the JSON-RPC 2.0 request
#
# @param json_rpc  JSON-RPC Version
#
# @return None
#
sub set_json_rpc {
   my ($self, %args) = @_;
   $self->{json_rpc} = $args{json_rpc};
}

#
# @method get_json_rpc
# Get JsonRpc Version
#
# @param None
#
# @return json_rpc version to be used in the JSON-RPC 2.0 request
#
sub get_json_rpc {
   my $self = shift;
   return $self->{json_rpc};
}

#
# @method set_method
# Sets the method to be used in the JSON-RPC 2.0 request
#
# @param method Method to be invoked in the JSON-RPC 2.0 request. Acceptable values are
#    GET_PROVIDER_IDENTIFIER, GET_METHOD_IDENTIFIERS,
#    GET_INTERFACE_IDENTIFIERS, GET_METHOD_DETAILS,
#    GET_INTERFACE_DETAILS, INVOKE_METHOD
#
# @return None
#
sub set_method {
   my ($self, %args) = @_;
   $self->{method} = $args{method};
}

#
# @method get_method
# Get method to be used in the JSON-RPC 2.0 request
#
# @param None
#
# @return method to be used in the JSON-RPC 2.0 request
#
sub get_method {
   my $self = shift;
   return $self->{method};
}

1;
