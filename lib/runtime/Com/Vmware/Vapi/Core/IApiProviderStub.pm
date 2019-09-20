########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file IApiProviderStub.pm
# The file implements interface for generated stubs.
#

## @class Com::Vmware::Vapi::Core::IApiProviderStub
# A blend of synchronous and asynchronous provider interfaces.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.
package Com::Vmware::Vapi::Core::IApiProviderStub;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use base qw(Com::Vmware::Vapi::Core::IApiProvider);

# @method new
# Constructor to initialize the Api provider stub Interface instance
#
# @return
# Blessed object
sub new
{
   my ($class) = @_;
   my $self  = $class->SUPER::new();
   bless ($self, $class);
   return ($self);
}

1;
