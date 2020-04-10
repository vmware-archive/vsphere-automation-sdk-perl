########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Health.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Content::Registries::Health
# The  ``Com::Vmware::Vcenter::Content::Registries::Health``   *interface*  provides 
#     *methods*  to retrieve health status for a container registry.
#

package Com::Vmware::Vcenter::Content::Registries::Health;

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
use Com::Vmware::Vcenter::Content::Registries::HealthStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.content.registries.health';


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

## @method get ()
# Returns the health information of a container registry in the vCenter.
#
# @param registry [REQUIRED] Identifier of the registry.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry).
# . The value must be str.
#
# @retval 
# Health information of the registry.
# The return type will be Com::Vmware::Vcenter::Content::Registries::Health::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the registry does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user is not a member of the Administrators
#
sub get {
   my ($self, %args) = @_;
   my $registry = $args {registry};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Content::Registries::Health service
#########################################################################################

## @class Com::Vmware::Vcenter::Content::Registries::Health::Status
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Health::Status``   *enumerated type*
#      describes the status of the container registry.
#
#
#
# Constant Com::Vmware::Vcenter::Content::Registries::Health::Status::STARTING #
#Container registry is starting.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Health::Status::RUNNING #
#Container registry is running.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Health::Status::WARNING #
#Container registry is running with some warning, for example, storage reaches the
# threshold configuration.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Health::Status::ERROR #
#Container registry failed to start or stopped with fatal error.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Health::Status::DELETING #
#Container registry is being deleted.

package Com::Vmware::Vcenter::Content::Registries::Health::Status;

use constant {
    STARTING =>  'STARTING',
    RUNNING =>  'RUNNING',
    WARNING =>  'WARNING',
    ERROR =>  'ERROR',
    DELETING =>  'DELETING',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Health::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.content.registries.health.status',
                           'binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Health::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Content::Registries::Health service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Content::Registries::Health service
#########################################################################################

## @class Com::Vmware::Vcenter::Content::Registries::Health::Info
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Health::Info``   *class*  contains
#     health information about a container registry.

package Com::Vmware::Vcenter::Content::Registries::Health::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Health::Info structure
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
         'discriminant_name' => 'status',
         'case_map' => {
               'WARNING' => ['details'],
               'ERROR' => ['details'],
               'STARTING' => [],
               'RUNNING' => [],
               'DELETING' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{details} = $args{'details'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Health::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.health.info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries', 'type_name' => 'Health::Status'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Container registry status.
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Container registry status.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_details ()
# Gets the value of 'details' property.
#
# @retval details - The current value of the field.
# Details about the status.
#
# optional#
sub get_details {
   my ($self, %args) = @_;
   return $self->{'details'}; 	
}

## @method set_details ()
# Sets the given value for 'details' property.
# 
# @param details  - New value for the field.
# Details about the status.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Content::Registries::Health service
#########################################################################################
