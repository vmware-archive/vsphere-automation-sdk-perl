########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file MethodResult.pm
# The file implements MethodResult perl module.
#
# @copy 2013, VMware Inc.
#

## @class MethodResult.pm
# Result of a method call that contains either the output of the method invocation or an error reported by the method invocation.
# These are mutually exclusive.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None.
package Com::Vmware::Vapi::Core::MethodResult;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_error log_verbose log_warning log_debug log_dumper);
use Com::Vmware::Vapi::Util::ExceptionBase;

# @method new
# Constructor to initialize the output and error of the method invocation
#
# @return
# Blessed object
sub new {
   my ( $class, %args ) = @_;
   my $self = {};
   $self->{error} = undef;
   $self->{output} = undef;
   bless( $self, $class );
   return ($self);
}

#
# @method set_output
# Sets Arguments for the output
#
# @param output Argument for the output of MethodResult's instance
#
# @return None
#
sub set_output {
   my ( $self, %args ) = @_;
   $self->{output} = $args{output};
   return;
}

#
# @method get_output
# Get the Output of MethodResult's instance
#
# @param None
#
# @return output of MethodResult's instance
#
sub get_output {
   my $self = shift;
   return $self->{output};
}

#
# @method set_error
# Sets the error for MethodResult.
#
# @param error Argument for the MethodResult's error
#
# @return None
#
sub set_error {
   my ( $self, %args ) = @_;
   $self->{error} = $args{error};
   return;
}

#
# @method get_error
# Get error for MethodResult
#
# @param None
#
# @return error Argument for the MethodResult's error
#
sub get_error {
   my $self = shift;
   return $self->{error};
}

#
# @method get_success
# Get success as true/false
#
# @param None
#
# @return true if the invoked method completed successfully
#
sub get_success {
   my $self = shift;
   if ( defined ($self->{error})) {
      return 0;
   }
   return 1;
}

1;
