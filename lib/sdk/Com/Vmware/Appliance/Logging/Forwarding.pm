########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Forwarding.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Logging::Forwarding
# The  ``Com::Vmware::Appliance::Logging::Forwarding``   *interface*  provides 
#     *methods*  to manage forwarding of log messages to remote logging servers. This 
#     *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Appliance::Logging::Forwarding;

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
use Com::Vmware::Appliance::Logging::ForwardingStub;

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
# Validates the current log forwarding configuration by checking the liveness of the remote
# machine and optionally sending a test diagnostic log message from the appliance to all
# configured logging servers to allow manual end-to-end validation. The message that is sent
# is: &quot;This is a diagnostic log test message from vCenter Server.&quot;. This  *method*
#  was added in vSphere API 6.7.
#
# @param send_test_message [OPTIONAL] Flag specifying whether a default test message should be sent to the configured
#     logging servers.
# If  *null* , no test message will be sent to the configured remote logging servers.
# . The value must be Boolean or None.
#
# @retval 
# Information about the status of the connection to each of the remote logging servers.
# The return type will be Array of
# Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus
#

sub test {
   my ($self, %args) = @_;
   my $send_test_message = $args {send_test_message};

   $self->validate_args (method_name => 'test',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'test',
                         method_args => \%args);
}


## @method set ()
# Sets the configuration for forwarding log messages to remote log servers. This  *method* 
# was added in vSphere API 6.7.
#
# @param cfg_list [REQUIRED] The cfgList is a list of Config structure that contains the log message forwarding
#     rules in terms of the host, port, protocol of the log message.
# . The value must be Array of Com::Vmware::Appliance::Logging::Forwarding::Config.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if an invalid configuration is provided.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if the number of configurations exceeds the maximum number of supported
#     configurations.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is any internal error during the execution of the operation.
#

sub set {
   my ($self, %args) = @_;
   my $cfg_list = $args {cfg_list};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method get ()
# Returns the configuration for forwarding log messages to remote logging servers. This 
# *method*  was added in vSphere API 6.7.
#
# @retval 
# Information about the configuration for forwarding log messages to remote logging
#     servers.
# The return type will be Array of Com::Vmware::Appliance::Logging::Forwarding::Config
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Logging::Forwarding service
#########################################################################################

## @class Com::Vmware::Appliance::Logging::Forwarding::Protocol
#
# The  ``Com::Vmware::Appliance::Logging::Forwarding::Protocol``   *enumerated type* 
#     defines transport protocols for outbound log messages. This  *enumeration*  was added
#     in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Logging::Forwarding::Protocol::TLS #
#Log messages will be forwarded to the remote host by using the TLS protocol. This 
# *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Logging::Forwarding::Protocol::UDP #
#Log messages will be forwarded to the remote host using the UDP protocol. This  *constant*
#  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Logging::Forwarding::Protocol::TCP #
#Log messages will be forwarded to the remote host using the TCP protocol. This  *constant*
#  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Logging::Forwarding::Protocol;

use constant {
    TLS =>  'TLS',
    UDP =>  'UDP',
    TCP =>  'TCP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Logging::Forwarding::Protocol enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.logging.forwarding.protocol',
                           'binding_class' => 'Com::Vmware::Appliance::Logging::Forwarding::Protocol');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Logging::Forwarding service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Logging::Forwarding service
#########################################################################################

## @class Com::Vmware::Appliance::Logging::Forwarding::Config
#
#
# The  ``Com::Vmware::Appliance::Logging::Forwarding::Config``   *class*  defines the
#     configuration for log message forwarding to remote logging servers. This  *class*  was
#     added in vSphere API 6.7.

package Com::Vmware::Appliance::Logging::Forwarding::Config;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Logging::Forwarding::Config structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{port} = $args{'port'};
   $self->{protocol} = $args{'protocol'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Logging::Forwarding::Config');
   $self->set_binding_name('name' => 'com.vmware.appliance.logging.forwarding.config');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Logging', 'type_name' => 'Forwarding::Protocol'));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# FQDN or IP address of the logging server to which messages are forwarded. This 
#     *field*  was added in vSphere API 6.7.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# FQDN or IP address of the logging server to which messages are forwarded. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# The port on which the remote logging server is listening for forwarded log messages.
#     This  *field*  was added in vSphere API 6.7.
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
# The port on which the remote logging server is listening for forwarded log messages.
#     This  *field*  was added in vSphere API 6.7.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_protocol ()
# Gets the value of 'protocol' property.
#
# @retval protocol - The current value of the field.
# Transport protocol used to forward log messages. This  *field*  was added in vSphere
#     API 6.7.
#
# Protocol#
sub get_protocol {
   my ($self, %args) = @_;
   return $self->{'protocol'}; 	
}

## @method set_protocol ()
# Sets the given value for 'protocol' property.
# 
# @param protocol  - New value for the field.
# Transport protocol used to forward log messages. This  *field*  was added in vSphere
#     API 6.7.
#
sub set_protocol {
   my ($self, %args) = @_;
   $self->{'protocol'} = $args{'protocol'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus
#
#


package Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'state',
         'case_map' => {
               'DOWN' => ['message'],
               'UP' => [],
               'UNKNOWN' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{state} = $args{'state'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus');
   $self->set_binding_name('name' => 'com.vmware.appliance.logging.forwarding.connection_status');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Logging', 'type_name' => 'Forwarding::ConnectionStatus::State'));
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# FQDN or IP address of the configured remote logging servers. This  *field*  was added
#     in vSphere API 6.7.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# FQDN or IP address of the configured remote logging servers. This  *field*  was added
#     in vSphere API 6.7.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# State of the configured remote logging server. This  *field*  was added in vSphere API
#     6.7.
#
# State#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# State of the configured remote logging server. This  *field*  was added in vSphere API
#     6.7.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Message associated with the state of the configured remote logging server. This 
#     *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# Message associated with the state of the configured remote logging server. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus::State
#
# The  ``Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus::State``  
#     *enumerated type*  defines the state values that a remote logging server can be in.
#     This  *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus::State::UP #
#The remote logging server is reachable. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus::State::DOWN #
#The remote logging server is not reachable. This  *constant*  was added in vSphere API
# 6.7.
#
# Constant Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus::State::UNKNOWN #
#The status of remote logging server is unknown. This  *constant*  was added in vSphere API
# 6.7.

package Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus::State;

use constant {
    UP =>  'UP',
    DOWN =>  'DOWN',
    UNKNOWN =>  'UNKNOWN',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.logging.forwarding.connection_status.state',
                           'binding_class' => 'Com::Vmware::Appliance::Logging::Forwarding::ConnectionStatus::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Logging::Forwarding service
#########################################################################################
