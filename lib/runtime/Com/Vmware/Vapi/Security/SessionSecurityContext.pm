####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file SessionSecurityContext.pm
# The file implements SessionSecurityContext perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class SessionSecurityContext
# This class represents the security context needed for authentication a session ID
#
package Com::Vmware::Vapi::Security::SessionSecurityContext;

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
use Com::Vmware::Vapi::Core::SecurityContext;
use Com::Vmware::Vapi::Security::StdSecuritySchemes;
use Com::Vmware::Vapi::l10n::Runtime;

use base qw(Com::Vmware::Vapi::Core::SecurityContext);

# Constants
our $SESSION_ID_KEY = "sessionId";

#
# @method new
# Constructor for creating SessionSecurityContext object
#
# @param session_id session id
#
# @return Blessed object
#
sub new {
	my ( $class, %args ) = @_;
   my $self = $class->SUPER::new();
   my $sessionId = $args{'session_id'};

	if ( !$sessionId ) {
	   my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Security.SessionSecurityContext.InvalidParameter',
         args => ['session_id']
      );
      throw InvalidParameter( $msg->str() );
	}

   $self->{'session_id'} = $sessionId;

	return bless( $self, $class );
}

#
# @method get_property
# Get a security context property under the specified key
#
# @param key key of the required property
#
# @return the security context property under the specified key
#
sub get_property {
	my ( $self, %args ) = @_;
	my $key = $args{'key'};

	if ( !$key ) {
	   my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Security.SessionSecurityContext.InvalidParameter',
         args => ['key']
      );
      throw InvalidParameter( $msg->str() );
	}

	if ( $SESSION_ID_KEY eq $key ) {
		return $self->{'session_id'};
	}
	elsif ($Com::Vmware::Vapi::Core::SecurityContext::AUTHENTICATION_SCHEME_ID eq
		$key)
	{
		return $Com::Vmware::Vapi::Security::StdSecuritySchemes::SESSION;
	}

	return undef;
}

#
# @method get_all_properties
# Get the complete hash representing all the properties
#
# @param None
#
# @return Hash representing all the properties
#
sub get_all_properties {
	my ( $self, %args ) = @_;

	my %properties = ( $SESSION_ID_KEY => $self->{'session_id'} );

	return %properties;
}

#
# @method get_session_id
# Get Session Id
#
# @param None
#
# @return session_id
#
sub get_session_id {
	my ( $self, %args ) = @_;

	return $self->{'session_id'};
}

#
# @method new_instance
# Get Session Id
#
# @param security_context Com::Vmware::Vapi::Core::SecurityContext object
#
# @return session_id
#
sub new_instance {
	my ( $self, %args ) = @_;
	my $securityContext = $args{'security_context'};

	if ( !$securityContext ) {
	   my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Security.SessionSecurityContext.InvalidParameter',
         args => ['security_context']
      );
      throw InvalidParameter( $msg->str() );
	}

	my $sessionIdStr = $securityContext->get_property($SESSION_ID_KEY);
	if ($sessionIdStr) {
		$self->{'session_id'} = $sessionIdStr;
	}
	else {
		$self->{'session_id'} = $securityContext->get_property($SESSION_ID_KEY);
	}

	if( !defined($self->{'session_id'}) ) {
		return Com::Vmware::Vapi::Security::SessionSecurityContext->new($self->{'session_id'});
	}

	return undef;
}

1;
