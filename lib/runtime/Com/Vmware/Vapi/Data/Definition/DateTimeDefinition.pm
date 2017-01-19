########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file DateTimeDefinition.pm
# Type definition for vAPI DateTime built-in type.
#

package Com::Vmware::Vapi::Data::Definition::DateTimeDefinition;

#
# Core Perl modules
#
use strict;
use warnings;
use Exception::Class;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Data::Type;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Data::Value::DateTimeValue;

use base qw(Com::Vmware::Vapi::Data::Definition::DataDefinition);

# @method new
# Constructor to initialize the DateTimeDefinition object
#
# @param Value - DateTime Value
#
# @return
# Blessed object
#
sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(type => Com::Vmware::Vapi::Data::Type::STRING);
   bless $self, $class;
   return ($self);
}

# @method new_value
# Create a new DateTimeValue.
#
# @param Value - DateTime Value
#
# @return
# A new DateTime value using the given data-definition
#
sub new_value {
   my ($self, %args) = @_;
   my $value = $args {value};
   return new Com::Vmware::Vapi::Data::Value::DateTimeValue (value => $value);
}

1;