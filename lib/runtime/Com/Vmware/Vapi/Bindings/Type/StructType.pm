########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file StructType.pm
# The file implements Structure Type in Perl Binding.
#

package Com::Vmware::Vapi::Bindings::Type::StructType;

## @class StructType
# Representation of Structure Type in Perl Binding
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
# Constructor to initialize the structure type object
#
# @param
# None.
#
# @return
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   my $name = $args{name};
   my $fields = $args{fields};
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   $self->{name} = $name;
   $self->{fields} = $fields;
   $self->{binding_class} = $args{binding_class};
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
   my @keys = keys(%$fields);
   return @keys;
}

## @method get_field
# Returns the binding_type of the argument
#
# @param
# Field name.
#
# @return
# binding_type of the field specified
#
sub get_field {
   my $self = shift;
   my $field = shift;
   return $self->{fields}->{$field};
}

## @method get_name
# Returns the Binding Name 
#
# @param
# Field name.
#
# @return
# Name of the BindingType
#
sub get_name {
   my $self = shift;
   return $self->{name};
}

1;