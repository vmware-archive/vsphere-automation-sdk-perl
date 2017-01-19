####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ChunkedTransferEncodingFrameDeserializer.pm
# The file implements ChunkedTransferEncodingFrameDeserializer perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class ChunkedTransferEncodingFrameDeserializer
#
# Frame deserializer which uses a format similar to HTTP chunked transfer encoding.
#
# The encoding of a single frame is [frame-length][CRLF][frame-payload][CRLF].
# The frame length is a non-empty sequence of hexadecimal digits which
# represents the number of bytes in the frame payload. The frame payload is
# binary data. CRLF is a carriage return (ASCII 13) followed by a line feed
# (ASCII 10).
#
package Com::Vmware::Vapi::Protocol::Common::Http::Impl::ChunkedTransferEncodingFrameDeserializer;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Protocol::Common::Http::IFrameDeserializer;
use Com::Vmware::Vapi::Protocol::Common::Http::Impl::FixedLengthFieldDeserializer;
use Com::Vmware::Vapi::Protocol::Common::Http::Impl::LengthFieldDeserializer;
use Com::Vmware::Vapi::l10n::Runtime;

# Variable declaration
my ( $length, $payload, $fixedLengthFieldDeserializer, $lengthDeserializer );

# Don't deserialize frames larger than 4GB.
# Length of 4GB ~ 32 binary digits ~ 8 hex digits
our $MAX_HEX_DIGITS_IN_LEN_FIELD = 8;

#
# @method read_frame
# Deserializes a binary frame from a stream
#
# @param binary_input - Com::Vmware::Vapi::Protocol::Common::Http::BinaryInput object
#
# @return frame payload; can be null when there are no more frames to read from the stream
#
sub read_frame {
   my ( $self, %args ) = @_;
   my $binaryInput = $args{'binary_input'};
   my $result      = undef;
   my $enoughData  = 1;                      # 1 - TRUE; 0 - FALSE

   while ( $enoughData && $result == undef ) {

      # Initial state. First field is length.
      $enoughData = at_length($binaryInput);

      # After length comes the data field.
      $enoughData = at_data($binaryInput);

      # After the data field must be a '\r'.
      $enoughData = at_cr($binaryInput);

      # After '\r' must come a '\n'.
      $enoughData = at_lf($binaryInput);

      # Final state. A whole frame is ready.
      $result = $payload;
   }

   if ( $result != undef ) {
      $length  = -1;
      $payload = undef;
   }

   return $result;
}

#
# @method at_length
# Length field deserializer
#
# @param binary_input - Com::Vmware::Vapi::Protocol::Common::Http::BinaryInput object
# @return 1 if function executed successfully, 0 otherwise
#
sub at_length {
   my ( $self, %args ) = @_;
   my $binaryInput = $args{'binary_input'};

   if ( $lengthDeserializer == undef ) {
      $lengthDeserializer =
        Com::Vmware::Vapi::Protocol::Common::Http::Impl::LengthFieldDeserializer
        ->new($MAX_HEX_DIGITS_IN_LEN_FIELD);
   }

   my $len = $lengthDeserializer->read($binaryInput);
   if ( $len == undef ) {
      return 0;
   }

   $lengthDeserializer = undef;
   $length             = $len;

   return 1;
}

#
# @method at_data
# Fixed length field deserializer
#
# @param binary_input - Com::Vmware::Vapi::Protocol::Common::Http::BinaryInput object
# @return 1 if function executed successfully, 0 otherwise
#
sub at_data {
   my ( $self, %args ) = @_;
   my $binaryInput = $args{'binary_input'};
   if ( $fixedLengthFieldDeserializer == undef ) {
      $fixedLengthFieldDeserializer =
        Com::Vmware::Vapi::Protocol::Common::Http::Impl::FixedLengthFieldDeserializer
        ->new($length);
   }

   my $frame = $fixedLengthFieldDeserializer->read($binaryInput);
   if ( $frame == undef ) {
      return 0;
   }
   $fixedLengthFieldDeserializer = undef;
   $payload                      = $frame;
   return 1;
}

#
# @method at_cr
# Keeps a check on carriage-return '\r'
#
# @param binary_input - Com::Vmware::Vapi::Protocol::Common::Http::BinaryInput object
# @return 1 if function executed successfully, 0 otherwise
#
sub at_cr {
   my ( $self, %args ) = @_;
   my $binaryInput = $args{'binary_input'};

   my $buffer = $binaryInput->read();
   if ( $buffer == $BinaryInput::NO_DATA_TEMPORARY ) {
      return 0;
   }
   if ( $buffer == $BinaryInput::NO_DATA_PERMANENT ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.ChunkedTransferEncodingFrameDeserializer.IOException',
         args => [ IOException->description ]
      );
      throw IOException( $msg->str() );
   }
   if ( $buffer != '\r' ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.ChunkedTransferEncodingFrameDeserializer.CarriageReturn.IOException',
         args => [$buffer]
      );
      throw IOException( $msg->str() );
   }

   return 1;
}

#
# @method at_lf
# Kepps a check on line=feed '\n'
#
# @param binary_input - Com::Vmware::Vapi::Protocol::Common::Http::BinaryInput object
# @return 1 if function executed successfully, 0 otherwise
#
sub at_lf {
   my ( $self, %args ) = @_;
   my $binaryInput = $args{'binary_input'};

   my $buffer = $binaryInput->read();
   if ( $buffer == $BinaryInput::NO_DATA_TEMPORARY ) {
      return 0;
   }
   if ( $buffer == $BinaryInput::NO_DATA_PERMANENT ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.ChunkedTransferEncodingFrameDeserializer.IOException',
         args => [ IOException->description ]
      );
      throw IOException( $msg->str() );
   }
   if ( $buffer != '\n' ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.ChunkedTransferEncodingFrameDeserializer.LineFeed.IOException',
         args => [$buffer]
      );
      throw IOException( $msg->str() );
   }

   return 1;
}

1;
