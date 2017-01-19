########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file EnumType.pm
# The file implements Enumure Type in Perl Binding.
#

package Com::Vmware::Vapi::Bindings::Type::EnumType;

## @class EnumType
# Representation of Enumure Type in Perl Binding
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
# ConEnumor to initialize the Enumure type object
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
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   $self->{name} = $name;
   $self->{binding_class} = $args{binding_class};
   bless ($self, $class);
   return ($self);
}

## @method get_enum_name
# Returns the enum name for the given enum value 
#
# @param
# Enum Name.
#
# @return
# Name of the Enum
#
sub get_enum_name {
   my ($self, %args) = @_;
   
   my $ret = $self->{binding_class}."->".$args{value};
   #
   #TODO:: validate whether the enum is available or not.
   #
   return $ret;
   
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