####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonIfaceRequest.pm
# The file implements JsonIfaceRequest perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonIfaceRequest
# Class to represent a GET_INTERFACE_DETAILS JSON RPC 2.0 request.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonIfaceRequest;

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
use base qw(Com::Vmware::Vapi::Protocol::Common::Json::JsonBaseRequest);
use Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants;

#
# @method new
# Constructor
# @param id Identifier to be used in the JSON-RPC 2.0 request
# @param interface_ids_params List of Interface Identifiers
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $class = ref($class) || $class;
   $self = $class->SUPER::new(
      id => $args{id},
      method => Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::GETINTERFACES
   );
   $self->{interface_ids_params} = $args{interface_ids_params};
   return bless( $self, $class );
}

#
# @method set_interface_ids_params
# Sets List of Interface Identifiers
#
# @param interface_ids_params List of Interface Identifiers
#
# @return None
#
sub set_interface_ids_params {
   my ( $self, %args ) = @_;
   $self->{interface_ids_params} = $args{interface_ids_params};
}

#
# @method get_interface_ids_params
# Get List of Interface Identifiers
#
# @param None
#
# @return interface_ids_params List of Interface Identifiers
#
sub get_interface_ids_params {
   my $self = shift;
   return $self->{interface_ids_params};
}

1;
