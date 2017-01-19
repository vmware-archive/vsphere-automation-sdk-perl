####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file ClientConfiguration.pm
# The file implements ClientConfiguration perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class ClientConfiguration
# This class is used for vAPI runtime client configuration.
# The class is immutable.
#
package Com::Vmware::Vapi::Protocol::ClientConfiguration;

#
# Core Perl modules
#
use strict;
use warnings;

#
# @method new
# Constructor
#
# @param request_processor List of RequestProcessor interface
# @param executor - the executor the client must use to process requests.
#
# @return Blessed object
#
sub new {
	my ( $class, %args ) = @_;
	my $self = {};

	$self->{'request_processor'} = $args{'request_processor'};
	$self->{'executor'}         = $args{'executor'};

	return bless( $self, $class );
}

#
# @method get_request_processors
# Gets the Request Processors list
#
# @param None
# @return request_processor the request processor chain.
# Cannot be null.
#
sub get_request_processors {
	my $self = shift;
	return $self->{'request_processor'};
}

#
# @method get_executor
# Returns the executor which must be used by the client to process
# requests. If there is an executor configured for the client, some
# processing will happen in the executor, instead of the caller thread. The
# methods executed asynchronously will depend on the client and its
# configuration (i.e. sync / async stub, BIO/NIO...)
#
# @param None
# @return the executor the client must use to process requests.
#
sub get_executor {
	my $self = shift;
	return $self->{'executor'};
}

#
# @method create_request_processors_list
# Creates the request processor chain. Sets some default processors
#
# @param additional_processors List of RequestProcessor interface
# @return the request processor chain. Cannot be null
#
sub create_request_processors_list {
	my ( $self, %args ) = @_;
	my @additionalProcessors = $args{'additional_processors'};

	my @requestProcessor;

	if ( scalar(@additionalProcessors) >= 0 ) {
		@requestProcessor = $self->{'request_processor'};
		push( @requestProcessor, @additionalProcessors );
	}
	$self->{'request_processor'} = @requestProcessor;
	return $self->{'request_processor'};
}

1;
