####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file HttpConstants.pm
# Http transport protocol related constants file.
#
# @copy 2013, VMware Inc.
#

#
# @class HttpConstants
# Contain constants related to the Http transport protocol
#
package Com::Vmware::Vapi::Protocol::Common::Http::Constants::HttpConstants;

# Constants initialization

# Headers
our $HEADER_ACCEPT       = "application/vnd.vmware.vapi.framed";
our $HEADER_CONTENT_TYPE = "application/json";

# Protocol types
our $PROTOCOL_TYPE_HTTP  = "http";
our $PROTOCOL_TYPE_HTTPS = "https";    #TODO: Not implemented yet
our $PROTOCOL_TYPE_AMQP  = "amqp";     #TODO: Not implemented yet

1;
