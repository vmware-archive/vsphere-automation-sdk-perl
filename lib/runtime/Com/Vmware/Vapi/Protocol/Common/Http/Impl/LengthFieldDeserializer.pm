####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file LengthFieldDeserializer.pm
# The file implements LengthFieldDeserializer perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class LengthFieldDeserializer
#
# A deserializer which reads a single length field. The length field is encoded
# as an ASCII string of hex digits which ends with a CRLF.
#
package Com::Vmware::Vapi::Protocol::Common::Http::Impl::LengthFieldDeserializer;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Protocol::Common::Http::BinaryInput;
use Com::Vmware::Vapi::l10n::Runtime;

# Whether '\r' has been read for the current length field
my $expectLf;

# Hex radix as a number
our $HEX_RADIX = 16;

#
# @method new
# Constructor
#
# @param max_allowed_hex_digits - maximum number of bytes to be read
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   if ( $args{'max_allowed_hex_digits'} < 0 ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.LengthFieldDeserializer.InvalidParameter',
         args => ['max_allowed_hex_digits']
      );
      throw InvalidParameter( $msg->str() );
   }

   $self->{'max_allowed_hex_digits'} = $args{'max_allowed_hex_digits'};
   $self->{'hex_digits'} = ();    # Blank array for storing output bytes

   my @arr = $self->{'hex_digits'};
   my $l   = $#arr + 1;

   $self->{'done'} = 0;          # 1 - TRUE; 0 - FALSE

   return bless( $self, $class );
}

#
# @method read
# Reads a length field from an input handle. Should not call this
# method after it returns a non-null value, because the deserializer can be
# used only for a single field.
#
# @param binary_input - Com::Vmware::Vapi::Protocol::Common::Http::BinaryInput object
#
# @return the whole field or null, if there is not enough data to construct a whole field
#
sub read {
   my ( $self, %args ) = @_;
   my $binaryInput = $args{'binary_input'};

   my @arr = $self->{'hex_digits'};
   if ( $self->{'done'} ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.LengthFieldDeserializer.IllegalStateException',
         args => [ IllegalStateException->description ]
      );
      throw IllegalStateException( $msg->str() );
   }

   my $result = undef;
   while ( $result == undef ) {
      my $buffer = $binaryInput->read();

      if ( $buffer == $BinaryInput::NO_DATA_TEMPORARY ) {
         print $BinaryInput::NO_DATA_TEMPORARY;
         last;
      }
      if ( $buffer == $BinaryInput::NO_DATA_PERMANENT ) {

         if ( ( $#arr + 1 ) == 0 ) {
            print $BinaryInput::NO_DATA_PERMANENT;

            # no more frames
            $self->{'done'} = 1;
            last;
         }
         else {
            my $message_factory =
              Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
            my $msg = $message_factory->get_message(
               id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.LengthFieldDeserializer.IOException',
               args => [ IOException->description ]
            );
            throw IOException( $msg->str() );
         }
      }

      if ($expectLf) {
         _assert_lf($buffer);
         $expectLf       = 0;
         $result         = _parse_hex( $self->{'hex_digits'} );
         $self->{'done'} = 1;
      }
      elsif ( $buffer == '\r' ) {
         if ( ( $#arr + 1 ) > 0 ) {
            $expectLf = 1;
         }
         else {
            my $message_factory =
              Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
            my $msg = $message_factory->get_message(
               id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.LengthFieldDeserializer.LengthField.IOException',
               args => [ IOException->description ]
            );
            throw IOException( $msg->str() );
         }
      }
      else {
         _assert_hex_digit($buffer);
         $self->{'hex_digits'} = $buffer;
      }
   }

   return $result;
}

#
# @method _assert_lf
# [PRIVATE-METHOD] Asserts line-feed
#
# @param buffer - input buffer
# @return None
#
sub _assert_lf {
   my ( $self, %args ) = @_;
   my $buffer = $args{'buffer'};

   if ( $buffer != '\n' ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.LengthFieldDeserializer.LengthField.LineFeed.IOException',
         args => [$buffer]
      );
      throw IOException( $msg->str() );
   }
}

#
# @method _assert_hex_digit
# [PRIVATE-METHOD] Asserts Hex-digit
#
# @param buffer - input buffer
# @return None
#
sub _assert_hex_digit {
   my ( $self, %args ) = @_;
   my $buffer = $args{'buffer'};

   my @arr = $self->{'hex_digits'};
   if ( !_is_hex_digit($buffer) ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.LengthFieldDeserializer.LengthField.HexDigit.IOException',
         args => [$buffer]
      );
      throw IOException( $msg->str() );
   }

   if ( ( $#arr + 1 ) > $self->{'max_allowed_hex_digits'} ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.LengthFieldDeserializer.LengthField.MaxAllowedHexDigits.IOException',
         args => [ $self->{'max_allowed_hex_digits'} ]
      );
      throw IOException( $msg->str() );
   }
}

#
# @method _parse_hex
# [PRIVATE-METHOD] Parses Hex
#
# @param asci_hex - byte array of ASCI Hex
# @return None
#
sub _parse_hex {
   my ( $self, %args ) = @_;

   # NEEDS TO BE IMPLEMENTED LATER, IF REQUIRED...
   # CPAN module Math::BaseCalc performs this operation
}

#
# @method _is_hex_digit
# [PRIVATE-METHOD] Checks whether an input character is HexDigit or not
#
# @param character - input character that needs to be checked
# @return 1 if character is HexDigit, 0 otherwise
#
sub _is_hex_digit {
   my ( $self, %args ) = @_;
   my $character = $args{'character'};

   if ( '0' <= $character && $character <= '9' ) {
      return 1;
   }
   if ( 'a' <= $character && $character <= 'f' ) {
      return 1;
   }
   if ( 'A' <= $character && $character <= 'F' ) {
      return 1;
   }

   return 0;
}

1;
