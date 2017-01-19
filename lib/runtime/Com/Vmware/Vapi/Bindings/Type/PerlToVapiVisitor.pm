########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file PerlToVapiVisitor.pm
# The file implements visitor to convert from Perl native value to vAPI DataValue.
#

package Com::Vmware::Vapi::Bindings::Type::PerlToVapiVisitor;

## @class PerlToVapiVisitor
# Defines the visitor to convert from Perl native value to vAPI DataValue.
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
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_debug log_dumper);
use base qw(Com::Vmware::Vapi::Bindings::Type::BindingTypeVisitor);
use Com::Vmware::Vapi::l10n::Runtime;

## @method new
# Constructor to initialize the visitor object
#
# @param
# Perl type of value
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = $class->SUPER::new();
   $self->{in_value}  = $args{perl_value};
   $self->{out_value} = undef;
   bless( $self, $class );
   return ($self);
}

## @method get_out_value
# Returns the vAPI DataValue converted from the Perl native value
#
# @param
# None.
#
# @return
# vAPI DataValue
#
sub get_out_value {
   my ($self) = shift;
   return $self->{out_value};
}

## @method visit_primitive
# Visit a primitive type perl value
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
   $self->{out_value} = $definition->new_value(value => $self->{in_value} );
   return;
}

## @method visit_void
# Visit a void value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_void {
   my ( $self, %args ) = @_;
   my $type       = $args{binding_type};
   my $definition = $type->get_definition();

   #
   # If inValue is set throw exception
   #
   if ( defined( $self->{in_value} ) && $self->{in_value} ne "" ) {
      my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id =>
           'Com.Vmware.Vapi.Bindings.Type.PerlToVapiVisitor.InvalidParameter',
         args => ['']
      );
      throw InvalidParameter( $msg->str() );
   }
   $self->{out_value} = $definition->new_value();
   return;
}

## @method visit_string
# Visit a string value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_string {
   my ( $self, %args ) = @_;
   $self->visit_primitive(%args);
   return;
}

## @method visit_enum
# Visit a enum value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_enum {
   my ( $self, %args ) = @_;
   $self->visit_primitive(%args);
   return;
}

## @method visit_long
# Visit a long value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_long {
   my ( $self, %args ) = @_;
   $self->visit_primitive(%args);
   return;
}

## @method visit_double
# Visit a Double value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_double {
   my ( $self, %args ) = @_;
   $self->visit_primitive(%args);
   return;
}

## @method visit_blob
# Visit a blob value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_blob {
   my ( $self, %args ) = @_;
   $self->visit_primitive(%args);
   return;
}

## @method visit_boolean
# Visit a boolean value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_boolean {
   my ( $self, %args ) = @_;
   $self->visit_primitive(%args);
   return;
}

## @method visit_secret
# Visit a boolean value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_secret {
   my ( $self, %args ) = @_;
   $self->visit_primitive(%args);
   return;
}

## @method visit_opaque
# Visit a Opaque value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_opaque {
   my ( $self, %args ) = @_;
   $self->visit_primitive(%args);
   return;
}

## @method visit_datetime
# Visit a DateTime value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_datetime {
   my ( $self, %args ) = @_;
   my $type = $args{binding_type};
   my $definition = $type->get_definition();
   my $dt = $self->{in_value};
   if (!defined($dt)) {
      $self->{out_value} = $definition->new_value(value => undef);
      return;
   }
   if (!UNIVERSAL::isa($dt,'Time::Piece')) {
      throw InvalidParameter('The input value for datetime parameter should be a gmtime() object. For more detail, please refer to core Perl module Time::Piece.');
   }

   my $datetime_str = convert_to_vapi_datetime_str('gmtime' => $dt);

    # Reset to UTC timezone
   #$dt->set_time_zone('UTC');
   #my $milli_sec = $dt->millisecond();
   #$milli_sec = sprintf("%03d", $milli_sec);
   #my $date_str = $dt.".".$milli_sec."Z";
   $self->{out_value} = $definition->new_value(value => $datetime_str);
   return;
}

## @method visit_URI
# Visit a URI value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_uri {
   my ( $self, %args ) = @_;
   $self->visit_primitive(%args);
   return;
}

