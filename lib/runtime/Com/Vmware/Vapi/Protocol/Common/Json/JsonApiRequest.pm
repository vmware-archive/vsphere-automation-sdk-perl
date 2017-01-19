####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonApiRequest.pm
# The file implements JasonApiRequest perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonApiRequest
# Class to represent a INVOKE_METHOD JSON RPC 2.0 request.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonApiRequest;

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
# @param request_params Arguments for the INVOKE_METHOD request
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $id = $args{id};
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(
      id => $id,
      method =>
        Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::INVOKE
   );
   $self->{request_params} = $args{request_params};
   return bless( $self, $class );
}

#
# @method set_request_params
# Sets Arguments for the INVOKE_METHOD request
#
# @param request_params INVOKE_METHOD request
#
# @return None
#
sub set_request_params {
   my ( $self, %args ) = @_;
   $self->{request_params} = $args{request_params};
}

#
# @method get_request_params
# Get requestParams
#
# @param None
#
# @return request_params argument for the INVOKE_METHOD request
#
sub get_request_params {
   my $self = shift;
   return $self->{request_params};
}

#
# @method accept
# visit each data objects
#
# @param visitor
#
# @return None
#
sub accept {
   my ( $self, %args ) = @_;
   my $visitor = $args{visitor};
   $visitor->visit( vapi_data_object => $self );
}

1;
