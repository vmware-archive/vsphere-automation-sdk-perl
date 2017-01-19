########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file DoubleDefinition.pm
# Type definition for vAPI Double built-in type.
#

package Com::Vmware::Vapi::Data::Definition::DoubleDefinition;

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
use Com::Vmware::Vapi::Data::Value::DoubleValue;

use base qw(Com::Vmware::Vapi::Data::Definition::DataDefinition);

# @method new
# Constructor to initialize the DoubleDefinition object
#
# @param Value - Double Value
#
# @return
# Blessed object
#
sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(type => Com::Vmware::Vapi::Data::Type::DOUBLE);
   bless $self, $class;
   return ($self);
}

# @method new_value
# Create a new DoubleValue.
#
# @param Value - Double Value
#
# @return
# A new Double value using the given data-definition
#
sub new_value {
   my ($self, %args) = @_;
   my $value = $args {value};
   return new Com::Vmware::Vapi::Data::Value::DoubleValue (value => $value);
}

1;