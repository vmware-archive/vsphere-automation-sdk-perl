########################################################################
# Copyright (C) 2013, 2016 VMware, Inc.
########################################################################
## @file VapiInterface.pm
# The file implements interface for perl client side bindings.
#

package Com::Vmware::Vapi::Bindings::VapiInterface;
## @class Com::Vmware::Vapi::Bindings::VapiInterface
# vAPI Interface class is used by the python client side bindings. This
# encapsulates the ApiInterfaceStub instance
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.

#
# Core Perl modules
#
use strict;
use warnings;
use UUID::Random;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Core::ExecutionContext;
use Com::Vmware::Vapi::Core::ApplicationData;
use Com::Vmware::Vapi::Dsig::Json::SecurityContextProcessor;
use Com::Vmware::Vapi::Dsig::Json::JsonSessionProcessor;
use Com::Vmware::Vapi::Dsig::Json::JsonSigningProcessor;
use Com::Vmware::Vapi::Dsig::Json::JsonSignatureVerificationProcessor;
use Com::Vmware::Vapi::Dsig::Json::JsonSignatureStruct;
use Com::Vmware::Vapi::Security::StdSecuritySchemes;
use Com::Vmware::Vapi::Bindings::StubConfiguration;
use Com::Vmware::Vapi::l10n::Runtime;

## @method new ()
# Constructor to initialize the VapiInterface object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param stub_config - Stub's additional configuration
#
# @retval
# "Blessed object"
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{stub_config}  = $args{stub_config};
   $self->{api_provider} = $args{api_provider};

   my $stubName = caller() . "Stub";
   $self->{api_interface_stub} =
     $stubName->new( 'api_provider' => $self->{api_provider} );
   bless( $self, $class );

   return ($self);

}

## @method validate_args ()
# Validate the args passed to a vAPI method
#
# @param method_name - Name of the method
# @param method_args - Arguments of the method
#
sub validate_args {
   my ( $self, %args ) = @_;
   my $methodName = $args{method_name};
   my $methodArgs = $args{method_args};

   if ( !defined( $self->{api_interface_stub}->{operations}->{$methodName} ) ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.VapiInterface.InvalidMethod',
         args => [$methodName]
      );
      throw InvalidMethod( $msg->str() );
   }

   #
   # Iterate each mandatory parameters defined in the stub and throw exception,
   # if the mandatory parameter is not passed.
   #
   my $inputType = $self->{api_interface_stub}->{operations}->{$methodName}->{input_type};
   my %argsHash = %$methodArgs;
   my @inputFieldNames = $inputType->get_field_names();
   while (@inputFieldNames) {
      my $field = pop(@inputFieldNames);
      my $type  = $inputType->get_field($field);
      if (  !defined( $argsHash{$field} )
         && !$type->isa('Com::Vmware::Vapi::Bindings::Type::OptionalType') )
      {
         my $message_factory =
           Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
         my $msg = $message_factory->get_message(
            id   => 'Com.Vmware.Vapi.Bindings.VapiInterface.MandatoryParameterMissing',
            args => [$field, $methodName]
         );
         throw InvalidParameter( $msg->str() );
      }
      delete $argsHash{$field};
   }

  #
  # Check any parameters are passed which are not supported by the given method.
  #
   if ( scalar( keys %argsHash ) > 0 ) {
      my $tostr = join( ' , ', keys(%argsHash) );
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.VapiInterface.InvalidParameter',
         args => [$tostr, $methodName]
      );
      throw InvalidParameter( $msg->str() );
   }
   return;
}

## @method invoke ()
# Invokes the ApiMethod corresponding to the given method name
# with the args
#
# @param method_name - Method name needs to be invoked
# @param method_args - Method arguments
#
# @retval
# "Method result"
#

sub invoke {
   my ( $self, %args ) = @_;
   my $methodName = $args{method_name};
   my $methodArgs = $args{method_args};

   my $invocationConfig = $args{login_context};

   my $ctx = new Com::Vmware::Vapi::Core::ExecutionContext(
      wire_data        => $self->_build_default_app_data(),
      security_context => $self->_build_default_security_context(
         invocation_config => $invocationConfig
      )
   );

   my $retValue = $self->{api_interface_stub}->invoke(
      ctx        => $ctx,
      method_name => $methodName,
      method_args => $methodArgs
   );
   return $retValue;
}

## @method _build_default_app_data ()
# [Private Method]
# Method to generate randon UUID to be used in JSON-RPC 2.0 requests and pass it into ApplicationData instance.
#
# @param None
#
# @retval "ApplicationData object"
#
sub _build_default_app_data {
   my $uuid = UUID::Random::generate;
   my $data = {};
   $data->{op_id} = $uuid;
   return new Com::Vmware::Vapi::Core::ApplicationData( app_data => $data );
}

## @method _build_default_security_context ()
# [Private Method]
# Responsible for building security context and passing SAML related stuffs or basic authentication
#
# @param None
#
# @retval "SecurityContextProcessor object" , if user explicitly sets the parameter 'saml_token_security_context' or 'basic_auth_security_context' on current object
# @retval "undef otherwise"
#
sub _build_default_security_context {
   my ( $self, %args ) = @_;
   my $invocationConfig = $args{invocation_config};
   my $stubConfig       = $self->{stub_config};
   my $securityContext  = $stubConfig->get_security_context();
   if ( !$securityContext ) {
      return undef;
   }

   # finding the securitycontext type
   if (
      $securityContext->isa(
         'Com::Vmware::Vapi::Security::SessionSecurityContext')
     )
   {
      return new Com::Vmware::Vapi::Dsig::Json::JsonSessionProcessor(
         'session_security_context' => $securityContext );
   }

   my $signVeriyProcessor =
     new Com::Vmware::Vapi::Dsig::Json::JsonSignatureVerificationProcessor();
   # Manipulating 'signature' attribute
   my $signStruct = new Com::Vmware::Vapi::Dsig::Json::JsonSignatureStruct();
   my $signingProcessor;
   if (
      $securityContext->isa(
         'Com::Vmware::Vapi::Dsig::SamlTokenSecurityContext')
     )
   {
      my $samlToken  = $securityContext->get_property( key => "saml_token" );
      my $privateKey = $securityContext->get_property( key => "private_key" );
      $signingProcessor =
        new Com::Vmware::Vapi::Dsig::Json::JsonSigningProcessor(
         'private_key' => $privateKey );
      $signingProcessor->create_default_timestamp();

      # Manipulating 'scheme-id' attribute
      $signVeriyProcessor->create_default_scheme_id(
         saml_token_security_context => $securityContext );
      $signStruct->create_default_alg(
         saml_token_security_context => $securityContext );

      #$signature->createDefaultValue(
      #   saml_token_security_context => $securityContext );
      $signStruct->set_saml_token( saml_token => $samlToken );
   }
   else {
      $signStruct->set_username(
         user_name => $securityContext->get_property( key => "userName" ) );
      $signStruct->set_userpassword(
         user_password => $securityContext->get_property( key => "password" ) );
      $signVeriyProcessor->create_basic_scheme_id(
         basic_auth_security_context => $securityContext );
      $signingProcessor =
        new Com::Vmware::Vapi::Dsig::Json::JsonSigningProcessor(
         'private_key' => undef );
      $signingProcessor->create_default_timestamp();
   }
   return new Com::Vmware::Vapi::Dsig::Json::SecurityContextProcessor(
      json_signing_processor               => $signingProcessor,
      json_signature_verification_processor => $signVeriyProcessor,
      json_signature_struct                => $signStruct
   );
}

1;
