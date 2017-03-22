#########################################################
# Copyright 2013, 2016 VMware, Inc.  All rights reserved.
#########################################################
#
# @file VapiToJsonVisitor.pm
# The file implements VapiToJsonVisitor perl module.
#
# @copy 2013, 2016, VMware Inc.
#

#
# @class VapiToJsonVisitor
# This class is used for visiting vAPI Data Object and serialize it.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Protocol::Common::Json::VapiTypeVisitor'.
package Com::Vmware::Vapi::Protocol::Common::Json::VapiToJsonVisitor;

#
# Core Perl modules
#
use strict;
use warnings;
use MIME::Base64;
use JSON::PP;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_debug log_error log_verbose log_warning log_debug log_dumper);
use base qw(Com::Vmware::Vapi::Protocol::Common::Json::VapiTypeVisitor);
use Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants;
use Com::Vmware::Vapi::Security::SecurityContextConstants;
use Com::Vmware::Vapi::Security::StdSecuritySchemes;

#
# @method new
# Constructor to initialize the visitor object
#
# @param request_object vAPI data type value
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = $class->SUPER::new();
   $self->{in_value}  = $args{request_object};
   $self->{out_value} = undef;
   bless( $self, $class );
   return ($self);
}

#
# @method get_out_value
# Returns the serialized DataValue converted from the vAPI data type value
#
# @param
# None.
#
# @return
# Serialized DataValue
#
sub get_out_value {
   my ($self) = shift;
   return $self->{out_value};
}

#
# @method visit_stringvalue_serializer
# Visit a string value
#
# @param request_object
# vAPI Data type value
#
# @return
# None.
#
sub visit_stringvalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %stringData    = %$requestObject;
   my $result        = $stringData{value};
   $self->{out_value} = $result;
   return;
}

#
# @method visit_longvalue_serializer
# Visit a integer value
#
# @param request_object
# vAPI Data type value
#
# @return
# None.
#
sub visit_longvalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %integerData   = %$requestObject;
   my $json          = JSON::PP->new->utf8;
   if ( $integerData{value} == 0 ) {
      $self->{out_value} = $integerData{value};
      return;
   }
   $json->allow_nonref->allow_blessed->allow_bignum;
   my $bigint = $json->decode( $integerData{value} );
   $self->{out_value} = $bigint;
   return;
}

#
# @method visit_doublevalue_serializer
# Visit a double Value
#
# @param request_object
# vAPI Data type value
#
# @return
# None.
#
sub visit_doublevalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %doubleData    = %$requestObject;
   my $json          = JSON::PP->new->utf8;
   $json->allow_nonref->allow_blessed->allow_bignum;
   my $bigfloat = $json->decode( $doubleData{value} );

   #
   # If there is no fraction (e.g. whole no), then force the precision by 1
   # digit on right side of the dot.
   # for eg: 99 -> 99.0
   #
   my ( $l, $f ) = $bigfloat->length();
   if ( !defined($f) || $f == 0 ) {
      $bigfloat->precision(-1);
   }
   $self->{out_value} = $bigfloat;
   return;
}

#
# @method visit_booleanvalue_serializer
# Visit a boolean value
#
# @param request_object
# vAPI Data type value
#
# @return
# None.
#
sub visit_booleanvalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %booleanData   = %$requestObject;
   my $value         = $booleanData{value};
   if ( $value == 1 ) {
      $self->{out_value} = JSON::PP::true;
   }
   else {
      $self->{out_value} = JSON::PP::false;
   }
   return;
}

#
# @method visit_blobvalue_serializer
# Visit a Blob Value
#
# @param request_object
# vAPI Data type value
#
# @return
# None.
#
sub visit_blobvalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %blobData      = %$requestObject;

# encode string into the base64 encoding specified in RFC 2045 - MIME (Multipurpose Internet Mail Extensions).
   my $result = { $blobData{type} => encode_base64( $blobData{value} ) };
   $self->{out_value} = $result;
   return;
}

#
# @method visit_structvalue_serializer
# Visit a struct value
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_structvalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %structValue   = %$requestObject;
   my $result;
   my $structfieldsDict = {};
   my $structDict;
   my $fields   = $structValue{fields};
   my $dataType = $structValue{type};

   while ( ( my $field, my $value ) = each(%$fields) ) {
      my $visitor =
        new Com::Vmware::Vapi::Protocol::Common::Json::VapiToJsonVisitor(
         request_object => $value );
      my $serializeData = $value->accept( visitor => $visitor );
      my $fieldValue = $serializeData;
      $structfieldsDict->{$field} = $fieldValue;
   }
   $structDict = { $structValue{'name'} => $structfieldsDict };
   $result     = { $dataType            => $structDict };
   $self->{out_value} = $result;
   return;
}

