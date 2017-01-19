########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file ErrorType.pm
# The file implements Error Type in Perl Binding.
#

package Com::Vmware::Vapi::Bindings::Type::ErrorType;

## @class ErrorType
# Representation of Error Type in Perl Binding
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Bindings::Type::StructType'.

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Bindings::Type::StructType);

## @method new
# Constructor to initialize the Error type object
#
# @param
# None.
#
# @return
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(%args);
   bless ($self, $class);
   return ($self);
}

1;