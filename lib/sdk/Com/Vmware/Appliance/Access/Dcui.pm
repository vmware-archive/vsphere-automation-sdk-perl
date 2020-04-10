########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Dcui.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Access::Dcui
# ``Com::Vmware::Appliance::Access::Dcui``   *interface*  provides  *methods*  Get/Set
#     enabled state of DCUI.
#

package Com::Vmware::Appliance::Access::Dcui;

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
use Com::Vmware::Appliance::Access::DcuiStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.access.dcui';


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
# Set enabled state of Direct Console User Interface (DCUI TTY2).
#
# @param enabled [REQUIRED] DCUI is enabled.
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
# Get enabled state of Direct Console User Interface (DCUI TTY2).
#
# @retval 
# DCUI is enabled.
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
# Begins enumerations for the Com::Vmware::Appliance::Access::Dcui service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Access::Dcui service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Access::Dcui service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Access::Dcui service
#########################################################################################
