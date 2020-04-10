########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Proxy.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking::Proxy
# The  ``Com::Vmware::Appliance::Networking::Proxy``   *interface*  provides  *methods* 
#     Proxy configuration. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Appliance::Networking::Proxy;

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
use Com::Vmware::Appliance::Networking::ProxyStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.networking.proxy';


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

## @method test ()
# Tests a proxy configuration by testing the connection to the proxy server and test host.
# This  *method*  was added in vSphere API 6.7.
#
# @param host [REQUIRED] A hostname, IPv4 or Ipv6 address.
# . The value must be String.
#
# @param protocol [REQUIRED] Protocol whose proxy is to be tested.
# . The value must be String.
#
# @param config [REQUIRED] Proxy configuration to test.
# . The value must be Com::Vmware::Appliance::Networking::Proxy::Config.
#
# @retval 
# Status of proxy settings.
# The return type will be Com::Vmware::Appliance::Networking::Proxy::TestResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#
sub test {
   my ($self, %args) = @_;
   my $host = $args {host};
   my $protocol = $args {protocol};
   my $config = $args {config};

   $self->validate_args (method_name => 'test',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'test',
                         method_args => \%args);
}

## @method set ()
# Configures which proxy server to use for the specified protocol. This operation sets
# environment variables for using proxy. In order for this configuration to take effect a
# logout / service restart is required. This  *method*  was added in vSphere API 6.7.
#
# @param protocol [REQUIRED] The protocol for which proxy should be set.
# . The value must be String.
#
# @param config [REQUIRED] Proxy configuration for the specific protocol.
# . The value must be Com::Vmware::Appliance::Networking::Proxy::Config.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#
sub set {
   my ($self, %args) = @_;
   my $protocol = $args {protocol};
   my $config = $args {config};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method delete ()
# Deletes a proxy configuration for a specific protocol. This  *method*  was added in
# vSphere API 6.7.
#
# @param protocol [REQUIRED] ID whose proxy is to be deleted.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#
sub delete {
   my ($self, %args) = @_;
   my $protocol = $args {protocol};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method list ()
# Gets proxy configuration for all configured protocols. This  *method*  was added in
# vSphere API 6.7.
#
# @retval 
# Proxy configuration for all configured protocols.
# The return type will be Dictionary of Com::Vmware::Appliance::Networking::Proxy::Protocol
# and Com::Vmware::Appliance::Networking::Proxy::Config
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method get ()
# Gets the proxy configuration for a specific protocol. This  *method*  was added in vSphere
# API 6.7.
#
# @param protocol [REQUIRED] The protocol whose proxy configuration is requested.
# . The value must be String.
#
# @retval 
# Proxy configuration for a specific protocol.
# The return type will be Com::Vmware::Appliance::Networking::Proxy::Config
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error.
#
sub get {
   my ($self, %args) = @_;
   my $protocol = $args {protocol};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Networking::Proxy service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Proxy::Protocol
#
# ``Com::Vmware::Appliance::Networking::Proxy::Protocol``   *enumerated type*  defines
#     the protocols for which proxying is supported. This  *enumeration*  was added in
#     vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Networking::Proxy::Protocol::HTTP #
#Proxy configuration for http. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Networking::Proxy::Protocol::HTTPS #
#Proxy configuration for https. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Networking::Proxy::Protocol::FTP #
#Proxy configuration for ftp. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Networking::Proxy::Protocol;

use constant {
    HTTP =>  'HTTP',
    HTTPS =>  'HTTPS',
    FTP =>  'FTP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Proxy::Protocol enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.proxy.protocol',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Proxy::Protocol');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Networking::Proxy::ServerStatus
#
# ``Com::Vmware::Appliance::Networking::Proxy::ServerStatus``   *enumerated type* 
#     defines the status of the server associated with the test run. This  *enumeration* 
#     was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Networking::Proxy::ServerStatus::SERVER_REACHABLE #
#Server is reachable. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Networking::Proxy::ServerStatus::SERVER_UNREACHABLE #
#Server is unreachable. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Networking::Proxy::ServerStatus;

use constant {
    SERVER_REACHABLE =>  'SERVER_REACHABLE',
    SERVER_UNREACHABLE =>  'SERVER_UNREACHABLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Proxy::ServerStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.proxy.server_status',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Proxy::ServerStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking::Proxy service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking::Proxy service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Proxy::Config
#
#
# The  ``Com::Vmware::Appliance::Networking::Proxy::Config``   *class*  defines proxy
#     configuration. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Networking::Proxy::Config;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Proxy::Config structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{server} = $args{'server'};
   $self->{port} = $args{'port'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};
   $self->{enabled} = $args{'enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Proxy::Config');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.proxy.config');
   $self->set_binding_field('key' => 'server', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_server ()
# Gets the value of 'server' property.
#
# @retval server - The current value of the field.
# URL of the proxy server. This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_server {
   my ($self, %args) = @_;
   return $self->{'server'}; 	
}

## @method set_server ()
# Sets the given value for 'server' property.
# 
# @param server  - New value for the field.
# URL of the proxy server. This  *field*  was added in vSphere API 6.7.
#
sub set_server {
   my ($self, %args) = @_;
   $self->{'server'} = $args{'server'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# Port to connect to the proxy server. In a &apos;get&apos; call, indicates the port
#     connected to the proxy server. In a &apos;set&apos; call, specifies the port to
#     connect to the proxy server. A value of -1 indicates the default port. This  *field* 
#     was added in vSphere API 6.7.
#
# long#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# Port to connect to the proxy server. In a &apos;get&apos; call, indicates the port
#     connected to the proxy server. In a &apos;set&apos; call, specifies the port to
#     connect to the proxy server. A value of -1 indicates the default port. This  *field* 
#     was added in vSphere API 6.7.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Username for proxy server. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Username for proxy server. This  *field*  was added in vSphere API 6.7.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password for proxy server. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Password for proxy server. This  *field*  was added in vSphere API 6.7.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# In the result of the  ``#get``  and  ``#list``   *methods*  this  *field*  indicates
#     whether proxying is enabled for a particular protocol. In the input to the  ``test`` 
#     and  ``set``   *methods*  this  *field*  specifies whether proxying should be enabled
#     for a particular protocol. This  *field*  was added in vSphere API 6.7.
#
# boolean#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# In the result of the  ``#get``  and  ``#list``   *methods*  this  *field*  indicates
#     whether proxying is enabled for a particular protocol. In the input to the  ``test`` 
#     and  ``set``   *methods*  this  *field*  specifies whether proxying should be enabled
#     for a particular protocol. This  *field*  was added in vSphere API 6.7.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Networking::Proxy::TestResult
#
#
# The  ``Com::Vmware::Appliance::Networking::Proxy::TestResult``   *class*  contains
#     information about the test operation done on a proxy server. This  *class*  was added
#     in vSphere API 6.7.

package Com::Vmware::Appliance::Networking::Proxy::TestResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Proxy::TestResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Proxy::TestResult');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.proxy.test_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking', 'type_name' => 'Proxy::ServerStatus'));
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status of the proxy server indicating whether the proxy server is reachable. This 
#     *field*  was added in vSphere API 6.7.
#
# ServerStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status of the proxy server indicating whether the proxy server is reachable. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Message associated with status. This  *field*  was added in vSphere API 6.7.
#
# LocalizableMessage#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# Message associated with status. This  *field*  was added in vSphere API 6.7.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Networking::Proxy service
#########################################################################################
