####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonApiProvider.pm
# The file implements JsonApiProvider perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonApiProvider
# JSON Client side ApiProvider implementation. This class is used for creating complete payload form of json request
#
package Com::Vmware::Vapi::Protocol::Client::Msg::JsonApiProvider;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_debug log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Core::IApiProvider);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Protocol::Common::Json::JsonInvokeRequestParams;
use Com::Vmware::Vapi::Protocol::Common::Json::JsonApiRequest;
use Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgDeserializer;
use Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgSerializer;
use Com::Vmware::Vapi::Protocol::Common::Http::Constants::HttpConstants;

#
# Perl CPAN module
#
use JSON::PP;
use UUID::Random;
     
my ( $_config, $_client );

#
# @method new
# Constructor
#
# @param client Instance of RpcClient to send/receive requests/responses
# @param config The messaging client configuration object. can be null.
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = $class->SUPER::new();
   $self->{json_deserializer} =
     new Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgDeserializer();
   $_config = $args{config};
   $_client = $args{client};

   bless( $self, $class );
   return ($self);
}

#
# @method invoke
# Deserialize the json response into vAPI data object.
#
# @param service_id method identifier which has a fully-qualified method name
# @param operation_id method name
# @param ctx Execution Context
# @param input Input parameters for method to be invoked
#
# @return jsonApiRequest Returns the JsonApiRequest object
#
sub invoke {
   my ( $self, %args ) = @_;
   my $serviceId   = $args{service_id};
   my $operationId = $args{operation_id};
   my $ctx         = $args{ctx};
   my $input       = $args{input};
   my $jsonInvokeRequestParams =
     new Com::Vmware::Vapi::Protocol::Common::Json::JsonInvokeRequestParams(
      service_id   => $serviceId,
      operation_id => $operationId,
      ctx         => $ctx,
      input       => $input
     );
   my $uuid = _generate_uuid();
   my $jsonApiRequest =
     new Com::Vmware::Vapi::Protocol::Common::Json::JsonApiRequest(
      id            => $uuid,
      request_params => $jsonInvokeRequestParams
     );
   my $securityCtx = $ctx->retrieve_security_context();
   if (defined ($securityCtx) && !$securityCtx->isa('Com::Vmware::Vapi::Dsig::Json::JsonSessionProcessor')) {   	
	   my $signingProcessor = $securityCtx->get_signing_processor();	   
	   if ($signingProcessor->should_sign_request() eq 1) {
		   my $jStr = Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgSerializer::serialize(
		                request_object => $jsonApiRequest);
		   my $signature = $signingProcessor->sign_request('json_request' => $jStr);
		   $securityCtx->get_signature_struct()->set_value (value => $signature);
	   }
   }
   log_debug(MSG => "Sending the ApiRequest request.."); 
   $self->_send_request( json_request_obj => $jsonApiRequest );
}

#
# @method _generate_uuid
# Method to generate randon UUID to be used in JSON-RPC 2.0 requests.
#
# @param None
#
# @return Random UUID
#
sub _generate_uuid {
   my $uuid = UUID::Random::generate;
   return $uuid;
}

#
# @method _send_request
# Helper method to send request to the underlying HTTP/AMQP RPC layer.
#
# @param json_request_obj  JSON-RPC 2.0 request to be sent
#
# @return decodedResponse Json Response
#
sub _send_request {
   my ($self, %args) = @_;
   my $jsonRequestObject = $args{json_request_obj};
   my $jsonRequestString =
     Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgSerializer::serialize(
      request_object => $jsonRequestObject );
   my $httpResponse = $_client->invoke( content => $jsonRequestString );
   log_debug(MSG => "Decoding the HTTP::Response response..");
   my $decodedResponse = $httpResponse->decoded_content();
   log_dumper(MSG => "Decoding response completed.");
   log_dumper( MSG => $decodedResponse );
   return $decodedResponse;
}

#
# @method received
# Helper method to receive response the underlying HTTP/AMQP RPC layer.
#
# @param json_request_obj  JSON-RPC 2.0 request to be sent
#
# @return decodedResponse Json Response
#
sub received {
   my ( $self, %args ) = @_;
   my $jsonResponse = $args{json_response};
   my $outputType = $args{output_type};
   my $errors = $args{errors};
   my $progress;
   my $jsonObj = $self->{json_deserializer}->deserialize(
      json_response   => $jsonResponse,
      output_type => $outputType,
      errors => $errors
   );
   if (
      ref($jsonObj) eq
      'Com::Vmware::Vapi::Protocol::Common::Json::JsonProgressResponse' )
   {
      $progress = $jsonObj->retrieve_progress();
      return $progress;
   }
   else {
      return $jsonObj->get_result();
   }
}

1;
