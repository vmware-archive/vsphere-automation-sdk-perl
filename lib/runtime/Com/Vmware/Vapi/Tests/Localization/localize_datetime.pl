#!/usr/bin/perl

#
# vAPI Perl SDK Runtime Modules
#
use Com::Vmware::Vapi::Bindings::DateTimeHelper;
use Com::Vmware::Vapi::l10n::Formatter;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_dumper);

log_info(Channel => "Test", MSG => "Starting vAPI Perl SDK Testing\n");

my $datetime = new Com::Vmware::Vapi::Bindings::DateTimeHelper::DateTimeConverter()->convert_to_datetime(DateTimeString=>"2011-12-12T12:12:45.100Z");
log_dumper( MSG => $datetime );
my $localizeDateTime = new Com::Vmware::Vapi::l10n::Formatter::StringFormatter()->_localize_datetime(DateTimeArg=>$datetime);
log_dumper( MSG => $localizeDateTime );
log_info(Channel => "Test", MSG => "Finished vAPI Perl SDK Testing");
