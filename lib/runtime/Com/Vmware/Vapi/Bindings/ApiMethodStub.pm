########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file ApiMethodStub.pm
# The file implements interface for generated stubs.
#

package Com::Vmware::Vapi::Bindings::ApiMethodStub;

## @class ApiMethodStub
# Stub class for Api Method
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::Converter;
use Com::Vmware::Vapi::Util::Logger qw(log_info log_error log_verbose log_warning log_framework log_dumper);


# @method new
# Constructor to initialize the ApiMethod skeleton object
#
# @param config - Configuration data for vAPI stubs
# @param input_type - Binding type of method input
# @param output_type - Binding type of method output
# @param errors - Map from canonical type names to Error types for the
#                 errors that this method can report
# @param input_validator_list - List of validators to be run on input data to the API method
# @param output_validator_list - List of validators to be run on output data to the API method
#
# @return
# Blessed object
#

sub new {
   my ($class, %params) = @_;
   my $self = {};
   $self->{input_type} = $params{input_type};
   $self->{output_type} = $params{output_type};
   $self->{errors} = $params{errors};
   $self->{input_validator_list} = $params{input_validator_list};
   $self->{output_validator_list} = $params{output_validator_list};
   $self->{config} = $params{config};
   bless ($self, $class);
   log_dumper (MSG => $self);

   return ($self);
}

## @method call
# Execute the remote vAPI method. It serializes perl object
# into data value, invokes the method using :class:`vmware.vapi.core.ApiProvider`
# instance and deserializes the result back into perl object
#
# @params method_args - The arguments to be passed to the method
#
# @return
# Method result

sub call {
   my ($self, %params) = @_;
   my $MethodArgs = $params{method_args};
   Com::Vmware::Vapi::Bindings::Type::Converter::convert_to_vapi(
      binding_type => $self->{input_type},
      perl_value => $MethodArgs
   );
   return 1;
}

1;