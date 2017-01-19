########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file StructureRefDefinition.pm
# Type definition for vAPI optional built-in type with a specific element type.
#

package Com::Vmware::Vapi::Data::Definition::StructureRefDefinition;

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
use Com::Vmware::Vapi::Data::Value::StructureRefValue;

use base qw(Com::Vmware::Vapi::Data::Definition::DataDefinition);

# @method new
# Constructor to initialize the StructureRefDefinition object
#
# @param Value - Structure Reference
#
# @return
# Blessed object
#
sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(type => Com::Vmware::Vapi::Data::Type::STRUCTURE_REF);
   bless $self, $class;
   return ($self);
}

# @method new_value
# Create a new StructureRefValue.
#
# @param Value - Element Value
#
# @return
# A new StructureRefValue value using the given data-definition
#
sub new_value {
   my ($self, %args) = @_;
   my $value = $args {value};
   return new Com::Vmware::Vapi::Data::Value::StructureRefValue (value => $value);
}

1;