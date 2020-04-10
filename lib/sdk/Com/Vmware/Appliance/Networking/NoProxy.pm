########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file NoProxy.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking::NoProxy
# The  ``Com::Vmware::Appliance::Networking::NoProxy``   *interface*  provides 
#     *methods*  to configure a connection that does not need a proxy. This  *interface* 
#     was added in vSphere API 6.7.
#

package Com::Vmware::Appliance::Networking::NoProxy;

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
use Com::Vmware::Appliance::Networking::NoProxyStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.networking.no_proxy';


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
# Sets servers for which no proxy configuration should be applied. This operation sets
# environment variables. In order for this operation to take effect, a logout from appliance
# or a service restart is required. If IPv4 is enabled, &quot;127.0.0.1&quot; and
# &quot;localhost&quot; will always bypass the proxy (even if they are not explicitly
# configured). This  *method*  was added in vSphere API 6.7.
#
# @param servers [REQUIRED] List of strings representing servers to bypass proxy. A server can be a FQDN, IP
#     address, FQDN:port or IP:port combinations.
# . The value must be Array of String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#
sub set {
   my ($self, %args) = @_;
   my $servers = $args {servers};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method get ()
# Returns servers for which no proxy configuration will be applied. This  *method*  was
# added in vSphere API 6.7.
#
# @retval 
# List of servers for which no proxy configuration will be applied.
# The return type will be Array of String
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Networking::NoProxy service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking::NoProxy service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking::NoProxy service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Networking::NoProxy service
#########################################################################################
