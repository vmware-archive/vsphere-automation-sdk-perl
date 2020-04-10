########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file DeploymentType.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType
# The  *DeploymentType*   *interface*  provides  *methods*  to get the deployment type
#     of a vCenter High Availability Cluster (VCHA Cluster). This  *interface*  was added in
#     vSphere API 6.7.1.
#

package Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType;

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
use Com::Vmware::Vcenter::Vcha::Cluster::DeploymentTypeStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vcha.cluster.deployment_type';


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
# Retrieves the deployment type of a VCHA cluster. This  *method*  was added in vSphere API
# 6.7.1.
#
# @retval 
# Info structure containing the deployment type information of the the VCHA cluster.
# The return type will be Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Info
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
# Begins enumerations for the Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType service
#########################################################################################

## @class Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Type
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Type``   *enumerated type*
#     defines the possible deployment types for a VCHA Cluster. This  *enumeration*  was
#     added in vSphere API 6.7.1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Type::NONE #
#VCHA Cluster is not configured. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Type::AUTO #
#VCHA Cluster was deployed automatically. This  *constant*  was added in vSphere API 6.7.1.
#
# Constant Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Type::MANUAL #
#VCHA Cluster was deployed manually. This  *constant*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Type;

use constant {
    NONE =>  'NONE',
    AUTO =>  'AUTO',
    MANUAL =>  'MANUAL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.cluster.deployment_type.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType service
#########################################################################################

## @class Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Info
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Info``   *class*  contains
#     the deployment type of the VCHA Cluster. This  *class*  was added in vSphere API
#     6.7.1.

package Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{deployment_type} = $args{'deployment_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.cluster.deployment_type.info');
   $self->set_binding_field('key' => 'deployment_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vcha::Cluster', 'type_name' => 'DeploymentType::Type'));
   bless $self, $class;
   return $self;
}

## @method get_deployment_type ()
# Gets the value of 'deployment_type' property.
#
# @retval deployment_type - The current value of the field.
# Identifies the deployment type of the VCHA cluster. This  *field*  was added in
#     vSphere API 6.7.1.
#
# Type#
sub get_deployment_type {
   my ($self, %args) = @_;
   return $self->{'deployment_type'}; 	
}

## @method set_deployment_type ()
# Sets the given value for 'deployment_type' property.
# 
# @param deployment_type  - New value for the field.
# Identifies the deployment type of the VCHA cluster. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_deployment_type {
   my ($self, %args) = @_;
   $self->{'deployment_type'} = $args{'deployment_type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vcha::Cluster::DeploymentType service
#########################################################################################
