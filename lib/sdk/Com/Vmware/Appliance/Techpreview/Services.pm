########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Services.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Techpreview::Services
# ``Com::Vmware::Appliance::Techpreview::Services``   *interface*  provides  *methods* 
#     Manages services.
#

package Com::Vmware::Appliance::Techpreview::Services;

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
use Com::Vmware::Appliance::Techpreview::ServicesStub;

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

## @method control ()
# Manage a service with arbitrary command and arguments.
#
# @param args [REQUIRED] Array of arguments.
# . The value must be Array of String.
#
# @param name [REQUIRED] Name of the service.
# . The value must be String.
#
# @param timeout [REQUIRED] Timeout in seconds. Zero (0) means no timeout.
# . The value must be Long.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub control {
   my ($self, %args) = @_;
   my $args = $args {args};
   my $name = $args {name};
   my $timeout = $args {timeout};

   $self->validate_args (method_name => 'control',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'control',
                         method_args => \%args);
}


## @method list ()
# Get a list of all known services.
#
# @retval 
# List of services.
# The return type will be Array of
# Com::Vmware::Appliance::Techpreview::Services::ServiceInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method stop ()
# Stop a service
#
# @param name [REQUIRED] Name of service.
# . The value must be String.
#
# @param timeout [REQUIRED] Timeout in seconds. Zero (0) means no timeout.
# . The value must be Long.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub stop {
   my ($self, %args) = @_;
   my $name = $args {name};
   my $timeout = $args {timeout};

   $self->validate_args (method_name => 'stop',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'stop',
                         method_args => \%args);
}


## @method restart ()
# start or restart a service
#
# @param name [REQUIRED] Name of the service to start or restart.
# . The value must be String.
#
# @param timeout [REQUIRED] Timeout in seconds. Zero (0) means no timeout.
# . The value must be Long.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub restart {
   my ($self, %args) = @_;
   my $name = $args {name};
   my $timeout = $args {timeout};

   $self->validate_args (method_name => 'restart',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'restart',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Techpreview::Services service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Services::ServiceOps
#
# ``Com::Vmware::Appliance::Techpreview::Services::ServiceOps``   *enumerated type* 
#     Defines service operations
#
#
#
# Constant Com::Vmware::Appliance::Techpreview::Services::ServiceOps::CONTROL #
#The service accepts arbitrary commands and arguments.
#
# Constant Com::Vmware::Appliance::Techpreview::Services::ServiceOps::STATUS #
#The service status can be generated.
#
# Constant Com::Vmware::Appliance::Techpreview::Services::ServiceOps::STOP #
#The service can be stopped.
#
# Constant Com::Vmware::Appliance::Techpreview::Services::ServiceOps::RESTART #
#The service can be started or restarted.

package Com::Vmware::Appliance::Techpreview::Services::ServiceOps;

use constant {
    control =>  'control',
    status =>  'status',
    stop =>  'stop',
    restart =>  'restart',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Services::ServiceOps enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.techpreview.services.service_ops',
                           'binding_class' => 'Com::Vmware::Appliance::Techpreview::Services::ServiceOps');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Techpreview::Services service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Techpreview::Services service
#########################################################################################

## @class Com::Vmware::Appliance::Techpreview::Services::ServiceInfo
#
#
# ``Com::Vmware::Appliance::Techpreview::Services::ServiceInfo``   *class*  Structure
#     that describes a service and the operations you can perform on a service.

package Com::Vmware::Appliance::Techpreview::Services::ServiceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Techpreview::Services::ServiceInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};
   $self->{operations} = $args{'operations'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Techpreview::Services::ServiceInfo');
   $self->set_binding_name('name' => 'com.vmware.appliance.techpreview.services.service_info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'operations', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview', 'type_name' => 'Services::ServiceOps')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the service, for example, &quot;vmware-vpxd&quot;. This name is unique per
#     machine.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The name of the service, for example, &quot;vmware-vpxd&quot;. This name is unique per
#     machine.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# A description of the service. The description can be empty.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# A description of the service. The description can be empty.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_operations ()
# Gets the value of 'operations' property.
#
# @retval operations - The current value of the field.
# The operations encoded in an array, supported by the service.
#
# List#
sub get_operations {
   my ($self, %args) = @_;
   return $self->{'operations'}; 	
}

## @method set_operations ()
# Sets the given value for 'operations' property.
# 
# @param operations  - New value for the field.
# The operations encoded in an array, supported by the service.
#
sub set_operations {
   my ($self, %args) = @_;
   $self->{'operations'} = $args{'operations'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Techpreview::Services service
#########################################################################################
