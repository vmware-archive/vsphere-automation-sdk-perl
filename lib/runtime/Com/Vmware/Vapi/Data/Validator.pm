########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file Validator.pm
# The file implements interface for generated stubs.
#

package Com::Vmware::Vapi::Data::Validator;

## @class Validator
# vAPI Data object validator class
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.

#
# Core Perl modules
#
use strict;
use warnings;
use Exception::Class;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
    qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::l10n::Runtime;

# @method new
# Constructor to initialize the Validator object
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   bless( $self, $class );
   return ($self);
}

# @method validate
# This method validates a data value
# @param data_value :class:`vmware.vapi.data.value.DataValue`
#:param data_value The struct value that needs to be validated
# @param type data_type :class:`vmware.vapi.binding.type.BindingType`
# @param param data_type The Struct binding type
#
# @return rtype: :class:`list` of :class:`vmware.vapi.message.Message` or ``None``
# @return return List of error messages if validation fails or None
#
# @par Side Effects:
# None
#
sub validate {
   my ($self, %args) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2, length($subroutinePath);
   my $message_factory = Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id   => 'Com.Vmware.Vapi.Data.Validator.MethodNameNotFound',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
   return;
}

1;
