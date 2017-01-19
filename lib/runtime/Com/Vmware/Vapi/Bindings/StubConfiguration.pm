####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
## @file StubConfiguration.pm
# The file implements StubConfiguration perl module.
#
# @copy 2013, VMware Inc.
#

## @class Com::Vmware::Vapi::Bindings::StubConfiguration
# This is a helper class for creating stub configurations.
#
package Com::Vmware::Vapi::Bindings::StubConfiguration;

#
# Core Perl modules
#
use strict;
use warnings;


#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

## @method new ()
# Constructor
#
# @param None
#
# @retval "Blessed object"
#
sub new {
	my ( $class, %args ) = @_;
	my $self = {};
	return bless( $self, $class );

}

## @method set_security_context ()
# Sets the security context that will be used in the stub
#
# @param security_context - Com::Vmware::Vapi::Core::SecurityContext object
#
# @retval None
#
sub set_security_context {
	my ( $self, %args ) = @_;
	$self->{security_context} = $args{'security_context'};
}

## @method get_security_context ()
# Get the security context used in the stub
#
# @param None
#
# @retval SecurityContext
#
sub get_security_context {
	my ( $self, %args ) = @_;
	return $self->{security_context};
}

## @method register_error_types ()
# Registers a list of ErrorType to be used by the
# configured stub for resolving VMODL2 errors received as
# result of a method invocation.
# The types for all standard VMODL2 errors are registered
# and resolvable by default. This method is useful for registration
# of additional types for custom errors.
#
# @param registered_error_types - Errors types to register
#
# @retval None
#
sub register_error_types {
	my ( $self, %args ) = @_;
	$self->{registered_error_types} = $args{'registered_error_types'};
}

## @method get_error_types ()
# Sets the security context that will be used in the stub
#
# @param None
#
# @retval registered_error_types
#
sub get_error_types {
	my ( $self, %args ) = @_;
	return $self->{registered_error_types};
}

1;
