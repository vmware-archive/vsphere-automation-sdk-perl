########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Hostname.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Networking::Dns::Hostname
# ``Com::Vmware::Appliance::Networking::Dns::Hostname``   *interface*  provides 
#     *methods*  Performs operations on Fully Qualified Doman Name.
#

package Com::Vmware::Appliance::Networking::Dns::Hostname;

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
use Com::Vmware::Appliance::Networking::Dns::HostnameStub;

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
# Test the Fully Qualified Domain Name.
#
# @param name [REQUIRED] FQDN.
# . The value must be String.
#
# @retval 
# FQDN status
# The return type will be Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatusInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub test {
   my ($self, %args) = @_;
   my $name = $args {name};

   $self->validate_args (method_name => 'test',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'test',
                         method_args => \%args);
}


## @method set ()
# Set the Fully Qualified Domain Name.
#
# @param name [REQUIRED] FQDN.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub set {
   my ($self, %args) = @_;
   my $name = $args {name};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}


## @method get ()
# Get the Fully Qualified Doman Name.
#
# @retval 
# FQDN.
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
# Begins enumerations for the Com::Vmware::Appliance::Networking::Dns::Hostname service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus
#
# ``Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus``   *enumerated type* 
#     Health indicator
#
#
#
# Constant Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus::ORANGE #
#In case data has more than one test, this indicates not all tests were successful
#
# Constant Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus::GREEN #
#All tests were successful for given data
#
# Constant Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus::RED #
#All tests failed for given data

package Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus;

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
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.dns.hostname.test_status',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus
#
# ``Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus``   *enumerated
#     type*  Individual test result
#
#
#
# Constant Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus::FAILURE #
#message indicates the test failed.
#
# Constant Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus::SUCCESS #
#message indicates that the test was successful.

package Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus;

use constant {
    failure =>  'failure',
    success =>  'success',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.networking.dns.hostname.message_status',
                           'binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Hostname::MessageStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Networking::Dns::Hostname service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Networking::Dns::Hostname service
#########################################################################################

## @class Com::Vmware::Appliance::Networking::Dns::Hostname::Message
#
#
# ``Com::Vmware::Appliance::Networking::Dns::Hostname::Message``   *class*  Test result
#     and message

package Com::Vmware::Appliance::Networking::Dns::Hostname::Message;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Hostname::Message structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Hostname::Message');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.dns.hostname.message');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'result', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Dns', 'type_name' => 'Hostname::MessageStatus'));
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


## @class Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatusInfo
#
#
# ``Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatusInfo``   *class* 
#     Overall test result

package Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatusInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatusInfo structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Networking::Dns::Hostname::TestStatusInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.networking.dns.hostname.test_status_info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Dns', 'type_name' => 'Hostname::TestStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Networking::Dns', 'type_name' => 'Hostname::Message')));
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
# Ends structures for the Com::Vmware::Appliance::Networking::Dns::Hostname service
#########################################################################################
