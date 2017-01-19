########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file Helper.pm
# This file is for the Helper class for vApi perl runtime
#

package Com::Vmware::Vapi::Util::DateTimeUtil;
our @ISA = qw(Exporter);
our @EXPORT = qw(convert_to_vapi_datetime_str convert_to_perl_gmtime);

use strict;
use POSIX qw(strftime);
use Time::Local;
use Time::Piece;

sub convert_to_vapi_datetime_str {
	my (%args) = @_;
	#
	# Expected vapi format: 1964-10-16T08:12:47.500Z
	#
	my $datetime_str = $args{'gmtime'}->datetime . ".000Z";
	#printf("\n date and time " . $datetime_str);
	return $datetime_str;
}

sub convert_to_perl_gmtime {
	my (%args) = @_;
	#
	# Expected vapi format: 1964-10-16T08:12:47.500Z
	#
	my $datetime_str = $args{'datetime_str'};
	$datetime_str =~ /(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2}).(\d{3})Z/;
	my $year = $1;
    my $month = $2;
    my $day = $3;
    my $hour = $4;
    my $minute = $5;
    my $second = $6;
    my $nanosecond = $7*1000000;
	my $time = timelocal($second,$minute,$hour,$day,$month-1,$year);
    #print $time,"\n",scalar gmtime $time;
    my $gmtime_obj = gmtime ($time);
	return $gmtime_obj;
}

1;
