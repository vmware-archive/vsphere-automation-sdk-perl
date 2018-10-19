########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Ntp.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Ntp
# ``Com::Vmware::Appliance::Ntp``   *interface*  provides  *methods*  Gets NTP
#     configuration status and tests connection to ntp servers. This  *interface*  was added
#     in vSphere API 6.7.
#

package Com::Vmware::Appliance::Ntp;

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
use Com::Vmware::Appliance::NtpStub;

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
# Test the connection to a list of ntp servers. This  *method*  was added in vSphere API
# 6.7.
#
# @param servers [REQUIRED] List of host names or IP addresses of NTP servers.
# . The value must be Array of String.
#
# @retval 
# List of test run statuses.
# The return type will be Array of Com::Vmware::Appliance::Ntp::TestRunStatus
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


## @method set ()
# Set NTP servers. This method updates old NTP servers from configuration and sets the input
# NTP servers in the configuration. If NTP based time synchronization is used internally,
# the NTP daemon will be restarted to reload given NTP configuration. In case NTP based time
# synchronization is not used, this method only replaces servers in the NTP configuration.
# This  *method*  was added in vSphere API 6.7.
#
# @param servers [REQUIRED] List of host names or ip addresses of ntp servers.
# . The value must be Array of String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
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
# Get the NTP configuration status. If you run the &apos;timesync.get&apos; command, you can
# retrieve the current time synchronization method (NTP- or VMware Tools-based). The
# &apos;ntp&apos; command always returns the NTP server information, even when the time
# synchronization mode is not set to NTP. If the time synchronization mode is not NTP-based,
# the NTP server status is displayed as down. This  *method*  was added in vSphere API 6.7.
#
# @retval 
# List of NTP servers.
# The return type will be Array of String
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
# Begins enumerations for the Com::Vmware::Appliance::Ntp service
#########################################################################################

## @class Com::Vmware::Appliance::Ntp::ServerStatus
#
# ``Com::Vmware::Appliance::Ntp::ServerStatus``   *enumerated type*  Status of server
#     during test. This  *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Appliance::Ntp::ServerStatus::SERVER_REACHABLE #
#Server is reachable. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Appliance::Ntp::ServerStatus::SERVER_UNREACHABLE #
#Server is unreachable. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Ntp::ServerStatus;

use constant {
    SERVER_REACHABLE =>  'SERVER_REACHABLE',
    SERVER_UNREACHABLE =>  'SERVER_UNREACHABLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Ntp::ServerStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.ntp.server_status',
                           'binding_class' => 'Com::Vmware::Appliance::Ntp::ServerStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Ntp service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Ntp service
#########################################################################################

## @class Com::Vmware::Appliance::Ntp::LocalizableMessage
#
#
# ``Com::Vmware::Appliance::Ntp::LocalizableMessage``   *class*  Structure representing
#     message. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Ntp::LocalizableMessage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Ntp::LocalizableMessage structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{default_message} = $args{'default_message'};
   $self->{args} = $args{'args'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Ntp::LocalizableMessage');
   $self->set_binding_name('name' => 'com.vmware.appliance.ntp.localizable_message');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'default_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'args', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# id in message bundle. This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# id in message bundle. This  *field*  was added in vSphere API 6.7.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_default_message ()
# Gets the value of 'default_message' property.
#
# @retval default_message - The current value of the field.
# text in english. This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_default_message {
   my ($self, %args) = @_;
   return $self->{'default_message'}; 	
}

## @method set_default_message ()
# Sets the given value for 'default_message' property.
# 
# @param default_message  - New value for the field.
# text in english. This  *field*  was added in vSphere API 6.7.
#
sub set_default_message {
   my ($self, %args) = @_;
   $self->{'default_message'} = $args{'default_message'}; 
   return;	
}

## @method get_args ()
# Gets the value of 'args' property.
#
# @retval args - The current value of the field.
# nested data. This  *field*  was added in vSphere API 6.7.
#
# List#
sub get_args {
   my ($self, %args) = @_;
   return $self->{'args'}; 	
}

## @method set_args ()
# Sets the given value for 'args' property.
# 
# @param args  - New value for the field.
# nested data. This  *field*  was added in vSphere API 6.7.
#
sub set_args {
   my ($self, %args) = @_;
   $self->{'args'} = $args{'args'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Ntp::TestRunStatus
#
#
# ``Com::Vmware::Appliance::Ntp::TestRunStatus``   *class*  Status of the test. This 
#     *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Ntp::TestRunStatus;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Ntp::TestRunStatus structure
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
   $self->{status} = $args{'status'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Ntp::TestRunStatus');
   $self->set_binding_name('name' => 'com.vmware.appliance.ntp.test_run_status');
   $self->set_binding_field('key' => 'server', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Ntp::ServerStatus'));
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance', 'type_name' => 'Ntp::LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_server ()
# Gets the value of 'server' property.
#
# @retval server - The current value of the field.
# Server name associated with the test run. This  *field*  was added in vSphere API 6.7.
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
# Server name associated with the test run. This  *field*  was added in vSphere API 6.7.
#
sub set_server {
   my ($self, %args) = @_;
   $self->{'server'} = $args{'server'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Server status. This  *field*  was added in vSphere API 6.7.
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
# Server status. This  *field*  was added in vSphere API 6.7.
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
# Ends structures for the Com::Vmware::Appliance::Ntp service
#########################################################################################
