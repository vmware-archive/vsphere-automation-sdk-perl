####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file Constants.pm
# The file implements Constants perl module.
# @copy 2013, VMware Inc.
#

#
# @class Constants
# Constants for localization
#
package Com::Vmware::Vapi::l10n::Constants;

#
# Core Perl modules
#
use strict;
use warnings;
use Config;

#
# There is no standard string that can be used across platforms
# to specify english locale. So, based on the platform, we are setting it
# to the english locale string for that platform.
#
# Worst case if we don't have information for that platform, then we are
# defaulting to '' which will set locale to default locale for that
# environment. In that case, the messages generated might not be US english
# complaint.
#
use constant {
   MSWIN32  => 'C',
   LINUX => 'C',
   DARWIN => 'en_US',
};

my $osname = $Config{osname};
my $uc = uc($osname);
our $DEFAULT_LOCALE = Com::Vmware::Vapi::l10n::Constants->$uc;
# If the platform is not found, then return ''
if (!defined($DEFAULT_LOCALE)){
   $DEFAULT_LOCALE = '';
}

1;