#
# @method visit_listvalue_serializer
# Visit a list value
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_listvalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %listValue     = %$requestObject;
   my $listValue     = $listValue{value};
   my $result        = [];

   foreach my $value (@$listValue) {
      my $visitor =
        new Com::Vmware::Vapi::Protocol::Common::Json::VapiToJsonVisitor(
         request_object => $value );
      my $serializeData = $value->accept( visitor => $visitor );
      push( @{$result}, $serializeData );
   }
   $self->{out_value} = $result;
   return;
}

# @method visit_datetimevalue_serializer
# Visit a string value
#
# @param request_object
# vAPI Data type value
#
# @return
# None.
#
sub visit_datetimevalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %stringData    = %$requestObject;
   my $result        = $stringData{value};
   $self->{out_value} = $result;
   return;
}

# @method visit_opaquevalue_serializer
# Visit a Opaque value
#
# @param request_object
# vAPI Data type value
#
# @return
# None.
#
sub visit_opaquevalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %stringData    = %$requestObject;
   my $result        = $stringData{value};
   $self->{out_value} = $result;
   return;
}

#
# @method visit_optionalvalue_serializer
# Visit a Optional Value
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_optionalvalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %optionalValue = %$requestObject;
   my $result        = {};
   if ( defined( $optionalValue{value} ) ) {
      my $optionalValue = $optionalValue{value};
      my $visitor =
        new Com::Vmware::Vapi::Protocol::Common::Json::VapiToJsonVisitor(
         request_object => $optionalValue );
      my $serializeData = $optionalValue->accept( visitor => $visitor );
      $result->{ $optionalValue{type} } = $serializeData;

   }
   else {
      $result->{ $optionalValue{type} } = undef;
   }
   $self->{out_value} = $result;
   return;
}

#
# @method visit_urivalue_serializer
# Visit a URI Value
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_urivalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %uriValue      = %$requestObject;
   my $result        = $uriValue{value};
   $self->{out_value} = $result;
   return;
}

#
# @method visit_secretvalue_serializer
# Visit a Secret Value
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_secretvalue_serializer {
   my ( $self, %args ) = @_;
   my $requestObject = $args{request_object};
   my %secretValue   = %$requestObject;
   my $result        = {};
   $result->{ $secretValue{type} } = $secretValue{value};
   $self->{out_value} = $result;
   return;
}

#
# @method visit_executioncontext_serializer
# Visit a AppContext Serializer
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_executioncontext_serializer {
   my ( $self, %args ) = @_;
   my $requestObject         = $args{request_object};
   my $result                = {};
   my $APP_CTX               = "appCtx";
   my $SECURITY_CTX          = "securityCtx";
   my %execContext           = %$requestObject;
   my $additionalRequestData = $execContext{exec_application_data};
   my $execSecurityContext   = $execContext{exec_security_context};

   if ( defined($additionalRequestData) ) {
      $result->{$APP_CTX} = $$additionalRequestData{wire_data};
   }
   else {
      $result->{$APP_CTX} = {};
   }
   my $securityCtx = {};

   #
   # TODO:: Validate this use case
   #
   if ( !defined($execSecurityContext) ) {

      #$result->{$SECURITY_CTX} = $securityCtx;
      $self->{out_value} = $result;
      return;
   }

   #
   # Proceed with session id
   #
   if (
      $execSecurityContext->isa(
         'Com::Vmware::Vapi::Dsig::Json::JsonSessionProcessor')
     )
   {
      $securityCtx->{'schemeId'}  = $execSecurityContext->{'scheme_id'};
      $securityCtx->{'sessionId'} = $execSecurityContext->{'session_id'};
      $result->{$SECURITY_CTX}    = $securityCtx;
      $self->{out_value}          = $result;
      return;
   }

   #
   # Handle SSO and basic authentication use case
   #
   my $SCHEME_ID_KEY =
     $Com::Vmware::Vapi::Security::SecurityContextConstants::SCHEME_ID_KEY;
   my $schemeId = $execSecurityContext->get_scheme_id()->get_scheme_id();
   if ( $schemeId eq $Com::Vmware::Vapi::Security::StdSecuritySchemes::USER_PASS ) {
      $securityCtx->{userName} =
        $execSecurityContext->get_signature_struct()->get_username();
      $securityCtx->{password} =
        $execSecurityContext->get_signature_struct()->get_userpassword();
   }
   $securityCtx->{$SCHEME_ID_KEY} = $schemeId;

   #
   # Handle bearer token use case
   #
   if ( $schemeId eq
      $Com::Vmware::Vapi::Security::StdSecuritySchemes::SAML_BEARER_TOKEN )
   {
      my $SAML_TOKEN_KEY =
        $Com::Vmware::Vapi::Security::SecurityContextConstants::SAML_TOKEN_KEY;
      $securityCtx->{$SAML_TOKEN_KEY} =
        $execSecurityContext->get_signature_struct()->get_saml_token();
      $result->{$SECURITY_CTX} = $securityCtx;
      $self->{out_value} = $result;
      return;
   }

   #
   # Handle HOK token use case
   #
   my $signature = {};
   my $timestamp = {};
   my $value     = $execSecurityContext->get_signature_struct()->get_value();
   if ( defined($value) ) {
      my $SIG_ALG_KEY =
        $Com::Vmware::Vapi::Security::SecurityContextConstants::SIG_ALG_KEY;
      my $SAML_TOKEN_KEY =
        $Com::Vmware::Vapi::Security::SecurityContextConstants::SAML_TOKEN_KEY;
      my $SIG_VALUE_KEY =
        $Com::Vmware::Vapi::Security::SecurityContextConstants::SIG_VALUE_KEY;
      my $SIGNATURE_KEY =
        $Com::Vmware::Vapi::Security::SecurityContextConstants::SIGNATURE_KEY;

      $signature->{$SIG_ALG_KEY} =
        $execSecurityContext->get_signature_struct()->get_alg();
      $signature->{$SAML_TOKEN_KEY} =
        $execSecurityContext->get_signature_struct()->get_saml_token();
      $signature->{$SIG_VALUE_KEY}   = $value;
      $securityCtx->{$SIGNATURE_KEY} = $signature;
   }

   my $TS_CREATED_KEY =
     $Com::Vmware::Vapi::Security::SecurityContextConstants::TS_CREATED_KEY;
   my $TS_EXPIRES_KEY =
     $Com::Vmware::Vapi::Security::SecurityContextConstants::TS_EXPIRES_KEY;
   my $TIMESTAMP_KEY =
     $Com::Vmware::Vapi::Security::SecurityContextConstants::TIMESTAMP_KEY;

   $timestamp->{$TS_CREATED_KEY} =
     $execSecurityContext->get_signing_processor()->get_created_timestamp();
   $timestamp->{$TS_EXPIRES_KEY} =
     $execSecurityContext->get_signing_processor()->get_expiry_timestamp();
   $securityCtx->{$TIMESTAMP_KEY} = $timestamp;

   $result->{$SECURITY_CTX} = $securityCtx;
   $self->{out_value} = $result;
   return;
}

