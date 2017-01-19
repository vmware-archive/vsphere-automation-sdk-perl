####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file IProtocolConnection.pm
# The file implements IProtocolConnection perl interface.
#
# @copy 2013, VMware Inc.
#

#
# @class IProtocolConnection
# This interface is the 'client' side of a remote protocol. Anyone wishing to make an RPC
# will need to provide a Connection class that allows a user to connect, and
# retrieve an ApiProvider to send calls to.
#
package Com::Vmware::Vapi::Protocol::IProtocolConnection;

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
my @inheritors;
my @abstractMethods = qw(disconnect get_api_provider get_api_provider_stub);

# Conatain method names in this interface

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
               id => 'Com.Vmware.Vapi.Protocol.IProtocolConnection.MethodNotImplemented',
               args => [$class, $method]
            );
            throw MethodNotImplemented( $msg->str() );
         }
      }
   }
}

#
# @method disconnect
# Disconnect from the remote side.
#
# @param None
# @return None
#
sub disconnect {
}

#
# @method get_api_provider
# Once connected get an ApiProvider that can be used to make calls.
#
# @param None
# @return ApiProvider object of Com::Vmware::Vapi::Core::ApiProvider
#
sub get_api_provider {
}

#
# @method get_api_provider_stub
# Returns an ApiProvider stub which has both synchronous and asynchronous method overloads
#
# @param None
# @return Com::Vmware::Vapi::Core::ApiProviderStub
#
sub get_api_provider_stub {
}

1;
