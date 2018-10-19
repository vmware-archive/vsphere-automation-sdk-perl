########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Operations.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vcha::Operations
# The  ``Com::Vmware::Vcenter::Vcha::Operations``   *interface*  provides  *methods*  to
#     figure out the currently active operations and currently disabled operations in a
#     vCenter High Availability (VCHA) cluster. This  *interface*  was added in vSphere API
#     6.7 U1.
#
#
# Constant String::CLUSTER_DEPLOY_OP #
#Identifier of the cluster deploy operation. This  *constant*  was added in vSphere API 6.7
# U1.
#
# Constant String::CLUSTER_FAILOVER_OP #
#Identifier of the cluster failover operation. This  *constant*  was added in vSphere API
# 6.7 U1.
#
# Constant String::CLUSTER_GET_OP #
#Identifier of the cluster get operation. This  *constant*  was added in vSphere API 6.7
# U1.
#
# Constant String::PASSIVE_REDEPLOY_OP #
#Identifier of the passive redeploy operation. This  *constant*  was added in vSphere API
# 6.7 U1.
#
# Constant String::WITNESS_REDEPLOY_OP #
#Identifier of the witness redeploy operation. This  *constant*  was added in vSphere API
# 6.7 U1.
#
# Constant String::MODE_GET_OP #
#Identifier of the get mode operation. This  *constant*  was added in vSphere API 6.7 U1.
#
# Constant String::MODE_SET_OP #
#Identifier of the set mode operation. This  *constant*  was added in vSphere API 6.7 U1.
#
# Constant String::CLUSTER_UNDEPLOY_OP #
#Identifier of the cluster undeploy operation. This  *constant*  was added in vSphere API
# 6.7 U1.

package Com::Vmware::Vcenter::Vcha::Operations;

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
use Com::Vmware::Vcenter::Vcha::OperationsStub;

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
# Retrieves the current active and disabled operations of a VCHA cluster. This  *method* 
# was added in vSphere API 6.7 U1.
#
# @retval 
# Info structure containing the current running and disabled operations of a VCHA
#     cluster.
# The return type will be Com::Vmware::Vcenter::Vcha::Operations::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user has insufficient privilege to perform the operation. Operation execution
#     requires the System.Read privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If any other error occurs.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vcha::Operations service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vcha::Operations service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vcha::Operations service
#########################################################################################

## @class Com::Vmware::Vcenter::Vcha::Operations::Info
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Operations::Info``   *class*  contains information
#     about which the VCHA operations cannot be invoked in the current state of the system
#     and the list of currently active VCHA operations. This  *class*  was added in vSphere
#     API 6.7 U1.

package Com::Vmware::Vcenter::Vcha::Operations::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Operations::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{disabled} = $args{'disabled'};
   $self->{active} = $args{'active'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Operations::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.operations.info');
   $self->set_binding_field('key' => 'disabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'active', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_disabled ()
# Gets the value of 'disabled' property.
#
# @retval disabled - The current value of the field.
# Identifiers of the operations that are current disabled. These operation strings are
#     one of  :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_DEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_FAILOVER_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.PASSIVE_REDEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.WITNESS_REDEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.MODE_SET_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_UNDEPLOY_OP`  and 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_GET_OP` . This  *field*  was
#     added in vSphere API 6.7 U1.
#
# Set#
sub get_disabled {
   my ($self, %args) = @_;
   return $self->{'disabled'}; 	
}

## @method set_disabled ()
# Sets the given value for 'disabled' property.
# 
# @param disabled  - New value for the field.
# Identifiers of the operations that are current disabled. These operation strings are
#     one of  :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_DEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_FAILOVER_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.PASSIVE_REDEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.WITNESS_REDEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.MODE_SET_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_UNDEPLOY_OP`  and 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_GET_OP` . This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_disabled {
   my ($self, %args) = @_;
   $self->{'disabled'} = $args{'disabled'}; 
   return;	
}

## @method get_active ()
# Gets the value of 'active' property.
#
# @retval active - The current value of the field.
# Identifiers of the operations that are currently running. These operation strings are
#     one of  :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_DEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_FAILOVER_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.PASSIVE_REDEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.WITNESS_REDEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.MODE_SET_OP` , and 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_UNDEPLOY_OP` . This  *field* 
#     was added in vSphere API 6.7 U1.
#
# Set#
sub get_active {
   my ($self, %args) = @_;
   return $self->{'active'}; 	
}

## @method set_active ()
# Sets the given value for 'active' property.
# 
# @param active  - New value for the field.
# Identifiers of the operations that are currently running. These operation strings are
#     one of  :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_DEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_FAILOVER_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.PASSIVE_REDEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.WITNESS_REDEPLOY_OP` , 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.MODE_SET_OP` , and 
#     :attr:`Com::Vmware::Vcenter::Vcha::Operations.CLUSTER_UNDEPLOY_OP` . This  *field* 
#     was added in vSphere API 6.7 U1.
#
sub set_active {
   my ($self, %args) = @_;
   $self->{'active'} = $args{'active'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vcha::Operations service
#########################################################################################
