########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Health.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Health
# The  ``Com::Vmware::Appliance::Health``   *interface*  provides  *methods*  to
#     retrieve the appliance health information. This  *interface*  was added in vSphere API
#     6.7.
#

package Com::Vmware::Appliance::Health;

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
use Com::Vmware::Appliance::HealthStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.health';


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

## @method messages ()
# Get health messages. This  *method*  was added in vSphere API 6.7.
#
# @param item [REQUIRED] ID of the data item
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.health).
# . The value must be str.
#
# @retval 
# List of the health messages
# The return type will be Array of Com::Vmware::Appliance::Notification
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# Unknown health item
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub messages {
   my ($self, %args) = @_;
   my $item = $args {item};

   $self->validate_args (method_name => 'messages',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'messages',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Health service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Health service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Health service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Health service
#########################################################################################
