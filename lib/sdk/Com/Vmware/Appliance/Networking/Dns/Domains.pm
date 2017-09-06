########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Domains.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking::Dns::Domains
# ``Com::Vmware::Appliance::Networking::Dns::Domains``   *interface*  provides 
#     *methods*  DNS search domains.
#

package Com::Vmware::Appliance::Networking::Dns::Domains;

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
use Com::Vmware::Appliance::Networking::Dns::DomainsStub;

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
# Add domain to DNS search domains.
#
# @param domain [REQUIRED] Domain to add.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub add {
   my ($self, %args) = @_;
   my $domain = $args {domain};

   $self->validate_args (method_name => 'add',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add',
                         method_args => \%args);
}


## @method set ()
# Set DNS search domains.
#
# @param domains [REQUIRED] List of domains.
# . The value must be Array of String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $domains = $args {domains};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method list ()
# Get list of DNS search domains.
#
# @retval 
# List of domains.
# The return type will be Array of String
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Networking::Dns::Domains service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking::Dns::Domains service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking::Dns::Domains service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Networking::Dns::Domains service
#########################################################################################
