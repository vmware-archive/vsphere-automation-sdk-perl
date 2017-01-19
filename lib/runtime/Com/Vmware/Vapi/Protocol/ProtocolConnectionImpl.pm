####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ProtocolConnectionImpl.pm
# The file implements ProtocolConnectionImpl perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class ProtocolConnectionImpl
# This class is a container for vAPI transport and messaging
# implementations that combines them into a single ApiProvider
#
package Com::Vmware::Vapi::Protocol::ProtocolConnectionImpl;

#
# Core Perl modules
#
use strict;
use warnings;
use LWP::UserAgent;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Protocol::IProtocolConnection;
use Com::Vmware::Vapi::Core::ApiProviderStubImpl;
use Com::Vmware::Vapi::l10n::Runtime;

#
# @method new
# Constructor
#
# @param transport
# @param provider an ApiProvider
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   my $transport = $args{'transport'};
   my $provider  = $args{'provider'};

   if ( !$transport ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.ProtocolConnectionImpl.InvalidParameter',
         args => ['transport']
      );
      throw InvalidParameter( $msg->str() );
   }
   if ( !$provider ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.ProtocolConnectionImpl.InvalidParameter',
         args => ['provider']
      );
      throw InvalidParameter( $msg->str() );
   }

   $self->{'transport'} = $transport;
   $self->{'provider'}  = $provider;

   return bless( $self, $class );
}

#
# @method disconnect
# Disconnect from the remote side.
#
# TODO: To be implemented later
#
# @param None
# @return None
#
sub disconnect {
   my ( $self, %args ) = @_;

   #TODO: TO BE IMPLEMENTED LATER...
}

#
# @method get_api_provider
# Once connected get an ApiProvider that can be used to make calls.
#
# @param None
# @return ApiProvider object of Com::Vmware::Vapi::Core::ApiProvider
#
sub get_api_provider {
   my ( $self, %args ) = @_;

   return $self->{'provider'};
}

#
# @method get_api_provider_stub
# Returns an ApiProvider stub which has both synchronous and asynchronous method overloads
#
# @param None
# @return Com::Vmware::Vapi::Core::ApiProviderStub
#
sub get_api_provider_stub {
   my ( $self, %args ) = @_;

   #TODO: ApiProviderStubImpl implementation
   my $apiProviderStub = Com::Vmware::Vapi::Core::ApiProviderStubImpl->new($self->get_api_provider());

   return $apiProviderStub;
}

1;
