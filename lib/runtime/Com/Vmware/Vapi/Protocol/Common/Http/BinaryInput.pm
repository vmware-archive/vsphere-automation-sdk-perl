####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file BinaryInput.pm
# The file implements BinaryInput perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class BinaryInput
# [ABSTRACT class with 1 ABSTRACT method - read()]
# Handle to an input source of binary data. The handle could represent the
# whole input source or just a piece of it (i.e. the input source could be
# represented by a sequence of input handles).
#
# There are two final states of an input handle - NO_DATA_TEMPORARY and NO_DATA_PERMANENT.
# NO_DATA_TEMPORARY means that the current handle is exhausted
# but the input source might produce more data in the future.
# This new data would be represented by new input handles.
# NO_DATA_PERMANENT means that the input source is permanently exhausted.
# There would be no more input handles for this input source.
#
package Com::Vmware::Vapi::Protocol::Common::Http::BinaryInput;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::l10n::Runtime;

# Variable declaration

# Data source is depleted temporarily. More data might be available in the future.
our $NO_DATA_TEMPORARY = -2;

# Data source is depleted permanently. No more data will ever be received
# from this source in the future.
our $NO_DATA_PERMANENT = -1;

# Conatain method names in this interface
my @inheritors;
my @abstractMethods = qw(read);

#
# @method import
# Tracks the caller
#
# @param None
# @return None
#
sub import {
   my $caller = caller();
   push @inheritors, $caller;
}

#
# @method init
# To keep a check if all the methods are being defined by the class
# that implements this interface
#
# @param None
# @return None
#
sub init {
   foreach my $class (@inheritors) {
      foreach my $method (@abstractMethods) {
         unless ( defined &{"${class}::$method"} ) {
            my $message_factory =
              Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
            my $msg = $message_factory->get_message(
               id => 'Com.Vmware.Vapi.Protocol.Common.Http.BinaryInput.MethodNotImplemented',
               args => [$class, $method]
            );
            throw MethodNotImplemented( $msg->str() );
         }
      }
   }
}

#
# @method read
# [ABSTRACT METHOD] Reads a sequence of bytes from the input source.
#
# @param buffer - buffer where to store the bytes
# @param start_position - [OPTIONAL] starting location in the buffer
# @param length - maximum number of bytes to be read
#
# @return the number of bytes (a non-negative number; could be smaller than even zero)
# or NO_DATA_TEMPORARY if the source is temporarily depleted or NO_DATA_PERMANENT
# if the source is permanently depleted
#
sub read {
}

1;
