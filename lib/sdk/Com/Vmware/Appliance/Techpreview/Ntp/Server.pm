########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Server.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Ntp::Server
# ``Com::Vmware::Appliance::Techpreview::Ntp::Server``   *interface*  provides 
#     *methods*  Performs NTP configuration.
#

package Com::Vmware::Appliance::Techpreview::Ntp::Server;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Appliance::Techpreview::Ntp::ServerStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method add ()
# Add NTP servers. This command adds NTP servers to the configuration. If the time
# synchronization is NTP-based, then NTP daemon is restarted to reload the new NTP servers.
# Otherwise, this command just adds servers to the NTP configuration.
#
# @param servers [REQUIRED] List of host names or IP addresses of NTP servers.
# . The value must be Array of String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub add {
   my ($self, %args) = @_;
   my $servers = $args {servers};

   $self->validate_args (method_name => 'add',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add',
                         method_args => \%args);
}


## @method set ()
# Set NTP servers. This command deletes old NTP servers from the configuration and sets the
# input NTP servers in the configuration. If the time synchronization is NTP-based, the NTP
# daemon is restarted to reload the new NTP configuration. Otherwise, this command just
# replaces servers in the NTP configuration.
#
# @param servers [REQUIRED] List of host names or ip addresses of ntp servers.
# . The value must be Array of String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $servers = $args {servers};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method delete ()
# Delete NTP servers. This command deletes NTP servers from the configuration. If the time
# synchronization mode is NTP-based, the NTP daemon is restarted to reload the new NTP
# configuration. Otherwise, this command just deletes servers from the NTP configuration.
#
# @param servers [REQUIRED] List of host name or ip addresses of ntp servers.
# . The value must be Array of String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub delete {
   my ($self, %args) = @_;
   my $servers = $args {servers};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Ntp::Server service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Ntp::Server service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Ntp::Server service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Ntp::Server service
#########################################################################################
