########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Applmgmt.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Health::Applmgmt
# ``Com::Vmware::Appliance::Health::Applmgmt``   *interface*  provides  *methods*  Get
#     health status of applmgmt services.
#

package Com::Vmware::Appliance::Health::Applmgmt;

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
use Com::Vmware::Appliance::Health::ApplmgmtStub;

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

## @method get ()
# Get health status of applmgmt services.
#
# @retval 
# health status
# The return type will be String
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
# Begins enumerations for the Com::Vmware::Appliance::Health::Applmgmt service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Health::Applmgmt service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Health::Applmgmt service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Health::Applmgmt service
#########################################################################################
