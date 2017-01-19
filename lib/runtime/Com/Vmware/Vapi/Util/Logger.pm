########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file Logger.pm
# This object type provides logging API for VAPI
#

package Com::Vmware::Vapi::Util::Logger;

## @class Com::Vmware::Vapi::Util::Logger
# This class lets you control the logging behavior. It allows you to control
# logging messages written to the screen through various verbosity level (0-7)
# You could change the level or turn off logging capability to the screen
# anytime.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.
#
# @verbatim
# use Com::Vmware::Vapi::Util::Logger qw(log_info log_error);
# log_error(MSG=>"Proceed with caution...");
# set_logpath(XMLFile=>"Test.Logger.First.xml");
# log_info(Channel=> "mylogs", MSG=>"VAPI Perl SDK Rocks...Way to go");
# @endverbatim
#
our @ISA = qw(Exporter);
our @EXPORT = qw(log_info log_warning log_error log_debug log_framework log_verbose log_dumper get_instance set_verbosity);

#
# Core/ CPAN Perl modules
#
use File::Basename;
use File::Path;
use Cwd qw(abs_path);
use Term::ANSIColor qw(:constants);
use Time::Local 'timelocal_nocheck';
use threads;
use Data::Dumper;


#
# Used to define globally used constants
#
our $FAILURE   = 0;
our $SUCCESS   = 1;

#
# Color coding definitions
#
local %colorBox = ( INFO       => 'GREEN',
                 VERBOSE    => 'GREEN BOLD',
                 DEBUG      => 'MAGENTA',
                 WARN       => 'YELLOW BOLD',
                 ERROR      => 'RED BOLD',
                 FRAMEWORK  => 'MAGENTA BOLD');

my %verbosity = ( ERROR     => 1,
                  WARN      => 2,
                  INFO      => 3,
                  VERBOSE   => 4,
                  DEBUG     => 5,
                  FRAMEWORK => 6,
                  DUMPER    => 7);

## @method private object new_instance()
# A private constructor which creates singleton logger object.
#
# @retval
# "An instance of Logger object."
#
# @par Side Effects:
# Current defaults is choosen for class attributes
#
# @verbatim
# This method shouldn't be called directly.
# @endverbatim
#
sub new_instance {
   my ($class) = @_;
   my $self = {};
   $self->{logFile} =  undef;
   $self->{logPath} = undef;
   $self->{fileHandle} = undef;
   $self->{temp} = "/tmp";
   $self->{verbosity} = 3;
   $self->{channelLength} = 10;
   bless ($self, $class);

   select(STDOUT); $| = 1; # unbuffered io

   return $self;
}

## @method get_instance()
# This method is called to get the current object instance or
# create a new one by calling new_instance().
#
# @retval
# "An object instance"
#
# @par Side Effects:
# None
#
# @verbatim
# my $instance = get_instance()
# @endverbatim
#
sub get_instance {
   my $class = __PACKAGE__;
   #
   # return $class if ref $class;
   # instance is stored in the _instance variable in the $class package
   #
   my $instance = \${ "$class\::_instance" };
   defined $$instance
      ? $$instance
      : ($$instance = $class->new_instance(@_));
}

## @method InstanceExists()
# A Public method to return the current instance if it exist
#
# @retval
# "An object instance"
#
# @par Side Effects:
# None
#
# @verbatim
# my $instance = InstanceExists()
# @endverbatim
#
sub InstanceExists {
   my ($class)   = @_;
   $class = ref $class || $class;
   return ${"$class\::_instance"};
}

## @method log_info()
# A Public method to print log info message
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# log_info(MSG=>"This is a info message");
# @endverbatim
#
sub log_info {
   writeLog (@_, Type => 'INFO');
}

## @method log_verbose()
# A Public method to print log info message
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# log_verbose(MSG=>"This is a info message");
# @endverbatim
#
sub log_verbose {
   writeLog (@_, Type => 'VERBOSE');
}

## @method log_warning()
# A Public method to print log warning message
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# log_warning(MSG=>"This is a warning message");
# @endverbatim
#
sub log_warning {
   my $args = Dumper(@_);
   writeLog (MSG => $args, Type => 'WARN');
}

## @method log_error()
# A Public method to print log error message
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# log_error(MSG=>"This is a error message");
# @endverbatim
#
sub log_error {
   writeLog (@_, Type => 'ERROR');
}

