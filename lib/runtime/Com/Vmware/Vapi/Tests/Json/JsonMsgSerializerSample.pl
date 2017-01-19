####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JsonMsgSerializerSample.pm
# The Sample file implements JsonMsgSerializer for vAPI data type.
#
# @copy 2013, VMware Inc.
#
# This Sample is used for serializing vAPI data type and convert it into json string.
#

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Data::Value::StringValue;
use Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgSerializer;
use Com::Vmware::Vapi::Data::Value::StructValue;
use Com::Vmware::Vapi::Data::Value::ListValue;

####################################################################################################
# This part of Sample is used for serializing vAPI String data type and convert it into json string.
####################################################################################################

log_info( MSG =>
"\n#################################################################################################\nThis part of Sample is used for serializing vAPI String data type and convert it into json string\n#################################################################################################\n"
);
my $vAPIStringObject =
  new Com::Vmware::Vapi::Data::Value::StringValue( Value => "StringTypeValue" );
log_info( MSG => "vAPI Request Object: \n" . $vAPIStringObject );

my $json_Txt =
  Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgSerializer::serialize(
   RequestObject => $vAPIStringObject );
log_info(
   MSG => "\nConvert vAPI String data type to Json: \n" . $json_Txt . "\n" );

####################################################################################################
# This part of Sample is used for serializing vAPI Struct data type and convert it into json string.
####################################################################################################

log_info( MSG =>
"\n#################################################################################################\nThis part of Sample is used for serializing vAPI Struct data type and convert it into json string\n#################################################################################################\n"
);
my $vAPIStringObj =
  new Com::Vmware::Vapi::Data::Value::StringValue( Value => $vAPIStringObject );
$vAPIStructObject1 =
  new Com::Vmware::Vapi::Data::Value::StructValue( Value => $vAPIStringObj );
$vAPIStructObject2 =
  new Com::Vmware::Vapi::Data::Value::StructValue(
   Value => $vAPIStructObject1 );
my $vAPIStringOb =
  new Com::Vmware::Vapi::Data::Value::StringValue(
   Value => $vAPIStructObject2 );
$vAPIStructObject3 =
  new Com::Vmware::Vapi::Data::Value::StructValue( Value => $vAPIStringOb );

$json_Txt =
  Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgSerializer::serialize(
   RequestObject => $vAPIStructObject3 );
log_info( MSG => "\nConvert vAPI Struct data type to Json: \n" . $json_Txt );

####################################################################################################
# This part of Sample is used for serializing vAPI List data type and convert it into json string.
####################################################################################################

log_info( MSG =>
"\n#################################################################################################\nThis part of Sample is used for serializing vAPI List data type and convert it into json string\n#################################################################################################\n"
);
my $vAPIListObj = new Com::Vmware::Vapi::Data::Value::ListValue();
$vAPIListObj->Add( Value => 2 );
$vAPIListObj->Add( Value => 'stringValue' );
$vAPIListObj->Add( Value => $vAPIStringObject );
my $vAPIStringObject4 =
  new Com::Vmware::Vapi::Data::Value::StringValue( Value => $vAPIListObj );

$json_Txt =
  Com::Vmware::Vapi::Protocol::Common::Json::JsonMsgSerializer::serialize(
   RequestObject => $vAPIStringObject4 );
log_info( MSG => "\nConvert vAPI List data type to Json: \n" . $json_Txt );
