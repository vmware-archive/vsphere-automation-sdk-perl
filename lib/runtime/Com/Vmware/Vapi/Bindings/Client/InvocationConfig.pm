####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file InvocationConfig.pm
# The file implements InvocationConfig perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class InvocationConfig
# Configuration for a method invocation. If it contains a non-null security
# context, it would override the security context from the stub configuration.
#
package Com::Vmware::Vapi::Bindings::Client::InvocationConfig;

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
# Creates a configuration object which provides an execution context to amethod invocation
#
# @param ExecutionContext [optional] Com::Vmware::Vapi::Core::ExecutionContext object
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{'execution_context'} = $args{'execution_context'};

   return bless( $self, $class );
}

#
# @method get_execution_context
# Returns the execution context associated with this configuration
#
# @param None
#
# @return Com::Vmware::Vapi::Core::ExecutionContext object
#
sub get_execution_context {
   my ( $self, %args ) = @_;
   return $self->{'execution_context'};
}

1;
