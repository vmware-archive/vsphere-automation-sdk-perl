####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ProtocolHandlerFactory.pm
# The file implements ProtocolHandlerFactory perl interface.
#
# @copy 2013, VMware Inc.
#

#
# @class ProtocolHandlerFactory
# For getting secure / insecure protocol handlers
#
package Com::Vmware::Vapi::Protocol::ProtocolHandlerFactory;

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
my @abstractMethods = qw(getProtocolHandler getInsecureProtocolHandler);

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
               id => 'Com.Vmware.Vapi.Protocol.IProtocolHandlerFactory.MethodNotImplemented',
               args => [$class, $method]
            );
            throw MethodNotImplemented( $msg->str() );
         }
      }
   }
}

#
# @method get_protocol_handler
# Get secure protocol handler
#
# @param $protocolType
# @param $args
# @param $secureArgs
# @param $keystore
# @param $password
# @param $keypassword
# @param $apiProvider Com::Vmware::Vapi::Core::ApiProvider objest
#
# @return None
#
sub get_protocol_handler {
}

#
# @method get_insecure_protocol_handler
# Get insecure protocol handler
#
# @param $protocolType
# @param $args
# @param $apiProvider Com::Vmware::Vapi::Core::ApiProvider objest
#
# @return None
#
sub get_insecure_protocol_handler {
}

1;