## @method log_debug()
# A Public method to print log debug message
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# log_debug(MSG=>"This is a debug message");
# @endverbatim
#
sub log_debug {
   writeLog (@_, Type => 'DEBUG');
}

## @method log_framework()
# A Public method to print log framework debug messages
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# LogFramework (MSG=>"This is a debug message");
# @endverbatim
#
sub log_framework {
   my $args = Dumper(@_);
   writeLog (MSG => $args, Type => 'FRAMEWORK');
}

## @method log_dumper()
# A Public method to print Data:Dumper for the given data type
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# LogFramework (MSG=>"This is a debug message");
# @endverbatim
#
sub log_dumper {
   my $args = Dumper(@_);
   writeLog (MSG => $args, Type => 'DUMPER');   
}

## @method set_verbosity()
# A public method to set verbosity for the logger object
#
# @param Level Verbosity Level
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# set_verbosity(level => 3);
# @endverbatim
#
sub set_verbosity {
   my %args = @_;
   my $self = get_instance();
   $self->{verbosity} = $args{level} > 7 ? 7 : $args{level};
}

## @method private open_log ()
# A private method to open a log file in the launch host
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# open_log();
# @endverbatim
#
sub open_log {
   my $self = get_instance();
   my $string = "Logger: open_log: Failed to open file $self->{logFile}";
   unless ( open $self->{fileHandle}, ">>", $self->{logFile}) {
      throw LoggerException("$string");
   }
}

## @method private writeLog ()
# A private method to log messages to log file and the screen
#
# @param MSG - Message
# @param Type - Message Type (Info, Warn...)
# @param Channel - Channel Name
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
#   writeLog(Channel => $args{Channel},
#            MSG => $args{MSG},
#            Type => "DEBUG");
# @endverbatim
#
sub writeLog {
   my %args = @_;
   my $self = get_instance();

   my $string = $args{MSG};
   my $type = $args{Type};
   $type =~ s/\s+$//;
   #
   # Don't log if the verbosity level is lower
   if ($self->{verbosity} < $verbosity {$type}) {
      return;
   }
   
   
   #
   # Set it to the default channel
   #
   if (defined $args{Channel}) {
      $channel = uc ($args{Channel});
   } else {
      $channel = uc (CallingPackage(3));
      ($channel) = $channel =~ m/::([^:]+)$/ if ($channel =~ /::/);
   }

   #$channel = formatString(String => $channel);
   my $timeStamp = getCurrentTime();
   #
   # Logs to STDOUT and STDERR based on the log type
   #
   $self->writeToScreen (Channel => $channel,
                         TimeStamp => $timeStamp,
                         Type => $type,
                         String => $string);
   #
   # Writing it to the log file if log file is defined
   #
   if (defined $self->{logFile}) {
      open_log() ;
      my $handle = $self->{fileHandle};
      print $handle "[$timeStamp: $channel] [" . threads->tid() . "] $type: $string\n";
   } 
   
   # If log file is defined, close it
   if (defined $self->{logFile}) {
      close_log();
   }
}

## @method private writeToScreen ()
# A private method to write messages to the screen
#
# @param Channel - Channel Name
# @param Type - Message Type
# @param TimeStamp - TimeStamp details
# @param String - Message String
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
#      writeToScreen(Channel => $channel, TimeStamp => $timeStamp,
#                    Type => $type, String => $string);
# @endverbatim
#
sub writeToScreen
{
   my ($self, %args) = @_;

   if (! exists $self->{Monochrome}) {
   	  $self->{Monochrome} = 1;
   }

   my $string = $args{String};
   my $type = $args{Type};
   $type =~ s/\s+$//;
   my $timeStamp = $args{TimeStamp};
   my $channel = uc ($args{Channel});

   #
   # write to screen based on the color type if exists
   #

   if (exists $colorBox{$type} ) {
      print Term::ANSIColor::color( $colorBox{$type} )
         if (! $self->{Monochrome});

      print "\n[$timeStamp: $channel] [" . threads->tid() . "] $type: $string";

      print RESET
         if (! $self->{Monochrome});

   } else {
      print "\n[$timeStamp: $channel] [" . threads->tid() . "] $type: $string";
   }

}

## @method close_log ()
# A private method to close the log file in the launch host
#
# @param
# None
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# close_log();
# @endverbatim
#
sub close_log {
   my $self = get_instance();
   my $string = "close_log call FAILED. Test Log has not been opened";

   if (defined $self->{fileHandle} && defined $self->{logFile}) {
      close $self->{fileHandle};
      $self->{handle} = undef;
   } else {
      throw LoggerException("$string");
   }
}

