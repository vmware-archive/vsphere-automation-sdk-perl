####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file InputStreamBinaryInput.pm
# The file implements InputStreamBinaryInput perl module.
#
# @copy 2013, VMware Inc.

#
# @class InputStreamBinaryInput
#
# Handle to an input source, which wraps an InputStream.
# Logically this handle represents the complete input source. When the
# underlying stream is depleted, the handle would return
# BinaryInput->NO_DATA_PERMANENT. Because the underlying I/O API is
# blocking, this handle will never return BinaryInput->NO_DATA_TEMPORARY
# but will block waiting for more data.
#
package Com::Vmware::Vapi::Protocol::Common::Http::Impl::InputStreamBinaryInput;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Protocol::Common::Http::BinaryInput;

#
# @method new
# Constructor
#
# @param input_stream - input stream
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   $self->{'input_stream'} = $args{'input_stream'};

   return bless( $self, $class );
}

#
# @method read
# Reads a sequence of bytes from the input source.
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
   my ( $self, %args ) = @_;
   my $buffer        = $args{'buffer'};
   my $startPosition = $args{'start_position'};
   my $length        = $args{'length'};

   if ( $buffer != undef && $startPosition != undef && $length != undef ) {
      return read( INPUTSTREAM, $buffer, $length, $startPosition );
   }
   elsif ( $buffer != undef && $length != undef ) {
      return read( INPUTSTREAM, $buffer, $length );
   }
}

1;