## @method VisitList
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
   my $type        = $args{binding_type};
   my @inValue     = undef;
   if (defined $self->{in_value}) {
   	@inValue = @{$self->{in_value}};
   }
   my $definition  = $type->get_definition();
   my $outValue    = $definition->new_value();
   my $elementType = $type->get_element_type();

   while (@inValue) {
      my $value = shift(@inValue);
      $self->{in_value} = $value;
      $elementType->accept($self);
      $outValue->add( 'value' => $self->{out_value} );
   }
   $self->{in_value}  = @inValue;
   $self->{out_value} = $outValue;
   return;
}

## @method visit_set
# Visit a vapiSet value
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
   $type->get_binding_type()->accept($self);
   return;
}

## @method visit_map
# Visit a vapiMap value
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_map {
   my ( $self, %args ) = @_;
   my $type       = $args{binding_type};
   my $inValue    = $self->{in_value};
   #
   # Create struct value for key and value and then put it in a list. For e.g.
   # [
   #   {key => key_data_value},
   #   {value => value_data_value}
   # ]
   #
   my @list;
   foreach my $item ( keys %$inValue ) {
      my $construct_struct_value = {'key' => $item, 'value' => $inValue->{$item}};
      push(@list, $construct_struct_value);
   }
   $self->{in_value} = \@list;
   $type->get_binding_type->accept($self);
   $self->{InValue}  = \@list;
   return;
}

## @method visit_struct
# Visit a VapiStruct type
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_struct {
   my ( $self, %args ) = @_;
   my $type       = $args{binding_type};
   my $inValue    = $self->{in_value};
   my $definition = $type->get_definition();
   my $structName = $type->get_name();

   # pass empty value to constuct fresh outValue
   my $outValue = $definition->new_value( name => $structName, value => {} );
   my @fieldNames = $type->get_field_names();
   while (@fieldNames) {
      my $field = pop(@fieldNames);
      $self->{in_value} = $inValue->{$field};
      #
      # If the structure member is undef, consider that user didn't specified this parameter
      #
      if ( !defined( $self->{in_value} ) ) {
         #next;
      }
      my $fieldType = $type->get_field($field);
      $fieldType->accept($self);
      $outValue->set_field(
         field => $field,
         value => $self->{out_value}
      );
   }
   $self->{in_value}  = $inValue;
   $self->{out_value} = $outValue;

#
# If the input structure value is not empty and it is VapiStruct then validate the VapiStruct
# before sending it on wire.
#
   if (  ref($inValue)
      && UNIVERSAL::can( $inValue, 'can' )
      && $inValue->can('validate_struct_value') )
   {
      $inValue->validate_struct_value( 'struct_value' => $self->{out_value} );
   }
   return;
}

## @method visit_dynamic_struct
# Visit a VapiDynamicStruct type
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_dynamic_struct {
   my ( $self, %args ) = @_;
   my $type       = $args{binding_type};
   my $inValue    = $self->{in_value};
   my $definition = $type->get_definition();
   my $structName = $type->get_name();

   if ( $self->{in_value}->isa('Com::Vmware::Vapi::Bindings::VapiStruct') ) {
      $self->visit_struct( 'binding_type' => $self->{in_value}->get_binding_type() );
      #
      # Validate the structure before sending it on wire
      #
      $inValue->validate_struct_value( 'struct_value' => $self->{out_value} );
   }

   return;
}

## @method visit_reference
# Visit a VapiReference type
#
# @param
# Binding type of value
#
# @return
# None.
#
sub visit_reference {
   my ( $self, %args ) = @_;
   my $type         = $args{binding_type};
   my $resolvedType = $type->get_resolved_type();
   $resolvedType->accept($self);
}

## @method visit_optional
# Visit a VapiOptional value
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
   if ( !defined( $self->{in_value} ) ) {
      $self->{out_value} = $type->get_definition()->new_value();
   }
   else {
      $type->get_element_type()->accept($self);
      $self->{out_value} =
        $type->get_definition()->new_value( 'value' => $self->{out_value} );
   }
}

1;
