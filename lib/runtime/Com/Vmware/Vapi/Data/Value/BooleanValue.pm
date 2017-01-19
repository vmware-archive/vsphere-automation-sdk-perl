########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file BooleanValue.pm
# The file implements DataValue class for BooleanValue.
#

package Com::Vmware::Vapi::Data::Value::BooleanValue;

## @class BooleanValue
# DataValue class for boolean values
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Data::Value::PrimitiveValue'.

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Data::Value::PrimitiveValue);
use Com::Vmware::Vapi::Data::Type;

## @method new
# Constructor to initialize the boolean value object
#
# @param
# Boolean type of value.
#
# @return
# Blessed object
#
sub new
{
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new (data_type => Com::Vmware::Vapi::Data::Type->BOOLEAN);
   $self->{value} = $args{value};
   bless ($self, $class);

   return ($self);
}

1;