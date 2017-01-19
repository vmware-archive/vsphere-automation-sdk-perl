########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file StructureRefValue.pm
# DataValue class for structure reference.
#

package Com::Vmware::Vapi::Data::Value::StructureRefValue;

#
# Core Perl modules
#
use strict;
use warnings;
use Exception::Class;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Data::Type;

use base qw(Com::Vmware::Vapi::Data::Value::PrimitiveValue);

# @method new
# Constructor to initialize the StructureRefValue object
#
# @param Value - Structure reference
#
# @return
# Blessed object
#
sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new (data_type => Com::Vmware::Vapi::Data::Type->STRUCTURE_REF);
   $self->{value} = $args{value};
   bless ($self, $class);

   return ($self);
}

1;