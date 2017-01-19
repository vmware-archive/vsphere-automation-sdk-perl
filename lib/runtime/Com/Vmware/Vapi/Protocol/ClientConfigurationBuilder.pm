####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ClientConfigurationBuilder.pm
# The file implements ClientConfigurationBuilder perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class ClientConfigurationBuilder
# This class is used for building ClientConfiguration class
# The class is immutable.
#
package Com::Vmware::Vapi::Protocol::ClientConfigurationBuilder;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Protocol::ClientConfiguration;

# Variable declaration
my ( @requestProcessor, $executor );

#
# @method new
# Constructor
#
# @param None
# @return Blessed object
#
sub new {
   my ( $class, %args ) = @_;
   my $self = {};

   return bless( $self, $class );
}

#
# @method set_request_processors
# Sets the Request Processors list
#
# @param request_processor the request processors that will be used by the client
# @return ClientConfigurationBuilder object
#
sub set_request_processors {
   my ( $self, %args ) = @_;
   $self->{'request_processor'} = $args{'request_processor'};
}

#
# @method get_request_processors
# Gets the Request Processors list
#
# @param None
# @return RequestProcessor list
#
sub get_request_processors {
   my $self = shift;
   return $self->{'request_processor'};
}

#
# @method set_executor
# Sets the executor the client must use to process requests.
#
# @param executor - executor to be used by the client to process requests
# @return None
#
sub set_executor {
   my ( $self, %args ) = @_;
   $self->{'executor'} = $args{'executor'};
}

#
# @method get_config
# Gets configuration details
#
# @param None
# @return ClientConfiguration object
#
sub get_config {
   my $self = shift;
   return Com::Vmware::Vapi::Protocol::ClientConfiguration->new( $self->{'request_processor'},
      $self->{'executor'} );
}

1;
