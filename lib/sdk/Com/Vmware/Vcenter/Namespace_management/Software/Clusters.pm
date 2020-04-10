########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Clusters.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters
# The  ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters``   *interface* 
#     provides  *methods*  to upgrade the vSphere clusters.
#

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters;

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
use Com::Vmware::Vcenter::Namespace_management::Software::ClustersStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.software.clusters';


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

## @method upgrade ()
# Upgrade the cluster to a specific version. This operation upgrades the components on
# control plane VMs and worker plane hosts based on the selected version. Before upgrading,
# this operation performs pre-checks and sets the evaluation response in
# Info.UpgradeStatus.messages with various Message.Severity levels. Depending on the
# severity, the upgrade may or may not proceed beyond prechecks. Here is a list of
# severities and corresponding behavior: - ERROR: Upgrade does not proceed beyond precheck
# operation - WARNING: Upgrade proceeds beyond precheck operation only if
# UpgradeSpec.ignorePrecheckWarnings is set to true - INFO: Upgrade proceeds beyond precheck
# operation uninterrupted
#
# @param cluster [REQUIRED] Identifier for the cluster which will be upgraded.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for upgrading the cluster.
# . The value must be
# Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if pre-check failed of the cluster.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if cluster could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Manage privilege.
#
sub upgrade {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'upgrade',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'upgrade',
                         method_args => \%args);
}

## @method upgrade_multiple ()
# Upgrade a set of clusters to its corresponding specific version.
#
# @param specs [REQUIRED] Specifications for upgrading selected clusters.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be Dictionary of str and
# Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeSpec.
#
# @retval 
# Pre-check result when invoking upgrade for each cluster.
# The value will be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# The return type will be Dictionary of str and
# Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Manage privilege on all specified clusters.
#
sub upgrade_multiple {
   my ($self, %args) = @_;
   my $specs = $args {specs};

   $self->validate_args (method_name => 'upgrade_multiple',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'upgrade_multiple',
                         method_args => \%args);
}

## @method get ()
# Returns upgrade related information of a specific cluster.
#
# @param cluster [REQUIRED] Identifier for the cluster which will be upgraded.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Information about the upgrade of the specified WCP enabled cluster.
# The return type will be
# Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if cluster could not be located.
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
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns upgrade related information about all WCP enabled clusters.
#
# @retval 
# List of upgrade summary of all WCP enabled clusters.
# The return type will be Array of
# Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Summary
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
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::Software::Clusters service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::State
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::State``  
#     *enumerated type*  describes the state of the upgrade.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::Software::Clusters::State::PENDING #
#Upgrade is in progress.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Software::Clusters::State::READY #
#Cluster is ready when there is no upgrade or upgrade is completed.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Software::Clusters::State::ERROR #
#Upgrade failed and need user intervention.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::State;

