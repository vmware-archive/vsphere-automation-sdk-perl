####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonApiResponse.pm
# The file implements JasonApiResponse perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonApiResponse
# Class to represent a INVOKE_METHOD JSON RPC 2.0 response.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonApiResponse;

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
# @param result Arguments for the INVOKE_METHOD response
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
# Sets Arguments for the INVOKE_METHOD response
#
# @param result argument for the INVOKE_METHOD response
#
# @return None
#
sub set_result {
   my ( $self, %args ) = @_;
   $self->{result} = $args{result};
}

#
# @method get_result
# Get method result
#
# @param None
#
# @return result argument for the INVOKE_METHOD response
#
sub get_result {
   my $self = shift;
   return $self->{result};
}

1;
