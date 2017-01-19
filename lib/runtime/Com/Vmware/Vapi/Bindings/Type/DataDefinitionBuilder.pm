########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file DataDefinitionBuilder.pm
# The file builds the Data Definition for vAPI DataValue.
#

package Com::Vmware::Vapi::Bindings::Type::DataDefinitionBuilder;

## @class DataDefinitionBuilder
# Builds the Data Definition for vAPI DataValue.
#
# @par Assumptions:
# Need to load the base class 'Com::Vmware::Vapi::Bindings::Type::BindingTypeVisitor'.
#
# @par Dependencies:
# The file is dependent on 'Com::Vmware::Vapi::Data::Definition::StructDefinition',
# and 'Com::Vmware::Vapi::Data::Definition::StringDefinition'
#

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Data::Definition::StructDefinition;
use Com::Vmware::Vapi::Data::Definition::DynamicStructDefinition;
use Com::Vmware::Vapi::Data::Definition::StringDefinition;
use Com::Vmware::Vapi::Data::Definition::ListDefinition;
use Com::Vmware::Vapi::Data::Definition::LongDefinition;
use Com::Vmware::Vapi::Data::Definition::OptionalDefinition;
use Com::Vmware::Vapi::Data::Definition::VoidDefinition;
use Com::Vmware::Vapi::Data::Definition::BooleanDefinition;
use Com::Vmware::Vapi::Data::Definition::SecretDefinition;
use Com::Vmware::Vapi::Data::Definition::BlobDefinition;
use Com::Vmware::Vapi::Data::Definition::DoubleDefinition;
use Com::Vmware::Vapi::Data::Definition::OpaqueDefinition();
use Com::Vmware::Vapi::Data::Definition::DateTimeDefinition();
use Com::Vmware::Vapi::Data::Definition::URIDefinition();
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);

use base qw(Com::Vmware::Vapi::Bindings::Type::BindingTypeVisitor);

## @method new
# Constructor to initialize DataDefinitionBuilder
#
# @param ctx - Data definition reference resolver object
# @param SeenStructures - List of structures seen
#
# @return
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   my $self = $class->SUPER::new();
   $self->{ctx} = $args{'ctx'};
   $self->{seen_structures} = $args{'seen_structures'};
   $self->{out_value} = undef;
   bless ($self, $class);
   return ($self);
}

## @method get_out_value
# Returns the data definition
#
# @param
# None.
#
# @return - data definition
#
sub get_out_value {
   my ($self) = shift;
   return $self->{out_value};
}

## @method visit_primitive
# Visit a primitive value
#
# @param
# Binding type value
#
# @return
# None
#
sub visit_primitive {
   my ($self) = shift;
   return;
}

## @method visit_struct
# Visit a VapiStruct value
#
# @param
# Binding type of the value
#
# @return
# None
#
sub visit_struct {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::StructDefinition();
}

## @method visit_dynamic_struct
# Visit a VapiDynamicStruct value
#
# @param
# Binding type of the value
#
# @return
# None
#
sub visit_dynamic_struct {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::DynamicStructDefinition();
}

#
# TODO:: Map and set needs to be implemented
#

## @method visit_map
# Visit a VapiMap value
#
# @param
# Binding type of the value
#
# @return
# None
#
sub visit_map {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::ListDefinition();
}

## @method visit_set
# Visit a VapiSet value
#
# @param
# Binding type of the value
#
# @return
# None
#
sub visit_set {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::ListDefinition();
}

## @method visit_string
# Visit a string value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_string {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::StringDefinition();
}

## @method visit_enum
# Visit a enum value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_enum {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::StringDefinition();
}

## @method visit_integer
# Visit a integer value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_long {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::LongDefinition();
}

## @method visit_double
# Visit a Double value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_double {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::DoubleDefinition();
}

## @method visit_boolean
# Visit a boolean value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_boolean {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::BooleanDefinition();
}

## @method visit_secret
# Visit a secret value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_secret {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::SecretDefinition();
}

## @method visit_blob
# Visit a blob value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_blob {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::BlobDefinition();
}

## @method visit_list
# Visit a List value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_list {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::ListDefinition();
}

## @method visit_optional
# Visit an Optional value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_optional {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::OptionalDefinition();
}


## @method visit_datetime
# Visit an DateTime value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_datetime {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::DateTimeDefinition();
}


## @method visit_opaque
# Visit an Opaque value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_opaque {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::OpaqueDefinition();
}

## @method visit_URI
# Visit an URI value
#
# @param
# Binding type of value
#
# @return
# None
#
sub visit_uri {
   my ($self) = shift;
   $self->{out_value} = new Com::Vmware::Vapi::Data::Definition::URIDefinition();
}

1;