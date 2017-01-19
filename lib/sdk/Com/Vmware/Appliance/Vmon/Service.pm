########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Service.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Vmon::Service
# The  ``Com::Vmware::Appliance::Vmon::Service``   *interface*  provides  *methods*  to
#     manage a single/set of services that are managed by vMon.
#

package Com::Vmware::Appliance::Vmon::Service;

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
use Com::Vmware::Appliance::Vmon::ServiceStub;

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

## @method start ()
# Starts a service
#
# @param service [REQUIRED] identifier of the service to start
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.vmon.Service).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service associated with  ``service``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the operation is denied in the current state of the service. If a stop or restart
#     operation is in progress, the start operation will not be allowed.
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if start operation is issued on a service which has startup type 
#     :attr:`Com::Vmware::Appliance::Vmon::Service::StartupType.DISABLED` .
#
# @throw Com::Vmware::Vapi::Std::Errors::TimedOut 
# if any timeout occurs during the execution of the start operation. Timeout occurs when
#     the service takes longer than StartTimeout to start.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any other error occurs during the execution of the operation.
#

sub start {
   my ($self, %args) = @_;
   my $service = $args {service};

   $self->validate_args (method_name => 'start',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'start',
                         method_args => \%args);
}


## @method stop ()
# Stops a service
#
# @param service [REQUIRED] identifier of the service to stop
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.vmon.Service).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service associated with  ``service``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any other error occurs during the execution of the operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the operation is denied in the current state of the service. If a stop operation is
#     in progress, issuing another stop operation will lead to this error.
#

sub stop {
   my ($self, %args) = @_;
   my $service = $args {service};

   $self->validate_args (method_name => 'stop',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'stop',
                         method_args => \%args);
}


## @method restart ()
# Restarts a service
#
# @param service [REQUIRED] identifier of the service to restart
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.vmon.Service).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service associated with  ``service``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::TimedOut 
# if any timeout occurs during the execution of the restart operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the operation is denied in the current state of the service. If a stop or start
#     operation is in progress, issuing a restart operation will lead to this error.
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if a restart operation is issued on a service which has startup type 
#     :attr:`Com::Vmware::Appliance::Vmon::Service::StartupType.DISABLED` 
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any other error occurs during the execution of the operation.
#

sub restart {
   my ($self, %args) = @_;
   my $service = $args {service};

   $self->validate_args (method_name => 'restart',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'restart',
                         method_args => \%args);
}


## @method get ()
# Returns the state of a service.
#
# @param service [REQUIRED] identifier of the service whose state is being queried.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.vmon.Service).
# . The value must be str.
#
# @retval 
# Service Info structure.
# The return type will be Com::Vmware::Appliance::Vmon::Service::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service associated with  ``service``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any other error occurs during the execution of the operation.
#

