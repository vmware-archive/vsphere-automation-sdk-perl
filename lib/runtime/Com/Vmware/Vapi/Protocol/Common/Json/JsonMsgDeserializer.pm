####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonMsgDeserializer.pm
# The file implements JsonMsgDeserializer perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonMsgDeserializer
# This class is used for Deserializing Json text and convert it into vAPI data value.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgDeserializer;

#
# Core Perl modules
#
use strict;
use warnings;
use MIME::Base64;
use Exception::Class;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper log_debug);
use Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants;
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Util::Helper;
use Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse;
use Com::Vmware::Vapi::Protocol::Common::Json::JsonApiResponse;
use Com::Vmware::Vapi::Core::MethodResult;
use Com::Vmware::Vapi::Data::Type;
use Com::Vmware::Vapi::Data::Value::StringValue;
use Com::Vmware::Vapi::Data::Value::ListValue;
use Com::Vmware::Vapi::Data::Value::StructValue;
use Com::Vmware::Vapi::Data::Value::LongValue;
use Com::Vmware::Vapi::Data::Value::BooleanValue;
use Com::Vmware::Vapi::Data::Value::DoubleValue;
use Com::Vmware::Vapi::Data::Value::BlobValue;
use Com::Vmware::Vapi::Data::Value::DateTimeValue;
use Com::Vmware::Vapi::Data::Value::OpaqueValue;
use Com::Vmware::Vapi::Data::Value::VoidValue;
use Com::Vmware::Vapi::Data::Value::OptionalValue;
use Com::Vmware::Vapi::Data::Value::SecretValue;
use Com::Vmware::Vapi::Data::Value::StructureRefValue;
use Com::Vmware::Vapi::Data::Value::URIValue;
use Com::Vmware::Vapi::Data::Value::ErrorValue;
use Com::Vmware::Vapi::Protocol::Common::Json::JsonInvalidResponse;
use Com::Vmware::Vapi::l10n::Runtime;

#
# Perl CPAN module
#
use JSON::PP;
use Exception::Class;

# result constants
our $RESULT_OUTPUT = "output";
our $RESULT_PROGRESS = "progress";
our $RESULT_ERROR = "error";

# JSON-RPC error constants
our $JSON_ERROR_CODE = "code";
our $JSON_ERROR_MESSAGE = "message";
our $JSON_ERROR_DATA = "data";

# Global variable
our $outputType;
our $errors;

#
# @method new
# Constructor
#
# @param
# None
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   bless( $self, $class );
   return ($self);
}

#
# @method deserialize
# Deserialize the json response into vAPI data object.
#
# @param json_response json response as string
# @param output_type output type
# @param errors Errors
#
# @return jsonApiResponse Returns the JsonApiResponse object
#
sub deserialize {
   my ( $self, %args ) = @_;
   my $jsonResponse = $args{json_response};
   $outputType = $args{output_type};
   $errors = $args{errors};

   my $decodedResponse = undef;
   #
   # TODO:: The extra char BOM needs to be investigated further.
   #
   eval { $decodedResponse = decode_json($jsonResponse); };
   if ($@) {
      log_debug( MSG => 'Looks like response content has BOM (Byte Order Mark), removing the BOM...' );
      #
      # This will remove the PROGRESS_RESPONSE if one or more present in the response
      #
      if ( $jsonResponse =~ /(.*)\n(.*)$/ ) {
         $jsonResponse = $2;
      }
      $decodedResponse = decode_json($jsonResponse);
   }

   log_dumper( MSG => $decodedResponse );

   my $jsonApiResponse =
     json_api_response_deserializer( json_response => $decodedResponse );
   return $jsonApiResponse;
}

