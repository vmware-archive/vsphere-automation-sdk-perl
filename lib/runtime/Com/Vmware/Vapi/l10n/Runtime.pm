####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file Runtime.pm
# The file implements Runtime perl module.
# @copy 2013, VMware Inc.
#

#
# @class Runtime
# Helper class for internationalization of the runtime messages
#
package Com::Vmware::Vapi::l10n::Runtime;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::l10n::Constants;
use Com::Vmware::Vapi::l10n::Bundle;
use Com::Vmware::Vapi::l10n::Formatter;
use Com::Vmware::Vapi::Message;

#
# @method get_runtime_message_factory
# Default message factory. Load the runtime message bundle from the provided file
# @return type: Com::Vmware::Vapi::Message::MessageFactory class object
# return: Message factory class for the runtime
#
sub get_runtime_message_factory {
   my $msg_bundle =
     new Com::Vmware::Vapi::l10n::Bundle::PropertiesResourceBundle(
      property_files => [ ( 'Com/Vmware/Vapi/Settings', 'runtime.properties' ) ],
      locale_type => $Com::Vmware::Vapi::l10n::Constants::DEFAULT_LOCALE
     );
   my $stringFormatter =
     new Com::Vmware::Vapi::l10n::Formatter::StringFormatter();
   return new Com::Vmware::Vapi::Message::MessageFactory(
      msg_bundle => $msg_bundle,
      formatter => $stringFormatter
   );
}

1;
