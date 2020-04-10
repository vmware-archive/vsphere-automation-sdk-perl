########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Consolecli.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Access::Consolecli
# ``Com::Vmware::Appliance::Access::Consolecli``   *interface*  provides  *methods* 
#     Get/Set enabled state of CLI.
#

package Com::Vmware::Appliance::Access::Consolecli;

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
use Com::Vmware::Appliance::Access::ConsolecliStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.access.consolecli';


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

## @method set ()
# Set enabled state of the console-based controlled CLI (TTY1).
#
# @param enabled [REQUIRED] Console-based controlled CLI is enabled.
# . The value must be Boolean.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub set {
   my ($self, %args) = @_;
   my $enabled = $args {enabled};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method get ()
# Get enabled state of the console-based controlled CLI (TTY1).
#
# @retval 
# Console-based controlled CLI is enabled.
# The return type will be Boolean
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Access::Consolecli service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Access::Consolecli service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Access::Consolecli service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Access::Consolecli service
#########################################################################################