#
# @method json_api_response_deserializer
# Deserialize the json response into JsonApiResponse object.
#
# @param json_response json response as string
#
# @return JsonApiResponse object
#
sub json_api_response_deserializer {
   my (%args) = @_;
   my $jsonResponse = $args{json_response};
   my $jsonRpcVersion =
     $$jsonResponse{
      $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_JSONRPC};
   my $jsonResponseId =
     $$jsonResponse{
      $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_ID};

   # check response JSON-RPC version is valid
   if (
      $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::JSON_RPC_VERSION
      ne $jsonRpcVersion )
   {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.Common.Json.JsonMsgDeserializer.JsonInvalidRequestException',
         args => [$jsonRpcVersion]
      );
      throw JsonInvalidRequestException( $msg->str() );
   }

   # JSON-RPC mandates that the result and error nodes be
   # mutually exclusive. Process response only if criteria is
   # met. In case of an error, throw JsonInvalidResponseException
   if (
      exists $$jsonResponse{
         $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_RESULT
      }
      && exists $$jsonResponse{
         $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_ERROR}
     )
   {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.Common.Json.JsonMsgDeserializer.InvalidResult.JsonInvalidResponseException',
         args => [ JsonInvalidResponseException->description ]
      );
      throw JsonInvalidResponseException( $msg->str() );
   }
   elsif (
      !exists $$jsonResponse{
         $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_RESULT
      }
      && !
      exists $$jsonResponse{
         $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_ERROR}
     )
   {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.Common.Json.JsonMsgDeserializer.MissingParameters.JsonInvalidResponseException',
         args => ['result and error']
      );
      throw JsonInvalidResponseException( $msg->str() );
   }
   elsif (
      exists $$jsonResponse{
         $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_RESULT
      }
     )
   {

      # result returned
      my $resultNode =
        $$jsonResponse{
         $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_RESULT
        };

      #log_dumper( MSG => $resultNode );
      if ( exists $$resultNode{$RESULT_PROGRESS} ) {

         # progress returned
         my $progressDataValue = data_value_deserializer(
            result     => $$resultNode{$RESULT_PROGRESS},
            output_type => $outputType
         );
         return
           new Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse(
            id       => $jsonResponseId,
            progress => $progressDataValue
           );
      }

      # output returned
      my $methodResult =
        Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgDeserializer::method_result_deserializer(
         result => $resultNode );
      return new Com::Vmware::Vapi::Protocol::Common::Json::JsonApiResponse(
         id     => $jsonResponseId,
         result => $methodResult
      );
   }
   elsif (
      exists $$jsonResponse{
         $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_ERROR
      }
     )
   {

      # top level error returned (JSON-RPC error)
      my $errorNode =
        $$jsonResponse{
         $Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants::FIELD_ERROR
        };
      my $jsonErrorCode = '';
      my $jsonErrorMsg  = '';
      my $jsonErrorData = '';
      if ( exists $$errorNode{$JSON_ERROR_CODE} ) {
         $jsonErrorCode = $$errorNode{$JSON_ERROR_CODE};
      }
      if ( exists $$errorNode{$JSON_ERROR_MESSAGE} ) {
         $jsonErrorMsg = $$errorNode{$JSON_ERROR_MESSAGE};
      }
      if ( exists $$errorNode{$JSON_ERROR_DATA} ) {
         $jsonErrorData = $$errorNode{$JSON_ERROR_DATA};
      }
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.Common.Json.JsonMsgDeserializer.ErrorMessage.JsonInvalidResponseException',
         args => [$jsonErrorCode, $jsonErrorData, $jsonErrorMsg]
      );
      throw JsonInvalidResponseException( $msg->str() );
   }
   else {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.Common.Json.JsonMsgDeserializer.UnexpectedResult.JsonInvalidResponseException',
         args => [$jsonResponse]
      );
      throw JsonInvalidResponseException( $msg->str() );
   }
}

#
# @method method_result_deserializer
# Deserialize the json response into JsonApiResponse object.
#
# @param result json response as string
#
# @return blessed object
#
sub method_result_deserializer {
   my (%args)       = @_;
   my $jsonResponse = $args{result};
   my $methodResult = new Com::Vmware::Vapi::Core::MethodResult();
   if (  exists $$jsonResponse{$RESULT_OUTPUT}
      && exists $$jsonResponse{$RESULT_ERROR} )
   {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.Common.Json.JsonMsgDeserializer.InvalidResult.Output.And.Error.JsonInvalidResponseException',
         args => [ JsonInvalidResponseException->description ]
      );
      throw JsonInvalidResponseException( $msg->str() );
   }
   elsif ( !exists $$jsonResponse{$RESULT_OUTPUT}
      && !exists $$jsonResponse{$RESULT_ERROR} )
   {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.Common.Json.JsonMsgDeserializer.InvalidResult.Neither.Output.Nor.Error.JsonInvalidResponseException',
         args => [ JsonInvalidResponseException->description ]
      );
      throw JsonInvalidResponseException( $msg->str() );
   }
   elsif ( exists $$jsonResponse{$RESULT_OUTPUT} ) {
      my $output    = $$jsonResponse{$RESULT_OUTPUT};
      my $dataValue = undef;
      if ( !defined($output) ) {

         # void result
         $dataValue = new Com::Vmware::Vapi::Data::Value::VoidValue();
      }
      else {
         $dataValue = data_value_deserializer( result => $output, output_type => $outputType );

      }
      $methodResult->set_output( output => $dataValue );
   }
   else {
      # error result
      my $errorValue = data_value_deserializer( result => $jsonResponse->{$RESULT_ERROR}, output_type => $errors );
      $methodResult->set_error( error => $errorValue );
   }
   return $methodResult;
}

