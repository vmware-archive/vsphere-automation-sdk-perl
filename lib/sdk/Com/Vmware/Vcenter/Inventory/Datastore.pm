########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Datastore.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Inventory::Datastore
# The  ``Com::Vmware::Vcenter::Inventory::Datastore``   *interface*  provides  *methods*
#      to retrieve information about datastores.
#

package Com::Vmware::Vcenter::Inventory::Datastore;

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
use Com::Vmware::Vcenter::Inventory::DatastoreStub;

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

## @method find ()
# Returns datastore information for the specified datastores. The key in the  *result*  
# *map*  is the datastore identifier and the value in the  *map*  is the datastore
# information.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param datastores [REQUIRED]  Identifiers of the datastores for which information will be returned.
# The value must be an identifier for the resource type getQualifiedName(Datastore).
# . The value must be Array of str.
#
# @retval 
# Datastore information for the specified datastores. The key in the  *result*   *map* 
#     is the datastore identifier and the value in the  *map*  is the datastore information.
# The value will be an identifier for the resource type getQualifiedName(Datastore).
# The return type will be Dictionary of str and
# Com::Vmware::Vcenter::Inventory::Datastore::Info or None
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no datastore can be found for one or more of the datastore identifiers in 
#     ``datastores`` 
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``Datastore``  referenced by the  *parameter*   ``datastores`` 
#     requires  ``System.Read`` . </li>
# </ul>
#

sub find {
   my ($self, %args) = @_;
   my $datastores = $args {datastores};

   $self->validate_args (method_name => 'find',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'find',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Inventory::Datastore service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Inventory::Datastore service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Inventory::Datastore service
#########################################################################################

## @class Com::Vmware::Vcenter::Inventory::Datastore::Info
#
#
# The  ``Com::Vmware::Vcenter::Inventory::Datastore::Info``   *class*  contains
#     information about a datastore.

package Com::Vmware::Vcenter::Inventory::Datastore::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Inventory::Datastore::Info structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Inventory::Datastore::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.inventory.datastore.info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the datastore.
#
# String#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of the datastore.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Inventory::Datastore service
#########################################################################################
