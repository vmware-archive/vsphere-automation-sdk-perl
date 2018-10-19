########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file PscRegistration.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Vcenter::Deployment;

## @class Com::Vmware::Vcenter::System_config::PscRegistration
# The  ``Com::Vmware::Vcenter::System_config::PscRegistration``   *interface*  provides 
#     *methods*  to get and set the PSC_EXTERNAL appliance a VCSA_EXTERNAL appliance is
#     registered with. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::System_config::PscRegistration;

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
use Com::Vmware::Vcenter::System_config::PscRegistrationStub;

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
# Get information of the PSC that this appliance is registered with. This  *method*  was
# added in vSphere API 6.7.
#
# @retval 
# Info structure containing information about the external PSC node this appliance is
#     registered with.
# The return type will be Com::Vmware::Vcenter::System_config::PscRegistration::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the appliance is in NOT_INITIALIZED state.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method repoint ()
# Repoint this vCenter Server appliance to a different external PSC. This  *method*  was
# added in vSphere API 6.7.
#
# @param spec [REQUIRED] RemotePscSpec structure containing information about the external PSC node to repoint
#     this vCenter Server appliance to.
# . The value must be Com::Vmware::Vcenter::Deployment::RemotePscSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the passed external PSC credentials is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the passed external PSC is not a replicating with the current PSC this appliance is
#     registered with.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed arguments are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the current appliance is not of the type VCSA_EXTERNAL.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the appliance is NOT in CONFIGURED state.
#

sub repoint {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'repoint',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'repoint',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::System_config::PscRegistration service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::System_config::PscRegistration service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::System_config::PscRegistration service
#########################################################################################

## @class Com::Vmware::Vcenter::System_config::PscRegistration::Info
#
#
# The  ``Com::Vmware::Vcenter::System_config::PscRegistration::Info``   *class*  has
#     fields to specify information about the PSC node. This  *class*  was added in vSphere
#     API 6.7.

package Com::Vmware::Vcenter::System_config::PscRegistration::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::System_config::PscRegistration::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{address} = $args{'address'};
   $self->{https_port} = $args{'https_port'};
   $self->{sso_domain} = $args{'sso_domain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::System_config::PscRegistration::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.system_config.psc_registration.info');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'sso_domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The IP address or DNS resolvable name of the PSC this appliance is registered with.
#     This  *field*  was added in vSphere API 6.7.
#
# String#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# The IP address or DNS resolvable name of the PSC this appliance is registered with.
#     This  *field*  was added in vSphere API 6.7.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# The HTTPs port used by the external PSC. This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_https_port {
   my ($self, %args) = @_;
   return $self->{'https_port'}; 	
}

## @method set_https_port ()
# Sets the given value for 'https_port' property.
# 
# @param https_port  - New value for the field.
# The HTTPs port used by the external PSC. This  *field*  was added in vSphere API 6.7.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}

## @method get_sso_domain ()
# Gets the value of 'sso_domain' property.
#
# @retval sso_domain - The current value of the field.
# The Single Sign-On domain name of the external PSC. This  *field*  was added in
#     vSphere API 6.7.
#
# String#
sub get_sso_domain {
   my ($self, %args) = @_;
   return $self->{'sso_domain'}; 	
}

## @method set_sso_domain ()
# Sets the given value for 'sso_domain' property.
# 
# @param sso_domain  - New value for the field.
# The Single Sign-On domain name of the external PSC. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_sso_domain {
   my ($self, %args) = @_;
   $self->{'sso_domain'} = $args{'sso_domain'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::System_config::PscRegistration service
#########################################################################################
