#
# Copyright 2006,2016,2017 VMware, Inc.  All rights reserved.
#

# This module is a 'link' of sort to the latest version of API / runtime toolkit supports.
# Using this module instead of referencing a specific version of runtime modules has a
# potential of breaking existing scripts when toolkit installation is upgraded.


use 5.006001;
use strict;
use warnings;

require VMware::VILib;
require VMware::VICommon;
require VMware::LookupService;

package VMware::VIRuntime;

our $VERSION = '6.7.0';

1;
