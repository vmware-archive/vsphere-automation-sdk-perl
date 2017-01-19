####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file IFrameDeserializer.pm
# The file implements IFrameDeserializer perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class IFrameDeserializer
# Interface as a deserializer of binary frames
#
package Com::Vmware::Vapi::Protocol::Common::Http::IFrameDeserializer;

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

# Conatain method names in this interface
my @inheritors;
my @abstractMethods = qw(read_frame);

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
               id => 'Com.Vmware.Vapi.Protocol.Common.Http.IFrameDeserializer.MethodNotImplemented',
               args => [$class, $method]
            );
            throw MethodNotImplemented( $msg->str() );
         }
      }
   }
}

#
# @method read_frame
# Deserializes a binary frame from a stream
#
# @param binary_input -  input from which to read the frame; must not be null
#
# @return frame payload; can be null when there are no more frames to read from the stream
#
sub read_frame {
}

1;
