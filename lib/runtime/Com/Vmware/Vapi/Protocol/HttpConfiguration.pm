####################################################
# Copyright 2013 VMware, Inc.  All rights reserved.
####################################################
#
# @file HttpConfiguration.pm
# The file implements HttpConfiguration perl module.
#
# @copy 2013, VMware Inc.
#

#
# CPAN Core Modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::ExceptionBase;
use Com::Vmware::Vapi::l10n::Runtime;

#
# @class Com::Vmware::Vapi::Protocol::HttpConfiguration
# This class is used for configuring the HTTP client that is used by the
# runtime client. The class is immutable.
#
package Com::Vmware::Vapi::Protocol::HttpConfiguration;


## @method new ()
# Constructor
#
# @param library_type
# @param ssl_config
# @param io_thread_count
# @param sso_timeout
#
# @retval "Blessed object"
#
sub new {
	my ( $class, %args ) = @_;
	my $self = {};

	$self->{'library_type'}   = $args{'library_type'};
	$self->{'ssl_config'}     = $args{'ssl_config'};
	$self->{'io_thread_count'} = $args{'io_thread_count'};
	$self->{'sso_timeout'}    = $args{'sso_timeout'};

	return bless( $self, $class );
}

## @method get_library_type ()
# Get Library type
#
# @param None
# @retval library_type Returns the type of the HTTP library
# Can be null
#
sub get_library_type {
	my ( $self, %args ) = @_;
	return $self->{'library_type'};
}

## @method get_ssl_configuration ()
# Get SSL Configurations
#
# @param None
#
# @retval ssl_config Returns the SSL configuration
# Can be null
#
sub get_ssl_configuration {
	my ( $self, %args ) = @_;
	return $self->{'ssl_config'};
}

## @method get_io_thread_count ()
# Get IO Threads
#
# @param None
#
# @retval io_thread_count Returns the number of I/ O dispatch threads to be used by the I / O reactor
#
sub get_io_thread_count {
	my ( $self, %args ) = @_;
	return $self->{'io_thread_count'};
}


## @method get_sso_timeout ()
# Get timeout
#
# @param None
#
# @retval sso_timeout Returns the amount of time in milliseconds, the client should wait for a response
# before specified time out
#
sub get_sso_timeout {
	my ( $self, %args ) = @_;
	return $self->{'sso_timeout'};
}

#######################################################################################


## @class Com::Vmware::Vapi::Protocol::HttpConfiguration::SslConfiguration
# This inner class contains the SSL configuration
#
package Com::Vmware::Vapi::Protocol::HttpConfiguration::SslConfiguration;

## @method new ()
# Constructor
# @param trust_store The keystore that contains the trusted certificates cannot be null
#
# @retval "Blessed object"
#
sub new {
	my ( $class, %args ) = @_;
	my $self = {};

	$self->{'trust_store'} = $args{'trust_store'};

	return bless( $self, $class );
}

## @method get_trust_store ()
# Get Trust store
#
# @param None
#
# @retval trust_store Returns the trust store.
# Cannot be null.
#
sub get_trust_store() {
	my ( $self, %args ) = @_;
	return $self->{'trust_store'};
}

#######################################################################################


## @class Com::Vmware::Vapi::Protocol::HttpConfiguration::Builder
# Inner class for building HttpConfiguration class
#
package Com::Vmware::Vapi::Protocol::HttpConfiguration::Builder;


## @method new ()
# Constructor
#
# @param None
#
# @retval "Blessed object"
#
sub new {
	my ( $class, %args ) = @_;
	my $self = {};

  # TODO: NEEDS TO INITIALIZE $self->{'library_type_builder'} VARIABLE WITH THE CONSTANT
  #       DEFINED IN THE 3RD PARTY LIBRARY "constant" TYPE ENUM

	return bless( $self, $class );
}


## @method set_library_type ()
# Sets the type of the HTTP library
#
# @param library_type_builder HTTP library flavor
#
# @retval Builder Returns the current object of Builder class
#
sub set_library_type {
	my ( $self, %args ) = @_;

	$self->{'library_type_builder'} = $args{'library_type_builder'};

	#returns the current object
	return $self;
}


## @method set_ssl_configuration ()
# Sets the SSL configuration
#
# @param ssl_config_builder
#
# @retval Builder Returns the current object of Builder class
#
sub set_ssl_configuration {
	my ( $self, %args ) = @_;

	$self->{'ssl_config_builder'} = $args{'ssl_config_builder'};

	#returns the current object
	return $self;
}


## @method set_io_thread_count ()
# Defines the number of I/O dispatch threads to be used by the I/O
# reactor of the third-party HTTP library.
#
# @param io_thread_count_builder number of I/O threads
#			Defaults to the count of the processors on the machine
#			Must be larger than zero
#
# @retval Builder Returns the current object of Builder class
#
sub set_io_thread_count {
	my ( $self, %args ) = @_;

	$self->{'io_thread_count_builder'} = $args{'io_thread_count_builder'};

	#returns the current object
	return $self;
}


## @method set_so_timeout ()
# Sets the amount of time the client should wait for a response before timing out
#
# @param so_timeout_builder time in milliseconds
#			Zero timeout means wait forever
#			Default is zero
#			Must not be negative
#
# @retval Builder Returns the current object of Builder class
#
sub set_so_timeout {
	my ( $self, %args ) = @_;

	$self->{'so_timeout_builder'} = $args{'so_timeout_builder'};

	#returns the current object
	return $self;
}


## @method get_config ()
# Get HttpConfiguration object
#
# @param None
#
# @retval HttpConfiguration Returns object of HttpConfiguration class
#
sub get_config {
	my ( $self, %args ) = @_;
	_validate();

	# Assuming current number of processors available to be 1
	my $ioThreads =
	  ( !$self->{'io_thread_count_builder'} )
	  ? 1
	  : $self->{'io_thread_count_builder'};
	return Com::Vmware::Vapi::Protocol::HttpConfiguration->new(
		library_type   => $self->{'library_type_builder'},
		ssl_config     => $self->{'ssl_config_builder'},
		io_thread_count => $ioThreads,
		sso_timeout    => $self->{'so_timeout_builder'}
	);
}


## @method _validate ()
# Validates whether IO thread count setting is supported for transport based on library
# [Private method]
#
# @param None
#
# @retval None
#
sub _validate {
	my ( $self, %args ) = @_;
	if (   !$self->{'io_thread_count_builder'}
		&& !$self->{'library_type_builder'} eq
		"USE_CONSTANT_LATER_IF_ANY_3RD_PARTY_LIB_IS_USED" )
	{
          my $message_factory =
        Com::Vmware::Vapi::l10n::Runtime::get_runtime_message_factory();
      my $msg = $message_factory->get_message(
         id => 'Com.Vmware.Vapi.Protocol.HttpConfiguration.IllegalStateException',
         args => [$self->{'library_type_builder'}]
      );
      throw IllegalStateException( $msg->str() );
	}
}

1;
