####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file SecurityContextProcessor.pm
# The file implements SecurityContextProcessor perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class SecurityContextProcessor
# This class is responsible for designing the complete SecurityContext structure
#
# This is an abstract processor that inserts the appropriate security context
# data into the request. It is an extension point for third party authentication schemes.
#
package Com::Vmware::Vapi::Dsig::Json::SecurityContextProcessor;

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
use Com::Vmware::Vapi::l10n::Runtime;

#
# @method new
# Constructor for creating SecurityContextProcessor
#
# @param json_signing_processor Com::Vmware::Vapi::Dsig::Json::JsonSigningProcessor type object
# @param json_signature_verification_processor Com::Vmware::Vapi::Dsig::Json::JsonSignatureVerificationProcessor type object
# @param json_signature_struct Com::Vmware::Vapi::Dsig::Json::JsonSignatureStruct type object
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   my $signProcessor = $args{'json_signing_processor'};
   my $signVerifyProcessor  = $args{'json_signature_verification_processor'};
   my $signStruct = $args{'json_signature_struct'};

   if ( !$signProcessor || !$signVerifyProcessor || !$signStruct ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.Json.SecurityContextProcessor.InvalidParameter',
         args => [ InvalidParameter->description ]
      );
      throw InvalidParameter( $msg->str() );
   }

   $self->{'signing_processor'} = $signProcessor;
   $self->{'scheme_id'}  = $signVerifyProcessor;
   $self->{'signature_struct'} = $signStruct;

   return bless( $self, $class );
}

#
# @method get_signing_processor
# Get the Json Signing Processor object
#
# @param None
#
# @return signing_processor Com::Vmware::Vapi::Dsig::Json::JsonSigningProcessor type object
#
sub get_signing_processor {
   my $self = shift;
   return $self->{'signing_processor'};
}

#
# @method get_scheme_id
# Get the scheme-id object
#
# @param None
#
# @return scheme_id Com::Vmware::Vapi::Dsig::Json::JsonSignatureVerificationProcessor type object
#
sub get_scheme_id {
   my $self = shift;
   return $self->{'scheme_id'};
}

#
# @method get_signature_struct
# Get the signatureStruct object, which includes signatureStruct algorithm, SAML token and value
#
# @param None
#
# @return signature_struct Com::Vmware::Vapi::Dsig::Json::JsonSignatureStruct type object
#
sub get_signature_struct {
   my $self = shift;
   return $self->{'signature_struct'};
}

1;
