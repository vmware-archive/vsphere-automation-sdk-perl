########################################################################
# Copyright (C) 2013,2016 VMware, Inc. All rights reserved.
########################################################################
## @file VapiToPerlVisitor.pm
# The file implements visitor to convert from vAPI DataValue to Perl native value.
#

package Com::Vmware::Vapi::Bindings::Type::VapiToPerlVisitor;

## @class VapiToPerlVisitor
# Defines the visitor to convert from vAPI DataValue to Perl native value.
#
# @par Assumptions:
# Need to load the base class 'Com::Vmware::Vapi::Bindings::Type::BindingTypeVisitor'.
#
# @par Dependencies:
# None.

#
# Core Perl modules
#
use strict;
use warnings;
use Time::Piece;
use Com::Vmware::Vapi::Util::DateTimeUtil qw(convert_to_vapi_datetime_str convert_to_perl_gmtime);

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::VapiDynamicStruct;
use Com::Vmware::Vapi::Util::Helper;
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_debug log_dumper log_framework);

use base qw(Com::Vmware::Vapi::Bindings::Type::BindingTypeVisitor);

## @method new
# Constructor to initialize the visitor object
#
# @param
# vAPI Data Value
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = $class->SUPER::new();
   $self->{in_value}  = $args{data_value};
   $self->{out_value} = undef;
   bless( $self, $class );
   return ($self);
}

## @method get_out_value
# Returns the perl native value converted from the vAPI data value
#
# @param
# None.
#
# @return
# Perl Native Value
#
sub get_out_value {
   my ($self) = shift;
   return $self->{out_value};
}

## @method visit_primitive
# Visit a primitive type vApi data value
#
# @param
# Binding type value
#
# @return
# None
#
sub visit_primitive {
   my ( $self, %args ) = @_;
   my $type       = $args{binding_type};
   my $definition = $type->get_definition();
   $self->{out_value} = $definition->new_value( value => $self->{in_value} );
   return;
}

## @method visit_double
# Visit a Double data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_double {
   my ($self, %args) = @_;
   $self->{out_value} = $self->{in_value}->{value};
   return;
}

## @method visit_string
# Visit a string data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_string {
   my ( $self, %args ) = @_;
   $self->{out_value} = $self->{in_value}->{value};
   return;
}

## @method visit_enum
# Visit a enum data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_enum {
   my ( $self, %args ) = @_;
   my $type       = $args{binding_type};
   $self->{out_value} = $self->{in_value}->{value};
   
   return;
}


## @method visit_boolean
# Visit a boolean data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_boolean {
   my ( $self, %args ) = @_;
   $self->{out_value} = $self->{in_value}->{value};
   return;
}

## @method visit_long
# Visit a long data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_long {
   my ( $self, %args ) = @_;
   $self->{out_value} = $self->{in_value}->{value};
   return;
}

## @method visit_blob
# Visit a blob data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_blob {
   my ( $self, %args ) = @_;
   $self->{out_value} = $self->{in_value}->{value};
   return;
}

## @method visit_secret
# Visit a secret data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_secret {
   my ( $self, %args ) = @_;
   $self->{out_value} = $self->{in_value}->{value};
   return;
}

## @method visit_opaque
# Visit a Opaque data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_opaque {
   my ( $self, %args ) = @_;
   $self->{out_value} = $self->{in_value}->{value};
   return;
}

## @method visit_datetime
# Visit a DateTime data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_datetime {
   my ( $self, %args ) = @_;
   my $date_str = $self->{in_value}->{value};
   if (!defined $date_str) {
      $self->{out_value} = undef;
      return;
   }
   my $dt = convert_to_perl_gmtime('datetime_str' => $date_str);
   #$date_str =~ /(\d{4})-(\d{2})-(\d{2})T(\d{2}):(\d{2}):(\d{2}).(\d{3})Z/;
   #my $dt = DateTime->new (
   #   year       => $1,
   #   month      => $2,
   #   day        => $3,
   #   hour       => $4,
   #   minute     => $5,
   #   second     => $6,
   #   nanosecond => $7*1000000,
   #   time_zone  => 'UTC',
   #);
   $self->{out_value} = $dt;
   return;
}

## @method visit_list
# Visit a VapiList value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_list {
   my ( $self, %args ) = @_;
   my $type = $args{binding_type};
   if ( defined( $self->{in_value} ) ) {
      my @inValue     = @{ $self->{in_value}->{value} };
      my @outValue    = ();
      my $elementType = $type->get_element_type();

      while (@inValue) {
         my $value = shift(@inValue);
         $self->{in_value} = $value;
         $elementType->accept($self);
         push( @outValue, $self->{out_value} );
      }
      $self->{in_value}  = @inValue;
      $self->{out_value} = \@outValue;
   }
   else {
      $self->{out_value} = undef;
   }
   return;
}

