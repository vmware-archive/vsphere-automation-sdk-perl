########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file MapType.pm
# The file implements Map Type in Perl Binding.
#

package Com::Vmware::Vapi::Bindings::Type::MapType;

## @class MapType
# Representation of Map Type in Perl Binding
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
use Com::Vmware::Vapi::Util::Logger qw(log_error log_verbose log_warning log_framework log_dumper);
use base qw(Com::Vmware::Vapi::Bindings::Type::BindingType);

## @method new
# Constructor to initialize the Map type object
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
   $self->{binding_type} = $args{binding_type};
   
   $self->{name} = $args{name};
   $self->{key_type} = $args{key_type};
   $self->{value_type} = $args{value_type};
   
   bless ($self, $class);
   return ($self);
}

## @method get_name
# Returns the Binding Name 
#
# @param
# None
#
# @return
# Name of the BindingType
#
sub get_name {
   my $self = shift;
   return $self->{name};
}

## @method get_binding_type
# Returns the Binding Name 
#
# @param
# None
#
# @return
# Name of the BindingType
#
sub get_binding_type {
   my $self = shift;
   return $self->{binding_type};
}

## @method get_key_type
# Gets the KeyType 
#
# @param
# None
#
# @return
# Returns the KeyType
#
sub get_key_type {
   my $self = shift;
   return $self->{key_type};
}

## @method get_key_value
# Gets the KeyValue 
#
# @param
# None
#
# @return
# Returns the KeyValue
#
sub get_key_value {
   my $self = shift;
   return $self->{key_value};
}

1;