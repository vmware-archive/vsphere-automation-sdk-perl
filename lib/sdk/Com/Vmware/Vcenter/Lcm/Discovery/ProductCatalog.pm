########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ProductCatalog.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog``   *interface*  provides
#     information which VMware products can be associated with vCenter Server.
#

package Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog;

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
use Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalogStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.lcm.discovery.product_catalog';


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
# Retrieves a list of all VMware products that can be associated with vCenter Server.
#
# @retval 
# List of all the VMware products which can be associated with vCenter Server
# The return type will be Array of
# Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog::Summary
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog::Summary``   *class* 
#     contains information about each VMware product and its corresponding versions that can
#     be associated with vCenter Server.

package Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog::Summary structure
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
   $self->{versions} = $args{'versions'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.discovery.product_catalog.summary');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'versions', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# A product name that the customer is aware of.
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
# A product name that the customer is aware of.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_versions ()
# Gets the value of 'versions' property.
#
# @retval versions - The current value of the field.
# List of versions the customer can select from.
#
# List#
sub get_versions {
   my ($self, %args) = @_;
   return $self->{'versions'}; 	
}

## @method set_versions ()
# Sets the given value for 'versions' property.
# 
# @param versions  - New value for the field.
# List of versions the customer can select from.
#
sub set_versions {
   my ($self, %args) = @_;
   $self->{'versions'} = $args{'versions'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Discovery::ProductCatalog service
#########################################################################################
