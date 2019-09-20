########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file VapiEnum.pm
# Representation of VMODL Enumeration in perl language bindings.
#

package Com::Vmware::Vapi::Bindings::VapiEnum;

## @class VapiEnum
# Representation of Enumeration in Perl language Binding
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
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# Static variables
#
my $BindingType = undef;

## @method new
# Constructor to initialize the VapiEnum object
#
# @return
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = {};
   bless ($self, $class);
   return ($self);
}


## @method get_binding_type
# Returns the corresponding binding type for the VapiEnum class
#
# @param  None
#
# @return
# Binding type of for this VapiEnum `Com::Vmware::Vapi::Data::Value::BindingType`
#
sub get_binding_type {
   return $BindingType;
}

## @method set_binding_type
# Set the corresponding binding type for the VapiEnum class
#
# @param  binding_type - Binding type of for this VapiEnum `Com::Vmware::Vapi::Data::Value::BindingType`
#
# @return
# None
#
sub set_binding_type {
   my ($self, %args) = @_;
   $BindingType = $args{binding_type};
   return;
}

1;