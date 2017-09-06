########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Proxy.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy``   *interface*  provides 
#     *methods*  Proxy configuration.
#

package Com::Vmware::Appliance::Techpreview::Networking::Proxy;

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
use Com::Vmware::Appliance::Techpreview::Networking::ProxyStub;

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

## @method test ()
# Test a Proxy configuration by testing the connection to the proxy server and test host.
#
# @param config [REQUIRED] Proxy configuration to test
# . The value must be
# Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigTest.
#
# @retval 
# Status of proxy settings.
# The return type will be
# Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatusInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub test {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'test',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'test',
                         method_args => \%args);
}


## @method set ()
# Set Proxy configuration. In order for this configuration to take effect a logout is
# required.
#
# @param config [REQUIRED] List of Proxy configurations to be set.
# . The value must be
# Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $config = $args {config};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method delete ()
# Delete a Proxy configuration for a specific protocol.
#
# @param protocol [REQUIRED] Protocol to delete proxy of.
# . The value must be Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub delete {
   my ($self, %args) = @_;
   my $protocol = $args {protocol};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method get ()
# Get proxy configuration for all protocols.
#
# @retval 
# proxy configuration for all protocols.
# The return type will be
# Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple
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
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Proxy service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol``  
#     *enumerated type*  Defines different proxy protocols
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol::FTP #
#proxy configuration for ftp.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol::HTTP #
#proxy configuration for http.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol::HTTPS #
#proxy configuration for https.

package Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol;

use constant {
    ftp =>  'ftp',
    http =>  'http',
    https =>  'https',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.proxy.proxy_protocol',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyProtocol');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus``   *enumerated
#     type*  Health indicator
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus::ORANGE #
#In case data has more than one test, this indicates not all tests were successful
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus::GREEN #
#All tests were successful for given data
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus::RED #
#All tests failed for given data

package Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus;

