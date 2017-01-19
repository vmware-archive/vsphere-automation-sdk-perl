####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ExecutionContext.pm
# The file implements ExecutionContext perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class ExecutionContext
# Provides information about the execution of an API method invocation.
# It consists of
# 1. out-of-band context data provided by client and passed along with the invocation/request
# 2. authentication/security context and data
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Core::SecurityContext'.
#
package Com::Vmware::Vapi::Core::ExecutionContext;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper log_debug);

#
# @method new
# Constructor
#
# @param wire_data ApplicationData object, WireData may be undef/null
# @param security_context SecurityContext object, SecurityContext may be undef/null
#
# @return
# Blessed object
#
sub new {
	my ( $class, %args ) = @_;
	my $self = {};

	$self->{exec_application_data} = $args{wire_data};
	$self->{exec_security_context} = $args{security_context};
	return bless( $self, $class );
}

#
# @method retrieve_application_data
# Get application data
#
# @param None
#
# @return Com::Vmware::Vapi::Core::ApplicationData object
#
sub retrieve_application_data {
	my ( $self, %args ) = @_;

	return $self->{exec_application_data};
}

#
# @method retrieve_security_context
# Get Security Context
#
# @param None
#
# @return Com::Vmware::Vapi::Core::SecurityContext object
#
sub retrieve_security_context {
	my ( $self, %args ) = @_;

	return $self->{exec_security_context};
}

#
# @method accept
# visit each vAPI data objects
#
# @param None
#
# @return None
#
sub accept {
	my ( $self, %args ) = @_;
	my $visitor = $args{visitor};
	$visitor->visit( vapi_data_object => $self );
}

1;
