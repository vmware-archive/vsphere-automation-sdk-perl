########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file ApiProviderStubImpl.pm
# The file implements interface for generated stubs.
#

## @class ApiProviderStubImpl
# Implementation for generated Stub class
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.
package Com::Vmware::Vapi::Core::ApiProviderStubImpl;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use base qw(Com::Vmware::Vapi::Core::IApiProviderStub);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::l10n::Runtime;

# @method new
# Constructor to initialize the IApiProvider object
#
# @param Provider - IApiProvider object
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = $class->SUPER::new();
   if ( !defined( $self->{provider} ) ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Core.ApiProviderStubImpl.InvalidParameter',
         args => ['provider']
      );
      throw InvalidParameter( $msg->str() );
   }
   $self->{provider} = $args{provider};
   return bless( $self, $class );
}

# @method invoke_method
#
# @param exec_context - ExecutionContext object
# @param method_id  MethodIdentifier
# @param input  vAPI Data Value object
# @return
# Blessed object
#
sub invoke_method {
   my ( $self, %args ) = @_;
   my $execContext = $args{exec_context};
   my $methodId    = $args{method_id};
   my $input       = $args{input};
   $self->{provider}->invoke_method(
      exec_context => $execContext,
      method_id    => $methodId,
      input       => $input
   );
}

1;
