########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file VapiTypeVisitor.pm
# The file implements the data classes for visitors.
#
# @copy 2013, VMware Inc.
#

#
# @class VapiTypeVisitor
# Defines the vAPI type visitors for vAPI structures
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Protocol::Common::Json::Visitor'.
package Com::Vmware::Vapi::Protocol::Common::Json::VapiTypeVisitor;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Protocol::Common::Json::Visitor);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::l10n::Runtime;

#
# @method new
# Constructor to initialize the vAPIType visitor
#
# @param
# None.
#
# @return
# Blessed object
#
sub new {
   my $class = shift;
   my $self  = $class->SUPER::new();
   bless( $self, $class );
   return ($self);
}

#
# @method visit_structvalue_serializer
# Visit a StructValue
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_structvalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

#
# @method visit_stringvalue_serializer
# Visit a StringValue
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_stringvalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

#
# @method visit_listvalue_serializer
# Visit a ListValue
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_listvalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

#
# @method visit_longvalue_serializer
# Visit a Long Value
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_longvalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

#
# @method visit_booleanvalue_serializer
# Visit a Boolean Value
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_booleanvalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

#
# @method visit_doublevalue_serializer
# Visit a Double Value
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_doublevalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

#
# @method visit_optionalvalue_serializer
# Visit a Optional Value
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_optionalvalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

#
# @method visit_voidvalue_serializer
# Visit a Void Value
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_voidvalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

#
# @method visit_urivalue_serializer
# Visit a URI Value
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_urivalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

#
# @method visit_secretvalue_serializer
# Visit a Secret Value
#
# @return
# Returns the result as serialized data.
#
# @par Side Effects:
# None
#
sub visit_secretvalue_serializer {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id => 'Com.Vmware.Vapi.Protocol.Common.Json.VapiTypeVisitor.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

1;
