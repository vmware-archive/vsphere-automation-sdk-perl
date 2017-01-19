####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file Formatter.pm
# The file implements Formatter perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class StringFormatter
# Helper classes for formatting the message for localization
#
package Com::Vmware::Vapi::l10n::Formatter::StringFormatter;

#
# Core Perl modules
#
use strict;
use warnings;
use POSIX qw(strftime setlocale);

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::l10n::Constants;

# This regex is used to split the message template into tokens
# Same as the below, but all the groups are matching but non-capturing
my $string_template =
qr/(%(?:\\d+\\$)?(?:[-#+ 0,(\\<]*)(?:\\d+)?(?:\\.\\d+)?(?:[tT])?(?:[a-zA-Z%]))/;

# This is used to split a format specifier into groups
# %[argument_index$][flags][width][.precision][t]conversion
my $format_specifier =
  qr/%(\\d+\\$)?([-#+ 0,(\\<]*)(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])/;

#
# @method new
# Constructor
#
# @param none
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{string_template}  = $string_template;
   $self->{format_specifier} = $format_specifier;
   return bless( $self, $class );
}

#
# @method _localize_datetime
# Localize a datetime object
# @type date_time_arg Datetime object
# @param date_time_arg Datetime object
# @return Localized datetime string
#
sub _localize_datetime {
   my ( $self, %args ) = @_;
   my $datetime_arg = $args{date_time_arg};
# TODO: Need to look into comment section for circular dependency
# Importing DateTimeConverter here to avoid circular dependency
#   use Com::Vmware::Vapi::Bindings::DateTimehelper;
#
#   if (
#      $datetime_arg =~ /([a-z]+([,-][a-z]+)*|\*)(:([a-z]+)([,-][a-z]+)*|\*)*/ )
#   {
#      $datetime_arg =
#        new Com::Vmware::Vapi::Bindings::DateTimeHelper::DateTimeConverter()
#        ->convert_to_datetime( DateTimeObj => $datetime_arg );
#   }
   if ( !ref($datetime_arg)->isa('DateTime') ) {
      use Com::Vmware::Vapi::Util::ExceptionBase;
      throw ExceptionBase('Argument is not a datetime');
   }

   # XXX: strftime does not handle dates before 1900
   #my $strp = DateTime::Format::Strptime->new(
   #   pattern => '%FT%T.%3NZ',
   #);
   #return $strp->format_datetime($datetime_arg);
   return undef;
}

#
# @private method _localize_string
# Localize the given string
# @type tokens string
# @param tokens message template
# @type list of class object
# @param Arguments for the message template
# @return Localized message
#
sub _localize_string {
   my (%args) = @_;
   my $tokens = $args{tokens};
   my $arguments = $args{args};
   my $offset = 0;
   my $positions = index( $tokens, '%s', $offset );
   my @position_array = ();
   while ( $positions != -1 ) {
      push @position_array, $positions;
      $offset = $positions + 1;
      $positions = index( $tokens, '%s', $offset );
   }
   my $complet_message = '';
   my $index = 0;
   for ( my $i = 0 ; $i < scalar(@position_array) ; $i++ ) {
      $complet_message = $complet_message . substr( $tokens, $index, $position_array[$i] - $index ) . $$arguments[$i];
      $index = $position_array[$i] + 2;
   }
   $complet_message = $complet_message . substr( $tokens, $index, length($tokens) );
   my @result = ();
   setlocale( &POSIX::LC_ALL, $Com::Vmware::Vapi::l10n::Constants::DEFAULT_LOCALE );
   push @result, POSIX::strxfrm($complet_message);
   return join( '', @result );
}

#
# @method format_msg
# Format the string
# @param msg Message template
# @param args Arguments for the message
# @return Localized message
#
sub format_msg {
   my ( $self, %args ) = @_;
   my $msg        = $args{msg};
   my $args       = $args{args};
   my @count_args = $msg =~ /%s/g;
   if ( scalar(@count_args) != scalar(@$args) ) {
      throw ExceptionBase( 'Number of required argument specifiers does not match with number of arguments passed' );
   }
   return _localize_string( tokens => $msg, args => $args );
}

1;