#
# @method visit_jsonapirequest_serializer
# Visit a JsonApiRequest Serializer
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_jsonapirequest_serializer {
   my ( $self, %args ) = @_;
   my $requestObject  = $args{request_object};
   my $result         = {};
   my %jsonApiRequest = %$requestObject;
   $result->{
      $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_JSONRPC }
     = $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::JSON_RPC_VERSION;
   $result
     ->{$Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_ID} =
     $jsonApiRequest{id};
   $result
     ->{ $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_METHOD
     } = $jsonApiRequest{method};
   $result
     ->{ $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_PARAMS
     } = $jsonApiRequest{request_params};
   $self->{out_value} = $result;
   return;
}

#
# @method visit_jsoninvokerequestparams_serializer
# Visit a Json InvokeRequestParams
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_jsoninvokerequestparams_serializer {
   my ( $self, %args ) = @_;
   my $requestObject    = $args{request_object};
   my $result           = {};
   my %jsonInvReqParams = %$requestObject;
   $result->{
      $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_SERVICE_ID
     } = $jsonInvReqParams{service_id};
   $result->{
      $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_OPERATION_ID
     } = $jsonInvReqParams{operation_id};
   $result->{$Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::CONTEXT}
     = $jsonInvReqParams{ctx};
   $result->{$Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::INPUT} =
     $jsonInvReqParams{input};
   $self->{out_value} = $result;
   return;
}

#
# @method visit_methodidentifier_serializer
# Visit a MethodIdentifier Serializer
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_methodidentifier_serializer {
   my ( $self, %args ) = @_;
   my $requestObject    = $args{request_object};
   my $result           = {};
   my %methodIdentifier = %$requestObject;
   $result->{
      $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::METHOD_IDENTIFIER_NAME
     } = $methodIdentifier{method_name};
   $result->{
      $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::METHOD_IDENTIFIER_INTERFACE
     } = $methodIdentifier{interface_id};
   $self->{out_value} = $result;
   return;
}

#
# @method visit_interfaceidentifier_serializer
# Visit a InterfaceIdentifierSerializer
#
# @param request_object argument for vAPI request object
#
# @return None.
#
sub visit_interfaceidentifier_serializer {
   my ( $self, %args ) = @_;
   my $requestObject       = $args{request_object};
   my $result              = {};
   my %interfaceIdentifier = %$requestObject;
   $result->{
      $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::INTERFACE_IDENTIFIER_NAME
     } = $interfaceIdentifier{name};
   $self->{out_value} = $result;
   return;
}

1;
