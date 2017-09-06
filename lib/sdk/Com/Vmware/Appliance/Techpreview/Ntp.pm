########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Ntp.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Ntp
# ``Com::Vmware::Appliance::Techpreview::Ntp``   *interface*  provides  *methods*  Gets
#     NTP configuration status and tests connection to ntp servers.
#

package Com::Vmware::Appliance::Techpreview::Ntp;

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
use Com::Vmware::Appliance::Techpreview::NtpStub;

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
# Test the connection to a list of ntp servers.
#
# @param servers [REQUIRED] List of host names or IP addresses of NTP servers.
# . The value must be Array of String.
#
# @retval 
# NTP connection status
# The return type will be Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo
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


## @method get ()
# Get the NTP configuration status. If you run the &apos;timesync.get&apos; command, you can
# retrieve the current time synchronization method (NTP- or VMware Tools-based). The
# &apos;ntp&apos; command always returns the NTP server information, even when the time
# synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based,
# the NTP server status is displayed as down.
#
# @retval 
# NTP config
# The return type will be Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig
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
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Ntp service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus
#
# ``Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus``   *enumerated type*  Defines
#     NTP status
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus::DOWN #
#NTP daemon is not running.
#
# Constant Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus::UNKNOWN #
#Cannot retrieve NTP daemon status.
#
# Constant Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus::UP #
#NTP daemon is running.

package Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus;

use constant {
    Down =>  'Down',
    Unknown =>  'Unknown',
    Up =>  'Up',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.ntp.NTP_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Ntp::NTPStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Ntp::TestStatus
#
# ``Com::Vmware::Appliance::Techpreview::Ntp::TestStatus``   *enumerated type*  Health
#     indicator
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Ntp::TestStatus::ORANGE #
#In case data has more than one test, this indicates not all tests were successful
#
# Constant Com::Vmware::Appliance::Techpreview::Ntp::TestStatus::GREEN #
#All tests were successful for given data
#
# Constant Com::Vmware::Appliance::Techpreview::Ntp::TestStatus::RED #
#All tests failed for given data

package Com::Vmware::Appliance::Techpreview::Ntp::TestStatus;

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
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Ntp::TestStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.ntp.test_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Ntp::TestStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus
#
# ``Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus``   *enumerated type* 
#     Individual test result
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus::FAILURE #
#message indicates the test failed.
#
# Constant Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus::SUCCESS #
#message indicates that the test was successful.

package Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus;

use constant {
    failure =>  'failure',
    success =>  'success',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.ntp.message_status',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Ntp::MessageStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Ntp service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Ntp service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig
#
#
# ``Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig``   *class*  Structure defining
#     the NTP configuration.

package Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig structure
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
   $self->{servers} = $args{'servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Ntp::NTPConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.ntp.NTP_config');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview', 'type_name' => 'Ntp::NTPStatus'));
   $self->set_binding_field('key' => 'servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# NTP daemon running status
#
# NTPStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# NTP daemon running status
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_servers ()
# Gets the value of 'servers' property.
#
# @retval servers - The current value of the field.
# List of NTP servers.
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
# List of NTP servers.
#
sub set_servers {
   my ($self, %args) = @_;
   $self->{'servers'} = $args{'servers'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Techpreview::Ntp::Message
#
#
# ``Com::Vmware::Appliance::Techpreview::Ntp::Message``   *class*  Test result and
#     message

package Com::Vmware::Appliance::Techpreview::Ntp::Message;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Ntp::Message structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Ntp::Message');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.ntp.message');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'result', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview', 'type_name' => 'Ntp::MessageStatus'));
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


## @class Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo
#
#
# ``Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo``   *class*  Overall test
#     result

package Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Ntp::TestStatusInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.ntp.test_status_info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview', 'type_name' => 'Ntp::TestStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview', 'type_name' => 'Ntp::Message')));
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
# Ends structures for the Com::Vmware::Appliance::Techpreview::Ntp service
#########################################################################################