sub get {
   my ($self, %args) = @_;
   my $service = $args {service};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method update ()
# Updates the properties of a service.
#
# @param service [REQUIRED] identifier of the service whose properties are being updated.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.vmon.Service).
# . The value must be str.
#
# @param spec [REQUIRED] Service Update specification.
# . The value must be Com::Vmware::Appliance::Vmon::Service::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the service associated with  ``service``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any other error occurs during the execution of the operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the operation is denied in the current state of the service. If a start, stop or
#     restart operation is in progress, update operation will fail with this error.
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if a request to set the 
#     :attr:`Com::Vmware::Appliance::Vmon::Service::UpdateSpec.startup_type`   *field*  of 
#     ``spec``  to  :attr:`Com::Vmware::Appliance::Vmon::Service::StartupType.DISABLED` 
#     comes in for a service that is not in 
#     :attr:`Com::Vmware::Appliance::Vmon::Service::State.STOPPED`  state.
#

sub update {
   my ($self, %args) = @_;
   my $service = $args {service};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method list_details ()
# Lists details of services managed by vMon.
#
# @retval 
# Map of service identifiers to service Info structures.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.vmon.Service).
# The return type will be Dictionary of str and Com::Vmware::Appliance::Vmon::Service::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub list_details {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list_details', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Vmon::Service service
#########################################################################################

## @class Com::Vmware::Appliance::Vmon::Service::StartupType
#
# The  ``Com::Vmware::Appliance::Vmon::Service::StartupType``   *enumerated type* 
#     defines valid Startup Type for services managed by vMon.
#
#
#
# Constant Com::Vmware::Appliance::Vmon::Service::StartupType::MANUAL #
#Service Startup type is Manual, thus issuing an explicit start on the service will start
# it.
#
# Constant Com::Vmware::Appliance::Vmon::Service::StartupType::AUTOMATIC #
#Service Startup type is Automatic, thus during starting all services or issuing explicit
# start on the service will start it.
#
# Constant Com::Vmware::Appliance::Vmon::Service::StartupType::DISABLED #
#Service Startup type is Disabled, thus it will not start unless the startup type changes
# to manual or automatic.

package Com::Vmware::Appliance::Vmon::Service::StartupType;

use constant {
    MANUAL =>  'MANUAL',
    AUTOMATIC =>  'AUTOMATIC',
    DISABLED =>  'DISABLED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vmon::Service::StartupType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vmon.service.startup_type',
                           'binding_class' => 'Com::Vmware::Appliance::Vmon::Service::StartupType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Vmon::Service::State
#
# The  ``Com::Vmware::Appliance::Vmon::Service::State``   *enumerated type*  defines
#     valid Run State for services.
#
#
#
# Constant Com::Vmware::Appliance::Vmon::Service::State::STARTING #
#Service Run State is Starting, it is still not functional
#
# Constant Com::Vmware::Appliance::Vmon::Service::State::STOPPING #
#Service Run State is Stopping, it is not functional
#
# Constant Com::Vmware::Appliance::Vmon::Service::State::STARTED #
#Service Run State is Started, it is fully functional
#
# Constant Com::Vmware::Appliance::Vmon::Service::State::STOPPED #
#Service Run State is Stopped

package Com::Vmware::Appliance::Vmon::Service::State;

use constant {
    STARTING =>  'STARTING',
    STOPPING =>  'STOPPING',
    STARTED =>  'STARTED',
    STOPPED =>  'STOPPED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vmon::Service::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vmon.service.state',
                           'binding_class' => 'Com::Vmware::Appliance::Vmon::Service::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Appliance::Vmon::Service::Health
#
# The  ``Com::Vmware::Appliance::Vmon::Service::Health``   *enumerated type*  defines
#     the possible values for health of a service.
#
#
#
# Constant Com::Vmware::Appliance::Vmon::Service::Health::DEGRADED #
#Service is in degraded state, it is not functional.
#
# Constant Com::Vmware::Appliance::Vmon::Service::Health::HEALTHY #
#Service is in a healthy state and is fully functional.
#
# Constant Com::Vmware::Appliance::Vmon::Service::Health::HEALTHY_WITH_WARNINGS #
#Service is healthy with warnings.

package Com::Vmware::Appliance::Vmon::Service::Health;

use constant {
    DEGRADED =>  'DEGRADED',
    HEALTHY =>  'HEALTHY',
    HEALTHY_WITH_WARNINGS =>  'HEALTHY_WITH_WARNINGS',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vmon::Service::Health enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vmon.service.health',
                           'binding_class' => 'Com::Vmware::Appliance::Vmon::Service::Health');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Vmon::Service service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Vmon::Service service
#########################################################################################

## @class Com::Vmware::Appliance::Vmon::Service::Info
#
#
# The  ``Com::Vmware::Appliance::Vmon::Service::Info``   *class*  contains information
#     about a service.

package Com::Vmware::Appliance::Vmon::Service::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vmon::Service::Info structure
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
               'STARTED' => ['health', 'health_messages'],
               'STARTING' => [],
               'STOPPING' => [],
               'STOPPED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name_key} = $args{'name_key'};
   $self->{description_key} = $args{'description_key'};
   $self->{startup_type} = $args{'startup_type'};
   $self->{state} = $args{'state'};
   $self->{health} = $args{'health'};
   $self->{health_messages} = $args{'health_messages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vmon::Service::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.vmon.service.info');
   $self->set_binding_field('key' => 'name_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description_key', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'startup_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vmon', 'type_name' => 'Service::StartupType'));
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vmon', 'type_name' => 'Service::State'));
   $self->set_binding_field('key' => 'health', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vmon', 'type_name' => 'Service::Health')));
   $self->set_binding_field('key' => 'health_messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'))));
   bless $self, $class;
   return $self;
}

