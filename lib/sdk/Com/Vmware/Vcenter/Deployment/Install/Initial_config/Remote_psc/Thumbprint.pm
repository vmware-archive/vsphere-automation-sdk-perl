########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Thumbprint.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint
# The 
#     ``Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint`` 
#     *interface*  provides  *methods*  to get the thumbprint of the remote PSC. This 
#     *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint;

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
use Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::ThumbprintStub;

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
# Gets the SHA1 thumbprint of the remote PSC. This  *method*  was added in vSphere API 6.7.
#
# @param spec [REQUIRED] Information used to connect to the remote PSC.
# . The value must be
# Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint::RemoteSpec.
#
# @retval 
# The thumbprint of the specified remote PSC
# The return type will be String
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# on exception.
#

sub get {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint service
#########################################################################################

## @class Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint::RemoteSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint::RemoteSpec``
#     *class*  contains the information used to connect to the remote PSC. This  *class* 
#     was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint::RemoteSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint::RemoteSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint::RemoteSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.install.initial_config.remote_psc.thumbprint.remote_spec');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The IP address or DNS resolvable name of the remote PSC. This  *field*  was added in
#     vSphere API 6.7.
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
# The IP address or DNS resolvable name of the remote PSC. This  *field*  was added in
#     vSphere API 6.7.
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
# The HTTPS port of the remote PSC. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_https_port {
   my ($self, %args) = @_;
   return $self->{'https_port'}; 	
}

## @method set_https_port ()
# Sets the given value for 'https_port' property.
# 
# @param https_port  - New value for the field.
# The HTTPS port of the remote PSC. This  *field*  was added in vSphere API 6.7.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Deployment::Install::Initial_config::Remote_psc::Thumbprint service
#########################################################################################
