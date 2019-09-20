####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file Message.pm
# The file implements Message perl module.
# vAPI Message class
# @copy 2013, VMware Inc.
#

#
# @class Message
# This is a message class that can be used by runtime classes.
# This class encapsulates the concept of a localizable message.
#
package Com::Vmware::Vapi::Message;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;

#
# @method new
# Constructor
# Initializes the message object
# @param id The unique message identifier as string
# @param def_msg An english language default as string
# @param args The arguments to be used for the messsage as list of string
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{id}     = $args{id};
   $self->{def_msg} = $args{def_msg};
   $self->{args}   = $args{args};
   return bless( $self, $class );
}

#
# @method cmp
#
# Initializes the message object
# @param Id The unique message identifier as string
# @param DefMsg An english language default as string
# @param Args The arguments to be used for the messsage as list of string
# @return boolean
#
sub cmp {
   my ( $self, %args ) = @_;
   my $other = $args{other};
   if ( ref($$other) ne 'Com::Vmware::Vapi::Message' ) {
      throw ExceptionBase('NotImplemented');
   }
   return
        ( $self->{id} eq $$other{id} )
     || ( $self->{def_msg} eq $$other{def_msg} )
     || ( $self->{args} eq $$other{args} );
}

#
# @method repr
#
# Canonical representation of the objects
# @param None
# @return Blessed object of Message class
#
sub repr {
   my $self = shift;
   use Data::Dumper;
   return new Com::Vmware::Vapi::Message(
      id     => Dumper( $self->{id} ),
      def_msg => Dumper( $self->{def_msg} ),
      args   => Dumper( $self->{args} )
   );
}

#
# @method str
#
# Canonical representation of the objects
# @param None
# @return def_msg An english language default as string
#
sub str {
   my $self = shift;
   return $self->{def_msg};
}

#
# @class MessageFormatter
# Base class for all message formatter classes
#
package Com::Vmware::Vapi::Message::MessageFormatter;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# @method format_msg
#
# Format the message using the specified arguments
# @param msg Message template as string
# @param args The arguments to be used for the messsage as list of string
# @return Blessed object
#
sub format_msg {
   my ( $self, %args ) = @_;
   my $msg  = $args{msg};
   my $args = $args{args};
   throw ExceptionBase('Not Implemented');
}

#
# @class MessageBundle
# Base class for all message bundle classes
#
package Com::Vmware::Vapi::Message::MessageBundle;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# @method get_id
#
# Format the message using the specified arguments
# @param Id Message Identifier as string
# @return Blessed object
#
sub get_id {
   my ( $self, %args ) = @_;
   my $id = $args{id};
   throw ExceptionBase('Not Implemented');
}

#
# @class MessageFactory
# A factory class to generate localizable messages
#
package Com::Vmware::Vapi::Message::MessageFactory;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# @method new
# Constructor
# Initializes the message object
# @param msg_bundle The message dictionary for the message factory
# @param formatter Formatter for the message
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{msg_bundle} = $args{msg_bundle};
   $self->{formatter} = $args{formatter};
   return bless( $self, $class );
}

#
# @method get_message
#
# Return a message object for the given id with the given args.
# If the message is not found, a default unknown message is returned.
# @param Id The unique message identifier as string
# @param Args The arguments to be used for constructing this message as list of object
# @return The Message class's object constructed using the given arguments
#
sub get_message {
   my ( $self, %args ) = @_;
   my $id   = $args{id};
   my $args = $args{args};
   try {
      my $msg = $self->{msg_bundle}->get_id( id => $id );
      my $def_msg = $self->{formatter}->format_msg( msg => $msg, args => $args );
      return new Com::Vmware::Vapi::Message(
         id     => $id,
         def_msg => $def_msg,
         args   => $args
      );
   }
   catch {
      return new Com::Vmware::Vapi::Message(
         id     => 'vapi.message.unknown',
         def_msg => 'Unknown message ID $id requested with parameters str(args)'
      );
   }
}

1;
