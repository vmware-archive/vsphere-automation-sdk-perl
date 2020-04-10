########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Network.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Inventory::Network
# The  ``Com::Vmware::Vcenter::Inventory::Network``   *interface*  provides  *methods* 
#     to retrieve information about vCenter Server networks.
#

package Com::Vmware::Vcenter::Inventory::Network;

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
use Com::Vmware::Vcenter::Inventory::NetworkStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.inventory.network';


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
# Returns network information for the specified vCenter Server networks. The key in the 
# *result*   *map*  is the network identifier and the value in the  *map*  is the network
# information.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param networks [REQUIRED]  Identifiers of the vCenter Server networks for which information will be returned.
# The value must be an identifier for the resource type getQualifiedName(Network).
# . The value must be Array of str.
#
# @retval 
# Network information for the specified vCenter Server networks. The key in the 
#     *result*   *map*  is the network identifier and the value in the  *map*  is the
#     network information.
# The value will be an identifier for the resource type getQualifiedName(Network).
# The return type will be Dictionary of str and
# Com::Vmware::Vcenter::Inventory::Network::Info or None
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no datastore can be found for one or more of the vCenter Server network identifiers
#     in  ``networks`` 
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``Network``  referenced by the  *parameter*   ``networks`` 
#     requires  ``System.Read`` . </li>
# </ul>
#
sub find {
   my ($self, %args) = @_;
   my $networks = $args {networks};

   $self->validate_args (method_name => 'find',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'find',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Inventory::Network service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Inventory::Network service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Inventory::Network service
#########################################################################################

## @class Com::Vmware::Vcenter::Inventory::Network::Info
#
#
# The  ``Com::Vmware::Vcenter::Inventory::Network::Info``   *class*  contains
#     information about a vCenter Server network.

package Com::Vmware::Vcenter::Inventory::Network::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Inventory::Network::Info structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Inventory::Network::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.inventory.network.info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the vCenter Server network.
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
# Type of the vCenter Server network.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Inventory::Network service
#########################################################################################
