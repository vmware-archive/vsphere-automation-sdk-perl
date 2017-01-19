####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ICorrelatingClient.pm
# The file implements ICorrelatingClient perl interface.
#
# @copy 2013, VMware Inc.
#

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::l10n::Runtime;
use Com::Vmware::Vapi::Util::ExceptionBase;

#
# @class ICorrelatingClient
# Client transport which supports correlation between requests and responses.
# The implementation does not have to be asynchronous. The
# send(InputStream, int, ResponseCallback) method might block until
# all response frames are received and invoke the response callback
# synchronously.
#
# Each request must have at least one response frame, otherwise the transport
# has to report an error through the response callback.
#
package Com::Vmware::Vapi::Protocol::Client::Rpc::ICorrelatingClient;

# Variable declaration

# Contain method names in this interface
my @inheritors;
my @abstractMethods = qw(send close);

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
               id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.ICorrelatingClient.MethodNotImplemented',
               args => [ $class, $method ]
            );
            throw MethodNotImplemented( $msg->str() );
         }
      }
   }
}

#
# @method send
# Sends the request object on wire
#
# @param http_request HTTP::Request core Perl CPAN module's object
# @param http_config [optional] Com::Vmware::Vapi::Protocol::HttpConfiguration object
#
# @return response Http response from the server
#
sub send {
}

#
# @method close
# Closes the transport protocol connection
#
# @param None
# @return None
#
sub close {
}

########################################################################
## Nested Interface
########################################################################

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::l10n::Runtime;
use Com::Vmware::Vapi::Util::ExceptionBase;

#
# @class ResponseCallback
# Callback used to receive response frames for a given request frame.
# Errors are also reported through this callback.
#
package Com::Vmware::Vapi::Protocol::Client::Rpc::ResponseCallback;

# Variable declaration

# Contain method names in this interface
my @inheritor;
my @abstractMethod = qw(failed received);

#
# @method import
# Tracks the caller
#
# @param None
# @return None
#
sub import {
   my $caller = caller();
   push @inheritor, $caller;
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
   foreach my $class (@inheritor) {
      foreach my $method (@abstractMethod) {
         unless ( defined &{"${class}::$method"} ) {
            my $message_factory =
              Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
            my $msg = $message_factory->get_message(
               id =>
'Com.Vmware.Vapi.Protocol.Client.Rpc.ICorrelatingClient.MethodNotImplemented',
               args => [ $class, $method ]
            );
            throw MethodNotImplemented( $msg->str() );
         }
      }
   }
}

#
# @method failed
# Notifies the callback that an error occurred while sending the
# request or while receiving a response.
#
# @param error transport error; must not be <code>null</code>
#
# @return None
#
sub failed {
}

#
# @method received
# Notifies the callback that a response frame is received. Can be
# invoked multiple times - once for each response frame. All responses
# will be correlated to a single request.
# If an exception is thrown (i.e. the response frame is considered
# invalid for some reason), the transport session would be terminated
# and no more response frames would be received for the request. The
# exception would trigger the failed(Exception) method.
#
# @param response response frame
#
# @return none
#
sub received {
}

1;
