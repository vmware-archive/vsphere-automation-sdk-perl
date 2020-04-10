########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file HostsConfig.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::HostsConfig
# The  ``Compatibility``   *interface*  provides  *methods*  to retrieve information
#     about vSphere Namespaces support and licensing.
#

package Com::Vmware::Vcenter::Namespace_management::HostsConfig;

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
use Com::Vmware::Vcenter::Namespace_management::HostsConfigStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.hosts_config';


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
# Returns support and licensing information about hosts under a VC.
#
# @retval 
# Compatibility structure containing information about vSphere Namespaces support and
#     licensing.
# The return type will be Com::Vmware::Vcenter::Namespace_management::HostsConfig::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::HostsConfig service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::HostsConfig service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::HostsConfig service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::HostsConfig::Info
#
#
# The  ``Compatibility``   *class*  contains information about vSphere Namespaces
#     support and licensing.

package Com::Vmware::Vcenter::Namespace_management::HostsConfig::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::HostsConfig::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{namespaces_supported} = $args{'namespaces_supported'};
   $self->{namespaces_licensed} = $args{'namespaces_licensed'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::HostsConfig::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.hosts_config.info');
   $self->set_binding_field('key' => 'namespaces_supported', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'namespaces_licensed', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_namespaces_supported ()
# Gets the value of 'namespaces_supported' property.
#
# @retval namespaces_supported - The current value of the field.
# True if vSphere Namespace feature is supported in this VC.
#
# boolean#
sub get_namespaces_supported {
   my ($self, %args) = @_;
   return $self->{'namespaces_supported'}; 	
}

## @method set_namespaces_supported ()
# Sets the given value for 'namespaces_supported' property.
# 
# @param namespaces_supported  - New value for the field.
# True if vSphere Namespace feature is supported in this VC.
#
sub set_namespaces_supported {
   my ($self, %args) = @_;
   $self->{'namespaces_supported'} = $args{'namespaces_supported'}; 
   return;	
}

## @method get_namespaces_licensed ()
# Gets the value of 'namespaces_licensed' property.
#
# @retval namespaces_licensed - The current value of the field.
# True if vSphere Namespace feature is licensed on any hosts in this VC.
#
# boolean#
sub get_namespaces_licensed {
   my ($self, %args) = @_;
   return $self->{'namespaces_licensed'}; 	
}

## @method set_namespaces_licensed ()
# Sets the given value for 'namespaces_licensed' property.
# 
# @param namespaces_licensed  - New value for the field.
# True if vSphere Namespace feature is licensed on any hosts in this VC.
#
sub set_namespaces_licensed {
   my ($self, %args) = @_;
   $self->{'namespaces_licensed'} = $args{'namespaces_licensed'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::HostsConfig service
#########################################################################################
