####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file DateTimeHelper.pm
# The file implements DateTimeHelper perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class DateTimeHelper
# Helper class to convert to/from Perl datetime strings to datetime objects.

#    Datetime is represented as :class:`vmware.vapi.data.value.StringValue` in the
#    vAPI Runtime. Datetime is a primitive string that follows a subset of
#    ISO 8601. DateTime string represents a complete date plus hours, minutes,
#    seconds and a decimal fraction of a second:
#
#        YYYY-MM-DDThh:mm:ss.sssZ (e.g. 1878-03-03T19:20:30.000Z)
#        where:
#            YYYY = four-digit year (years BC are not supported;
#                                    0001 = 1 AD is the first valid year,
#                                    0000 = 1 BC is not allowed)
#            MM = two-digit month (01=January, ..., 12=December)
#            DD = two-digit day of month (01 through 31)
#            "T" = separator; appears literally in the string
#            hh = two digits of hour (00 through 23; 24 NOT allowed;
#                                     am/pm NOT allowed)
#            mm = two digits of minute (00 through 59)
#            ss = two digits of second (00 through 59)
#            sss = exactly three digits representing milliseconds
#            "Z" = UTC time zone designator; appears literally in the string
#
package Com::Vmware::Vapi::Bindings::DateTimeHelper::DateTimeConverter;

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
use Com::Vmware::Vapi::l10n::Runtime;

my $_dt_pattern = '(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2}).(\d{3})Z';
my $_dt_expr    = qr/$_dt_pattern/;

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
   return bless( $self, $class );
}

#
# @method convert_to_datetime
# Parse ISO 8601 date time from string.
#
# @rtype datetime_str: string
# @param datetime_str: Datetime in string representation that is in
# @rtype DateTime object
# @return datetime object
#
sub convert_to_datetime {
   my ( $self, %args ) = @_;
   my $datetime_str = $args{date_time_string};
   my $datetime_val = undef;
   my $msg          = undef;
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   if (  ( $datetime_str !~ m/^$_dt_expr/ )
      || ( scalar($datetime_str) gt 24 ) )
   {
      $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.DateTimeHelper.Invalid.Format',
         args => [ $datetime_str, $_dt_pattern ]
      );
      throw ExceptionBase( $msg->str() );
   }
   my $year  = $1;
   my $month = $2;
   if ( $month lt 1 || $month gt 12 ) {
      $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.DateTimeHelper.Month.Invalid',
         args => [$datetime_str]
      );
      throw ExceptionBase( $msg->str() );
   }
   my $day = $3;
   if ( $day lt 1 || $day gt 31 ) {
      $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.DateTimeHelper.Day.Invalid',
         args => [$datetime_str]
      );
      throw ExceptionBase( $msg->str() );
   }
   my $hour = $4;
   if ( $hour gt 23 ) {
      $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.DateTimeHelper.Hour.Invalid',
         args => [$datetime_str]
      );
      throw ExceptionBase( $msg->str() );
   }
   my $minute = $5;
   if ( $minute gt 59 ) {
      $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.DateTimeHelper.Minute.Invalid',
         args => [$datetime_str]
      );
      throw ExceptionBase( $msg->str() );
   }
   my $second = $6;
   if ( $second gt 59 ) {
      $msg = $message_factory->get_message(
         id   => 'Com.Vmware.Vapi.Bindings.DateTimeHelper.Second.Invalid',
         args => [$datetime_str]
      );
      throw ExceptionBase( $msg->str() );
   }

   # Convert from millisecond to nanosecond precision
   my $nanosecond = int( $7 . '000000' );
   $datetime_val = DateTime->new(
      year       => $year,
      month      => $month,
      day        => $day,
      hour       => $hour,
      minute     => $minute,
      second     => $second,
      nanosecond => $nanosecond,
      time_zone  => 'UTC',
   );
   return $datetime_val;
}

#
# @method convert_from_datetime
# Convert from Perl native datetime object to the datetime format in
#        vAPI Runtime i.e. YYYY-MM-DDThh:mm:ss.sssZ.
#
#        datetime objects returned by datetime.now() or datetime.utcnow() does
#        not contain any timezone information. The caller to this method should
#        only pass datetime objects that have time in UTC timezone.
#
#        datetime objects have microsecond precision but the vAPI datetime
#        string format has millisecond precision. The method will truncate the
#        microsecond to millisecond and won't do any rounding of the value.
#
# @param DateTimeObj Datetime object with UTC time
# @rtype string
#
# @return List of string arguments
#
sub convert_from_datetime {
   my ( $self, %args ) = @_;
   my $datetime_obj = $args{date_time_obj};
   my $msg          = undef;
   my $message_factory =
     Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
   if ( $datetime_obj->time_zone() ) {

      # If timezone info object is present, it should be in UTC timezone
      # i.e. timedelta is 0
      if ( $datetime_obj->offset() != $datetime_obj->delta_ms($datetime_obj) ) {
         $msg = $message_factory->get_message(
            id => 'Com.Vmware.Vapi.Bindings.DateTimeHelper.Invalid.TimeZone'
            ,
            args => [ $datetime_obj->strftime() ]
         );
         throw ExceptionBase( $msg->str() );
      }
   }

   # Since it is UTC timezone, replacing it with floating
   # the output of isoformat() does not match vAPI runtime datetime string
   # format if tzinfo is present in the datetime object
   $datetime_obj->set_time_zone('floating');
   my $iso_str = new DateTime::Format::Strftime( pattern => '%FT%T.%3NZ', );
   if ( $datetime_obj->microsecond() ) {

      # datetime prints microseconds, reducing precision to milliseconds
      $iso_str = substr( $iso_str, 0, -3 );
   }
   else {
      # Python .isoformat does not print microsecond if it is 0
      $iso_str = $iso_str . '000';
   }
   return $iso_str . 'Z';    # Adding Z to indicate it is UTC timezone
}

1;

# @class UTC
# tzinfo class for UTC timezone
#
package Com::Vmware::Vapi::Bindings::DateTimeHelper::UTC;

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
#
# @param none
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   return bless( $self, $class );
}

#
# @method utc_off_set
#
# @param none
# @return None
#
sub utc_off_set {
   my ( $self, %args ) = @_;
   return 0;
}

#
# @method tz_name
#
# @param none
# @return UTC string
#
sub tz_name {
   return 'UTC';
}

#
# @method dst
#
# @param none
# @return None
#
sub dst {
   my ( $self, %args ) = @_;
   return 0;
}

#
# @method convert_to_utc
#
# @param dt date time object
# @return UTC timezone
#
sub convert_to_utc {
   my ( $self, %args ) = @_;
   my $dt = $args{dt};
   #my $tz = DateTime::TimeZone->new( name => 'UTC' );
   #return $tz->offset_for_datetime($dt);
   return undef;
}

1;
