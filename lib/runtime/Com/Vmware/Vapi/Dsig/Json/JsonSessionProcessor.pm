####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonSessionProcessor.pm
# The file implements JsonSessionProcessor perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonSessionProcessor
# Client side processor for session authentication
#
package Com::Vmware::Vapi::Dsig::Json::JsonSessionProcessor;

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
use Com::Vmware::Vapi::Security::StdSecuritySchemes;
use Com::Vmware::Vapi::Security::SecurityContextConstants;
use Com::Vmware::Vapi::Security::SessionSecurityContext;

#
# @method new
# Constructor for creating JsonSessionProcessor object
#
# @param None
#
# @return Blessed object
#
sub new {
	my ( $class, %args ) = @_;
	my $sessionSecurityContext = $args{'session_security_context'};
	my $self = {};
    $self->{'scheme_id'} = $Com::Vmware::Vapi::Security::StdSecuritySchemes::SESSION;
    $self->{'session_id'} = $sessionSecurityContext->get_session_id();
	return bless( $self, $class );
}

#
# @method is_scheme_supported
# Checks if the scheme is supported or not
#
# @param requested_scheme scheme name
#
# @return 1 or 0
#
sub is_scheme_supported {
	my ( $self, %args ) = @_;
	my $scheme = $args{'requested_scheme'};

	if ( $scheme eq $Com::Vmware::Vapi::Security::StdSecuritySchemes::SESSION )
	{
		return 1;
	}
	else {
		return 0;
	}
}

#
# @method get_security_context_properties
# Get the complete hash representing all the properties
#
# @param security_context Com::Vmware::Vapi::Core::SecurityContext object
#
# @return Hash representing all the properties
#
sub get_security_context_properties {
	my ( $self, %args ) = @_;
	my $securityContext = $args{'security_context'};

	my %properties;
	$properties{
		$Com::Vmware::Vapi::Security::SecurityContextConstants::SCHEME_ID_KEY} =
	  $Com::Vmware::Vapi::Security::StdSecuritySchemes::SESSION;
	$properties{
		$Com::Vmware::Vapi::Security::SessionSecurityContext::SESSION_ID_KEY} =
	  $securityContext->get_property(
		$Com::Vmware::Vapi::Security::SessionSecurityContext::SESSION_ID_KEY);

	return %properties;
}

1;
