########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file VapiStruct.pm
# Representation of VMODL Structure in perl language bindings.
#
package Com::Vmware::Vapi::Bindings::VapiStruct;

## @class VapiStruct
# Representation of Structure in Perl language Binding
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
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

## @method new
# Constructor to initialize the VapiStruct object
#
# @param
# Mappings - A mapping for all field names whose IDL name does
#            not match PEP8 standard name
# StructValue - The underlying structure value for this VapiStruct
#  `Com::Vmware::Vapi::Data::Value::StructValue`
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   $class = ref($class) || $class;
   my $self = {};
   $self->{'validator_list'} = $args{'validator_list'};
   #$self->{mappings} = $args{mappings};
   #$self->{StructValue} = $args{StructValue};
   $self->{'binding_type'} = new Com::Vmware::Vapi::Bindings::Type::StructType();
   bless( $self, $class );
   return ($self);
}

## @method get_field
# Returns the struct field value
#
# @param  FieldName - Field name as defined in IDL
#
# @return
# field value
#
sub get_field {
   my ( $self, %args ) = @_;
   my $fieldName = $args{field_name};
   if ( defined( $self->{mappings}->{field_name} ) ) {
      return $self->{mappings}->{field_name};
   }
   return undef;
}

## @method get_binding_type
# Returns the corresponding binding type for the VapiStruct class
#
# @param  None
#
# @return
# Binding type of for this VapiStruct `Com::Vmware::Vapi::Data::Value::BindingType`
#
sub get_binding_type {
	my ( $self, %args ) = @_;
   return $self->{'binding_type'};
}

## @method set_binding_type
# Set the corresponding binding type for the VapiStruct class
#
# @param  binding_type - Binding type of for this VapiStruct `Com::Vmware::Vapi::Data::Value::BindingType`
#
# @return
# None
#
sub set_binding_type {
   my ( $self, %args ) = @_;
   $self->{'binding_type'} = $args{binding_type};
   return;
}

## @method set_struct_value
# Set the corresponding StructValue for the VapiStruct class
#
# @param StructValue - StructValue for this VapiStruct `Com::Vmware::Vapi::Data::Value::StructValue`
#
# @return
# None
#
sub set_struct_value {
   my ( $self, %args ) = @_;
   $self->{struct_value} = $args{struct_value};
   return;
}

## @method get_struct_value
# Returns the corresponding StructValue for the VapiStruct class
#
# @param  None
#
# @return
# StructValue for this VapiStruct `Com::Vmware::Vapi::Data::Value::StructValue`
#
sub get_struct_value {
   my ( $self, %args ) = @_;
   if ( !defined( $self->{struct_value} ) ) {
      $self->{struct_value} =
        Com::Vmware::Vapi::Bindings::Type::Converter::convert_to_vapi(
         binding_type => $self->{'binding_type'},
         perl_value   => $self
        );
   }
   return $self->{struct_value};
}

## @method get_attrs
# Returns the the attributes of the vAPI structure object
#
# @param  None
#
# @return
# List of attributes of this object
#
sub get_attrs {
   my ( $self, %args ) = @_;
   return undef;
}

## @method set_attr
# Returns the the attributes of the vAPI structure object
#
# @param  None
#
# @return
# List of attributes of this object
#
sub set_attr {
   my ( $self, %args ) = @_;
   return undef;
}

## @method validate_struct_value
# Validate if the given struct value satisfies all
# the constraints of this VapiStruct.
#
# @param struct_value: Com::Vmware::Vapi::Data::Value::StructValue to be validated
# @param validators: List of validators (Com::Vmware::Vapi::Data::Validator)
#
# @return
# None
#
sub validate_struct_value {
   my ( $self, %args ) = @_;
   if (!defined $self->{validator_list}) {
      return;
   }
   
   my @validatorList = @{$self->{validator_list}};
   my $structValue = $args{'struct_value'};
   foreach my $validator (@validatorList) {
      $validator->validate('data_value' => $structValue);
   }
   return;
}


sub set_binding_class {
	my ( $self, %args ) = @_;
	my $bindingType = $self->get_binding_type();
	$bindingType->{'binding_class'} = $args{'binding_class'};
	return;
}

sub set_binding_name {
	my ( $self, %args ) = @_;
	my $bindingType = $self->get_binding_type();
	$bindingType->{'name'} = $args{'name'};
	return;
}

sub set_binding_field {
	my ( $self, %args ) = @_;
	my $bindingType = $self->get_binding_type();
	$bindingType->{'fields'}->{$args{'key'}} = $args{'value'};
	#log_framework (MSG=>$bindingType);
	return;
}

1;
