####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file JasonConstants.pm
# The file implements JasonConstants perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class JsonConstants
# Class defining all the constants used by the JSON msg layer.
#
package Com::Vmware::Vapi::Protocol::Common::Json::JsonConstants;

#
# Core Perl modules
#
use strict;
use warnings;

#
# @method new
# Constructor
#
sub new {
}

# JSON-RPC constants
our $FIELD_JSONRPC    = "jsonrpc";
our $JSON_RPC_VERSION = "2.0";

# JSON Request constants
our $FIELD_SERVICE_ID   = "serviceId";
our $FIELD_OPERATION_ID = "operationId";
our $FIELD_ID           = "id";
our $FIELD_METHOD       = "method";
our $FIELD_PARAMS       = "params";
our $CONTEXT            = "ctx";
our $APP_CTX            = "appCtx";
our $SEC_CTX            = "securityCtx";
our $INPUT              = "input";

# JSON Response constants
our $FIELD_RESULT = "result";
our $FIELD_ERROR  = "error";

# MethodIdentifier constants
our $METHOD_IDENTIFIER_NAME      = "name";
our $METHOD_IDENTIFIER_INTERFACE = "interfaceIdentifier";

# MethodDefinition constants
our $METHOD_DEFINITION_IDENTIFIER = "id";
our $METHOD_DEFINITION_INPUT      = "inputDefinition";
our $METHOD_DEFINITION_OUTPUT     = "outputDefinition";
our $METHOD_DEFINITION_ERRORS     = "errors";

# InterfaceIdentifier constants
our $INTERFACE_IDENTIFIER_NAME = "name";

# InterfaceDefinition constants
our $INTERFACE_DEFINITION_IDENTIFIER = "id";
our $INTERFACE_DEFINITION_METHODIDEN = "methodIdentifiers";

# ProviderDefinition constants
our $PROVIDER_DEFINITION_IDENTIFIER = "id";

#
# @method constant
# Type of request
#
use constant {
   GETDEFINITION           => 'getDefinition',
   GETMETHODIDENTIFIERS    => 'getMethodIdentifiers',
   GETINTERFACEIDENTIFIERS => 'getInterfaceIdentifiers',
   GETMETHODS              => 'getMethods',
   GETINTERFACES           => 'getInterfaces',
   INVOKE                  => 'invoke',
};

1;
