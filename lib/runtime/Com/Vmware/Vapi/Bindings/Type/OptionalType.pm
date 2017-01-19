########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file OptionalType.pm
# The file implements Optional Type in Perl Binding.
#

package Com::Vmware::Vapi::Bindings::Type::OptionalType;

## @class OptionalType
# Representation of Optional Type in Perl Binding
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Bindings::Type::BindingType'.

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Bindings::Type::BindingType);

## @method new
# Constructor to initialize the optional type object
#
# @param
# None.
#
# @return
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   $self->{element_type} = $args{element_type};
   bless ($self, $class);
   return ($self);
}

## @method get_element_type
# Returns the ElementType
#
# @param
# Field name.
#
# @return
# ElementType of the fields 
#
sub get_element_type {
   my $self = shift;
   return $self->{'element_type'};
}

1;