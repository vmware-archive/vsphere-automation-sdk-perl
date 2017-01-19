########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file VapiError.pm
# Representation of VMODL Error Classes and Factory in Perl Programming language.
#

package Com::Vmware::Vapi::Bindings::VapiError;

## @class VapiError
# Representation of Error in Perl language Binding
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
  qw(log_error log_verbose log_warning log_framework log_dumper);

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

## @method new
# Constructor to initialize the VapiError object
#
# @param
# Mappings - A mapping for all field names whose IDL name does
#            not match PEP8 standard name
# ErrorValue - The underlying structure value for this VapiError
#  `Com::Vmware::Vapi::Data::Value::ErrorValue`
#
# @return
# Blessed object
#
sub new {
	my ( $class, %args ) = @_;
	$class = ref($class) || $class;
	my $self = $class->SUPER::new(%args);

	#$self->{Mappings} = $args{Mappings};
	#$self->{StructValue} = $args{StructValue};
	bless( $self, $class );
	return ($self);
}

## @method get_error_value
# Returns the corresponding ErrorValue for the VapiError class
#
# @param  None
#
# @return
# ErrorValue for this VapiError `Com::Vmware::Vapi::Data::Value::ErrorValue`
#
sub get_error_value {
	my $self = shift;
	return $self->get_struct_value();
}

1;
