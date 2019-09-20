####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file MirrorConstants.pm
# Mirror Constants file.
#
# @copy 2013, VMware Inc.
#

#
# @class MirrorConstants
# Contain constants related to the mirror services
#
package Com::Vmware::Vapi::Tests::Protocol::MirrorConstants;

# Constants

# Hard coded JSON string for Mirror Echo Service
our $JSON_ECHO_STRING = "{\"jsonrpc\":\"2.0\",\"id\":\"b83ed282-d4a2-4a2d-98f8-dcae21442d09\",\"method\":\"invokeMethod\",\"params\":{\"ctx\":{\"appCtx\":{\"opId\":\"f0a8ed5d-6ae5-4a26-892e-3e5bf9113a49\"}},\"methodIdentifier\":{\"name\":\"echo\",\"interfaceIdentifier\":{\"name\":\"com.vmware.vcsuite.provider.samples.mirror.mirror\"}},\"input\":{\"type\":9,\"name\":\"com.vmware.vcsuite.provider.samples.mirror.mirror.echo_input\",\"value\":{\"message\":{\"type\":5,\"value\":\"MirrorClient\"}}}}}";

# Hard coded JSON string for Mirror Sort Service
our $JSON_SORT_STRING = "{\"jsonrpc\":\"2.0\",\"id\":\"06114e57-fe34-409b-88b6-38d387c25fd4\",\"method\":\"invokeMethod\",\"params\":{\"ctx\":{\"appCtx\":{\"opId\":\"f8a2725f-e28b-4051-a79b-3306674f5c95\"}},\"methodIdentifier\":{\"name\":\"sort\",\"interfaceIdentifier\":{\"name\":\"com.vmware.vcsuite.provider.samples.mirror.mirror\"}},\"input\":{\"type\":9,\"name\":\"com.vmware.vcsuite.provider.samples.mirror.mirror.sort_input\",\"value\":{\"string\":{\"type\":8,\"value\":[{\"type\":5,\"value\":\"z\"},{\"type\":5,\"value\":\"k\"},{\"type\":5,\"value\":\"a\"},{\"type\":5,\"value\":\"y\"}]}}}}}";

# Accept header
our $ACCEPT_HEADER = "application/vnd.vmware.vapi.framed";

# Content type header
our $CONTENT_TYPE_HEADER = "application/json";

# POST Url
our $POST_URL = "http://localhost:7000/mirror";

1;
