########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file OpaqueType.pm
# The file implements Opaque Type in Perl Binding.
#

package Com::Vmware::Vapi::Bindings::Type::OpaqueType;

## @class OpaqueType
# Representation of Opaque Type in Perl Binding
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Bindings::Type::BindingType'.

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Bindings::Type::BindingType);

## @method new
# Constructor to initialize the Opaque type object
#
# @param
# None.
#
# @return
# Blessed object
#
sub new {
   my $class = shift;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   bless ($self, $class);
   return ($self);
}

1;