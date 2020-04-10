########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Shell.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Access::Shell
# ``Com::Vmware::Appliance::Access::Shell``   *interface*  provides  *methods*  Get/Set
#     enabled state of BASH.
#

package Com::Vmware::Appliance::Access::Shell;

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
use Com::Vmware::Appliance::Access::ShellStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.access.shell';


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
# Set enabled state of BASH, that is, access to BASH from within the controlled CLI.
#
# @param config [REQUIRED] Shell configuration
# . The value must be Com::Vmware::Appliance::Access::Shell::ShellConfig.
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
# Get enabled state of BASH, that is, access to BASH from within the controlled CLI.
#
# @retval 
# Current shell configuration.
# The return type will be Com::Vmware::Appliance::Access::Shell::ShellConfig
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
# Begins enumerations for the Com::Vmware::Appliance::Access::Shell service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Access::Shell service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Access::Shell service
#########################################################################################

## @class Com::Vmware::Appliance::Access::Shell::ShellConfig
#
#
# ``Com::Vmware::Appliance::Access::Shell::ShellConfig``   *class*  Structure that
#     defines shell configuration.

package Com::Vmware::Appliance::Access::Shell::ShellConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Access::Shell::ShellConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{enabled} = $args{'enabled'};
   $self->{timeout} = $args{'timeout'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Access::Shell::ShellConfig');
   $self->set_binding_name('name' => 'com.vmware.appliance.access.shell.shell_config');
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'timeout', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# Enabled can be set to true or false
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
# Enabled can be set to true or false
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}

## @method get_timeout ()
# Gets the value of 'timeout' property.
#
# @retval timeout - The current value of the field.
# The timeout (in seconds) specifies how long you enable the Shell access. The maximum
#     timeout is 86400 seconds(1 day).
#
# long#
sub get_timeout {
   my ($self, %args) = @_;
   return $self->{'timeout'}; 	
}

## @method set_timeout ()
# Sets the given value for 'timeout' property.
# 
# @param timeout  - New value for the field.
# The timeout (in seconds) specifies how long you enable the Shell access. The maximum
#     timeout is 86400 seconds(1 day).
#
sub set_timeout {
   my ($self, %args) = @_;
   $self->{'timeout'} = $args{'timeout'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Access::Shell service
#########################################################################################
