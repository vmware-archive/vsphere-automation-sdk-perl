####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonInvokeRequestParams.pm
# The file implements JsonInvokeRequestParams perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonInvokeRequestParams
# Class encapsulating all the parameters required for INVOKE_REQUEST.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonInvokeRequestParams;

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
# @param service_id method identifier which has a fully-qualified method name
# @param operation_id method name
# @param ctx Execution Context
# @param input Input parameters for method to be invoked
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{service_id}   = $args{service_id};
   $self->{operation_id} = $args{operation_id};
   $self->{ctx}         = $args{ctx};
   $self->{input}       = $args{input};
   return bless( $self, $class );
}

#
# @method set_service_id
# Sets ServiceId
#
# @param service_id method identifier which has a fully-qualified method name
#
# @return None
#
sub set_service_id {
   my ( $self, %args ) = @_;
   $self->{service_id} = $args{service_id};
}

#
# @method get_service_id
# Get ServiceId
#
# @param None
#
# @return service_id method identifier which has a fully-qualified method name
#
sub get_service_id {
   my $self = shift;
   return $self->{service_id};
}

#
# @method set_operation_id
# Sets OperationId
#
# @param operation_id
#
# @return None
#
sub set_operation_id {
   my ( $self, %args ) = @_;
   $self->{operation_id} = $args{operation_id};
}

#
# @method get_operation_id
# Get OperationId
#
# @param None
#
# @return operation_id
#
sub get_operation_id {
   my $self = shift;
   return $self->{operation_id};
}

#
# @method set_ctx
# Sets Execution Context
#
# @param ctx Execution Context
#
# @return None
#
sub set_ctx {
   my ( $self, %args ) = @_;
   $self->{ctx} = $args{ctx};
}

#
# @method get_ctx
# Get Execution Context
#
# @param None
#
# @return ctx Execution Context
#
sub get_ctx {
   my $self = shift;
   return $self->{ctx};
}

#
# @method set_input
# Sets Input parameters for method to be invoked
#
# @param input IDataValue type input parameters for method to be invoked
#
# @return None
#
sub set_input {
   my ( $self, %args ) = @_;
   $self->{input} = $args{input};
}

#
# @method get_input
# Get Input parameters for method to be invoked
#
# @param None
#
# @return input IDataValue type input parameters for method to be invoked
#
sub get_input {
   my $self = shift;
   return $self->{input};
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
