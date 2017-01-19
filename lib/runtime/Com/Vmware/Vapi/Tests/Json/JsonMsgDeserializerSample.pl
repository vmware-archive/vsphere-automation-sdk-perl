####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonMsgDeserializerSample.pm
# The Sample file implements JsonMsgDeserializerSample for vAPI data value.
#
# @copy 2013, VMware Inc.
#
# This Sample is used for Deserializing json resonse and convert it into vAPI data value.
#

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgDeserializer;
use Com::Vmware::Vapi::Data::Value::StringValue;
use Com::Vmware::Vapi::Data::Value::StructValue;
use Com::Vmware::Vapi::Data::Value::ListValue;

####################################################################################################
# This part of Sample is used for Deserializing json response and convert it into vAPI data value.
####################################################################################################
log_info( MSG =>
"\n#################################################################################################\nThis part of Sample is used for Deserializing json response and convert it into vAPI data value.\n#################################################################################################\n"
);
my $json_Txt =
"{\"jsonrpc\":\"2.0\",\"id\":\"3a091726-4a44-490a-a8b7-6cd9942d24d0\",\"result\":{\"output\":{\"value\":{\"value\":[2,\"stringValue\",{\"value\":\"StringTypeValue\",\"type\":\"String\"},[1,2,{\"value\":\"StringTypeValue\",\"type\":\"String\"},[{\"fields\":null,\"type\":\"Structure\"},1,2,{\"value\":\"StringTypeValue\",\"type\":\"String\"}]]],\"type\":\"List\"},\"type\":\"String\"}}}";
my $jsonAPIResponseObject =
  Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgDeserializer::responseDeserialize(
   JsonResponse    => $json_Txt,
   JsonRequestType => 'invokeMethod'
  );
$vAPIDataValueObject = $jsonAPIResponseObject->getResult()->getOutput();
log_dumper( MSG => $vAPIDataValueObject );

