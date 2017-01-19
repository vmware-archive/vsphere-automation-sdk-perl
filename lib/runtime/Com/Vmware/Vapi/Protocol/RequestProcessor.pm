####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file RequestProcessor.pm
# The file implements RequestProcessor perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class RequestProcessor.pm
# Implementations of this interface might be attached to client
# ApiProvider implementations as request post-processors or to the
# server ApiProvider implementations as request pre-processors.
#
package Com::Vmware::Vapi::Protocol::RequestProcessor;

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

# static variables
our $UTF8_CHARSET = "UTF-8";    # Access like this - $RequestProcessor::UTF8_CHARSET
our $SECURITY_CONTEXT_KEY = "security_context";

# Variable declaration
my @inheritors;
my @abstractMethods = qw(process);    # Conatain method names in this interface

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
               id => 'Com.Vmware.Vapi.Protocol.RequestProcessor.MethodNotImplemented',
               args => [$class, $method]
            );
            throw MethodNotImplemented( $msg->str() );
         }
      }
   }
}

#
# @method process
# Processes and possibly modifies the provided request byte array
#
# @param request cannot be null
# @param metadata provides additional metadata to the processor that will be
#					passed to the rest of the processor chain. Cannot be null
# @return The result of the processor. Cannot be null
#
sub process {
   # Function definition is to be given by the calling class...
}

1;
