##########################################################
# Copyright 2013, 2016 VMware, Inc.  All rights reserved.
##########################################################
#
# @file JsonSignatureVerificationProcessor.pm
# The file implements JsonSignatureVerificationProcessor perl module.
#
# @copy 2013, 2016, VMware Inc.
#

#
# @class JsonSignatureVerificationProcessor
# Wrapping SchemeId in structure
#
package Com::Vmware::Vapi::Dsig::Json::JsonSignatureVerificationProcessor;

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
use Com::Vmware::Vapi::Dsig::SamlTokenSecurityContext;

#
# @method new
# Constructor
#
# @param None
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   return bless( $self, $class );
}

#
# @method get_scheme_id
# Get scheme-id
#
# @param None
#
# @return scheme_id
#
sub get_scheme_id {
   my $self = shift;

   return $self->{'scheme_id'};
}

#
# @method set_scheme_id
# set scheme-id
#
# @param scheme_id scheme-id
#
# @return None
#
sub set_scheme_id {
   my ( $self, %args ) = @_;

   $self->{scheme_id} = $args{'scheme_id'};
}

#
# @method create_basic_scheme_id
# Creates basic scheme-id on the basis of UserPassSecurityContext object
#
# @param basic_auth_security_context Com::Vmware::Vapi::Dsig::UserPassSecurityContext object
#
# @return None
#
sub create_basic_scheme_id {
   my ( $self, %args ) = @_;

   my $securityCtx = $args{'basic_auth_security_context'};
   $self->{scheme_id} =
     $securityCtx->get_property( key =>
        $Com::Vmware::Vapi::Core::SecurityContext::AUTHENTICATION_SCHEME_ID );
}

#
# @method create_default_scheme_id
# Creates default scheme-id on the basis of SamlTokenSecurityContext object
#
# @param saml_token_security_context Com::Vmware::Vapi::Dsig::SamlTokenSecurityContext object
#
# @return None
#
sub create_default_scheme_id {
   my ( $self, %args ) = @_;

   my $securityCtx = $args{'saml_token_security_context'};
   $self->{scheme_id} =
     $securityCtx->get_property( key =>
        $Com::Vmware::Vapi::Core::SecurityContext::AUTHENTICATION_SCHEME_ID );
}

1;