## @method get_name_key ()
# Gets the value of 'name_key' property.
#
# @retval name_key - The current value of the field.
# Service name key. Can be used to lookup resource bundle
#
# String#
sub get_name_key {
   my ($self, %args) = @_;
   return $self->{'name_key'}; 	
}

## @method set_name_key ()
# Sets the given value for 'name_key' property.
# 
# @param name_key  - New value for the field.
# Service name key. Can be used to lookup resource bundle
#
sub set_name_key {
   my ($self, %args) = @_;
   $self->{'name_key'} = $args{'name_key'}; 
   return;	
}

## @method get_description_key ()
# Gets the value of 'description_key' property.
#
# @retval description_key - The current value of the field.
# Service description key. Can be used to lookup resource bundle
#
# String#
sub get_description_key {
   my ($self, %args) = @_;
   return $self->{'description_key'}; 	
}

## @method set_description_key ()
# Sets the given value for 'description_key' property.
# 
# @param description_key  - New value for the field.
# Service description key. Can be used to lookup resource bundle
#
sub set_description_key {
   my ($self, %args) = @_;
   $self->{'description_key'} = $args{'description_key'}; 
   return;	
}

## @method get_startup_type ()
# Gets the value of 'startup_type' property.
#
# @retval startup_type - The current value of the field.
# Startup Type.
#
# StartupType#
sub get_startup_type {
   my ($self, %args) = @_;
   return $self->{'startup_type'}; 	
}

## @method set_startup_type ()
# Sets the given value for 'startup_type' property.
# 
# @param startup_type  - New value for the field.
# Startup Type.
#
sub set_startup_type {
   my ($self, %args) = @_;
   $self->{'startup_type'} = $args{'startup_type'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# Running State.
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
# Running State.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_health ()
# Gets the value of 'health' property.
#
# @retval health - The current value of the field.
# Health of service.
#
# optional#
sub get_health {
   my ($self, %args) = @_;
   return $self->{'health'}; 	
}

## @method set_health ()
# Sets the given value for 'health' property.
# 
# @param health  - New value for the field.
# Health of service.
#
sub set_health {
   my ($self, %args) = @_;
   $self->{'health'} = $args{'health'}; 
   return;	
}

## @method get_health_messages ()
# Gets the value of 'health_messages' property.
#
# @retval health_messages - The current value of the field.
# Localizable messages associated with the health of the service
#
# optional#
sub get_health_messages {
   my ($self, %args) = @_;
   return $self->{'health_messages'}; 	
}

## @method set_health_messages ()
# Sets the given value for 'health_messages' property.
# 
# @param health_messages  - New value for the field.
# Localizable messages associated with the health of the service
#
sub set_health_messages {
   my ($self, %args) = @_;
   $self->{'health_messages'} = $args{'health_messages'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vmon::Service::UpdateSpec
#
#
# The  ``Com::Vmware::Appliance::Vmon::Service::UpdateSpec``   *class*  describes the
#     changes to be made to the configuration of the service.

package Com::Vmware::Appliance::Vmon::Service::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vmon::Service::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{startup_type} = $args{'startup_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vmon::Service::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.vmon.service.update_spec');
   $self->set_binding_field('key' => 'startup_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vmon', 'type_name' => 'Service::StartupType')));
   bless $self, $class;
   return $self;
}

## @method get_startup_type ()
# Gets the value of 'startup_type' property.
#
# @retval startup_type - The current value of the field.
# Startup Type
#
# Optional#
sub get_startup_type {
   my ($self, %args) = @_;
   return $self->{'startup_type'}; 	
}

## @method set_startup_type ()
# Sets the given value for 'startup_type' property.
# 
# @param startup_type  - New value for the field.
# Startup Type
#
sub set_startup_type {
   my ($self, %args) = @_;
   $self->{'startup_type'} = $args{'startup_type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Vmon::Service service
#########################################################################################
