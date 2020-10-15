########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ConfigCurrent.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Vcenter::Settings::V1::ConfigCurrent
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::ConfigCurrent``   *interface* 
#     provides  *methods*  to get the current state of the vCenter. <b>Warning:</b> This 
#     *interface*  is available as Technology Preview. These are early access APIs provided
#     to test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#

package Com::Vmware::Appliance::Vcenter::Settings::V1::ConfigCurrent;

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
use Com::Vmware::Appliance::Vcenter::Settings::V1::ConfigCurrentStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.vcenter.settings.v1.config_current';


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
# Returns the current state of the vCenter. <b>Warning:</b> This  *method*  is available as
# Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @retval 

# The return type will be Com::Vmware::Appliance::Vcenter::Settings::V1::DesiredState
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Vcenter::Settings::V1::ConfigCurrent service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Vcenter::Settings::V1::ConfigCurrent service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Vcenter::Settings::V1::ConfigCurrent service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Vcenter::Settings::V1::ConfigCurrent service
#########################################################################################
