########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Instances.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespaces::User::Instances
# The  ``Com::Vmware::Vcenter::Namespaces::User::Instances``   *interface*  provides 
#     *methods*  to access namespaces for non-administrative users.
#

package Com::Vmware::Vcenter::Namespaces::User::Instances;

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
use Com::Vmware::Vcenter::Namespaces::User::InstancesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespaces.user.instances';


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

## @method list ()
# Returns namespaces that user making the call is authorized to access.
#
# @retval 
# List of Namespace identifiers together with the API endpoint for each namespace.
# The return type will be Array of
# Com::Vmware::Vcenter::Namespaces::User::Instances::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespaces::User::Instances service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespaces::User::Instances service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespaces::User::Instances service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespaces::User::Instances::Summary
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::User::Instances::Summary``   *class* 
#     contains information about a namespace that user is authorized to access.

package Com::Vmware::Vcenter::Namespaces::User::Instances::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::User::Instances::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{namespace} = $args{'namespace'};
   $self->{master_host} = $args{'master_host'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::User::Instances::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.user.instances.summary');
   $self->set_binding_field('key' => 'namespace', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'master_host', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_namespace ()
# Gets the value of 'namespace' property.
#
# @retval namespace - The current value of the field.
# Identifier of the namespace.
#
# ID#
sub get_namespace {
   my ($self, %args) = @_;
   return $self->{'namespace'}; 	
}

## @method set_namespace ()
# Sets the given value for 'namespace' property.
# 
# @param namespace  - New value for the field.
# Identifier of the namespace.
#
sub set_namespace {
   my ($self, %args) = @_;
   $self->{'namespace'} = $args{'namespace'}; 
   return;	
}

## @method get_master_host ()
# Gets the value of 'master_host' property.
#
# @retval master_host - The current value of the field.
# IP address or FQDN of the API endpoint for the given namespace.
#
# String#
sub get_master_host {
   my ($self, %args) = @_;
   return $self->{'master_host'}; 	
}

## @method set_master_host ()
# Sets the given value for 'master_host' property.
# 
# @param master_host  - New value for the field.
# IP address or FQDN of the API endpoint for the given namespace.
#
sub set_master_host {
   my ($self, %args) = @_;
   $self->{'master_host'} = $args{'master_host'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespaces::User::Instances service
#########################################################################################