## @method set_logpath ()
# A public method to get the XMLFile information and creates log
# directories
#
# @param XMLFile - Full path to the XML file
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# set_logpath (XMLFile => "/source/Proj/ctd/unreviewed/TestLogger.xml");
# @endverbatim
#
sub set_logpath {
   my (%args) = @_;
   $self = get_instance();
   $self->{xmlFile} = $args{XMLFile};
   prepareLogs();
}

## @method prepareLogs ()
# A private method to prepare test and log path with the time stamp
#
# @param
# None
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# prepareLogs();
# @endverbatim
#
sub prepareLogs {
   my $self = get_instance();
   $self->{logFile} = $self->{xmlFile};
}


## @method getCurrentTime ()
# A private method to get current time stamp
#
# @param
# None
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# getCurrentTime();
# @endverbatim
#
sub getCurrentTime {
   my $currentTime   =  localtime();
   return $currentTime;
}

## @method get_logpath()
# A public method which returns the path to log direcory
#
# @param
# None
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# get_logpath();
# @endverbatim
#
sub get_logpath
{
   my $self = get_instance();
   return $self->{logDir};
}

## @method get_zip_path()
# A public method which returns the path to zip direcory
#
# @param
# None
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# get_zip_path();
# @endverbatim
#
sub get_zip_path
{
   my $self = get_instance();
   return $self->{zipDir};
}

## @method get_log_name()
# A public method which returns the path to log file
#
# @param
# None
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# get_log_name();
# @endverbatim
#
sub get_log_name
{
   my $self = get_instance();
   return $self->{logFile};
}

###########################################################################
## @method formatString()
# A private method to customize number of characters in a string and return
# string removing charcters more than the length specified or add white
# spaces accordingly.
#
# @param
# String - string name
#
# @retval
# "Formatted String"
#
# @par Side Effects:
# None
#
# @verbatim
# formatString(String => "ChangeString");
# @endverbatim
#
sub formatString {
   my %args = @_;
   my $string = $args{String};
   my $numOfChar = length($string);
   my $self = get_instance();
   my $whiteSpace = undef;
   if ($numOfChar < $self->{channelLength}) {
      my $diff = $self->{channelLength} - $numOfChar;
      for (my $i = 0; $i < $diff; $i++) {
         $whiteSpace = $whiteSpace . " ";
      }
      $string = $string . $whiteSpace;
   } else {
      $string = substr($string, 0, $self->{channelLength});
   }
   return $string;
}

###########################################################################
## @method SetChannelLength()
# A public method to set number of character in a channel string.
#
# @param
# Length - Length of the channel
#
# @retval
# None
#
# @par Side Effects:
# None
#
# @verbatim
# SetChannelLength(Length => 10);
# @endverbatim
#
sub SetChannelLength {
   my %args = @_;
   my $self = get_instance();
   $self->{channelLength} = $args{Length};
}



################################################################################
## @method CallingFunction ()
#
# Return name of calling function
#
# @retval
# "SUCCESS or exception on failure."
#
# @par Side Effects:
# None
#
# @verbatim
# CallingPackage
# @endverbatim
#
sub CallingFunction
{
   my ($frame) = @_;

   $frame = 2 if (! defined $frame);

   foreach $frame ($frame .. 10) {
      my $caller = (caller ($frame)) [3];

      if ($caller ne '(eval)') {
         my ($package, $func) = $caller =~ m/^(.+)::([^:]+)$/;

         return $caller if ($func ne 'eval');
      }
   }
}

################################################################################
## @method CallingPackage ()
#
# Return name of calling package
#
# @retval
# "SUCCESS or exception on failure."
#
# @par Side Effects:
# None
#
# @verbatim
# CallingPackage
# @endverbatim
#
sub CallingPackage
{
   my ($frame) = @_;

   $frame = 2 if (! defined $frame);

   foreach $frame ($frame .. 10) {
      my $caller = (caller ($frame)) [3];

      if (defined $caller) {
         if ($caller ne '(eval)') {
            my ($package, $func) = $caller =~ m/^(.+)::([^:]+)$/;

            return $package if ($func ne 'eval');
         }
      } else {
         return 'unknown';
      }
   }
}

1;
