####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ProtocolConstants.pm
# Protocol Constants file.
#
# @copy 2013, VMware Inc.
#

#
# @class ProtocolConstants
# Contain constants related to the transport protocol
#
package Com::Vmware::Vapi::Protocol::ProtocolConstants;

# Constants

# Protocol types
our $PROTOCOL_TYPE_HTTP = "http";
our $PROTOCOL_TYPE_HTTPS = "https";
our $PROTOCOL_TYPE_AMQP = "amqp";

1;
