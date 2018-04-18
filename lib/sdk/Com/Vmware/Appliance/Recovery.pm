########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Recovery.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery
# The  ``Com::Vmware::Appliance::Recovery``   *interface*  provides  *methods*  to
#     invoke an appliance recovery (backup and restore). This  *interface*  was added in
#     vSphere API 6.7
#

package Com::Vmware::Appliance::Recovery;

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
use Com::Vmware::Appliance::RecoveryStub;

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

## @method get ()
# Gets the properties of the appliance Recovery subsystem. This  *method*  was added in
# vSphere API 6.7
#
# @retval 
# Structure containing the properties of the Recovery subsystem.
# The return type will be Com::Vmware::Appliance::Recovery::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if any error occurs during the execution of the operation.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Info
#
#
# The  ``Com::Vmware::Appliance::Recovery::Info``   *class*  contains the information
#     about the appliance recovery environment. This  *class*  was added in vSphere API 6.7

package Com::Vmware::Appliance::Recovery::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{supported} = $args{'supported'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.info');
   $self->set_binding_field('key' => 'supported', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_supported ()
# Gets the value of 'supported' property.
#
# @retval supported - The current value of the field.
# Is recovery supported in this appliance. This  *field*  was added in vSphere API 6.7
#
# boolean#
sub get_supported {
   my ($self, %args) = @_;
   return $self->{'supported'}; 	
}

## @method set_supported ()
# Sets the given value for 'supported' property.
# 
# @param supported  - New value for the field.
# Is recovery supported in this appliance. This  *field*  was added in vSphere API 6.7
#
sub set_supported {
   my ($self, %args) = @_;
   $self->{'supported'} = $args{'supported'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery service
#########################################################################################
