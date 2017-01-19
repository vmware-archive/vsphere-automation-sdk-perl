########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file DynamicStructType.pm
# The file implements Structure Type in Perl Binding.
#

package Com::Vmware::Vapi::Bindings::Type::DynamicStructType;

## @class DynamicStructType
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
use base qw(Com::Vmware::Vapi::Bindings::Type::StructType);
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
   $class = ref($class) || $class;
   my $self = $class->SUPER::new(%args);
   $self->{has_fields_of_type} = $args{'has_fields_of_type'};
   bless ($self, $class);
   return ($self);
}

## @method has_fields_of_type
#  Returns list of reference types whose fields need to be present in the
#  StructValue for this DynamicStruct type
#
# @param
# None.
#
# @return
# List of refrence types
#
sub has_fields_of_type {
   my $self = shift;
   return $self->{has_fields_of_type};
}

## @method get_method_type
# Overriding the gets the MethodType method.
#
# @return
# MethodType.
#
# @par Side Effects:
# None
#
sub get_method_type {
   my ($self) = shift;
   return 'dynamic_struct';
}

1;