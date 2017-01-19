####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file FixedLengthFieldDeserializer.pm
# The file implements FixedLengthFieldDeserializer perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class FixedLengthFieldDeserializer
#
# A deserializer which reads a single fixed-length data field.
#
package Com::Vmware::Vapi::Protocol::Common::Http::Impl::FixedLengthFieldDeserializer;

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

#
# @method new
# Constructor
#
# @param length - maximum number of bytes to be read
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   $self->{'length'} = $args{'length'};

   if ( $self->{'length'} < 0 ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.FixedLengthFieldDeserializer.InvalidParameter',
         args => [ InvalidParameter->description ]
      );
      throw InvalidParameter( $msg->str() );
   }

   $self->{'capacity'}    = $self->{'length'};
   $self->{'data'}        = $self->{'capacity'};
   $self->{'current_size'} = 0;
   $self->{'done'}        = 0;                     # 1 - TRUE; 0 - FALSE

   return bless( $self, $class );
}

#
# @method read
# Reads a fixed-length field from an input handle. Should not call this
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

   if ( $self->{'done'} ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.FixedLengthFieldDeserializer.IllegalStateException',
         args => [ IllegalStateException->description ]
      );
      throw IllegalStateException( $msg->str() );
   }

   for ( ; ; ) {
      my $off       = $self->{'current_size'};
      my $remaining = $self->{'capacity'} - $self->{'current_size'};
      my $readCount = $binaryInput->read( $self->{'data'}, $off, $remaining );

      if ( $readCount == $BinaryInput::NO_DATA_TEMPORARY ) {
         print $BinaryInput::NO_DATA_TEMPORARY;
         return undef;
      }
      if ( $readCount == $BinaryInput::NO_DATA_PERMANENT ) {
         my $message_factory =
           Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
         my $msg = $message_factory->get_message(
            id =>
'Com.Vmware.Vapi.Protocol.Common.Http.Impl.FixedLengthFieldDeserializer.IOException',
            args =>
              [ IOException->description . $BinaryInput::NO_DATA_PERMANENT ]
         );
         throw IOException( $msg->str() );
      }
      if ( $readCount == $remaining ) {
         $self->{'done'} = 1;
         return $self->{'data'};
      }

      $self->{'current_size'} = $self->{'current_size'} + $readCount;
   }
}

1;
