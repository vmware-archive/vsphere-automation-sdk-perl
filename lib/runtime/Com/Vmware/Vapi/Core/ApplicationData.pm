####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ApplicationData.pm
# The file implements ApplicationData perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class ApplicationData
#
# Interface representing additional application specific data associated
# with the request for method execution represented by this ExecutionContext
# The application data format is key-value pairs of String.
# This application data is provided by the client initiating the
# execution, it is then transported as is over the wire and is
# available for the provider-side service implementations on the server.
# This extra data is completely opaque for the infrastructure, in other
# words it is a contract between the client and the service implementation only.
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None
#
package Com::Vmware::Vapi::Core::ApplicationData;

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
use base qw(Com::Vmware::Vapi::Core::ExecutionContext);

#
# @method new
# Constructor
#
# @param app_data wireData
#
# @return
# Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = $class->SUPER::new();
   $self->{wire_data} = $args{app_data};

   return bless( $self, $class );
}

#
# @method get_wire_data
# Get WireData
#
# @return blessed object
#
sub get_wire_data() {
   my $self = shift;
   return $self->{wire_data};
}

#
# @method set_wire_data
# Set WireData
#
# @param wire_data
#
# @return None
#
sub set_wire_data() {
   my ( $self, %args ) = @_;
   $self->{wire_data} = $args{wire_data};
   return;
}

1;
