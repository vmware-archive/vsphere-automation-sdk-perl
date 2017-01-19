#########################################################
# Copyright 2013, 2016 VMware, Inc.  All rights reserved.
#########################################################
#
# @file JsonSignatureStruct.pm
# The file implements JsonSignatureStruct perl module.
#
# @copy 2013, 2016, VMware Inc.
#

#
# @class JsonSignatureStruct
# Wrapper for signature
#
package Com::Vmware::Vapi::Dsig::Json::JsonSignatureStruct;

#
# Core Perl modules
#
use strict;
use warnings;
use MIME::Base64;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::l10n::Runtime;

#
# Other CPAN modules
#
use Crypt::X509;

#
# @method new
# Constructor
#
# @param None
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   return bless( $self, $class );
}

#
# @method get_alg
# Get Algorithm
#
# @param None
#
# @return algo signature algorithm
#
sub get_alg {
   my $self = shift;
   return $self->{'algo'};
}

#
# @method set_alg
# set algorithm
#
# @param algo signature algorithm
#
# @return None
#
sub set_alg {
   my ( $self, %args ) = @_;
   $self->{algo} = $args{'algo'};
}

#
# @method create_default_alg
# Creates default algorithm on the basis of SamlTokenSecurityContext object
#
# @param None
#
# @return None
#
sub create_default_alg {
   my ( $self, %args ) = @_;
   $self->{algo} = "RS256";
}

#
# @method get_saml_token
# Get SAML Token
#
# @param None
#
# @return saml_token SAML token
#
sub get_saml_token {
   my $self = shift;
   return $self->{'saml_token'};
}

#
# @method set_saml_token
# Set SAML token
#
# @param saml_token SAML token
#
# @return None
#
sub set_saml_token {
   my ( $self, %args ) = @_;
   $self->{saml_token} = $args{'saml_token'};
}

#
# @method create_default_saml_token
# Creates default algorithm on the basis of SamlTokenSecurityContext object
#
# @param None
#
# @return None
#
sub create_default_saml_token {
   my ( $self, %args ) = @_;

   # TODO:: Hardcoding the SamlToken for now. To be implemented later...
}

#
# @method get_value
# Get Value
#
# @param None
#
# @return value signature value
#
sub get_value {
   my $self = shift;
   return $self->{'value'};
}

#
# @method set_value
# Set value
#
# @param value signature value
#
# @return None
#
sub set_value {
   my ( $self, %args ) = @_;
   $self->{value} = $args{'value'};
}

#
# @method create_default_value
# Creates default base64 encoded signature value
#
# @param saml_token_security_context Com::Vmware::Vapi::Dsig::SamlTokenSecurityContext object
#
# @return None
#
sub create_default_value {
   my ( $self, %args ) = @_;

   my $securityCtx = $args{'saml_token_security_context'};

   my $cert = $self->_load_certificate(
      'certificate' => $securityCtx->get_property( key => 'x509Certificate' ) );
   my $decoded = Crypt::X509->new( cert => $cert );

   if ( $decoded->error ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.Json.JsonSignatureStruct.CertificateDecodeException',
         args => [ $decoded->error() ]
      );
      throw CertificateDecodeException( $msg->str() );
   }

   $self->{value} = encode_base64( $decoded->signature() );
}

#
# @method _load_certificate
# Loads the Certificate [.der format ONLY] file into memory
# Throws InvalidCertificateFormatException, if any other certificate file format is found
#
# @param certificate certificate [.der file] path
#
# @return certificate
#
sub _load_certificate {
   my ( $self, %args ) = @_;
   my $file = $args{'certificate'};

   # Check if the input file is of .der format
   my ($ext) = $file =~ /(\.[^.]+)$/;
   if ( !$ext eq ".der" ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.Json.JsonSignatureStruct.InvalidCertificateFormatException',
         args => [ InvalidCertificateFormatException->description ]
      );
      throw InvalidCertificateFormatException( $msg->str() );
   }

   my $fileHandle = open( FILE, $file );
   if ( !$fileHandle ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Dsig.Json.JsonSignatureStruct.FileNotFoundException',
         args => [ FileNotFoundException->description ]
      );
      throw FileNotFoundException( $msg->str() );
   }

   binmode FILE;
   my $holdTerminator = $/;
   undef $/;    # using slurp mode to read the DER-encoded binary certificate
   my $cert = <FILE>;
   $/ = $holdTerminator;
   close FILE;
   return $cert;
}

#
# @method get_username
# Get username
#
# @param None
#
# @return name username
#
sub get_username {
   my $self = shift;
   return $self->{'userName'};
}

#
# @method get_userpassword
# Get user password
#
# @param None
#
# @return password user password
#
sub get_userpassword {
   my $self = shift;
   return $self->{'password'};
}

#
# @method set_username
# Set value
#
# @param user_name username
#
# @return None
#
sub set_username {
   my ( $self, %args ) = @_;
   $self->{userName} = $args{'user_name'};
}

#
# @method set_userpassword
# Set user password
#
# @param user_password userpassword
#
# @return None
#
sub set_userpassword {
   my ( $self, %args ) = @_;
   $self->{password} = $args{'user_password'};
}

1;
