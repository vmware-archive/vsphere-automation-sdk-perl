####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file Bindings.pm
# The file implements Bindings perl module.
# Helper classes for internationalization of the messages for static bindings
# @copy 2013, VMware Inc.
#

#
# @class MessageArgumentConverter
# Utility class for converting localizable message arguments to strings
#
package Com::Vmware::Vapi::l10n::Bindings::MessageArgumentConverter;

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
use Com::Vmware::Vapi::Bindings::DateTimeHelper;

#
# @method to_string
# Convert argument list to string argument list
# @type ArgList list of class object
# @param arg_list List of arguments
# @return List of string arguments
#
sub to_string {
   my %args    = @_;
   my $arglist = $args{arg_list};
   my @result  = ();
   foreach my $arg (@$arglist) {
      if ( ref($arg)->isa('DateTime') ) {
         my $convert_from_datetime =
           new Com::Vmware::Vapi::Bindings::DateTimeHelper::DateTimeConverter()
           ->convert_from_datetime( datetime_Obj => $arg );
         push( @result, $convert_from_datetime );
      }
      elsif ( $arg =~ /([a-z]+([,-][a-z]+)*|\*)(:([a-z]+)([,-][a-z]+)*|\*)*/
         || $arg =~ /^-?\d+\z/
         || $arg =~ /^-?\d+\.\d+\z/ )
      {
         push( @result, $arg );
      }
      else {
         throw ExceptionBase('Unsupported type for message argument: $arg');
      }
   }
   return @result;
}

1;