use constant {
    orange =>  'orange',
    green =>  'green',
    red =>  'red',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.proxy.test_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus``  
#     *enumerated type*  Individual test result
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus::FAILURE #
#message indicates the test failed.
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus::SUCCESS #
#message indicates that the test was successful.

package Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus;

use constant {
    failure =>  'failure',
    success =>  'success',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.proxy.message_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Proxy::MessageStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus``   *enumerated
#     type*  Defines state of proxy
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus::DISABLED #
#proxy configuration is disabled
#
# Constant Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus::ENABLED #
#proxy configuration is enabled

package Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus;

use constant {
    disabled =>  'disabled',
    enabled =>  'enabled',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.networking.proxy.proxy_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Networking::Proxy service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Networking::Proxy service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy::Message
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::Message``   *class*  Test
#     result and message

package Com::Vmware::Appliance::Techpreview::Networking::Proxy::Message;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Proxy::Message structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{message} = $args{'message'};
   $self->{result} = $args{'result'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Proxy::Message');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.proxy.message');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'result', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Proxy::MessageStatus'));
   bless $self, $class;
   return $self;
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# message
#
# String#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# message
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}

## @method get_result ()
# Gets the value of 'result' property.
#
# @retval result - The current value of the field.
# result of the test
#
# MessageStatus#
sub get_result {
   my ($self, %args) = @_;
   return $self->{'result'}; 	
}

## @method set_result ()
# Sets the given value for 'result' property.
# 
# @param result  - New value for the field.
# result of the test
#
sub set_result {
   my ($self, %args) = @_;
   $self->{'result'} = $args{'result'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatusInfo
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatusInfo``   *class* 
#     Overall test result

package Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatusInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatusInfo structure
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
   $self->{messages} = $args{'messages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Proxy::TestStatusInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.proxy.test_status_info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Proxy::TestStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Proxy::Message')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Overall status of tests run.
#
# TestStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Overall status of tests run.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# messages
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# messages
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigTest
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigTest``   *class* 
#     Structure that defines proxy configuration.

package Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigTest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigTest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{protocol} = $args{'protocol'};
   $self->{server} = $args{'server'};
   $self->{port} = $args{'port'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};
   $self->{testhost} = $args{'testhost'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigTest');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.proxy.proxy_config_test');
   $self->set_binding_field('key' => 'protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Proxy::ProxyProtocol'));
   $self->set_binding_field('key' => 'server', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'testhost', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_protocol ()
# Gets the value of 'protocol' property.
#
# @retval protocol - The current value of the field.
# protocol being configured.
#
# ProxyProtocol#
sub get_protocol {
   my ($self, %args) = @_;
   return $self->{'protocol'}; 	
}

## @method set_protocol ()
# Sets the given value for 'protocol' property.
# 
# @param protocol  - New value for the field.
# protocol being configured.
#
sub set_protocol {
   my ($self, %args) = @_;
   $self->{'protocol'} = $args{'protocol'}; 
   return;	
}

## @method get_server ()
# Gets the value of 'server' property.
#
# @retval server - The current value of the field.
# hostname or ip of proxy server
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
# hostname or ip of proxy server
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
# port to connect to the proxy server on. A value of -1 indicates that the default port
#     is being used.
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
# port to connect to the proxy server on. A value of -1 indicates that the default port
#     is being used.
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
# username for proxy server.
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# username for proxy server.
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
# password for proxy server.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# password for proxy server.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_testhost ()
# Gets the value of 'testhost' property.
#
# @retval testhost - The current value of the field.
# Verify that a hostname (www.vmware.com) or IPv4 or Ipv6 address of the testhost is
#     accessible through proxy.
#
# String#
sub get_testhost {
   my ($self, %args) = @_;
   return $self->{'testhost'}; 	
}

## @method set_testhost ()
# Sets the given value for 'testhost' property.
# 
# @param testhost  - New value for the field.
# Verify that a hostname (www.vmware.com) or IPv4 or Ipv6 address of the testhost is
#     accessible through proxy.
#
sub set_testhost {
   my ($self, %args) = @_;
   $self->{'testhost'} = $args{'testhost'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfig
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfig``   *class* 
#     Structure that defines proxy configuration.

package Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{protocol} = $args{'protocol'};
   $self->{server} = $args{'server'};
   $self->{port} = $args{'port'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.proxy.proxy_config');
   $self->set_binding_field('key' => 'protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Proxy::ProxyProtocol'));
   $self->set_binding_field('key' => 'server', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_protocol ()
# Gets the value of 'protocol' property.
#
# @retval protocol - The current value of the field.
# protocol being configured.
#
# ProxyProtocol#
sub get_protocol {
   my ($self, %args) = @_;
   return $self->{'protocol'}; 	
}

## @method set_protocol ()
# Sets the given value for 'protocol' property.
# 
# @param protocol  - New value for the field.
# protocol being configured.
#
sub set_protocol {
   my ($self, %args) = @_;
   $self->{'protocol'} = $args{'protocol'}; 
   return;	
}

## @method get_server ()
# Gets the value of 'server' property.
#
# @retval server - The current value of the field.
# hostname or ip of proxy server
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
# hostname or ip of proxy server
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
# port to connect to the proxy server on. A value of -1 indicates that the default port
#     is being used.
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
# port to connect to the proxy server on. A value of -1 indicates that the default port
#     is being used.
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
# username for proxy server.
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# username for proxy server.
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
# password for proxy server.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# password for proxy server.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple
#
#
# ``Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple``  
#     *class*  Structure representing multiple proxy configuration.

package Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple structure
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
   $self->{configlist} = $args{'configlist'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Networking::Proxy::ProxyConfigMultiple');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.networking.proxy.proxy_config_multiple');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Proxy::ProxyStatus'));
   $self->set_binding_field('key' => 'configlist', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Networking', 'type_name' => 'Proxy::ProxyConfig')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# proxy enabled or disabled This sets whether the proxy configuration is used.
#
# ProxyStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# proxy enabled or disabled This sets whether the proxy configuration is used.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_configlist ()
# Gets the value of 'configlist' property.
#
# @retval configlist - The current value of the field.
# List of proxy configuration.
#
# List#
sub get_configlist {
   my ($self, %args) = @_;
   return $self->{'configlist'}; 	
}

## @method set_configlist ()
# Sets the given value for 'configlist' property.
# 
# @param configlist  - New value for the field.
# List of proxy configuration.
#
sub set_configlist {
   my ($self, %args) = @_;
   $self->{'configlist'} = $args{'configlist'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Networking::Proxy service
#########################################################################################
