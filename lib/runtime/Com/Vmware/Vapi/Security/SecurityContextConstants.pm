####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file SecurityContextConstants.pm
# The file implements SecurityContextConstants perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class SecurityContextConstants
# This class contains constants related to the Com::Vmware::Vapi::Core::SecurityContext
#
package Com::Vmware::Vapi::Security::SecurityContextConstants;

# Constants

# Protocol types
our $SAML_TOKEN_KEY = "samlToken";
our $SIGNATURE_KEY  = "signature";
our $SIG_ALG_KEY    = "alg";
our $SIG_VALUE_KEY  = "value";
our $SCHEME_ID_KEY  = "schemeId";
our $TIMESTAMP_KEY  = "timestamp";
our $TS_CREATED_KEY = "created";
our $TS_EXPIRES_KEY = "expires";
our $TS_DEF_OFFSET  = 10;            # minutes

1;