use constant {
    PENDING =>  'PENDING',
    READY =>  'READY',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.software.clusters.state',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::Software::Clusters service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::Software::Clusters service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result``  
#     *class*  contains the result of batch upgrade method.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'res',
         'case_map' => {
               'REJECTED' => ['exception'],
               'STARTED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{res} = $args{'res'};
   $self->{exception} = $args{'exception'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.software.clusters.result');
   $self->set_binding_field('key' => 'res', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::Result::Res'));
   $self->set_binding_field('key' => 'exception', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ErrorType()));
   bless $self, $class;
   return $self;
}

## @method get_res ()
# Gets the value of 'res' property.
#
# @retval res - The current value of the field.
# The result of batch upgrade method.
#
# Res#
sub get_res {
   my ($self, %args) = @_;
   return $self->{'res'}; 	
}

## @method set_res ()
# Sets the given value for 'res' property.
# 
# @param res  - New value for the field.
# The result of batch upgrade method.
#
sub set_res {
   my ($self, %args) = @_;
   $self->{'res'} = $args{'res'}; 
   return;	
}

## @method get_exception ()
# Gets the value of 'exception' property.
#
# @retval exception - The current value of the field.
# Exception when cluster pre-check failed during upgrade invocation.
#
# optional#
sub get_exception {
   my ($self, %args) = @_;
   return $self->{'exception'}; 	
}

## @method set_exception ()
# Sets the given value for 'exception' property.
# 
# @param exception  - New value for the field.
# Exception when cluster pre-check failed during upgrade invocation.
#
sub set_exception {
   my ($self, %args) = @_;
   $self->{'exception'} = $args{'exception'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result::Res
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result::Res``  
#     *enumerated type*  represents the upgrade invocation result for each cluster.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result::Res::STARTED #
#Upgrade is started.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result::Res::REJECTED #
#Upgrade is rejected. This implies pre-check failed when invoking upgrade of the cluster.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result::Res;

use constant {
    STARTED =>  'STARTED',
    REJECTED =>  'REJECTED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result::Res enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.software.clusters.result.res',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Result::Res');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeSpec``  
#     *class*  contains the specification required to upgrade a cluster.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{desired_version} = $args{'desired_version'};
   $self->{ignore_precheck_warnings} = $args{'ignore_precheck_warnings'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.software.clusters.upgrade_spec');
   $self->set_binding_field('key' => 'desired_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ignore_precheck_warnings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_desired_version ()
# Gets the value of 'desired_version' property.
#
# @retval desired_version - The current value of the field.
# Version number the cluster is going to be upgraded to.
#
# String#
sub get_desired_version {
   my ($self, %args) = @_;
   return $self->{'desired_version'}; 	
}

## @method set_desired_version ()
# Sets the given value for 'desired_version' property.
# 
# @param desired_version  - New value for the field.
# Version number the cluster is going to be upgraded to.
#
sub set_desired_version {
   my ($self, %args) = @_;
   $self->{'desired_version'} = $args{'desired_version'}; 
   return;	
}

## @method get_ignore_precheck_warnings ()
# Gets the value of 'ignore_precheck_warnings' property.
#
# @retval ignore_precheck_warnings - The current value of the field.
# If true, the upgrade workflow will ignore any pre-check warnings and proceed with the
#     upgrade.
#
# Optional#
sub get_ignore_precheck_warnings {
   my ($self, %args) = @_;
   return $self->{'ignore_precheck_warnings'}; 	
}

## @method set_ignore_precheck_warnings ()
# Sets the given value for 'ignore_precheck_warnings' property.
# 
# @param ignore_precheck_warnings  - New value for the field.
# If true, the upgrade workflow will ignore any pre-check warnings and proceed with the
#     upgrade.
#
sub set_ignore_precheck_warnings {
   my ($self, %args) = @_;
   $self->{'ignore_precheck_warnings'} = $args{'ignore_precheck_warnings'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Summary
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Summary``  
#     *class*  contains basic information about the cluster upgrade related information.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cluster} = $args{'cluster'};
   $self->{cluster_name} = $args{'cluster_name'};
   $self->{current_version} = $args{'current_version'};
   $self->{available_versions} = $args{'available_versions'};
   $self->{last_upgraded_date} = $args{'last_upgraded_date'};
   $self->{desired_version} = $args{'desired_version'};
   $self->{state} = $args{'state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.software.clusters.summary');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cluster_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'current_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'available_versions', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'last_upgraded_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'desired_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::State'));
   bless $self, $class;
   return $self;
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Identifier for the cluster.
#
# ID#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Identifier for the cluster.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_cluster_name ()
# Gets the value of 'cluster_name' property.
#
# @retval cluster_name - The current value of the field.
# Name of the cluster.
#
# ID#
sub get_cluster_name {
   my ($self, %args) = @_;
   return $self->{'cluster_name'}; 	
}

## @method set_cluster_name ()
# Sets the given value for 'cluster_name' property.
# 
# @param cluster_name  - New value for the field.
# Name of the cluster.
#
sub set_cluster_name {
   my ($self, %args) = @_;
   $self->{'cluster_name'} = $args{'cluster_name'}; 
   return;	
}

## @method get_current_version ()
# Gets the value of 'current_version' property.
#
# @retval current_version - The current value of the field.
# Current version of the cluster.
#
# String#
sub get_current_version {
   my ($self, %args) = @_;
   return $self->{'current_version'}; 	
}

## @method set_current_version ()
# Sets the given value for 'current_version' property.
# 
# @param current_version  - New value for the field.
# Current version of the cluster.
#
sub set_current_version {
   my ($self, %args) = @_;
   $self->{'current_version'} = $args{'current_version'}; 
   return;	
}

## @method get_available_versions ()
# Gets the value of 'available_versions' property.
#
# @retval available_versions - The current value of the field.
# Set of versions available for upgrade.
#
# List#
sub get_available_versions {
   my ($self, %args) = @_;
   return $self->{'available_versions'}; 	
}

## @method set_available_versions ()
# Sets the given value for 'available_versions' property.
# 
# @param available_versions  - New value for the field.
# Set of versions available for upgrade.
#
sub set_available_versions {
   my ($self, %args) = @_;
   $self->{'available_versions'} = $args{'available_versions'}; 
   return;	
}

## @method get_last_upgraded_date ()
# Gets the value of 'last_upgraded_date' property.
#
# @retval last_upgraded_date - The current value of the field.
# Date of last successful upgrade.
#
# Optional#
sub get_last_upgraded_date {
   my ($self, %args) = @_;
   return $self->{'last_upgraded_date'}; 	
}

## @method set_last_upgraded_date ()
# Sets the given value for 'last_upgraded_date' property.
# 
# @param last_upgraded_date  - New value for the field.
# Date of last successful upgrade.
#
sub set_last_upgraded_date {
   my ($self, %args) = @_;
   $self->{'last_upgraded_date'} = $args{'last_upgraded_date'}; 
   return;	
}

## @method get_desired_version ()
# Gets the value of 'desired_version' property.
#
# @retval desired_version - The current value of the field.
# Desired version the cluster will be upgraded to.
#
# Optional#
sub get_desired_version {
   my ($self, %args) = @_;
   return $self->{'desired_version'}; 	
}

## @method set_desired_version ()
# Sets the given value for 'desired_version' property.
# 
# @param desired_version  - New value for the field.
# Desired version the cluster will be upgraded to.
#
sub set_desired_version {
   my ($self, %args) = @_;
   $self->{'desired_version'} = $args{'desired_version'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# Current state of the upgrade.
#
# State#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# Current state of the upgrade.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Info
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Info``  
#     *class*  contains detailed information about the cluster upgrade status and related
#     information.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{current_version} = $args{'current_version'};
   $self->{available_versions} = $args{'available_versions'};
   $self->{last_upgraded_date} = $args{'last_upgraded_date'};
   $self->{messages} = $args{'messages'};
   $self->{state} = $args{'state'};
   $self->{upgrade_status} = $args{'upgrade_status'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.software.clusters.info');
   $self->set_binding_field('key' => 'current_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'available_versions', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'last_upgraded_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::Message')));
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::State'));
   $self->set_binding_field('key' => 'upgrade_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::UpgradeStatus')));
   bless $self, $class;
   return $self;
}

## @method get_current_version ()
# Gets the value of 'current_version' property.
#
# @retval current_version - The current value of the field.
# Current version of the cluster.
#
# String#
sub get_current_version {
   my ($self, %args) = @_;
   return $self->{'current_version'}; 	
}

## @method set_current_version ()
# Sets the given value for 'current_version' property.
# 
# @param current_version  - New value for the field.
# Current version of the cluster.
#
sub set_current_version {
   my ($self, %args) = @_;
   $self->{'current_version'} = $args{'current_version'}; 
   return;	
}

## @method get_available_versions ()
# Gets the value of 'available_versions' property.
#
# @retval available_versions - The current value of the field.
# Set of available versions can be upgraded to.
#
# List#
sub get_available_versions {
   my ($self, %args) = @_;
   return $self->{'available_versions'}; 	
}

## @method set_available_versions ()
# Sets the given value for 'available_versions' property.
# 
# @param available_versions  - New value for the field.
# Set of available versions can be upgraded to.
#
sub set_available_versions {
   my ($self, %args) = @_;
   $self->{'available_versions'} = $args{'available_versions'}; 
   return;	
}

## @method get_last_upgraded_date ()
# Gets the value of 'last_upgraded_date' property.
#
# @retval last_upgraded_date - The current value of the field.
# Date of last successful upgrade.
#
# Optional#
sub get_last_upgraded_date {
   my ($self, %args) = @_;
   return $self->{'last_upgraded_date'}; 	
}

## @method set_last_upgraded_date ()
# Sets the given value for 'last_upgraded_date' property.
# 
# @param last_upgraded_date  - New value for the field.
# Date of last successful upgrade.
#
sub set_last_upgraded_date {
   my ($self, %args) = @_;
   $self->{'last_upgraded_date'} = $args{'last_upgraded_date'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# Current set of messages associated with the cluster version.
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# Current set of messages associated with the cluster version.
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# Current state of the upgrade.
#
# State#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# Current state of the upgrade.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_upgrade_status ()
# Gets the value of 'upgrade_status' property.
#
# @retval upgrade_status - The current value of the field.
# Information about upgrade in progress.
#
# Optional#
sub get_upgrade_status {
   my ($self, %args) = @_;
   return $self->{'upgrade_status'}; 	
}

## @method set_upgrade_status ()
# Sets the given value for 'upgrade_status' property.
# 
# @param upgrade_status  - New value for the field.
# Information about upgrade in progress.
#
sub set_upgrade_status {
   my ($self, %args) = @_;
   $self->{'upgrade_status'} = $args{'upgrade_status'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeStatus
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeStatus``
#     *class*  contains detailed information about the cluster when upgraded is in progress.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeStatus;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeStatus structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{desired_version} = $args{'desired_version'};
   $self->{messages} = $args{'messages'};
   $self->{progress} = $args{'progress'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeStatus');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.software.clusters.upgrade_status');
   $self->set_binding_field('key' => 'desired_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::Message')));
   $self->set_binding_field('key' => 'progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::UpgradeProgress')));
   bless $self, $class;
   return $self;
}

## @method get_desired_version ()
# Gets the value of 'desired_version' property.
#
# @retval desired_version - The current value of the field.
# Desired version the cluster will be upgraded to.
#
# Optional#
sub get_desired_version {
   my ($self, %args) = @_;
   return $self->{'desired_version'}; 	
}

## @method set_desired_version ()
# Sets the given value for 'desired_version' property.
# 
# @param desired_version  - New value for the field.
# Desired version the cluster will be upgraded to.
#
sub set_desired_version {
   my ($self, %args) = @_;
   $self->{'desired_version'} = $args{'desired_version'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# Current set of messages associated with the upgrade state.
#
# List#
sub get_messages {
   my ($self, %args) = @_;
   return $self->{'messages'}; 	
}

## @method set_messages ()
# Sets the given value for 'messages' property.
# 
# @param messages  - New value for the field.
# Current set of messages associated with the upgrade state.
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}

## @method get_progress ()
# Gets the value of 'progress' property.
#
# @retval progress - The current value of the field.
# Information about upgrade progess.
#
# Optional#
sub get_progress {
   my ($self, %args) = @_;
   return $self->{'progress'}; 	
}

## @method set_progress ()
# Sets the given value for 'progress' property.
# 
# @param progress  - New value for the field.
# Information about upgrade progess.
#
sub set_progress {
   my ($self, %args) = @_;
   $self->{'progress'} = $args{'progress'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeProgress
#
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeProgress``  
#     *class*  contains detailed information about the cluster upgrade progess.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeProgress;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeProgress structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{total} = $args{'total'};
   $self->{completed} = $args{'completed'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::UpgradeProgress');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.software.clusters.upgrade_progress');
   $self->set_binding_field('key' => 'total', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'completed', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_total ()
# Gets the value of 'total' property.
#
# @retval total - The current value of the field.
# Total amount of the work for the operation. The work here represents the number of
#     master nodes in the cluster need to be upgraded.
#
# long#
sub get_total {
   my ($self, %args) = @_;
   return $self->{'total'}; 	
}

## @method set_total ()
# Sets the given value for 'total' property.
# 
# @param total  - New value for the field.
# Total amount of the work for the operation. The work here represents the number of
#     master nodes in the cluster need to be upgraded.
#
sub set_total {
   my ($self, %args) = @_;
   $self->{'total'} = $args{'total'}; 
   return;	
}

## @method get_completed ()
# Gets the value of 'completed' property.
#
# @retval completed - The current value of the field.
# The amount of work completed for the operation. The value can only be incremented. The
#     number or master nodes which upgrade completed.
#
# long#
sub get_completed {
   my ($self, %args) = @_;
   return $self->{'completed'}; 	
}

## @method set_completed ()
# Sets the given value for 'completed' property.
# 
# @param completed  - New value for the field.
# The amount of work completed for the operation. The value can only be incremented. The
#     number or master nodes which upgrade completed.
#
sub set_completed {
   my ($self, %args) = @_;
   $self->{'completed'} = $args{'completed'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Message about the work progress.
#
# LocalizableMessage#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# Message about the work progress.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message``  
#     *class*  contains the information about the object configuration.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{severity} = $args{'severity'};
   $self->{details} = $args{'details'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.software.clusters.message');
   $self->set_binding_field('key' => 'severity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::Message::Severity'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_severity ()
# Gets the value of 'severity' property.
#
# @retval severity - The current value of the field.
# Type of the message.
#
# Severity#
sub get_severity {
   my ($self, %args) = @_;
   return $self->{'severity'}; 	
}

## @method set_severity ()
# Sets the given value for 'severity' property.
# 
# @param severity  - New value for the field.
# Type of the message.
#
sub set_severity {
   my ($self, %args) = @_;
   $self->{'severity'} = $args{'severity'}; 
   return;	
}

## @method get_details ()
# Gets the value of 'details' property.
#
# @retval details - The current value of the field.
# Details about the message.
#
# LocalizableMessage#
sub get_details {
   my ($self, %args) = @_;
   return $self->{'details'}; 	
}

## @method set_details ()
# Sets the given value for 'details' property.
# 
# @param details  - New value for the field.
# Details about the message.
#
sub set_details {
   my ($self, %args) = @_;
   $self->{'details'} = $args{'details'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message::Severity
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message::Severity`` 
#      *enumerated type*  represents the severity of the message.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message::Severity::INFO #
#Informational message. This may be accompanied by vCenter event.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message::Severity::WARNING #
#Warning message. This may be accompanied by vCenter event.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message::Severity::ERROR #
#Error message. This is accompanied by vCenter event and/or alarm.

package Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message::Severity;

use constant {
    INFO =>  'INFO',
    WARNING =>  'WARNING',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message::Severity enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.software.clusters.message.severity',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Software::Clusters::Message::Severity');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::Software::Clusters service
#########################################################################################
