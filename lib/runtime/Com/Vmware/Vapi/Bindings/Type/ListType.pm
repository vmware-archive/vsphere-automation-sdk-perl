########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file ListType.pm
# The file implements List Type in Perl Binding.
#

package Com::Vmware::Vapi::Bindings::Type::ListType;

## @class StructType
# Representation of List Type in Perl Binding
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
use base qw(Com::Vmware::Vapi::Bindings::Type::BindingType);
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);

## @method new
# Constructor to initialize the List type object
#
# @param
# None.
#
# @return
# Blessed object
#
sub new {
   my $class = shift;
   my $elementType = shift;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   $self->{element_type} = $elementType;
   $self->{fields} = "";
   bless ($self, $class);
   return ($self);
}

## @method get_field_names
# Returns the list of field names present in this StructType
#
# @param
# None.
#
# @return
# List of field names
#
sub get_field_names {
   my $self = shift;
   my $fields = $self->{fields};
   log_dumper (MSG => $fields);
   my @keys = keys(%$fields);
   log_dumper (MSG => \@keys);
   return @keys;
}

## @method get_field
# Returns the BindingType of the argument
#
# @param
# Field name.
#
# @return
# BindingType of the field specified
#
sub get_field {
   my $self = shift;
   my $field = shift;
   return $self->{fields}->{$field};
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