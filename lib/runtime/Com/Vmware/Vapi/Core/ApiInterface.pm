########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file ApiInterface.pm
# The file implements ApiInterface perl module.
#
# copy 2013, VMware Inc.
#

package Com::Vmware::Vapi::Core::ApiInterface;

## @class Com::Vmware::Vapi::Core::ApiInterface
# The ApiInterface interface provides introspection APIs for a
# vAPI interface; it is implemented by API providers.
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
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::l10n::Runtime;

# @method new
# Constructor to initialize the Api Interface instance
#
# @return
# Blessed object
sub new
{
   my ($class) = @_;
   my $self = {};
   bless ($self, $class);
   return ($self);
}

# @method Com::Vmware::Vapi::Core::ApiInterface::get_interface_identifier()
# Gets the interface identifier.
#
# @return
# An interface identifier.
#
# @par Side Effects:
# None
sub get_interface_identifier {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id   => 'Com.Vmware.Vapi.Core.ApiInterface.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

# @method get_method
# Returns the interface method
#
# @return
# Method name
sub get_method {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id   => 'Com.Vmware.Vapi.Core.ApiInterface.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

# @method get_definition
# Returns the interface definition
#
# @return
# Interfcace definition
sub get_definition {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id   => 'Com.Vmware.Vapi.Core.ApiInterface.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

# @method invoke
# Returns invoke method
#
# @return
# Interfcace invoke method
sub invoke {
   my ($self) = shift;
   my $subroutinePath = ( caller(0) )[3];
   my $lastIndex = rindex( $subroutinePath, '::' );
   my $methodName = substr $subroutinePath, $lastIndex + 2,
     length($subroutinePath);
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   my $msg = $message_factory->get_message(
      id   => 'Com.Vmware.Vapi.Core.ApiInterface.MethodNotImplemented',
      args => [$methodName]
   );
   throw MethodNotImplemented( $msg->str() );
}

1;
