########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file BindingType.pm
# The file implements the binding classes for vAPI structures.
#

package Com::Vmware::Vapi::Bindings::Type::BindingType;

## @class BindingType
# Defines the binding types for vAPI structures
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Bindings::Type::TypeUtil'.

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);
use Com::Vmware::Vapi::Bindings::Type::TypeUtil qw(convert_to_data_definition);

## @method new
# Constructor to initialize the BindingType object
#
# @param
# None.
#
# @return
# Blessed object
#
sub new
{
   my $class = shift;
   my $parent = ( caller(1) )[3];
   $parent =~ s/.*Type::(.*)Type::new/$1/;
   my $self = {};
   $self->{method_type} = lc($parent);
   $self->{definition} = undef;
   $self->{binding_type} = undef;
   bless ($self, $class);
   return ($self);
}

## @method get_definition
# Gets the Definition to convert BindingType object.
#
# @return
# Definition - Data definition
#
# @par Side Effects:
# None
#
sub get_definition {
   my ($self) = shift;
   if (!defined $self->{definition}) {
      $self->{definition} = convert_to_data_definition (binding_type => $self);
   }
   return $self->{definition};
}

## @method accept
# Applies a visitor to this BindingType
#
# @param visitor - visitor operating on the BindingType
#
# @return:
# BindingType visitor.
#
sub accept {
   my ($self) = shift;
   my $visitor = shift;
   $visitor->visit(binding_type => $self);
}

## @method get_method_type
# Gets the MethodType.
#
# @return
# MethodType.
#
# @par Side Effects:
# None
#
sub get_method_type {
   my ($self) = shift;
   return $self->{method_type};
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

1;