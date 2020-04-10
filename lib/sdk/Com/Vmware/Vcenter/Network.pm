########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Network.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Network
# The  *Network*   *interface*  provides  *methods*  for manipulating a vCenter Server
#     network.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the vCenter network

package Com::Vmware::Vcenter::Network;

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
use Com::Vmware::Vcenter::NetworkStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.network';


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
# Returns information about at most 1000 visible (subject to permission checks) networks in
# vCenter matching the  class Com::Vmware::Vcenter::Network::FilterSpec .
#
# @param filter [OPTIONAL] Specification of matching networks for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Network::FilterSpec  with all  *fields*   *null*  which means
#     all networks match the filter.
# . The value must be Com::Vmware::Vcenter::Network::FilterSpec or None.
#
# @retval 
# Commonly used information about the networks matching the  class
#     Com::Vmware::Vcenter::Network::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::Network::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Network::FilterSpec.types`   *field*  contains a
#     value that is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 1000 networks match the  class Com::Vmware::Vcenter::Network::FilterSpec
#     .
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#
sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Network service
#########################################################################################

## @class Com::Vmware::Vcenter::Network::Type
#
# The  ``Com::Vmware::Vcenter::Network::Type``   *enumerated type*  defines the type of
#     a vCenter Server network. The type of a network can be used to determine what features
#     it supports and which APIs can be used to find more information about the network or
#     change its configuration.
#
#
#
# Constant Com::Vmware::Vcenter::Network::Type::STANDARD_PORTGROUP #
#XXX: ESX based (created and managed on ESX)
#
# Constant Com::Vmware::Vcenter::Network::Type::DISTRIBUTED_PORTGROUP #
#XXX: vCenter based (create and managed through vCenter)
#
# Constant Com::Vmware::Vcenter::Network::Type::OPAQUE_NETWORK #
#A network for whose configuration is managed outside of vSphere. The identifer and name of
# the network is made available through vSphere so that host and virtual machine virtual
# ethernet devices can connect to them.

package Com::Vmware::Vcenter::Network::Type;

use constant {
    STANDARD_PORTGROUP =>  'STANDARD_PORTGROUP',
    DISTRIBUTED_PORTGROUP =>  'DISTRIBUTED_PORTGROUP',
    OPAQUE_NETWORK =>  'OPAQUE_NETWORK',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Network::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.network.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Network::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Network service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Network service
#########################################################################################

## @class Com::Vmware::Vcenter::Network::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Network::FilterSpec``   *class*  contains  *fields*  used
#     to filter the results when listing networks (see 
#     :func:`Com::Vmware::Vcenter::Network.list` ). If multiple  *fields*  are specified,
#     only networks matching all of the  *fields*  match the filter.

package Com::Vmware::Vcenter::Network::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Network::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{networks} = $args{'networks'};
   $self->{names} = $args{'names'};
   $self->{types} = $args{'types'};
   $self->{folders} = $args{'folders'};
   $self->{datacenters} = $args{'datacenters'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Network::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.network.filter_spec');
   $self->set_binding_field('key' => 'networks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'types', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Network::Type')))));
   $self->set_binding_field('key' => 'folders', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'datacenters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_networks ()
# Gets the value of 'networks' property.
#
# @retval networks - The current value of the field.
# Identifiers of networks that can match the filter.
#
# Optional#
sub get_networks {
   my ($self, %args) = @_;
   return $self->{'networks'}; 	
}

## @method set_networks ()
# Sets the given value for 'networks' property.
# 
# @param networks  - New value for the field.
# Identifiers of networks that can match the filter.
#
sub set_networks {
   my ($self, %args) = @_;
   $self->{'networks'} = $args{'networks'}; 
   return;	
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that networks must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Network::Summary.name` ).
#
# Optional#
sub get_names {
   my ($self, %args) = @_;
   return $self->{'names'}; 	
}

## @method set_names ()
# Sets the given value for 'names' property.
# 
# @param names  - New value for the field.
# Names that networks must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Network::Summary.name` ).
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_types ()
# Gets the value of 'types' property.
#
# @retval types - The current value of the field.
# Types that networks must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Network::Summary.type` ).
#
# Optional#
sub get_types {
   my ($self, %args) = @_;
   return $self->{'types'}; 	
}

## @method set_types ()
# Sets the given value for 'types' property.
# 
# @param types  - New value for the field.
# Types that networks must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Network::Summary.type` ).
#
sub set_types {
   my ($self, %args) = @_;
   $self->{'types'} = $args{'types'}; 
   return;	
}

## @method get_folders ()
# Gets the value of 'folders' property.
#
# @retval folders - The current value of the field.
# Folders that must contain the network for the network to match the filter.
#
# Optional#
sub get_folders {
   my ($self, %args) = @_;
   return $self->{'folders'}; 	
}

## @method set_folders ()
# Sets the given value for 'folders' property.
# 
# @param folders  - New value for the field.
# Folders that must contain the network for the network to match the filter.
#
sub set_folders {
   my ($self, %args) = @_;
   $self->{'folders'} = $args{'folders'}; 
   return;	
}

## @method get_datacenters ()
# Gets the value of 'datacenters' property.
#
# @retval datacenters - The current value of the field.
# Datacenters that must contain the network for the network to match the filter.
#
# Optional#
sub get_datacenters {
   my ($self, %args) = @_;
   return $self->{'datacenters'}; 	
}

## @method set_datacenters ()
# Sets the given value for 'datacenters' property.
# 
# @param datacenters  - New value for the field.
# Datacenters that must contain the network for the network to match the filter.
#
sub set_datacenters {
   my ($self, %args) = @_;
   $self->{'datacenters'} = $args{'datacenters'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Network::Summary
#
#
# The  ``Com::Vmware::Vcenter::Network::Summary``   *class*  contains commonly used
#     information about a network.

package Com::Vmware::Vcenter::Network::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Network::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{network} = $args{'network'};
   $self->{name} = $args{'name'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Network::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.network.summary');
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Network::Type'));
   bless $self, $class;
   return $self;
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Identifier of the network.
#
# ID#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# Identifier of the network.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the network.
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
# Name of the network.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type (STANDARD_PORTGROUP, DISTRIBUTED_PORTGROUP, OPAQUE_NETWORK) of the vCenter Server
#     network.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type (STANDARD_PORTGROUP, DISTRIBUTED_PORTGROUP, OPAQUE_NETWORK) of the vCenter Server
#     network.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Network service
#########################################################################################
