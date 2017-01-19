########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file OptionalDefinition.pm
# Type definition for vAPI optional built-in type with a specific element type.
#

package Com::Vmware::Vapi::Data::Definition::OptionalDefinition;

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
use Com::Vmware::Vapi::Data::Value::OptionalValue;

use base qw(Com::Vmware::Vapi::Data::Definition::DataDefinition);

# @method new
# Constructor to initialize the OptionalDefinition object
#
# @param Value - Optional Value
#
# @return
# Blessed object
#
sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(type => Com::Vmware::Vapi::Data::Type::OPTIONAL);
   bless $self, $class;
   return ($self);
}

# @method new_value
# Create a new OptionalValue.
#
# @param Value - Element Value
#
# @return
# A new optional value using the given data-definition
#
sub new_value {
   my ($self, %args) = @_;
   my $value = $args {value};
   return new Com::Vmware::Vapi::Data::Value::OptionalValue (value => $value);
}

1;