#
# @method data_value_deserializer
# Deserialize the json response into data value object.
#
# @param result json response as string
# @param output_type output type
#
# @return data value object
#
sub data_value_deserializer {
   my (%args)       = @_;
   my $jsonResponse = $args{result};
   my $outputType   = $args{output_type};
   if ( !defined($jsonResponse) ) {
      return undef;
   }

   if ( UNIVERSAL::isa( $jsonResponse, "HASH" )
      && exists $jsonResponse->{Com::Vmware::Vapi::Data::Type::STRUCTURE} ) {
      #
      # Resolve the binding type if it is reference type
      #
      if ($outputType->isa('Com::Vmware::Vapi::Bindings::Type::ReferenceType')) {
         $outputType = $outputType->get_resolved_type();
      }
      
      if ( !$outputType->isa('Com::Vmware::Vapi::Bindings::Type::StructType') )
      {
         my $message_factory =
           Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
         my $msg = $message_factory->get_message(
            id => 'Com.Vmware.Vapi.Protocol.Common.Json.JsonMsgDeserializer.InvalidResult.UnexpectedStructure.JsonInvalidResponseException',
            args => [ JsonInvalidResponseException->description ]
         );
         throw JsonInvalidResponseException( $msg->str() );
      }

      my $structDictTmp = $$jsonResponse{Com::Vmware::Vapi::Data::Type::STRUCTURE};
      my $structDict = $structDictTmp;
      my @keys       = keys(%$structDict);
      my $structValue = new Com::Vmware::Vapi::Data::Value::StructValue( name => $keys[0] );
      my $structfieldsDict = $$structDict{ $keys[0] };
      while ( ( my $field, my $value ) = each(%$structfieldsDict) ) {
         my $outputType     = $$outputType{fields}{$field};
         
         my $fieldDataValue = data_value_deserializer( result => $value, output_type => $outputType );

         #log_framework(MSG => "Printing struct field and value");
         #log_framework(MSG => $field);
         #log_framework(MSG => $fieldDataValue);

         $structValue->set_field( field => $field, value => $fieldDataValue );
      }
      return $structValue;
   }

   if ( UNIVERSAL::isa( $jsonResponse, "HASH" )
      && exists $jsonResponse->{Com::Vmware::Vapi::Data::Type::ERROR} ) {
      my $structDict = $jsonResponse->{Com::Vmware::Vapi::Data::Type::ERROR};

      my @keys = keys(%$structDict);
      my $structValue = new Com::Vmware::Vapi::Data::Value::ErrorValue( name => $keys[0] );
      my $structfieldsDict = $structDict->{ $keys[0] };
      #
      #TODO:: when error types are not mentioned, we should populate automatically from the std error list
      #
      my $errorType = $outputType->{ $keys[0] };
      if ( defined $errorType ) {
         $errorType = $errorType->get_resolved_type();
      }
      else {
         my $package = Com::Vmware::Vapi::Util::Helper::get_package_name(
            'name' => $keys[0] );
         my $packageFile =
           Com::Vmware::Vapi::Util::Helper::get_package_file_path(
            'name' => $package );
         require "$packageFile";
         import $package;
         my $errorObj = $package->new();
         $errorType = $errorObj->get_binding_type();
      }
      $outputType = $errorType;
      while ( ( my $field, my $value ) = each(%$structfieldsDict) ) {
         my $outputType     = $outputType->{fields}{$field};
         my $fieldDataValue = data_value_deserializer( result => $value, output_type => $outputType );
         $structValue->set_field( field => $field, value => $fieldDataValue );
      }
      return $structValue;
   }

   #
   # This codition exist when the return type is dynamic structure. If so return the value as it is.
   #
   if (!defined $outputType)  {
      return new Com::Vmware::Vapi::Data::Value::StringValue(value => $jsonResponse ); 
   }
   
   if (
      ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::DateTimeType') )
   {
      return new Com::Vmware::Vapi::Data::Value::DateTimeValue(
         value => $jsonResponse );
   }

   if ( ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::URIType') ) {
      return new Com::Vmware::Vapi::Data::Value::URIValue(
         value => $jsonResponse );
   }

   if ( ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::OpaqueType') )
   {
      return new Com::Vmware::Vapi::Data::Value::OpaqueValue(
         value => $jsonResponse );
   }

   if ( ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::ListType') ) {
      my $inputList = $jsonResponse;
      my $listValue = new Com::Vmware::Vapi::Data::Value::ListValue();
      foreach my $item (@$inputList) {
         my $dataValue = data_value_deserializer(
            result     => $item,
            output_type => $outputType->{element_type}
         );

         #log_framework(MSG => "Printing datavalue");
         #log_framework(MSG => $dataValue);
         $listValue->add( value => $dataValue );

         #log_framework(MSG => "Printing listvalue");
         #log_framework(MSG => $listValue);

      }
      my $tmp = $listValue;
      return $tmp;
   }
   elsif (
      ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::StringType') )
   {
      return new Com::Vmware::Vapi::Data::Value::StringValue(
         value => $jsonResponse );
   }
   elsif (
      ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::LongType') )
   {
      return new Com::Vmware::Vapi::Data::Value::LongValue(
         value => $jsonResponse );
   }
   elsif (
      ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::BooleanType') )
   {
      return $jsonResponse == 1
        ? new Com::Vmware::Vapi::Data::Value::BooleanValue( value => 1 )
        : new Com::Vmware::Vapi::Data::Value::BooleanValue( value => 0 );
   }
   elsif (
      ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::DoubleType') )
   {
      return new Com::Vmware::Vapi::Data::Value::DoubleValue(
         value => $jsonResponse );
   }
   elsif (
      ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::ReferenceType')
     )
   {
      if (
         ref( $outputType->get_resolved_type() )
         ->isa('Com::Vmware::Vapi::Bindings::Type::EnumType') )
      {
         return new Com::Vmware::Vapi::Data::Value::StructureRefValue(
            value => $jsonResponse );
      }
   }
   elsif (ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::MapType')) {
   	  #
      # Map responses will be list of structures
      #
      my $dataValue = data_value_deserializer(
            result     => $jsonResponse,
            output_type => $outputType->get_binding_type()
         );
      
      return $dataValue;
   }
   elsif (ref($outputType)->isa('Com::Vmware::Vapi::Bindings::Type::SetType')) {
   	  #
      # Map responses will be list
      #
      my $dataValue = data_value_deserializer(
            result     => $jsonResponse,
            output_type => $outputType->get_binding_type()
         );
      
      return $dataValue;
   }
   #
   # TODO:: Revisit this condition
   #
   elsif ( !UNIVERSAL::isa( $jsonResponse, "HASH" ) ) {
      log_framework (MSG=>$jsonResponse);
      log_framework (MSG=>$outputType);

      #exit;

   }
   elsif ( exists $jsonResponse->{Com::Vmware::Vapi::Data::Type::BINARY} ) {

      # binary result
      my $blobBase64 = $jsonResponse->{Com::Vmware::Vapi::Data::Type::BINARY};
      my $blob       = decode_base64($blobBase64);
      return new Com::Vmware::Vapi::Data::Value::BlobValue( value => $blob );
   }
   elsif ( exists $jsonResponse->{Com::Vmware::Vapi::Data::Type::OPTIONAL} ) {

      #optional result
      my $optionalObj = $jsonResponse->{Com::Vmware::Vapi::Data::Type::OPTIONAL};
      my $optionalDataValue =
        Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgDeserializer::data_value_deserializer(
         result     => $optionalObj,
         output_type => $$outputType{element_type}
        );
      return new Com::Vmware::Vapi::Data::Value::OptionalValue(
         value => $optionalDataValue );
   }
   elsif ( exists $jsonResponse->{Com::Vmware::Vapi::Data::Type::SECRET} ) {

      # secret result
      my $secretValue = $jsonResponse->{Com::Vmware::Vapi::Data::Type::SECRET};
      my $secret      = $secretValue;
      return new Com::Vmware::Vapi::Data::Value::SecretValue(
         value => $secret );
   }

   # unknown data type encountered, log message and throw exception
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id =>
'Com.Vmware.Vapi.Protocol.Common.Json.JsonMsgDeserializer.ErrorMessage.JsonInvalidResponseException',
      args => [ref($outputType), $jsonResponse, 'Deserialization failed - Unknown data type encountered']
   );
   throw ExceptionBase( $msg->str() );
}

1;