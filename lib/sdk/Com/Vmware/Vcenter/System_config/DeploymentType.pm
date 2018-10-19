########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file DeploymentType.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Deployment;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::System_config::DeploymentType
# The  ``Com::Vmware::Vcenter::System_config::DeploymentType``   *interface*  provides 
#     *methods*  to get/set the type of the appliance. This  *interface*  was added in
#     vSphere API 6.7.
#

package Com::Vmware::Vcenter::System_config::DeploymentType;

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
use Com::Vmware::Vcenter::System_config::DeploymentTypeStub;

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
# Get the type of the vCenter appliance. This  *method*  was added in vSphere API 6.7.
#
# @retval 
# The type of the vCenter appliance.
# The return type will be Com::Vmware::Vcenter::System_config::DeploymentType::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if appliance is not in CONFIGURED state.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method reconfigure ()
# Reconfigure the type of the vCenter appliance. This  *method*  was added in vSphere API
# 6.7.
#
# @param spec [REQUIRED] ReconfigureSpec to set the appliance type.
# . The value must be Com::Vmware::Vcenter::System_config::DeploymentType::ReconfigureSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the appliance is in CONFIGURED state and if not changing the type form
#     VCSA_EMBEDDED to VCSA_EXTERNAL.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed arguments are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if external PSC credentials are not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the appliance is not in INITIALIZED or CONFIGURED state.
#

sub reconfigure {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'reconfigure',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'reconfigure',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::System_config::DeploymentType service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::System_config::DeploymentType service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::System_config::DeploymentType service
#########################################################################################

## @class Com::Vmware::Vcenter::System_config::DeploymentType::Info
#
#
# The  ``Com::Vmware::Vcenter::System_config::DeploymentType::Info``   *class*  contains
#     the fields used to get the appliance type. This  *class*  was added in vSphere API
#     6.7.

package Com::Vmware::Vcenter::System_config::DeploymentType::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::System_config::DeploymentType::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::System_config::DeploymentType::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.system_config.deployment_type.info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'ApplianceType'));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of the appliance. This  *field*  was added in vSphere API 6.7.
#
# ApplianceType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type of the appliance. This  *field*  was added in vSphere API 6.7.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::System_config::DeploymentType::ReconfigureSpec
#
#
# The  ``Com::Vmware::Vcenter::System_config::DeploymentType::ReconfigureSpec``  
#     *class*  contains the fields used to get and set the appliance type. This  *class* 
#     was added in vSphere API 6.7.

package Com::Vmware::Vcenter::System_config::DeploymentType::ReconfigureSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::System_config::DeploymentType::ReconfigureSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{remote_psc} = $args{'remote_psc'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::System_config::DeploymentType::ReconfigureSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.system_config.deployment_type.reconfigure_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'ApplianceType'));
   $self->set_binding_field('key' => 'remote_psc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'RemotePscSpec')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of the appliance. This  *field*  was added in vSphere API 6.7.
#
# ApplianceType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type of the appliance. This  *field*  was added in vSphere API 6.7.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_remote_psc ()
# Gets the value of 'remote_psc' property.
#
# @retval remote_psc - The current value of the field.
# External PSC to register with when reconfiguring a VCSA_EMBEDDED appliance to a
#     VCSA_EXTERNAL appliance. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_remote_psc {
   my ($self, %args) = @_;
   return $self->{'remote_psc'}; 	
}

## @method set_remote_psc ()
# Sets the given value for 'remote_psc' property.
# 
# @param remote_psc  - New value for the field.
# External PSC to register with when reconfiguring a VCSA_EMBEDDED appliance to a
#     VCSA_EXTERNAL appliance. This  *field*  was added in vSphere API 6.7.
#
sub set_remote_psc {
   my ($self, %args) = @_;
   $self->{'remote_psc'} = $args{'remote_psc'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::System_config::DeploymentType service
#########################################################################################
