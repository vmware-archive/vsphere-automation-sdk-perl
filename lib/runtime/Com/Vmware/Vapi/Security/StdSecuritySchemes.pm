####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file StdSecuritySchemes.pm
# StdSecuritySchemes constant file.
#
# @copy 2013, VMware Inc.
#

#
# @class StdSecuritySchemes
# This class contains the standard authentication scheme constants
#
package Com::Vmware::Vapi::Security::StdSecuritySchemes;

# Constants

# Protocol types
our $NO_AUTHN          = "com.vmware.vapi.std.security.no_authentication";
our $SESSION           = "com.vmware.vapi.std.security.session_id";
our $SAML_TOKEN        = "com.vmware.vapi.std.security.saml_hok_token";
our $SAML_BEARER_TOKEN = "com.vmware.vapi.std.security.saml_bearer_token";
our $USER_PASS         = "com.vmware.vapi.std.security.user_pass";

1;
