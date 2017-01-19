####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file SecurityContext.pm
# The file implements SecurityContext perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class SecurityContext
# Implementations of this interface will provide all needed data for authentication for the given invocation.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None
#
package Com::Vmware::Vapi::Core::SecurityContext;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

# Authentication Constants
our $AUTHENTICATION_DATA_ID   = "authn_data_id";
our $AUTHENTICATION_SCHEME_ID = "authn_scheme_id";
our $AUTHENTICATED            = "request_authenticated";

#
# @method new
# Constructor
#
# @param None
#
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   return bless( $self, $class );
}

#
# @method get_property
# Get a security context property under the specified key
#
# @param Key key of the required property
#
# @return the security context property under the specified key
#
# @par Side Effects: None
#
sub get_property {
}

#
# @method get_all_properties
# Get the complete hash representing all the properties
#
# @param None
#
# @return Hash representing all the properties
#
# @par Side Effects: None
#
sub get_all_properties {
}

1;
