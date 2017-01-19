#!/usr/local/bin/perl
use Com::Vmware::Vapi::Util::DateTimeUtil qw(convert_to_vapi_datetime_str convert_to_perl_gmtime);
use Time::Piece;
my $t = gmtime();
print "Gmtime from local system: ", $t->datetime, "\n";
    
my $datetime_str = convert_to_vapi_datetime_str('gmtime' => $t);

$t = convert_to_perl_gmtime('datetime_str' => $datetime_str);

print "Gmtime from server: ", $t->datetime, "\n";