## @method visit_struct
# Visit a VapiStruct value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_struct {
   my ( $self, %args ) = @_;

   #log_framework(MSG=>%args);

   #
   # Get the binding class of this structure
   #
   my $type         = $args{binding_type};
   my $bindingClass = $type->{binding_class};
   my $inValue      = $self->{in_value}->{'fields'};
   my %outValue     = ();
   my $definition   = $type->get_definition();
   my @fieldNames   = $type->get_field_names();
   
   while (@fieldNames) {
      my $field = pop(@fieldNames);
      $self->{in_value} = $inValue->{$field};
      my $fieldType = $type->get_field($field);
      $fieldType->accept($self);
      $outValue{$field} = $self->{out_value};      
   }

   $self->{in_value}  = $inValue;   
   #
   # TODO::
   # If there is no binding class associated with this structure (e.g. Map), then return the struct value as it is
   #
   if ($bindingClass) {   
      $self->{out_value} = $bindingClass->new(%outValue);
   } else {
       $self->{out_value} = \%outValue;
   }
   return;
}

## @method visit_dynamic_struct
# Visit a VapiDynamicStruct value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_dynamic_struct {
   my ( $self, %args ) = @_;

   #
   # If the input data value is not present, return empty
   #
   if (!defined($self->{in_value})) {
   	   $self->{out_value} = "";
       return;
   }
   
   #
   # Get the binding class of this structure
   #
   my $type         = $args{binding_type};
   my $bindingClass = $type->{binding_class};
   my $bindingName = $type->{name};
   my $inValue      = $self->{in_value}->{'fields'};
   my %outValue     = ();
   my $definition   = $type->get_definition();
   my @fieldNames   = $self->{in_value}->get_field_names();
   if (!$bindingClass) {
   	   #log_framework(MSG=>$self->{in_value});
   	   $bindingClass = Com::Vmware::Vapi::Util::Helper::get_package_name('name'=> $self->{in_value}->get_name());
   	   $bindingName = $self->{in_value}->get_name();
   }
   #log_framework(MSG=>$bindingClass);
   
   while (@fieldNames) {
      my $field = pop(@fieldNames);
      $self->{in_value} = $inValue->{$field};
      my $fieldType = new Com::Vmware::Vapi::Bindings::Type::StringType(); #$type->get_field($field);
      $fieldType->accept($self);
      $outValue{$field} = $self->{out_value};      
   }

   $self->{in_value}  = $inValue;   
   #
   # TODO::
   # The else part needs to be evauluated whether it needed or not.
   # If there is no binding class associated with this structure (e.g. Map), then return the struct value as it is
   #
   if ($bindingClass) {
   	  if ($bindingClass->can('new') ) {
        $self->{out_value} = $bindingClass->new(%outValue);
   	  } else {
   	  	my $anyValue = new Com::Vmware::Vapi::Bindings::VapiDynamicStruct('binding_class' => $bindingClass,
                                                                  'binding_name' => $bindingName);
        foreach my $key (keys %outValue) {
           $anyValue->add_field('field_name' => $key, 'field_value' => $outValue{$key});	
        }              
   	  	$self->{out_value} = $anyValue;
   	  }
   } else {   	          
       $self->{out_value} = \%outValue;
   }
   return;
}

## @method visitMap
# Visit a map data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_map {
   my ( $self, %args ) = @_;
   my $type = $args{binding_type};
   #
   # Get the Map internal binding type which is List, then convert to perl list value
   #
   my $binding_type = $type->get_binding_type(); 
   $binding_type->accept($self);
   #
   # convert the perl list value in to a perl hash (key => value)
   #   
   my $out_value = $self->{out_value};
   my %hash = ();
   foreach my $item  (@$out_value) {
   	  $hash{$item->{'key'}} = $item->{'value'};
   }
   $self->{out_value} = \%hash;
   return;
}

## @method visitSet
# Visit a set data value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_set {
   my ( $self, %args ) = @_;   
   my $type = $args{binding_type};
   #log_framework("MSG" => $self);
   my $btype = $type->get_binding_type();
   $self->visit_list('binding_type' => $btype);
   #log_framework("MSG" => $self);
   return;
}

## @method visit_reference
# Visit a reference data  value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_reference {
   my ( $self, %args ) = @_;
   #log_framework(MSG=>%args);
   my $type         = $args{binding_type};
   my $resolvedType = $type->get_resolved_type();
   #log_framework(MSG=>$resolvedType);
   $resolvedType->accept($self);
   return;
}

## @method visit_optional
# Visit a VapiOptional data value
#
# @param
# vApi Optional Binding type of the value
#
# @return
# None.
#
sub visit_optional {
   my ( $self, %args ) = @_;
   my $type = $args{binding_type};
   if ( defined( $self->{in_value} ) ) {
      $self->{in_value} = $self->{in_value}->{value};
      $type->get_element_type()->accept($self);
   }
   else {
      $self->{out_value} = undef;
   }
}

## @method visit_void
# Visit a VapiVoid data value
#
# @param
# vApi Void Binding type of the value
#
# @return
# None.
#
sub visit_void {
   my ( $self, %args ) = @_;
   $self->{out_value} = undef;   
}

## @method visit_uri
# Visit a VapiURI data value
#
# @param
# vApi URI Binding type of the value
#
# @return
# None.
#
sub visit_uri {
   my ( $self, %args ) = @_;
   $self->{out_value} = $self->{in_value}->{value};
}

1;