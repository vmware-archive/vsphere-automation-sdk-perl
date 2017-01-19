####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonInterfaceIdenResponse.pm
# The file implements JsonInterfaceIdenResponse perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonInterfaceIdenResponse
# Class to represent a GET_INTERFACE_IDENTIFIERS JSON RPC 2.0 request.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonInterfaceIdenResponse;

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
use base qw(Com::Vmware::Vapi::Protocol::Common::Json::JsonBaseResponse);

#
# @method new
# Constructor
# @param id Identifier to be used in the JSON-RPC 2.0 request
# @param result InterfaceIdentifier type Array
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $class = ref($class) || $class;
   $self = $class->SUPER::new( id => $args{id} );
   $self->{result} = $args{result};
   return bless( $self, $class );
}

#
# @method set_result
# Sets InterfaceIdentifier type Array
#
# @param result InterfaceIdentifier type Array
#
# @return None
#
sub set_result {
   my ( $self, %args ) = @_;
   $self->{result} = $args{result};
}

#
# @method get_result
# Get InterfaceIdentifier type Array
#
# @param None
#
# @return result InterfaceIdentifier type Array
#
sub get_result {
   my $self = shift;
   return $self->{result};
}

1;
