####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file IProtocolHandler.pm
# The file implements IProtocolHandler perl interface.
#
# @copy 2013, VMware Inc.
#

#
# @class IProtocolHandler
# Protoco Handlers are the classes that provide the endpoint for a given protocol.
#
package Com::Vmware::Vapi::Protocol::IProtocolHandler;

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
my @abstractMethods = qw(start stop);

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
               id => 'Com.Vmware.Vapi.Protocol.IProtocolHandler.MethodNotImplemented',
               args => [$class, $method]
            );
            throw MethodNotImplemented( $msg->str() );
         }
      }
   }
}

#
# @method start
# Protocol start
#
# @param None
# @return None
#
sub start {
}

#
# @method stop
# Protocol stop
#
# @param None
# @return None
#
sub stop {
}

1;
