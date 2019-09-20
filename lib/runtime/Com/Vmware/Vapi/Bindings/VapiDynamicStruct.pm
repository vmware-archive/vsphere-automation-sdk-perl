########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file VapiStruct.pm
# Representation of VMODL Dynamic Structure in perl language bindings.
#
package Com::Vmware::Vapi::Bindings::VapiDynamicStruct;

## @class VapiStruct
# Representation of Dynamic Structure in Perl language Binding
#
# @par Assumptions:
# None.
#

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StringType;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

## @method new
# Constructor to initialize the VapiDynamicStruct object
#
# @param binding_class - Class name of the dynamic structure
# @param binding_name - Name of the dynamic structure 
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   $self->set_binding_class('binding_class' => $args{'binding_class'});
   $self->set_binding_name('name' => $args{'binding_name'});   
   bless( $self, $class );   
   return ($self);
}

## @method add_field
# Add a new field with value
#
# @param field_name - Field name 
# @param field_value - Field value
#
# @retval
# None
#
sub add_field {
   my ( $self, %args ) = @_;   
   $self->{$args{field_name}} = $args{field_value};
   #
   # Figure out the type of the field.
   #
   $self->set_binding_field('key' => $args{field_name}, 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   return;
}

## @method get_field_value
# Gets value of given field
#
# @param field_name - Field name 
# 
# @retval
# Field Value
#
sub get_field_value {
   my ( $self, %args ) = @_;   
   if (defined $self->{$args{field_name}}) {
   	return $self->{$args{field_name}};
   }
   return undef;
}

1;
