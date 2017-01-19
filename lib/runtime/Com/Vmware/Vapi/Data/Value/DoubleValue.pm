########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file DoubleValue.pm
# DataValue class for optionals.
#

package Com::Vmware::Vapi::Data::Value::DoubleValue;

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
use base qw(Com::Vmware::Vapi::Data::Value::PrimitiveValue);
use Com::Vmware::Vapi::Data::Type;

# @method new
# Constructor to initialize the DoubleValue object
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
   my $self = $class->SUPER::new (data_type => Com::Vmware::Vapi::Data::Type->DOUBLE);
   $self->{value} = $args{value};
   bless ($self, $class);

   return ($self);
}

1;