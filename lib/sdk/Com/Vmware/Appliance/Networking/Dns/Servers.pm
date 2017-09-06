########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Servers.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking::Dns::Servers
# ``Com::Vmware::Appliance::Networking::Dns::Servers``   *interface*  provides 
#     *methods*  DNS server configuration.
#

package Com::Vmware::Appliance::Networking::Dns::Servers;

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
use Com::Vmware::Appliance::Networking::Dns::ServersStub;

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
# Test if dns servers are reachable.
#
# @param servers [REQUIRED] DNS servers.
# . The value must be Array of String.
#
# @retval 
# DNS reacable status
# The return type will be Com::Vmware::Appliance::Networking::Dns::Servers::TestStatusInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub test {
   my ($self, %args) = @_;
   my $servers = $args {servers};

   $self->validate_args (method_name => 'test',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'test',
                         method_args => \%args);
}


## @method add ()
# Add a DNS server. This method fails if mode argument is &quot;dhcp&quot;
#
# @param server [REQUIRED] DNS server.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub add {
   my ($self, %args) = @_;
   my $server = $args {server};

   $self->validate_args (method_name => 'add',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add',
                         method_args => \%args);
}


## @method set ()
# Set the DNS server configuration. If you set the mode argument to &quot;DHCP&quot;, a DHCP
# refresh is forced.
#
# @param config [REQUIRED] DNS server configuration.
# . The value must be Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig.
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


## @method get ()
# Get DNS server configuration.
#
# @retval 
# DNS server configuration.
# The return type will be Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig
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
# Begins enumerations for the Com::Vmware::Appliance::Networking::Dns::Servers service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode
#
# ``Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode``   *enumerated
#     type*  Describes DNS Server source (DHCP,static)
#
#
#
# Constant Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode::DHCP #
#DNS address is automatically assigned by a DHCP server.
#
# Constant Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode::IS_STATIC #
#DNS address is static.

package Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode;

use constant {
    dhcp =>  'dhcp',
    is_static =>  'is_static',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.dns.servers.DNS_server_mode',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus
#
# ``Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus``   *enumerated type* 
#     Health indicator
#
#
#
# Constant Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus::ORANGE #
#In case data has more than one test, this indicates not all tests were successful
#
# Constant Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus::GREEN #
#All tests were successful for given data
#
# Constant Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus::RED #
#All tests failed for given data

package Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus;

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
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.dns.servers.test_status',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Servers::TestStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus
#
# ``Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus``   *enumerated
#     type*  Individual test result
#
#
#
# Constant Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus::FAILURE #
#message indicates the test failed.
#
# Constant Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus::SUCCESS #
#message indicates that the test was successful.

package Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus;

use constant {
    failure =>  'failure',
    success =>  'success',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.dns.servers.message_status',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Servers::MessageStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking::Dns::Servers service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking::Dns::Servers service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig
#
#
# ``Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig``   *class*  This
#     structure represents the configuration state used to determine DNS servers.

package Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{mode} = $args{'mode'};
   $self->{servers} = $args{'servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Servers::DNSServerConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.dns.servers.DNS_server_config');
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Dns', 'type_name' => 'Servers::DNSServerMode'));
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# Define how to determine the DNS servers. Leave the servers argument empty if the mode
#     argument is &quot;DHCP&quot;. Set the servers argument to a comma-separated list of
#     DNS servers if the mode argument is &quot;static&quot;. The DNS server are assigned
#     from the specified list.
#
# DNSServerMode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# Define how to determine the DNS servers. Leave the servers argument empty if the mode
#     argument is &quot;DHCP&quot;. Set the servers argument to a comma-separated list of
#     DNS servers if the mode argument is &quot;static&quot;. The DNS server are assigned
#     from the specified list.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# List of the currently used DNS servers.
#
# List#
sub get_servers {
   my ($self, %args) = @_;
   return $self->{'servers'}; 	
}

## @method set_servers ()
# Sets the given value for 'servers' property.
# 
# @param servers  - New value for the field.
# List of the currently used DNS servers.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Networking::Dns::Servers::Message
#
#
# ``Com::Vmware::Appliance::Networking::Dns::Servers::Message``   *class*  Test result
#     and message

package Com::Vmware::Appliance::Networking::Dns::Servers::Message;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Servers::Message structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Servers::Message');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.dns.servers.message');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'result', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Dns', 'type_name' => 'Servers::MessageStatus'));
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


## @class Com::Vmware::Appliance::Networking::Dns::Servers::TestStatusInfo
#
#
# ``Com::Vmware::Appliance::Networking::Dns::Servers::TestStatusInfo``   *class* 
#     Overall test result

package Com::Vmware::Appliance::Networking::Dns::Servers::TestStatusInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Servers::TestStatusInfo structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Servers::TestStatusInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.dns.servers.test_status_info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Dns', 'type_name' => 'Servers::TestStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Dns', 'type_name' => 'Servers::Message')));
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



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Networking::Dns::Servers service
#########################################################################################
