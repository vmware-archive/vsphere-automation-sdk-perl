####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file IProtocolConnectionFactory.pm
# The file implements IProtocolConnectionFactory perl interface.
#
# @copy 2013, VMware Inc.
#

#
# @class IProtocolConnectionFactory
# Interface for protocol connection factory
#
package Com::Vmware::Vapi::Protocol::IProtocolConnectionFactory;

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
my @abstractMethods = qw(get_connection get_insecure_connection get_http_connection);

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
               id => 'Com.Vmware.Vapi.Protocol.IProtocolConnectionFactory.MethodNotImplemented',
               args => [$class, $method]
            );
            throw MethodNotImplemented( $msg->str() );
         }
      }
   }
}

#
# @method get_connection
# Get remote connection
#
# @param protocol_type
# @param args
# @param trust_store
#
# @return IProtocolConnection object of Com::Vmware::Vapi::Protocol::IProtocolConnection
#
sub get_connection {
}

#
# @method get_insecure_connection
# Get insecure remote connection, without varifying trust store
#
# @param protocol_type
# @param args
#
# @return IProtocolConnection object of Com::Vmware::Vapi::Protocol::IProtocolConnection
#
sub get_insecure_connection {
}

#
# @method get_http_connection
# Creates an vAPI client that uses HTTP connection.
#
# @param uri URI representing the server to connect. Should be of the form
#				http(s)://<IP_address>:<port>/<Service_endpoint>. Can not be null.
# @param client_config the client configuration. can be null.
# @param http_config the transport configuration. can be null.
#
# @return IProtocolConnection object of Com::Vmware::Vapi::Protocol::IProtocolConnection
#
sub get_http_connection {
}

1;
