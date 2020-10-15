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

## @class Com::Vmware::Vcenter::Namespace_management::Clusters
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters``   *interface*  provides 
#     *methods*  to enable and disable vSphere Namespaces on a vSphere cluster.
#

package Com::Vmware::Vcenter::Namespace_management::Clusters;

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
use Com::Vmware::Vcenter::Namespace_management::ClustersStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.clusters';


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

## @method enable ()
# Enable vSphere Namespaces on the cluster. This operation sets up Kubernetes instance for
# the cluster along with worker nodes.
#
# @param cluster [REQUIRED] Identifier for the cluster on which vSphere Namespaces will be enabled.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for setting up the Kubernetes API server and the worker nodes.
# . The value must be Com::Vmware::Vcenter::Namespace_management::Clusters::EnableSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if the cluster already has vSphere Namespaces enabled.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if resources/objects could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``spec``  contain any errors.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if the specified cluster is not licensed.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have Namespaces.Manage privilege.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the specified cluster is not supported for vSphere Namespaces, the cluster&apos;s
#     hosts do not have the required ESX version, or for any other incompatibilities.
#
sub enable {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'enable',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'enable',
                         method_args => \%args);
}

## @method disable ()
# Disable vSphere Namespaces on the cluster. This operation tears down the Kubernetes
# instance and the worker nodes associated with vSphere Namespaces enabled cluster.
#
# @param cluster [REQUIRED] Identifier for the cluster for which vSphere Namespaces will be disabled.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
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
sub disable {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'disable',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'disable',
                         method_args => \%args);
}

## @method get ()
# Returns information about a specific cluster.
#
# @param cluster [REQUIRED] Identifier for the cluster on which vSphere Namespaces are enabled.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Information about the desired state of the specified cluster.
# The return type will be Com::Vmware::Vcenter::Namespace_management::Clusters::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if cluster could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the specified cluster does not have vSphere Namespaces enabled.
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
# Returns information about all clusters on which vSphere Namespaces are enabled on this
# vCenter.
#
# @retval 
# List of summary of all clusters with vSphere Namespaces enabled.
# The return type will be Array of
# Com::Vmware::Vcenter::Namespace_management::Clusters::Summary
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

## @method set ()
# Set a new configuration on the cluster object. The specified configuration is applied in
# entirety and will replace the current configuration fully.
#
# @param cluster [REQUIRED] Identifier for the cluster on which vSphere Namespaces is enabled.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] New specification for the cluster.
# . The value must be Com::Vmware::Vcenter::Namespace_management::Clusters::SetSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``spec``  contain any errors.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if vSphere Namespaces is being disabled on this cluster.
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
sub set {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method update ()
# Update configuration on the cluster object. The specified configuration is applied
# partially and  *null*  fields in  ``spec``  will leave those parts of configuration as-is.
#
# @param cluster [REQUIRED] Identifier for the cluster on which vSphere Namespaces is enabled.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] New specification for the cluster.
# . The value must be Com::Vmware::Vcenter::Namespace_management::Clusters::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``spec``  contain any errors.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if vSphere Namespaces is being disabled on this cluster.
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
sub update {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method rotate_password ()
# Request a new root password for all control plane nodes in the cluster. This operation
# generates a new root password and configures every control plane node in the cluster to
# accept it for authentication.
#
# @param cluster [REQUIRED] Identifier for the cluster for which the password is being generated.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
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
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the cluster is in the process of password rotation.
#
sub rotate_password {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'rotate_password',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'rotate_password',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::Clusters service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus``  
#     *enumerated type*  describes the status of reaching the desired state configuration
#     for the cluster.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus::CONFIGURING #
#The Namespace configuration is being applied to the cluster.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus::REMOVING #
#The Namespace configuration is being removed from the cluster.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus::RUNNING #
#The cluster is configured correctly with the Namespace configuration.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus::ERROR #
#Failed to apply the Namespace configuration to the cluster, user intervention needed.

package Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus;

use constant {
    CONFIGURING =>  'CONFIGURING',
    REMOVING =>  'REMOVING',
    RUNNING =>  'RUNNING',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.clusters.config_status',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus``  
#     *enumerated type*  describes the cluster&apos;s ability to deploy pods.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus::READY #
#The cluster is able to accept pods.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus::WARNING #
#The cluster may be able to accept pods, but has warning messages.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus::ERROR #
#The cluster may not be able to accept pods and has error messages.

package Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus;

use constant {
    READY =>  'READY',
    WARNING =>  'WARNING',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.clusters.kubernetes_status',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkProvider
#
# Identifies the network plugin that cluster networking functionalities for this vSphere
#     Namespaces Cluster.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkProvider::NSXT_CONTAINER_PLUGIN #
#NSX-T Container Plugin.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkProvider::VSPHERE_NETWORK #
#vSphere Networking. This  *constant*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkProvider;

use constant {
    NSXT_CONTAINER_PLUGIN =>  'NSXT_CONTAINER_PLUGIN',
    VSPHERE_NETWORK =>  'VSPHERE_NETWORK',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkProvider enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.clusters.network_provider',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkProvider');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::Clusters service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::Clusters service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::Clusters::Message
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::Message``   *class* 
#     contains the information about the object configuration.

package Com::Vmware::Vcenter::Namespace_management::Clusters::Message;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::Message structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::Message');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.message');
   $self->set_binding_field('key' => 'severity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::Message::Severity'));
   $self->set_binding_field('key' => 'details', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
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
# Optional#
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


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::Message::Severity
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::Message::Severity``  
#     *enumerated type*  represents the severity of the message.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::Message::Severity::INFO #
#Informational message. This may be accompanied by vCenter event.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::Message::Severity::WARNING #
#Warning message. This may be accompanied by vCenter event.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::Message::Severity::ERROR #
#Error message. This is accompanied by vCenter event and/or alarm.

package Com::Vmware::Vcenter::Namespace_management::Clusters::Message::Severity;

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
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::Message::Severity enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.clusters.message.severity',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::Message::Severity');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::Stats
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::Stats``   *class* 
#     contains the basic runtime statistics about a vSphere Namespaces-enabled cluster.

package Com::Vmware::Vcenter::Namespace_management::Clusters::Stats;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::Stats structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cpu_used} = $args{'cpu_used'};
   $self->{cpu_capacity} = $args{'cpu_capacity'};
   $self->{memory_used} = $args{'memory_used'};
   $self->{memory_capacity} = $args{'memory_capacity'};
   $self->{storage_used} = $args{'storage_used'};
   $self->{storage_capacity} = $args{'storage_capacity'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::Stats');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.stats');
   $self->set_binding_field('key' => 'cpu_used', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'cpu_capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'memory_used', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'memory_capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'storage_used', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'storage_capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_cpu_used ()
# Gets the value of 'cpu_used' property.
#
# @retval cpu_used - The current value of the field.
# Overall CPU usage of the cluster, in MHz. This is the sum of CPU usage across all
#     worker nodes in the cluster.
#
# long#
sub get_cpu_used {
   my ($self, %args) = @_;
   return $self->{'cpu_used'}; 	
}

## @method set_cpu_used ()
# Sets the given value for 'cpu_used' property.
# 
# @param cpu_used  - New value for the field.
# Overall CPU usage of the cluster, in MHz. This is the sum of CPU usage across all
#     worker nodes in the cluster.
#
sub set_cpu_used {
   my ($self, %args) = @_;
   $self->{'cpu_used'} = $args{'cpu_used'}; 
   return;	
}

## @method get_cpu_capacity ()
# Gets the value of 'cpu_capacity' property.
#
# @retval cpu_capacity - The current value of the field.
# Total CPU capacity in the cluster available for vSphere Namespaces, in MHz. This is
#     the sum of CPU capacities from all worker nodes in the cluster.
#
# long#
sub get_cpu_capacity {
   my ($self, %args) = @_;
   return $self->{'cpu_capacity'}; 	
}

## @method set_cpu_capacity ()
# Sets the given value for 'cpu_capacity' property.
# 
# @param cpu_capacity  - New value for the field.
# Total CPU capacity in the cluster available for vSphere Namespaces, in MHz. This is
#     the sum of CPU capacities from all worker nodes in the cluster.
#
sub set_cpu_capacity {
   my ($self, %args) = @_;
   $self->{'cpu_capacity'} = $args{'cpu_capacity'}; 
   return;	
}

## @method get_memory_used ()
# Gets the value of 'memory_used' property.
#
# @retval memory_used - The current value of the field.
# Overall memory usage of the cluster, in mebibytes. This is the sum of memory usage
#     across all worker nodes in the cluster.
#
# long#
sub get_memory_used {
   my ($self, %args) = @_;
   return $self->{'memory_used'}; 	
}

## @method set_memory_used ()
# Sets the given value for 'memory_used' property.
# 
# @param memory_used  - New value for the field.
# Overall memory usage of the cluster, in mebibytes. This is the sum of memory usage
#     across all worker nodes in the cluster.
#
sub set_memory_used {
   my ($self, %args) = @_;
   $self->{'memory_used'} = $args{'memory_used'}; 
   return;	
}

## @method get_memory_capacity ()
# Gets the value of 'memory_capacity' property.
#
# @retval memory_capacity - The current value of the field.
# Total memory capacity of the cluster available for vSphere Namespaces, in mebibytes.
#     This is the sum of memory capacities from all worker nodesin the cluster.
#
# long#
sub get_memory_capacity {
   my ($self, %args) = @_;
   return $self->{'memory_capacity'}; 	
}

## @method set_memory_capacity ()
# Sets the given value for 'memory_capacity' property.
# 
# @param memory_capacity  - New value for the field.
# Total memory capacity of the cluster available for vSphere Namespaces, in mebibytes.
#     This is the sum of memory capacities from all worker nodesin the cluster.
#
sub set_memory_capacity {
   my ($self, %args) = @_;
   $self->{'memory_capacity'} = $args{'memory_capacity'}; 
   return;	
}

## @method get_storage_used ()
# Gets the value of 'storage_used' property.
#
# @retval storage_used - The current value of the field.
# Overall storage used by the cluster, in mebibytes. This is the sum of storage used
#     across all worker nodes in the cluster.
#
# long#
sub get_storage_used {
   my ($self, %args) = @_;
   return $self->{'storage_used'}; 	
}

## @method set_storage_used ()
# Sets the given value for 'storage_used' property.
# 
# @param storage_used  - New value for the field.
# Overall storage used by the cluster, in mebibytes. This is the sum of storage used
#     across all worker nodes in the cluster.
#
sub set_storage_used {
   my ($self, %args) = @_;
   $self->{'storage_used'} = $args{'storage_used'}; 
   return;	
}

## @method get_storage_capacity ()
# Gets the value of 'storage_capacity' property.
#
# @retval storage_capacity - The current value of the field.
# Overall storage capacity of the cluster available for vSphere Namespaces, in
#     mebibytes. This is the sum of total storage available from all worker nodes in the
#     cluster.
#
# long#
sub get_storage_capacity {
   my ($self, %args) = @_;
   return $self->{'storage_capacity'}; 	
}

## @method set_storage_capacity ()
# Sets the given value for 'storage_capacity' property.
# 
# @param storage_capacity  - New value for the field.
# Overall storage capacity of the cluster available for vSphere Namespaces, in
#     mebibytes. This is the sum of total storage available from all worker nodes in the
#     cluster.
#
sub set_storage_capacity {
   my ($self, %args) = @_;
   $self->{'storage_capacity'} = $args{'storage_capacity'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::Summary
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::Summary``   *class* 
#     contains the basic information about the cluster statistics and status related to
#     vSphere Namespaces.

package Com::Vmware::Vcenter::Namespace_management::Clusters::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::Summary structure
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
   $self->{stats} = $args{'stats'};
   $self->{config_status} = $args{'config_status'};
   $self->{kubernetes_status} = $args{'kubernetes_status'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.summary');
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'cluster_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'stats', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::Stats'));
   $self->set_binding_field('key' => 'config_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ConfigStatus'));
   $self->set_binding_field('key' => 'kubernetes_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::KubernetesStatus'));
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

## @method get_stats ()
# Gets the value of 'stats' property.
#
# @retval stats - The current value of the field.
# Basic runtime statistics for the cluster.
#
# Stats#
sub get_stats {
   my ($self, %args) = @_;
   return $self->{'stats'}; 	
}

## @method set_stats ()
# Sets the given value for 'stats' property.
# 
# @param stats  - New value for the field.
# Basic runtime statistics for the cluster.
#
sub set_stats {
   my ($self, %args) = @_;
   $self->{'stats'} = $args{'stats'}; 
   return;	
}

## @method get_config_status ()
# Gets the value of 'config_status' property.
#
# @retval config_status - The current value of the field.
# Current setting for 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus`` .
#
# ConfigStatus#
sub get_config_status {
   my ($self, %args) = @_;
   return $self->{'config_status'}; 	
}

## @method set_config_status ()
# Sets the given value for 'config_status' property.
# 
# @param config_status  - New value for the field.
# Current setting for 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus`` .
#
sub set_config_status {
   my ($self, %args) = @_;
   $self->{'config_status'} = $args{'config_status'}; 
   return;	
}

## @method get_kubernetes_status ()
# Gets the value of 'kubernetes_status' property.
#
# @retval kubernetes_status - The current value of the field.
# Current setting for 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus`` .
#
# KubernetesStatus#
sub get_kubernetes_status {
   my ($self, %args) = @_;
   return $self->{'kubernetes_status'}; 	
}

## @method set_kubernetes_status ()
# Sets the given value for 'kubernetes_status' property.
# 
# @param kubernetes_status  - New value for the field.
# Current setting for 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus`` .
#
sub set_kubernetes_status {
   my ($self, %args) = @_;
   $self->{'kubernetes_status'} = $args{'kubernetes_status'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::Info
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::Info``   *class* 
#     contains detailed information about the cluster statistics and status related to
#     vSphere Namespaces.

package Com::Vmware::Vcenter::Namespace_management::Clusters::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::Info structure
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
         'discriminant_name' => 'network_provider',
         'case_map' => {
               'NSXT_CONTAINER_PLUGIN' => ['ncp_cluster_network_info'],
               'VSPHERE_NETWORK' => ['workload_networks', 'load_balancers'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{size_hint} = $args{'size_hint'};
   $self->{stat_summary} = $args{'stat_summary'};
   $self->{config_status} = $args{'config_status'};
   $self->{messages} = $args{'messages'};
   $self->{kubernetes_status} = $args{'kubernetes_status'};
   $self->{kubernetes_status_messages} = $args{'kubernetes_status_messages'};
   $self->{api_server_management_endpoint} = $args{'api_server_management_endpoint'};
   $self->{api_server_cluster_endpoint} = $args{'api_server_cluster_endpoint'};
   $self->{api_servers} = $args{'api_servers'};
   $self->{tls_management_endpoint_certificate} = $args{'tls_management_endpoint_certificate'};
   $self->{tls_endpoint_certificate} = $args{'tls_endpoint_certificate'};
   $self->{network_provider} = $args{'network_provider'};
   $self->{ncp_cluster_network_info} = $args{'ncp_cluster_network_info'};
   $self->{workload_networks} = $args{'workload_networks'};
   $self->{workload_ntp_servers} = $args{'workload_ntp_servers'};
   $self->{load_balancers} = $args{'load_balancers'};
   $self->{service_cidr} = $args{'service_cidr'};
   $self->{master_management_network} = $args{'master_management_network'};
   $self->{master_DNS} = $args{'master_DNS'};
   $self->{worker_DNS} = $args{'worker_DNS'};
   $self->{master_storage_policy} = $args{'master_storage_policy'};
   $self->{ephemeral_storage_policy} = $args{'ephemeral_storage_policy'};
   $self->{login_banner} = $args{'login_banner'};
   $self->{Master_DNS_names} = $args{'Master_DNS_names'};
   $self->{image_storage} = $args{'image_storage'};
   $self->{default_image_registry} = $args{'default_image_registry'};
   $self->{default_image_repository} = $args{'default_image_repository'};
   $self->{master_DNS_search_domains} = $args{'master_DNS_search_domains'};
   $self->{master_NTP_servers} = $args{'master_NTP_servers'};
   $self->{default_kubernetes_service_content_library} = $args{'default_kubernetes_service_content_library'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.info');
   $self->set_binding_field('key' => 'size_hint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'SizingHint')));
   $self->set_binding_field('key' => 'stat_summary', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::Stats'));
   $self->set_binding_field('key' => 'config_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ConfigStatus'));
   $self->set_binding_field('key' => 'messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::Message')));
   $self->set_binding_field('key' => 'kubernetes_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::KubernetesStatus'));
   $self->set_binding_field('key' => 'kubernetes_status_messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::Message')));
   $self->set_binding_field('key' => 'api_server_management_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'api_server_cluster_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'api_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'tls_management_endpoint_certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'tls_endpoint_certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'network_provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NetworkProvider'));
   $self->set_binding_field('key' => 'ncp_cluster_network_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NCPClusterNetworkInfo')));
   $self->set_binding_field('key' => 'workload_networks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::WorkloadNetworksInfo')));
   $self->set_binding_field('key' => 'workload_ntp_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'load_balancers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'LoadBalancers::Info'))));
   $self->set_binding_field('key' => 'service_cidr', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr'));
   $self->set_binding_field('key' => 'master_management_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NetworkSpec')));
   $self->set_binding_field('key' => 'master_DNS', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'worker_DNS', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ephemeral_storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'login_banner', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'Master_DNS_names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'image_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ImageStorageSpec')));
   $self->set_binding_field('key' => 'default_image_registry', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ImageRegistry')));
   $self->set_binding_field('key' => 'default_image_repository', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'master_DNS_search_domains', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_NTP_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'default_kubernetes_service_content_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_size_hint ()
# Gets the value of 'size_hint' property.
#
# @retval size_hint - The current value of the field.
# Current setting for  ``Com::Vmware::Vcenter::Namespace_management::SizingHint`` . This
#     affects the size and resources allocated to the Kubernetes API server. This  *field* 
#     was added in vSphere API 7.0.1.0.
#
# optional#
sub get_size_hint {
   my ($self, %args) = @_;
   return $self->{'size_hint'}; 	
}

## @method set_size_hint ()
# Sets the given value for 'size_hint' property.
# 
# @param size_hint  - New value for the field.
# Current setting for  ``Com::Vmware::Vcenter::Namespace_management::SizingHint`` . This
#     affects the size and resources allocated to the Kubernetes API server. This  *field* 
#     was added in vSphere API 7.0.1.0.
#
sub set_size_hint {
   my ($self, %args) = @_;
   $self->{'size_hint'} = $args{'size_hint'}; 
   return;	
}

## @method get_stat_summary ()
# Gets the value of 'stat_summary' property.
#
# @retval stat_summary - The current value of the field.
# Basic runtime statistics for the cluster.
#
# Stats#
sub get_stat_summary {
   my ($self, %args) = @_;
   return $self->{'stat_summary'}; 	
}

## @method set_stat_summary ()
# Sets the given value for 'stat_summary' property.
# 
# @param stat_summary  - New value for the field.
# Basic runtime statistics for the cluster.
#
sub set_stat_summary {
   my ($self, %args) = @_;
   $self->{'stat_summary'} = $args{'stat_summary'}; 
   return;	
}

## @method get_config_status ()
# Gets the value of 'config_status' property.
#
# @retval config_status - The current value of the field.
# Current setting for 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus`` .
#
# ConfigStatus#
sub get_config_status {
   my ($self, %args) = @_;
   return $self->{'config_status'}; 	
}

## @method set_config_status ()
# Sets the given value for 'config_status' property.
# 
# @param config_status  - New value for the field.
# Current setting for 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::ConfigStatus`` .
#
sub set_config_status {
   my ($self, %args) = @_;
   $self->{'config_status'} = $args{'config_status'}; 
   return;	
}

## @method get_messages ()
# Gets the value of 'messages' property.
#
# @retval messages - The current value of the field.
# Current set of messages associated with the object.
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
# Current set of messages associated with the object.
#
sub set_messages {
   my ($self, %args) = @_;
   $self->{'messages'} = $args{'messages'}; 
   return;	
}

## @method get_kubernetes_status ()
# Gets the value of 'kubernetes_status' property.
#
# @retval kubernetes_status - The current value of the field.
# Current setting for 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus`` .
#
# KubernetesStatus#
sub get_kubernetes_status {
   my ($self, %args) = @_;
   return $self->{'kubernetes_status'}; 	
}

## @method set_kubernetes_status ()
# Sets the given value for 'kubernetes_status' property.
# 
# @param kubernetes_status  - New value for the field.
# Current setting for 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::KubernetesStatus`` .
#
sub set_kubernetes_status {
   my ($self, %args) = @_;
   $self->{'kubernetes_status'} = $args{'kubernetes_status'}; 
   return;	
}

## @method get_kubernetes_status_messages ()
# Gets the value of 'kubernetes_status_messages' property.
#
# @retval kubernetes_status_messages - The current value of the field.
# Current set of messages associated with the object.
#
# List#
sub get_kubernetes_status_messages {
   my ($self, %args) = @_;
   return $self->{'kubernetes_status_messages'}; 	
}

## @method set_kubernetes_status_messages ()
# Sets the given value for 'kubernetes_status_messages' property.
# 
# @param kubernetes_status_messages  - New value for the field.
# Current set of messages associated with the object.
#
sub set_kubernetes_status_messages {
   my ($self, %args) = @_;
   $self->{'kubernetes_status_messages'} = $args{'kubernetes_status_messages'}; 
   return;	
}

## @method get_api_server_management_endpoint ()
# Gets the value of 'api_server_management_endpoint' property.
#
# @retval api_server_management_endpoint - The current value of the field.
# Kubernetes API Server IP address on the management network. This is a floating IP and
#     assigned to one of the control plane VMs on the management network. This endpoint is
#     used by vSphere components.
#
# String#
sub get_api_server_management_endpoint {
   my ($self, %args) = @_;
   return $self->{'api_server_management_endpoint'}; 	
}

## @method set_api_server_management_endpoint ()
# Sets the given value for 'api_server_management_endpoint' property.
# 
# @param api_server_management_endpoint  - New value for the field.
# Kubernetes API Server IP address on the management network. This is a floating IP and
#     assigned to one of the control plane VMs on the management network. This endpoint is
#     used by vSphere components.
#
sub set_api_server_management_endpoint {
   my ($self, %args) = @_;
   $self->{'api_server_management_endpoint'} = $args{'api_server_management_endpoint'}; 
   return;	
}

## @method get_api_server_cluster_endpoint ()
# Gets the value of 'api_server_cluster_endpoint' property.
#
# @retval api_server_cluster_endpoint - The current value of the field.
# Kubernetes API Server IP address via cluster network. This is the IP address of the
#     Kubernetes LoadBalancer type service fronting the apiservers. This endpoint is the one
#     configured in kubeconfig after login, and used for most human and application
#     interaction with Kubernetes.
#
# String#
sub get_api_server_cluster_endpoint {
   my ($self, %args) = @_;
   return $self->{'api_server_cluster_endpoint'}; 	
}

## @method set_api_server_cluster_endpoint ()
# Sets the given value for 'api_server_cluster_endpoint' property.
# 
# @param api_server_cluster_endpoint  - New value for the field.
# Kubernetes API Server IP address via cluster network. This is the IP address of the
#     Kubernetes LoadBalancer type service fronting the apiservers. This endpoint is the one
#     configured in kubeconfig after login, and used for most human and application
#     interaction with Kubernetes.
#
sub set_api_server_cluster_endpoint {
   my ($self, %args) = @_;
   $self->{'api_server_cluster_endpoint'} = $args{'api_server_cluster_endpoint'}; 
   return;	
}

## @method get_api_servers ()
# Gets the value of 'api_servers' property.
#
# @retval api_servers - The current value of the field.
# Identifier of the Kubernetes API servers. These are the IP addresses of the VM
#     instances for the Kubernetes control plane on the management network.
#
# Set#
sub get_api_servers {
   my ($self, %args) = @_;
   return $self->{'api_servers'}; 	
}

## @method set_api_servers ()
# Sets the given value for 'api_servers' property.
# 
# @param api_servers  - New value for the field.
# Identifier of the Kubernetes API servers. These are the IP addresses of the VM
#     instances for the Kubernetes control plane on the management network.
#
sub set_api_servers {
   my ($self, %args) = @_;
   $self->{'api_servers'} = $args{'api_servers'}; 
   return;	
}

## @method get_tls_management_endpoint_certificate ()
# Gets the value of 'tls_management_endpoint_certificate' property.
#
# @retval tls_management_endpoint_certificate - The current value of the field.
# PEM-encoded x509 certificate used by TLS endpoint on Kubernetes API servers when
#     accessed from the management network, e.g. from ESX servers or VCSA. This certificate
#     is only valid for use with the apiServerManagementEndpoint.
#
# Optional#
sub get_tls_management_endpoint_certificate {
   my ($self, %args) = @_;
   return $self->{'tls_management_endpoint_certificate'}; 	
}

## @method set_tls_management_endpoint_certificate ()
# Sets the given value for 'tls_management_endpoint_certificate' property.
# 
# @param tls_management_endpoint_certificate  - New value for the field.
# PEM-encoded x509 certificate used by TLS endpoint on Kubernetes API servers when
#     accessed from the management network, e.g. from ESX servers or VCSA. This certificate
#     is only valid for use with the apiServerManagementEndpoint.
#
sub set_tls_management_endpoint_certificate {
   my ($self, %args) = @_;
   $self->{'tls_management_endpoint_certificate'} = $args{'tls_management_endpoint_certificate'}; 
   return;	
}

## @method get_tls_endpoint_certificate ()
# Gets the value of 'tls_endpoint_certificate' property.
#
# @retval tls_endpoint_certificate - The current value of the field.
# PEM-encoded x509 certificate used by TLS endpoint on Kubernetes API servers when
#     accessed via the load balancer, e.g. devops user on corporate network. This
#     certificate is only valid for use with the apiServerClusterEndpoint.
#
# Optional#
sub get_tls_endpoint_certificate {
   my ($self, %args) = @_;
   return $self->{'tls_endpoint_certificate'}; 	
}

## @method set_tls_endpoint_certificate ()
# Sets the given value for 'tls_endpoint_certificate' property.
# 
# @param tls_endpoint_certificate  - New value for the field.
# PEM-encoded x509 certificate used by TLS endpoint on Kubernetes API servers when
#     accessed via the load balancer, e.g. devops user on corporate network. This
#     certificate is only valid for use with the apiServerClusterEndpoint.
#
sub set_tls_endpoint_certificate {
   my ($self, %args) = @_;
   $self->{'tls_endpoint_certificate'} = $args{'tls_endpoint_certificate'}; 
   return;	
}

## @method get_network_provider ()
# Gets the value of 'network_provider' property.
#
# @retval network_provider - The current value of the field.
# The provider of cluster networking for this vSphere Namespaces cluster.
#
# NetworkProvider#
sub get_network_provider {
   my ($self, %args) = @_;
   return $self->{'network_provider'}; 	
}

## @method set_network_provider ()
# Sets the given value for 'network_provider' property.
# 
# @param network_provider  - New value for the field.
# The provider of cluster networking for this vSphere Namespaces cluster.
#
sub set_network_provider {
   my ($self, %args) = @_;
   $self->{'network_provider'} = $args{'network_provider'}; 
   return;	
}

## @method get_ncp_cluster_network_info ()
# Gets the value of 'ncp_cluster_network_info' property.
#
# @retval ncp_cluster_network_info - The current value of the field.
# Specification for the NSX Container Plugin cluster network.
#
# optional#
sub get_ncp_cluster_network_info {
   my ($self, %args) = @_;
   return $self->{'ncp_cluster_network_info'}; 	
}

## @method set_ncp_cluster_network_info ()
# Sets the given value for 'ncp_cluster_network_info' property.
# 
# @param ncp_cluster_network_info  - New value for the field.
# Specification for the NSX Container Plugin cluster network.
#
sub set_ncp_cluster_network_info {
   my ($self, %args) = @_;
   $self->{'ncp_cluster_network_info'} = $args{'ncp_cluster_network_info'}; 
   return;	
}

## @method get_workload_networks ()
# Gets the value of 'workload_networks' property.
#
# @retval workload_networks - The current value of the field.
# Information about workload networks associated with the cluster. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
# optional#
sub get_workload_networks {
   my ($self, %args) = @_;
   return $self->{'workload_networks'}; 	
}

## @method set_workload_networks ()
# Sets the given value for 'workload_networks' property.
# 
# @param workload_networks  - New value for the field.
# Information about workload networks associated with the cluster. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
sub set_workload_networks {
   my ($self, %args) = @_;
   $self->{'workload_networks'} = $args{'workload_networks'}; 
   return;	
}

## @method get_workload_ntp_servers ()
# Gets the value of 'workload_ntp_servers' property.
#
# @retval workload_ntp_servers - The current value of the field.
# Information about NTP server DNS names or IP addresses to use for workloads such as
#     Tanzu Kubernetes Grid VMs, specified in order of preference. This  *field*  was added
#     in vSphere API 7.0.1.0.
#
# Optional#
sub get_workload_ntp_servers {
   my ($self, %args) = @_;
   return $self->{'workload_ntp_servers'}; 	
}

## @method set_workload_ntp_servers ()
# Sets the given value for 'workload_ntp_servers' property.
# 
# @param workload_ntp_servers  - New value for the field.
# Information about NTP server DNS names or IP addresses to use for workloads such as
#     Tanzu Kubernetes Grid VMs, specified in order of preference. This  *field*  was added
#     in vSphere API 7.0.1.0.
#
sub set_workload_ntp_servers {
   my ($self, %args) = @_;
   $self->{'workload_ntp_servers'} = $args{'workload_ntp_servers'}; 
   return;	
}

## @method get_load_balancers ()
# Gets the value of 'load_balancers' property.
#
# @retval load_balancers - The current value of the field.
# Information related to the Load balancer used for provisioning virtual servers in the
#     namespace. This  *field*  was added in vSphere API 7.0.1.0.
#
# optional#
sub get_load_balancers {
   my ($self, %args) = @_;
   return $self->{'load_balancers'}; 	
}

## @method set_load_balancers ()
# Sets the given value for 'load_balancers' property.
# 
# @param load_balancers  - New value for the field.
# Information related to the Load balancer used for provisioning virtual servers in the
#     namespace. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_load_balancers {
   my ($self, %args) = @_;
   $self->{'load_balancers'} = $args{'load_balancers'}; 
   return;	
}

## @method get_service_cidr ()
# Gets the value of 'service_cidr' property.
#
# @retval service_cidr - The current value of the field.
# CIDR block from which Kubernetes allocates service cluster IP addresses.
#
# Ipv4Cidr#
sub get_service_cidr {
   my ($self, %args) = @_;
   return $self->{'service_cidr'}; 	
}

## @method set_service_cidr ()
# Sets the given value for 'service_cidr' property.
# 
# @param service_cidr  - New value for the field.
# CIDR block from which Kubernetes allocates service cluster IP addresses.
#
sub set_service_cidr {
   my ($self, %args) = @_;
   $self->{'service_cidr'} = $args{'service_cidr'}; 
   return;	
}

## @method get_master_management_network ()
# Gets the value of 'master_management_network' property.
#
# @retval master_management_network - The current value of the field.
# Specification for the management network on Kubernetes API server. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
# optional#
sub get_master_management_network {
   my ($self, %args) = @_;
   return $self->{'master_management_network'}; 	
}

## @method set_master_management_network ()
# Sets the given value for 'master_management_network' property.
# 
# @param master_management_network  - New value for the field.
# Specification for the management network on Kubernetes API server. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
sub set_master_management_network {
   my ($self, %args) = @_;
   $self->{'master_management_network'} = $args{'master_management_network'}; 
   return;	
}

## @method get_master_DNS ()
# Gets the value of 'master_DNS' property.
#
# @retval master_DNS - The current value of the field.
# List of DNS server IP addresses to use on Kubernetes API server, specified in order of
#     preference.
#
# Optional#
sub get_master_DNS {
   my ($self, %args) = @_;
   return $self->{'master_DNS'}; 	
}

## @method set_master_DNS ()
# Sets the given value for 'master_DNS' property.
# 
# @param master_DNS  - New value for the field.
# List of DNS server IP addresses to use on Kubernetes API server, specified in order of
#     preference.
#
sub set_master_DNS {
   my ($self, %args) = @_;
   $self->{'master_DNS'} = $args{'master_DNS'}; 
   return;	
}

## @method get_worker_DNS ()
# Gets the value of 'worker_DNS' property.
#
# @retval worker_DNS - The current value of the field.
# List of DNS server IP addresses to use for pods that execute on the worker nodes
#     (which are native pods on ESXi hosts in the vSphere Namespaces Supervisor).
#
# Optional#
sub get_worker_DNS {
   my ($self, %args) = @_;
   return $self->{'worker_DNS'}; 	
}

## @method set_worker_DNS ()
# Sets the given value for 'worker_DNS' property.
# 
# @param worker_DNS  - New value for the field.
# List of DNS server IP addresses to use for pods that execute on the worker nodes
#     (which are native pods on ESXi hosts in the vSphere Namespaces Supervisor).
#
sub set_worker_DNS {
   my ($self, %args) = @_;
   $self->{'worker_DNS'} = $args{'worker_DNS'}; 
   return;	
}

## @method get_master_storage_policy ()
# Gets the value of 'master_storage_policy' property.
#
# @retval master_storage_policy - The current value of the field.
# Identifier of storage policy associated with Kubernetes API server. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
# optional#
sub get_master_storage_policy {
   my ($self, %args) = @_;
   return $self->{'master_storage_policy'}; 	
}

## @method set_master_storage_policy ()
# Sets the given value for 'master_storage_policy' property.
# 
# @param master_storage_policy  - New value for the field.
# Identifier of storage policy associated with Kubernetes API server. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
sub set_master_storage_policy {
   my ($self, %args) = @_;
   $self->{'master_storage_policy'} = $args{'master_storage_policy'}; 
   return;	
}

## @method get_ephemeral_storage_policy ()
# Gets the value of 'ephemeral_storage_policy' property.
#
# @retval ephemeral_storage_policy - The current value of the field.
# Identifier of storage policy associated with ephemeral disks of all the Kubernetes
#     Pods in the cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
# optional#
sub get_ephemeral_storage_policy {
   my ($self, %args) = @_;
   return $self->{'ephemeral_storage_policy'}; 	
}

## @method set_ephemeral_storage_policy ()
# Sets the given value for 'ephemeral_storage_policy' property.
# 
# @param ephemeral_storage_policy  - New value for the field.
# Identifier of storage policy associated with ephemeral disks of all the Kubernetes
#     Pods in the cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_ephemeral_storage_policy {
   my ($self, %args) = @_;
   $self->{'ephemeral_storage_policy'} = $args{'ephemeral_storage_policy'}; 
   return;	
}

## @method get_login_banner ()
# Gets the value of 'login_banner' property.
#
# @retval login_banner - The current value of the field.
# Disclaimer to be displayed prior to login via the Kubectl plugin. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
# Optional#
sub get_login_banner {
   my ($self, %args) = @_;
   return $self->{'login_banner'}; 	
}

## @method set_login_banner ()
# Sets the given value for 'login_banner' property.
# 
# @param login_banner  - New value for the field.
# Disclaimer to be displayed prior to login via the Kubectl plugin. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
sub set_login_banner {
   my ($self, %args) = @_;
   $self->{'login_banner'} = $args{'login_banner'}; 
   return;	
}

## @method get_Master_DNS_names ()
# Gets the value of 'Master_DNS_names' property.
#
# @retval Master_DNS_names - The current value of the field.
# List of additional DNS names to associate with the Kubernetes API server. These DNS
#     names are embedded in the TLS certificate presented by the API server. This  *field* 
#     was added in vSphere API 7.0.1.0.
#
# Optional#
sub get_Master_DNS_names {
   my ($self, %args) = @_;
   return $self->{'Master_DNS_names'}; 	
}

## @method set_Master_DNS_names ()
# Sets the given value for 'Master_DNS_names' property.
# 
# @param Master_DNS_names  - New value for the field.
# List of additional DNS names to associate with the Kubernetes API server. These DNS
#     names are embedded in the TLS certificate presented by the API server. This  *field* 
#     was added in vSphere API 7.0.1.0.
#
sub set_Master_DNS_names {
   my ($self, %args) = @_;
   $self->{'Master_DNS_names'} = $args{'Master_DNS_names'}; 
   return;	
}

## @method get_image_storage ()
# Gets the value of 'image_storage' property.
#
# @retval image_storage - The current value of the field.
# Specification for storage to be used for container images. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
# optional#
sub get_image_storage {
   my ($self, %args) = @_;
   return $self->{'image_storage'}; 	
}

## @method set_image_storage ()
# Sets the given value for 'image_storage' property.
# 
# @param image_storage  - New value for the field.
# Specification for storage to be used for container images. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
sub set_image_storage {
   my ($self, %args) = @_;
   $self->{'image_storage'} = $args{'image_storage'}; 
   return;	
}

## @method get_default_image_registry ()
# Gets the value of 'default_image_registry' property.
#
# @retval default_image_registry - The current value of the field.
# Default image registry to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name. This  *field*  was added in vSphere
#     API 7.0.1.0.
#
# Optional#
sub get_default_image_registry {
   my ($self, %args) = @_;
   return $self->{'default_image_registry'}; 	
}

## @method set_default_image_registry ()
# Sets the given value for 'default_image_registry' property.
# 
# @param default_image_registry  - New value for the field.
# Default image registry to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name. This  *field*  was added in vSphere
#     API 7.0.1.0.
#
sub set_default_image_registry {
   my ($self, %args) = @_;
   $self->{'default_image_registry'} = $args{'default_image_registry'}; 
   return;	
}

## @method get_default_image_repository ()
# Gets the value of 'default_image_repository' property.
#
# @retval default_image_repository - The current value of the field.
# Default image repository to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name. This  *field*  was added in vSphere
#     API 7.0.1.0.
#
# Optional#
sub get_default_image_repository {
   my ($self, %args) = @_;
   return $self->{'default_image_repository'}; 	
}

## @method set_default_image_repository ()
# Sets the given value for 'default_image_repository' property.
# 
# @param default_image_repository  - New value for the field.
# Default image repository to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name. This  *field*  was added in vSphere
#     API 7.0.1.0.
#
sub set_default_image_repository {
   my ($self, %args) = @_;
   $self->{'default_image_repository'} = $args{'default_image_repository'}; 
   return;	
}

## @method get_master_DNS_search_domains ()
# Gets the value of 'master_DNS_search_domains' property.
#
# @retval master_DNS_search_domains - The current value of the field.
# List of domains (for example &quot;vmware.com&quot;) to be searched when trying to
#     lookup a host name on Kubernetes API server, specified in order of preference.
#
# Optional#
sub get_master_DNS_search_domains {
   my ($self, %args) = @_;
   return $self->{'master_DNS_search_domains'}; 	
}

## @method set_master_DNS_search_domains ()
# Sets the given value for 'master_DNS_search_domains' property.
# 
# @param master_DNS_search_domains  - New value for the field.
# List of domains (for example &quot;vmware.com&quot;) to be searched when trying to
#     lookup a host name on Kubernetes API server, specified in order of preference.
#
sub set_master_DNS_search_domains {
   my ($self, %args) = @_;
   $self->{'master_DNS_search_domains'} = $args{'master_DNS_search_domains'}; 
   return;	
}

## @method get_master_NTP_servers ()
# Gets the value of 'master_NTP_servers' property.
#
# @retval master_NTP_servers - The current value of the field.
# List of NTP server DNS names or IP addresses to use on Kubernetes API server,
#     specified in order of preference. This  *field*  was added in vSphere API 7.0.1.0.
#
# Optional#
sub get_master_NTP_servers {
   my ($self, %args) = @_;
   return $self->{'master_NTP_servers'}; 	
}

## @method set_master_NTP_servers ()
# Sets the given value for 'master_NTP_servers' property.
# 
# @param master_NTP_servers  - New value for the field.
# List of NTP server DNS names or IP addresses to use on Kubernetes API server,
#     specified in order of preference. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_master_NTP_servers {
   my ($self, %args) = @_;
   $self->{'master_NTP_servers'} = $args{'master_NTP_servers'}; 
   return;	
}

## @method get_default_kubernetes_service_content_library ()
# Gets the value of 'default_kubernetes_service_content_library' property.
#
# @retval default_kubernetes_service_content_library - The current value of the field.
# Identifier of the Content Library which holds the VM Images for vSphere Kubernetes
#     Service. This Content Library should be subscribed to VMware&apos;s hosted vSphere
#     Kubernetes Service Repository.
#
# Optional#
sub get_default_kubernetes_service_content_library {
   my ($self, %args) = @_;
   return $self->{'default_kubernetes_service_content_library'}; 	
}

## @method set_default_kubernetes_service_content_library ()
# Sets the given value for 'default_kubernetes_service_content_library' property.
# 
# @param default_kubernetes_service_content_library  - New value for the field.
# Identifier of the Content Library which holds the VM Images for vSphere Kubernetes
#     Service. This Content Library should be subscribed to VMware&apos;s hosted vSphere
#     Kubernetes Service Repository.
#
sub set_default_kubernetes_service_content_library {
   my ($self, %args) = @_;
   $self->{'default_kubernetes_service_content_library'} = $args{'default_kubernetes_service_content_library'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range``  contains
#     specification to configure multiple interfaces in IPv4. The range of IPv4 addresses is
#     derived by incrementing the startingAddress to the specified addressCount. To use the
#     object for a single IPv4 address specification, set addressCount to 1.

package Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{starting_address} = $args{'starting_address'};
   $self->{address_count} = $args{'address_count'};
   $self->{subnet_mask} = $args{'subnet_mask'};
   $self->{gateway} = $args{'gateway'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.ipv4_range');
   $self->set_binding_field('key' => 'starting_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'address_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'subnet_mask', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'gateway', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_starting_address ()
# Gets the value of 'starting_address' property.
#
# @retval starting_address - The current value of the field.
# The IPv4 address denoting the start of the range.
#
# String#
sub get_starting_address {
   my ($self, %args) = @_;
   return $self->{'starting_address'}; 	
}

## @method set_starting_address ()
# Sets the given value for 'starting_address' property.
# 
# @param starting_address  - New value for the field.
# The IPv4 address denoting the start of the range.
#
sub set_starting_address {
   my ($self, %args) = @_;
   $self->{'starting_address'} = $args{'starting_address'}; 
   return;	
}

## @method get_address_count ()
# Gets the value of 'address_count' property.
#
# @retval address_count - The current value of the field.
# The number of IP addresses in the range. Addresses are derived by incrementing 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range.starting_address`
#     .
#
# long#
sub get_address_count {
   my ($self, %args) = @_;
   return $self->{'address_count'}; 	
}

## @method set_address_count ()
# Sets the given value for 'address_count' property.
# 
# @param address_count  - New value for the field.
# The number of IP addresses in the range. Addresses are derived by incrementing 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range.starting_address`
#     .
#
sub set_address_count {
   my ($self, %args) = @_;
   $self->{'address_count'} = $args{'address_count'}; 
   return;	
}

## @method get_subnet_mask ()
# Gets the value of 'subnet_mask' property.
#
# @retval subnet_mask - The current value of the field.
# Subnet mask to be set.
#
# String#
sub get_subnet_mask {
   my ($self, %args) = @_;
   return $self->{'subnet_mask'}; 	
}

## @method set_subnet_mask ()
# Sets the given value for 'subnet_mask' property.
# 
# @param subnet_mask  - New value for the field.
# Subnet mask to be set.
#
sub set_subnet_mask {
   my ($self, %args) = @_;
   $self->{'subnet_mask'} = $args{'subnet_mask'}; 
   return;	
}

## @method get_gateway ()
# Gets the value of 'gateway' property.
#
# @retval gateway - The current value of the field.
# The IPv4 address of the gateway associated with the range indicated by 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range.starting_address`
#     and 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range.address_count`
#     .
#
# String#
sub get_gateway {
   my ($self, %args) = @_;
   return $self->{'gateway'}; 	
}

## @method set_gateway ()
# Sets the given value for 'gateway' property.
# 
# @param gateway  - New value for the field.
# The IPv4 address of the gateway associated with the range indicated by 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range.starting_address`
#     and 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::Ipv4Range.address_count`
#     .
#
sub set_gateway {
   my ($self, %args) = @_;
   $self->{'gateway'} = $args{'gateway'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksEnableSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksEnableSpec`` 
#     contains the specification required to configure workload networks for a vSphere
#     Namespaces Cluster during Enable operation. These workload networks will be used as
#     backing network for Tanzu Kubernetes Cluster VMs and Kubernetes control plane VMs.
#     This  *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksEnableSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksEnableSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{supervisor_primary_workload_network} = $args{'supervisor_primary_workload_network'};
   $self->{network_list} = $args{'network_list'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksEnableSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.workload_networks_enable_spec');
   $self->set_binding_field('key' => 'supervisor_primary_workload_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Networks::CreateSpec'));
   $self->set_binding_field('key' => 'network_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Networks::CreateSpec'))));
   bless $self, $class;
   return $self;
}

## @method get_supervisor_primary_workload_network ()
# Gets the value of 'supervisor_primary_workload_network' property.
#
# @retval supervisor_primary_workload_network - The current value of the field.
# The  ``CreateSpec``  of the vSphere Namespaces network that will be used by Kubernetes
#     control plane VMs to expose Kubernetes API server to devops users and other workloads.
#     It can also used as backing network for Tanzu Kubernetes Cluster VMs. This  *field* 
#     was added in vSphere API 7.0.1.0.
#
# CreateSpec#
sub get_supervisor_primary_workload_network {
   my ($self, %args) = @_;
   return $self->{'supervisor_primary_workload_network'}; 	
}

## @method set_supervisor_primary_workload_network ()
# Sets the given value for 'supervisor_primary_workload_network' property.
# 
# @param supervisor_primary_workload_network  - New value for the field.
# The  ``CreateSpec``  of the vSphere Namespaces network that will be used by Kubernetes
#     control plane VMs to expose Kubernetes API server to devops users and other workloads.
#     It can also used as backing network for Tanzu Kubernetes Cluster VMs. This  *field* 
#     was added in vSphere API 7.0.1.0.
#
sub set_supervisor_primary_workload_network {
   my ($self, %args) = @_;
   $self->{'supervisor_primary_workload_network'} = $args{'supervisor_primary_workload_network'}; 
   return;	
}

## @method get_network_list ()
# Gets the value of 'network_list' property.
#
# @retval network_list - The current value of the field.
# ``CreateSpecs``   *class* es for additional list of vSphere Namespaces networks to be
#     associated with this cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
# Optional#
sub get_network_list {
   my ($self, %args) = @_;
   return $self->{'network_list'}; 	
}

## @method set_network_list ()
# Sets the given value for 'network_list' property.
# 
# @param network_list  - New value for the field.
# ``CreateSpecs``   *class* es for additional list of vSphere Namespaces networks to be
#     associated with this cluster. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_network_list {
   my ($self, %args) = @_;
   $self->{'network_list'} = $args{'network_list'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksInfo
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksInfo`` 
#     contains information related to configuration of vSphere Namespaces Network objects.
#     This  *class*  was added in vSphere API 7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{supervisor_primary_workload_network} = $args{'supervisor_primary_workload_network'};
   $self->{network_list} = $args{'network_list'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::WorkloadNetworksInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.workload_networks_info');
   $self->set_binding_field('key' => 'supervisor_primary_workload_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Networks::Info'));
   $self->set_binding_field('key' => 'network_list', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Networks::Info'))));
   bless $self, $class;
   return $self;
}

## @method get_supervisor_primary_workload_network ()
# Gets the value of 'supervisor_primary_workload_network' property.
#
# @retval supervisor_primary_workload_network - The current value of the field.
# vSphere Namespaces network used by Kubernetes control plane VMs to access
#     load-balanced services on the various workload networks. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
# Info#
sub get_supervisor_primary_workload_network {
   my ($self, %args) = @_;
   return $self->{'supervisor_primary_workload_network'}; 	
}

## @method set_supervisor_primary_workload_network ()
# Sets the given value for 'supervisor_primary_workload_network' property.
# 
# @param supervisor_primary_workload_network  - New value for the field.
# vSphere Namespaces network used by Kubernetes control plane VMs to access
#     load-balanced services on the various workload networks. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
sub set_supervisor_primary_workload_network {
   my ($self, %args) = @_;
   $self->{'supervisor_primary_workload_network'} = $args{'supervisor_primary_workload_network'}; 
   return;	
}

## @method get_network_list ()
# Gets the value of 'network_list' property.
#
# @retval network_list - The current value of the field.
# List of vSphere Namespaces networks associated with this cluster. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
# Optional#
sub get_network_list {
   my ($self, %args) = @_;
   return $self->{'network_list'}; 	
}

## @method set_network_list ()
# Sets the given value for 'network_list' property.
# 
# @param network_list  - New value for the field.
# List of vSphere Namespaces networks associated with this cluster. This  *field*  was
#     added in vSphere API 7.0.1.0.
#
sub set_network_list {
   my ($self, %args) = @_;
   $self->{'network_list'} = $args{'network_list'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec``  contains
#     information related to network configuration for one or more interfaces.

package Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec structure
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
         'discriminant_name' => 'mode',
         'case_map' => {
               'DHCP' => ['floating_IP'],
               'STATICRANGE' => ['address_range'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{floating_IP} = $args{'floating_IP'};
   $self->{network} = $args{'network'};
   $self->{mode} = $args{'mode'};
   $self->{address_range} = $args{'address_range'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.network_spec');
   $self->set_binding_field('key' => 'floating_IP', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NetworkSpec::Ipv4Mode'));
   $self->set_binding_field('key' => 'address_range', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::Ipv4Range')));
   bless $self, $class;
   return $self;
}

## @method get_floating_IP ()
# Gets the value of 'floating_IP' property.
#
# @retval floating_IP - The current value of the field.
# Optionally specify the Floating IP used by the HA master cluster in the DHCP case.
#
# Optional#
sub get_floating_IP {
   my ($self, %args) = @_;
   return $self->{'floating_IP'}; 	
}

## @method set_floating_IP ()
# Sets the given value for 'floating_IP' property.
# 
# @param floating_IP  - New value for the field.
# Optionally specify the Floating IP used by the HA master cluster in the DHCP case.
#
sub set_floating_IP {
   my ($self, %args) = @_;
   $self->{'floating_IP'} = $args{'floating_IP'}; 
   return;	
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Identifier for the network.
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
# Identifier for the network.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}

## @method get_mode ()
# Gets the value of 'mode' property.
#
# @retval mode - The current value of the field.
# The address assignment mode.
#
# Ipv4Mode#
sub get_mode {
   my ($self, %args) = @_;
   return $self->{'mode'}; 	
}

## @method set_mode ()
# Sets the given value for 'mode' property.
# 
# @param mode  - New value for the field.
# The address assignment mode.
#
sub set_mode {
   my ($self, %args) = @_;
   $self->{'mode'} = $args{'mode'}; 
   return;	
}

## @method get_address_range ()
# Gets the value of 'address_range' property.
#
# @retval address_range - The current value of the field.
# Settings for the interfaces on the network.
#
# optional#
sub get_address_range {
   my ($self, %args) = @_;
   return $self->{'address_range'}; 	
}

## @method set_address_range ()
# Sets the given value for 'address_range' property.
# 
# @param address_range  - New value for the field.
# Settings for the interfaces on the network.
#
sub set_address_range {
   my ($self, %args) = @_;
   $self->{'address_range'} = $args{'address_range'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec::Ipv4Mode
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec::Ipv4Mode``  
#     *enumerated type*  defines various IPv4 address assignment modes.
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec::Ipv4Mode::DHCP #
#The address is automatically assigned by a DHCP server.
#
# Constant Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec::Ipv4Mode::STATICRANGE #
#The address is static.

package Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec::Ipv4Mode;

use constant {
    DHCP =>  'DHCP',
    STATICRANGE =>  'STATICRANGE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec::Ipv4Mode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.clusters.network_spec.ipv4_mode',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec::Ipv4Mode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::ImageRegistry
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::ImageRegistry``   *class*
#      contains the specification required to configure container image registry endpoint.

package Com::Vmware::Vcenter::Namespace_management::Clusters::ImageRegistry;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::ImageRegistry structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{port} = $args{'port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::ImageRegistry');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.image_registry');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# IP address or the hostname of container image registry.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# IP address or the hostname of container image registry.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# Port number of the container image registry.
#
# Optional#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# Port number of the container image registry.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::ImageStorageSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::ImageStorageSpec``  
#     *class*  contains the specification required to configure storage used for container
#     images.

package Com::Vmware::Vcenter::Namespace_management::Clusters::ImageStorageSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::ImageStorageSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{storage_policy} = $args{'storage_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::ImageStorageSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.image_storage_spec');
   $self->set_binding_field('key' => 'storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_storage_policy ()
# Gets the value of 'storage_policy' property.
#
# @retval storage_policy - The current value of the field.
# Identifier of the storage policy.
#
# ID#
sub get_storage_policy {
   my ($self, %args) = @_;
   return $self->{'storage_policy'}; 	
}

## @method set_storage_policy ()
# Sets the given value for 'storage_policy' property.
# 
# @param storage_policy  - New value for the field.
# Identifier of the storage policy.
#
sub set_storage_policy {
   my ($self, %args) = @_;
   $self->{'storage_policy'} = $args{'storage_policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkInfo
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkInfo``  
#     *class*  contains the NSX Container Plugin-specific cluster networking configuration.

package Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{pod_cidrs} = $args{'pod_cidrs'};
   $self->{ingress_cidrs} = $args{'ingress_cidrs'};
   $self->{egress_cidrs} = $args{'egress_cidrs'};
   $self->{cluster_distributed_switch} = $args{'cluster_distributed_switch'};
   $self->{nsx_edge_cluster} = $args{'nsx_edge_cluster'};
   $self->{default_ingress_tls_certificate} = $args{'default_ingress_tls_certificate'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.NCP_cluster_network_info');
   $self->set_binding_field('key' => 'pod_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr')));
   $self->set_binding_field('key' => 'ingress_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr')));
   $self->set_binding_field('key' => 'egress_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr')));
   $self->set_binding_field('key' => 'cluster_distributed_switch', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'nsx_edge_cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'default_ingress_tls_certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_pod_cidrs ()
# Gets the value of 'pod_cidrs' property.
#
# @retval pod_cidrs - The current value of the field.
# CIDR blocks from which Kubernetes allocates pod IP addresses.
#
# List#
sub get_pod_cidrs {
   my ($self, %args) = @_;
   return $self->{'pod_cidrs'}; 	
}

## @method set_pod_cidrs ()
# Sets the given value for 'pod_cidrs' property.
# 
# @param pod_cidrs  - New value for the field.
# CIDR blocks from which Kubernetes allocates pod IP addresses.
#
sub set_pod_cidrs {
   my ($self, %args) = @_;
   $self->{'pod_cidrs'} = $args{'pod_cidrs'}; 
   return;	
}

## @method get_ingress_cidrs ()
# Gets the value of 'ingress_cidrs' property.
#
# @retval ingress_cidrs - The current value of the field.
# CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and
#     Kubernetes Services of type LoadBalancer.
#
# List#
sub get_ingress_cidrs {
   my ($self, %args) = @_;
   return $self->{'ingress_cidrs'}; 	
}

## @method set_ingress_cidrs ()
# Sets the given value for 'ingress_cidrs' property.
# 
# @param ingress_cidrs  - New value for the field.
# CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and
#     Kubernetes Services of type LoadBalancer.
#
sub set_ingress_cidrs {
   my ($self, %args) = @_;
   $self->{'ingress_cidrs'} = $args{'ingress_cidrs'}; 
   return;	
}

## @method get_egress_cidrs ()
# Gets the value of 'egress_cidrs' property.
#
# @retval egress_cidrs - The current value of the field.
# CIDR blocks from which NSX assigns IP addresses used for performing SNAT from
#     container IPs to external IPs.
#
# List#
sub get_egress_cidrs {
   my ($self, %args) = @_;
   return $self->{'egress_cidrs'}; 	
}

## @method set_egress_cidrs ()
# Sets the given value for 'egress_cidrs' property.
# 
# @param egress_cidrs  - New value for the field.
# CIDR blocks from which NSX assigns IP addresses used for performing SNAT from
#     container IPs to external IPs.
#
sub set_egress_cidrs {
   my ($self, %args) = @_;
   $self->{'egress_cidrs'} = $args{'egress_cidrs'}; 
   return;	
}

## @method get_cluster_distributed_switch ()
# Gets the value of 'cluster_distributed_switch' property.
#
# @retval cluster_distributed_switch - The current value of the field.
# vSphere Distributed Switch used to connect this cluster.
#
# ID#
sub get_cluster_distributed_switch {
   my ($self, %args) = @_;
   return $self->{'cluster_distributed_switch'}; 	
}

## @method set_cluster_distributed_switch ()
# Sets the given value for 'cluster_distributed_switch' property.
# 
# @param cluster_distributed_switch  - New value for the field.
# vSphere Distributed Switch used to connect this cluster.
#
sub set_cluster_distributed_switch {
   my ($self, %args) = @_;
   $self->{'cluster_distributed_switch'} = $args{'cluster_distributed_switch'}; 
   return;	
}

## @method get_nsx_edge_cluster ()
# Gets the value of 'nsx_edge_cluster' property.
#
# @retval nsx_edge_cluster - The current value of the field.
# NSX Edge Cluster to be used for Kubernetes Services of type LoadBalancer, Kubernetes
#     Ingresses, and NSX SNAT.
#
# ID#
sub get_nsx_edge_cluster {
   my ($self, %args) = @_;
   return $self->{'nsx_edge_cluster'}; 	
}

## @method set_nsx_edge_cluster ()
# Sets the given value for 'nsx_edge_cluster' property.
# 
# @param nsx_edge_cluster  - New value for the field.
# NSX Edge Cluster to be used for Kubernetes Services of type LoadBalancer, Kubernetes
#     Ingresses, and NSX SNAT.
#
sub set_nsx_edge_cluster {
   my ($self, %args) = @_;
   $self->{'nsx_edge_cluster'} = $args{'nsx_edge_cluster'}; 
   return;	
}

## @method get_default_ingress_tls_certificate ()
# Gets the value of 'default_ingress_tls_certificate' property.
#
# @retval default_ingress_tls_certificate - The current value of the field.
# PEM-encoded x509 certificate used by NSX as a default fallback certificate for
#     Kubernetes Ingress services.
#
# String#
sub get_default_ingress_tls_certificate {
   my ($self, %args) = @_;
   return $self->{'default_ingress_tls_certificate'}; 	
}

## @method set_default_ingress_tls_certificate ()
# Sets the given value for 'default_ingress_tls_certificate' property.
# 
# @param default_ingress_tls_certificate  - New value for the field.
# PEM-encoded x509 certificate used by NSX as a default fallback certificate for
#     Kubernetes Ingress services.
#
sub set_default_ingress_tls_certificate {
   my ($self, %args) = @_;
   $self->{'default_ingress_tls_certificate'} = $args{'default_ingress_tls_certificate'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec`` 
#     *class*  encapsulates the NSX Container Plugin-specific cluster networking
#     configuration parameters for the vSphere Namespaces Cluster Enable operation.

package Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{pod_cidrs} = $args{'pod_cidrs'};
   $self->{ingress_cidrs} = $args{'ingress_cidrs'};
   $self->{egress_cidrs} = $args{'egress_cidrs'};
   $self->{cluster_distributed_switch} = $args{'cluster_distributed_switch'};
   $self->{nsx_edge_cluster} = $args{'nsx_edge_cluster'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.NCP_cluster_network_enable_spec');
   $self->set_binding_field('key' => 'pod_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr')));
   $self->set_binding_field('key' => 'ingress_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr')));
   $self->set_binding_field('key' => 'egress_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr')));
   $self->set_binding_field('key' => 'cluster_distributed_switch', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'nsx_edge_cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_pod_cidrs ()
# Gets the value of 'pod_cidrs' property.
#
# @retval pod_cidrs - The current value of the field.
# CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not
#     overlap with those in null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.ingress_cidrs`
#     , 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.egress_cidrs`
#     , or other services running in the datacenter. All Pod CIDR blocks must be of at least
#     subnet size /23.
#
# List#
sub get_pod_cidrs {
   my ($self, %args) = @_;
   return $self->{'pod_cidrs'}; 	
}

## @method set_pod_cidrs ()
# Sets the given value for 'pod_cidrs' property.
# 
# @param pod_cidrs  - New value for the field.
# CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not
#     overlap with those in null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.ingress_cidrs`
#     , 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.egress_cidrs`
#     , or other services running in the datacenter. All Pod CIDR blocks must be of at least
#     subnet size /23.
#
sub set_pod_cidrs {
   my ($self, %args) = @_;
   $self->{'pod_cidrs'} = $args{'pod_cidrs'}; 
   return;	
}

## @method get_ingress_cidrs ()
# Gets the value of 'ingress_cidrs' property.
#
# @retval ingress_cidrs - The current value of the field.
# CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and
#     Kubernetes Services of type LoadBalancer. These ranges should not overlap with those
#     in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.egress_cidrs`
#     , or other services running in the datacenter.
#
# List#
sub get_ingress_cidrs {
   my ($self, %args) = @_;
   return $self->{'ingress_cidrs'}; 	
}

## @method set_ingress_cidrs ()
# Sets the given value for 'ingress_cidrs' property.
# 
# @param ingress_cidrs  - New value for the field.
# CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and
#     Kubernetes Services of type LoadBalancer. These ranges should not overlap with those
#     in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.egress_cidrs`
#     , or other services running in the datacenter.
#
sub set_ingress_cidrs {
   my ($self, %args) = @_;
   $self->{'ingress_cidrs'} = $args{'ingress_cidrs'}; 
   return;	
}

## @method get_egress_cidrs ()
# Gets the value of 'egress_cidrs' property.
#
# @retval egress_cidrs - The current value of the field.
# CIDR blocks from which NSX assigns IP addresses used for performing SNAT from
#     container IPs to external IPs. These ranges should not overlap with those in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.ingress_cidrs`
#     , or other services running in the datacenter.
#
# List#
sub get_egress_cidrs {
   my ($self, %args) = @_;
   return $self->{'egress_cidrs'}; 	
}

## @method set_egress_cidrs ()
# Sets the given value for 'egress_cidrs' property.
# 
# @param egress_cidrs  - New value for the field.
# CIDR blocks from which NSX assigns IP addresses used for performing SNAT from
#     container IPs to external IPs. These ranges should not overlap with those in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkEnableSpec.ingress_cidrs`
#     , or other services running in the datacenter.
#
sub set_egress_cidrs {
   my ($self, %args) = @_;
   $self->{'egress_cidrs'} = $args{'egress_cidrs'}; 
   return;	
}

## @method get_cluster_distributed_switch ()
# Gets the value of 'cluster_distributed_switch' property.
#
# @retval cluster_distributed_switch - The current value of the field.
# vSphere Distributed Switch used to connect this cluster.
#
# Optional#
sub get_cluster_distributed_switch {
   my ($self, %args) = @_;
   return $self->{'cluster_distributed_switch'}; 	
}

## @method set_cluster_distributed_switch ()
# Sets the given value for 'cluster_distributed_switch' property.
# 
# @param cluster_distributed_switch  - New value for the field.
# vSphere Distributed Switch used to connect this cluster.
#
sub set_cluster_distributed_switch {
   my ($self, %args) = @_;
   $self->{'cluster_distributed_switch'} = $args{'cluster_distributed_switch'}; 
   return;	
}

## @method get_nsx_edge_cluster ()
# Gets the value of 'nsx_edge_cluster' property.
#
# @retval nsx_edge_cluster - The current value of the field.
# NSX Edge Cluster to be used for Kubernetes Services of type LoadBalancer, Kubernetes
#     Ingresses, and NSX SNAT.
#
# Optional#
sub get_nsx_edge_cluster {
   my ($self, %args) = @_;
   return $self->{'nsx_edge_cluster'}; 	
}

## @method set_nsx_edge_cluster ()
# Sets the given value for 'nsx_edge_cluster' property.
# 
# @param nsx_edge_cluster  - New value for the field.
# NSX Edge Cluster to be used for Kubernetes Services of type LoadBalancer, Kubernetes
#     Ingresses, and NSX SNAT.
#
sub set_nsx_edge_cluster {
   my ($self, %args) = @_;
   $self->{'nsx_edge_cluster'} = $args{'nsx_edge_cluster'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec`` 
#     *class*  encapsulates the NSX Container Plugin-specific cluster networking
#     configuration parameters for the vSphere Namespaces Cluster Update operation.

package Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{pod_cidrs} = $args{'pod_cidrs'};
   $self->{ingress_cidrs} = $args{'ingress_cidrs'};
   $self->{egress_cidrs} = $args{'egress_cidrs'};
   $self->{default_ingress_tls_certificate} = $args{'default_ingress_tls_certificate'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.NCP_cluster_network_update_spec');
   $self->set_binding_field('key' => 'pod_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr'))));
   $self->set_binding_field('key' => 'ingress_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr'))));
   $self->set_binding_field('key' => 'egress_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr'))));
   $self->set_binding_field('key' => 'default_ingress_tls_certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_pod_cidrs ()
# Gets the value of 'pod_cidrs' property.
#
# @retval pod_cidrs - The current value of the field.
# CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not
#     overlap with those in null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.ingress_cidrs`
#     , 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.egress_cidrs`
#     , or other services running in the datacenter. An update operation only allows for
#     addition of new CIDR blocks to the existing list. All Pod CIDR blocks must be of at
#     least subnet size /23.
#
# Optional#
sub get_pod_cidrs {
   my ($self, %args) = @_;
   return $self->{'pod_cidrs'}; 	
}

## @method set_pod_cidrs ()
# Sets the given value for 'pod_cidrs' property.
# 
# @param pod_cidrs  - New value for the field.
# CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not
#     overlap with those in null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.ingress_cidrs`
#     , 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.egress_cidrs`
#     , or other services running in the datacenter. An update operation only allows for
#     addition of new CIDR blocks to the existing list. All Pod CIDR blocks must be of at
#     least subnet size /23.
#
sub set_pod_cidrs {
   my ($self, %args) = @_;
   $self->{'pod_cidrs'} = $args{'pod_cidrs'}; 
   return;	
}

## @method get_ingress_cidrs ()
# Gets the value of 'ingress_cidrs' property.
#
# @retval ingress_cidrs - The current value of the field.
# CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and
#     Kubernetes Services of type LoadBalancer. These ranges should not overlap with those
#     in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.egress_cidrs`
#     , or other services running in the datacenter. An update operation only allows for
#     addition of new CIDR blocks to the existing list.
#
# Optional#
sub get_ingress_cidrs {
   my ($self, %args) = @_;
   return $self->{'ingress_cidrs'}; 	
}

## @method set_ingress_cidrs ()
# Sets the given value for 'ingress_cidrs' property.
# 
# @param ingress_cidrs  - New value for the field.
# CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and
#     Kubernetes Services of type LoadBalancer. These ranges should not overlap with those
#     in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.egress_cidrs`
#     , or other services running in the datacenter. An update operation only allows for
#     addition of new CIDR blocks to the existing list.
#
sub set_ingress_cidrs {
   my ($self, %args) = @_;
   $self->{'ingress_cidrs'} = $args{'ingress_cidrs'}; 
   return;	
}

## @method get_egress_cidrs ()
# Gets the value of 'egress_cidrs' property.
#
# @retval egress_cidrs - The current value of the field.
# CIDR blocks from which NSX assigns IP addresses used for performing SNAT from
#     container IPs to external IPs. These ranges should not overlap with those in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.ingress_cidrs`
#     , or other services running in the datacenter. An update operation only allows for
#     addition of new CIDR blocks to the existing list.
#
# Optional#
sub get_egress_cidrs {
   my ($self, %args) = @_;
   return $self->{'egress_cidrs'}; 	
}

## @method set_egress_cidrs ()
# Sets the given value for 'egress_cidrs' property.
# 
# @param egress_cidrs  - New value for the field.
# CIDR blocks from which NSX assigns IP addresses used for performing SNAT from
#     container IPs to external IPs. These ranges should not overlap with those in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkUpdateSpec.ingress_cidrs`
#     , or other services running in the datacenter. An update operation only allows for
#     addition of new CIDR blocks to the existing list.
#
sub set_egress_cidrs {
   my ($self, %args) = @_;
   $self->{'egress_cidrs'} = $args{'egress_cidrs'}; 
   return;	
}

## @method get_default_ingress_tls_certificate ()
# Gets the value of 'default_ingress_tls_certificate' property.
#
# @retval default_ingress_tls_certificate - The current value of the field.
# PEM-encoded x509 certificate used by NSX as a default fallback certificate for
#     Kubernetes Ingress services.
#
# Optional#
sub get_default_ingress_tls_certificate {
   my ($self, %args) = @_;
   return $self->{'default_ingress_tls_certificate'}; 	
}

## @method set_default_ingress_tls_certificate ()
# Sets the given value for 'default_ingress_tls_certificate' property.
# 
# @param default_ingress_tls_certificate  - New value for the field.
# PEM-encoded x509 certificate used by NSX as a default fallback certificate for
#     Kubernetes Ingress services.
#
sub set_default_ingress_tls_certificate {
   my ($self, %args) = @_;
   $self->{'default_ingress_tls_certificate'} = $args{'default_ingress_tls_certificate'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec``  
#     *class*  encapsulates the NSX Container Plugin-specific cluster networking
#     configuration parameters for the vSphere Namespaces Cluster Set operation.

package Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{pod_cidrs} = $args{'pod_cidrs'};
   $self->{ingress_cidrs} = $args{'ingress_cidrs'};
   $self->{egress_cidrs} = $args{'egress_cidrs'};
   $self->{default_ingress_tls_certificate} = $args{'default_ingress_tls_certificate'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.NCP_cluster_network_set_spec');
   $self->set_binding_field('key' => 'pod_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr')));
   $self->set_binding_field('key' => 'ingress_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr')));
   $self->set_binding_field('key' => 'egress_cidrs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr')));
   $self->set_binding_field('key' => 'default_ingress_tls_certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_pod_cidrs ()
# Gets the value of 'pod_cidrs' property.
#
# @retval pod_cidrs - The current value of the field.
# CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not
#     overlap with those in null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.ingress_cidrs`
#     , 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.egress_cidrs`
#     , or other services running in the datacenter. A set operation only allows for
#     addition of new CIDR blocks to the existing list. All Pod CIDR blocks must be of at
#     least subnet size /23.
#
# List#
sub get_pod_cidrs {
   my ($self, %args) = @_;
   return $self->{'pod_cidrs'}; 	
}

## @method set_pod_cidrs ()
# Sets the given value for 'pod_cidrs' property.
# 
# @param pod_cidrs  - New value for the field.
# CIDR blocks from which Kubernetes allocates pod IP addresses. This range should not
#     overlap with those in null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.ingress_cidrs`
#     , 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.egress_cidrs`
#     , or other services running in the datacenter. A set operation only allows for
#     addition of new CIDR blocks to the existing list. All Pod CIDR blocks must be of at
#     least subnet size /23.
#
sub set_pod_cidrs {
   my ($self, %args) = @_;
   $self->{'pod_cidrs'} = $args{'pod_cidrs'}; 
   return;	
}

## @method get_ingress_cidrs ()
# Gets the value of 'ingress_cidrs' property.
#
# @retval ingress_cidrs - The current value of the field.
# CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and
#     Kubernetes Services of type LoadBalancer. These ranges should not overlap with those
#     in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.egress_cidrs`
#     , or other services running in the datacenter. A set operation only allows for
#     addition of new CIDR blocks to the existing list.
#
# List#
sub get_ingress_cidrs {
   my ($self, %args) = @_;
   return $self->{'ingress_cidrs'}; 	
}

## @method set_ingress_cidrs ()
# Sets the given value for 'ingress_cidrs' property.
# 
# @param ingress_cidrs  - New value for the field.
# CIDR blocks from which NSX assigns IP addresses for Kubernetes Ingresses and
#     Kubernetes Services of type LoadBalancer. These ranges should not overlap with those
#     in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.egress_cidrs`
#     , or other services running in the datacenter. A set operation only allows for
#     addition of new CIDR blocks to the existing list.
#
sub set_ingress_cidrs {
   my ($self, %args) = @_;
   $self->{'ingress_cidrs'} = $args{'ingress_cidrs'}; 
   return;	
}

## @method get_egress_cidrs ()
# Gets the value of 'egress_cidrs' property.
#
# @retval egress_cidrs - The current value of the field.
# CIDR blocks from which NSX assigns IP addresses used for performing SNAT from
#     container IPs to external IPs. These ranges should not overlap with those in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.ingress_cidrs`
#     , or other services running in the datacenter. A set operation only allows for
#     addition of new CIDR blocks to the existing list.
#
# List#
sub get_egress_cidrs {
   my ($self, %args) = @_;
   return $self->{'egress_cidrs'}; 	
}

## @method set_egress_cidrs ()
# Sets the given value for 'egress_cidrs' property.
# 
# @param egress_cidrs  - New value for the field.
# CIDR blocks from which NSX assigns IP addresses used for performing SNAT from
#     container IPs to external IPs. These ranges should not overlap with those in 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.pod_cidrs`
#     , null, 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NCPClusterNetworkSetSpec.ingress_cidrs`
#     , or other services running in the datacenter. A set operation only allows for
#     addition of new CIDR blocks to the existing list.
#
sub set_egress_cidrs {
   my ($self, %args) = @_;
   $self->{'egress_cidrs'} = $args{'egress_cidrs'}; 
   return;	
}

## @method get_default_ingress_tls_certificate ()
# Gets the value of 'default_ingress_tls_certificate' property.
#
# @retval default_ingress_tls_certificate - The current value of the field.
# PEM-encoded x509 certificate used by NSX as a default fallback certificate for
#     Kubernetes Ingress services.
#
# String#
sub get_default_ingress_tls_certificate {
   my ($self, %args) = @_;
   return $self->{'default_ingress_tls_certificate'}; 	
}

## @method set_default_ingress_tls_certificate ()
# Sets the given value for 'default_ingress_tls_certificate' property.
# 
# @param default_ingress_tls_certificate  - New value for the field.
# PEM-encoded x509 certificate used by NSX as a default fallback certificate for
#     Kubernetes Ingress services.
#
sub set_default_ingress_tls_certificate {
   my ($self, %args) = @_;
   $self->{'default_ingress_tls_certificate'} = $args{'default_ingress_tls_certificate'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::EnableSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::EnableSpec``   *class* 
#     contains the specification required to enable vSphere Namespaces on a cluster.

package Com::Vmware::Vcenter::Namespace_management::Clusters::EnableSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::EnableSpec structure
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
         'discriminant_name' => 'network_provider',
         'case_map' => {
               'NSXT_CONTAINER_PLUGIN' => ['ncp_cluster_network_spec'],
               'VSPHERE_NETWORK' => ['workload_networks_spec', 'load_balancer_config_spec'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{size_hint} = $args{'size_hint'};
   $self->{service_cidr} = $args{'service_cidr'};
   $self->{network_provider} = $args{'network_provider'};
   $self->{ncp_cluster_network_spec} = $args{'ncp_cluster_network_spec'};
   $self->{workload_networks_spec} = $args{'workload_networks_spec'};
   $self->{workload_ntp_servers} = $args{'workload_ntp_servers'};
   $self->{load_balancer_config_spec} = $args{'load_balancer_config_spec'};
   $self->{master_management_network} = $args{'master_management_network'};
   $self->{master_DNS} = $args{'master_DNS'};
   $self->{worker_DNS} = $args{'worker_DNS'};
   $self->{master_DNS_search_domains} = $args{'master_DNS_search_domains'};
   $self->{master_NTP_servers} = $args{'master_NTP_servers'};
   $self->{master_storage_policy} = $args{'master_storage_policy'};
   $self->{ephemeral_storage_policy} = $args{'ephemeral_storage_policy'};
   $self->{login_banner} = $args{'login_banner'};
   $self->{Master_DNS_names} = $args{'Master_DNS_names'};
   $self->{image_storage} = $args{'image_storage'};
   $self->{default_image_registry} = $args{'default_image_registry'};
   $self->{default_image_repository} = $args{'default_image_repository'};
   $self->{default_kubernetes_service_content_library} = $args{'default_kubernetes_service_content_library'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::EnableSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.enable_spec');
   $self->set_binding_field('key' => 'size_hint', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'SizingHint'));
   $self->set_binding_field('key' => 'service_cidr', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr'));
   $self->set_binding_field('key' => 'network_provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NetworkProvider'));
   $self->set_binding_field('key' => 'ncp_cluster_network_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NCPClusterNetworkEnableSpec')));
   $self->set_binding_field('key' => 'workload_networks_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::WorkloadNetworksEnableSpec')));
   $self->set_binding_field('key' => 'workload_ntp_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'load_balancer_config_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'LoadBalancers::ConfigSpec')));
   $self->set_binding_field('key' => 'master_management_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NetworkSpec'));
   $self->set_binding_field('key' => 'master_DNS', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'worker_DNS', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_DNS_search_domains', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_NTP_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ephemeral_storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'login_banner', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'Master_DNS_names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'image_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ImageStorageSpec'));
   $self->set_binding_field('key' => 'default_image_registry', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ImageRegistry')));
   $self->set_binding_field('key' => 'default_image_repository', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'default_kubernetes_service_content_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_size_hint ()
# Gets the value of 'size_hint' property.
#
# @retval size_hint - The current value of the field.
# This affects the size and resources allocated to the Kubernetes API server and the
#     worker nodes. It also affects the suggested default serviceCidr and podCidrs.
#
# SizingHint#
sub get_size_hint {
   my ($self, %args) = @_;
   return $self->{'size_hint'}; 	
}

## @method set_size_hint ()
# Sets the given value for 'size_hint' property.
# 
# @param size_hint  - New value for the field.
# This affects the size and resources allocated to the Kubernetes API server and the
#     worker nodes. It also affects the suggested default serviceCidr and podCidrs.
#
sub set_size_hint {
   my ($self, %args) = @_;
   $self->{'size_hint'} = $args{'size_hint'}; 
   return;	
}

## @method get_service_cidr ()
# Gets the value of 'service_cidr' property.
#
# @retval service_cidr - The current value of the field.
# CIDR block from which Kubernetes allocates service cluster IP addresses. This range
#     should not overlap with those in null, null, null, or other services running in the
#     datacenter.
#
# Ipv4Cidr#
sub get_service_cidr {
   my ($self, %args) = @_;
   return $self->{'service_cidr'}; 	
}

## @method set_service_cidr ()
# Sets the given value for 'service_cidr' property.
# 
# @param service_cidr  - New value for the field.
# CIDR block from which Kubernetes allocates service cluster IP addresses. This range
#     should not overlap with those in null, null, null, or other services running in the
#     datacenter.
#
sub set_service_cidr {
   my ($self, %args) = @_;
   $self->{'service_cidr'} = $args{'service_cidr'}; 
   return;	
}

## @method get_network_provider ()
# Gets the value of 'network_provider' property.
#
# @retval network_provider - The current value of the field.
# The provider of cluster networking for this vSphere Namespaces cluster.
#
# NetworkProvider#
sub get_network_provider {
   my ($self, %args) = @_;
   return $self->{'network_provider'}; 	
}

## @method set_network_provider ()
# Sets the given value for 'network_provider' property.
# 
# @param network_provider  - New value for the field.
# The provider of cluster networking for this vSphere Namespaces cluster.
#
sub set_network_provider {
   my ($self, %args) = @_;
   $self->{'network_provider'} = $args{'network_provider'}; 
   return;	
}

## @method get_ncp_cluster_network_spec ()
# Gets the value of 'ncp_cluster_network_spec' property.
#
# @retval ncp_cluster_network_spec - The current value of the field.
# Specification for the NSX Container Plugin cluster network.
#
# optional#
sub get_ncp_cluster_network_spec {
   my ($self, %args) = @_;
   return $self->{'ncp_cluster_network_spec'}; 	
}

## @method set_ncp_cluster_network_spec ()
# Sets the given value for 'ncp_cluster_network_spec' property.
# 
# @param ncp_cluster_network_spec  - New value for the field.
# Specification for the NSX Container Plugin cluster network.
#
sub set_ncp_cluster_network_spec {
   my ($self, %args) = @_;
   $self->{'ncp_cluster_network_spec'} = $args{'ncp_cluster_network_spec'}; 
   return;	
}

## @method get_workload_networks_spec ()
# Gets the value of 'workload_networks_spec' property.
#
# @retval workload_networks_spec - The current value of the field.
# Specification for the workload networks to be associated with the cluster. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
# optional#
sub get_workload_networks_spec {
   my ($self, %args) = @_;
   return $self->{'workload_networks_spec'}; 	
}

## @method set_workload_networks_spec ()
# Sets the given value for 'workload_networks_spec' property.
# 
# @param workload_networks_spec  - New value for the field.
# Specification for the workload networks to be associated with the cluster. This 
#     *field*  was added in vSphere API 7.0.1.0.
#
sub set_workload_networks_spec {
   my ($self, %args) = @_;
   $self->{'workload_networks_spec'} = $args{'workload_networks_spec'}; 
   return;	
}

## @method get_workload_ntp_servers ()
# Gets the value of 'workload_ntp_servers' property.
#
# @retval workload_ntp_servers - The current value of the field.
# List of NTP server DNS names or IP addresses to use for workloads such as Tanzu
#     Kubernetes Grid VMs, specified in order of preference. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
# Optional#
sub get_workload_ntp_servers {
   my ($self, %args) = @_;
   return $self->{'workload_ntp_servers'}; 	
}

## @method set_workload_ntp_servers ()
# Sets the given value for 'workload_ntp_servers' property.
# 
# @param workload_ntp_servers  - New value for the field.
# List of NTP server DNS names or IP addresses to use for workloads such as Tanzu
#     Kubernetes Grid VMs, specified in order of preference. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
sub set_workload_ntp_servers {
   my ($self, %args) = @_;
   $self->{'workload_ntp_servers'} = $args{'workload_ntp_servers'}; 
   return;	
}

## @method get_load_balancer_config_spec ()
# Gets the value of 'load_balancer_config_spec' property.
#
# @retval load_balancer_config_spec - The current value of the field.
# A null dictates configuration derived from a user-provisioned load balancer that will
#     be used to operate a load balancer that fronts vSphere Namespaces cluster servers,
#     Tanzu Kubernetes Grid API servers, and other servers upon request. This configuration
#     is required for network providers that do not have a default load balancer included.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
# optional#
sub get_load_balancer_config_spec {
   my ($self, %args) = @_;
   return $self->{'load_balancer_config_spec'}; 	
}

## @method set_load_balancer_config_spec ()
# Sets the given value for 'load_balancer_config_spec' property.
# 
# @param load_balancer_config_spec  - New value for the field.
# A null dictates configuration derived from a user-provisioned load balancer that will
#     be used to operate a load balancer that fronts vSphere Namespaces cluster servers,
#     Tanzu Kubernetes Grid API servers, and other servers upon request. This configuration
#     is required for network providers that do not have a default load balancer included.
#     This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_load_balancer_config_spec {
   my ($self, %args) = @_;
   $self->{'load_balancer_config_spec'} = $args{'load_balancer_config_spec'}; 
   return;	
}

## @method get_master_management_network ()
# Gets the value of 'master_management_network' property.
#
# @retval master_management_network - The current value of the field.
# Specification for the management network on Kubernetes API server. 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec.mode`  must
#     be STATICRANGE as we require Kubernetes API server to have a stable address.
#
# NetworkSpec#
sub get_master_management_network {
   my ($self, %args) = @_;
   return $self->{'master_management_network'}; 	
}

## @method set_master_management_network ()
# Sets the given value for 'master_management_network' property.
# 
# @param master_management_network  - New value for the field.
# Specification for the management network on Kubernetes API server. 
#     :attr:`Com::Vmware::Vcenter::Namespace_management::Clusters::NetworkSpec.mode`  must
#     be STATICRANGE as we require Kubernetes API server to have a stable address.
#
sub set_master_management_network {
   my ($self, %args) = @_;
   $self->{'master_management_network'} = $args{'master_management_network'}; 
   return;	
}

## @method get_master_DNS ()
# Gets the value of 'master_DNS' property.
#
# @retval master_DNS - The current value of the field.
# List of DNS server IP addresses to use on Kubernetes API server, specified in order of
#     preference.
#
# Optional#
sub get_master_DNS {
   my ($self, %args) = @_;
   return $self->{'master_DNS'}; 	
}

## @method set_master_DNS ()
# Sets the given value for 'master_DNS' property.
# 
# @param master_DNS  - New value for the field.
# List of DNS server IP addresses to use on Kubernetes API server, specified in order of
#     preference.
#
sub set_master_DNS {
   my ($self, %args) = @_;
   $self->{'master_DNS'} = $args{'master_DNS'}; 
   return;	
}

## @method get_worker_DNS ()
# Gets the value of 'worker_DNS' property.
#
# @retval worker_DNS - The current value of the field.
# List of DNS server IP addresses to use on the worker nodes, specified in order of
#     preference.
#
# Optional#
sub get_worker_DNS {
   my ($self, %args) = @_;
   return $self->{'worker_DNS'}; 	
}

## @method set_worker_DNS ()
# Sets the given value for 'worker_DNS' property.
# 
# @param worker_DNS  - New value for the field.
# List of DNS server IP addresses to use on the worker nodes, specified in order of
#     preference.
#
sub set_worker_DNS {
   my ($self, %args) = @_;
   $self->{'worker_DNS'} = $args{'worker_DNS'}; 
   return;	
}

## @method get_master_DNS_search_domains ()
# Gets the value of 'master_DNS_search_domains' property.
#
# @retval master_DNS_search_domains - The current value of the field.
# List of domains (for example &quot;vmware.com&quot;) to be searched when trying to
#     lookup a host name on Kubernetes API server, specified in order of preference.
#
# Optional#
sub get_master_DNS_search_domains {
   my ($self, %args) = @_;
   return $self->{'master_DNS_search_domains'}; 	
}

## @method set_master_DNS_search_domains ()
# Sets the given value for 'master_DNS_search_domains' property.
# 
# @param master_DNS_search_domains  - New value for the field.
# List of domains (for example &quot;vmware.com&quot;) to be searched when trying to
#     lookup a host name on Kubernetes API server, specified in order of preference.
#
sub set_master_DNS_search_domains {
   my ($self, %args) = @_;
   $self->{'master_DNS_search_domains'} = $args{'master_DNS_search_domains'}; 
   return;	
}

## @method get_master_NTP_servers ()
# Gets the value of 'master_NTP_servers' property.
#
# @retval master_NTP_servers - The current value of the field.
# List of NTP server DNS names or IP addresses to use on Kubernetes API server,
#     specified in order of preference.
#
# Optional#
sub get_master_NTP_servers {
   my ($self, %args) = @_;
   return $self->{'master_NTP_servers'}; 	
}

## @method set_master_NTP_servers ()
# Sets the given value for 'master_NTP_servers' property.
# 
# @param master_NTP_servers  - New value for the field.
# List of NTP server DNS names or IP addresses to use on Kubernetes API server,
#     specified in order of preference.
#
sub set_master_NTP_servers {
   my ($self, %args) = @_;
   $self->{'master_NTP_servers'} = $args{'master_NTP_servers'}; 
   return;	
}

## @method get_master_storage_policy ()
# Gets the value of 'master_storage_policy' property.
#
# @retval master_storage_policy - The current value of the field.
# Identifier of storage policy associated with Kubernetes API server.
#
# ID#
sub get_master_storage_policy {
   my ($self, %args) = @_;
   return $self->{'master_storage_policy'}; 	
}

## @method set_master_storage_policy ()
# Sets the given value for 'master_storage_policy' property.
# 
# @param master_storage_policy  - New value for the field.
# Identifier of storage policy associated with Kubernetes API server.
#
sub set_master_storage_policy {
   my ($self, %args) = @_;
   $self->{'master_storage_policy'} = $args{'master_storage_policy'}; 
   return;	
}

## @method get_ephemeral_storage_policy ()
# Gets the value of 'ephemeral_storage_policy' property.
#
# @retval ephemeral_storage_policy - The current value of the field.
# Identifier of storage policy associated with ephemeral disks of all the Kubernetes
#     Pods in the cluster.
#
# ID#
sub get_ephemeral_storage_policy {
   my ($self, %args) = @_;
   return $self->{'ephemeral_storage_policy'}; 	
}

## @method set_ephemeral_storage_policy ()
# Sets the given value for 'ephemeral_storage_policy' property.
# 
# @param ephemeral_storage_policy  - New value for the field.
# Identifier of storage policy associated with ephemeral disks of all the Kubernetes
#     Pods in the cluster.
#
sub set_ephemeral_storage_policy {
   my ($self, %args) = @_;
   $self->{'ephemeral_storage_policy'} = $args{'ephemeral_storage_policy'}; 
   return;	
}

## @method get_login_banner ()
# Gets the value of 'login_banner' property.
#
# @retval login_banner - The current value of the field.
# Disclaimer to be displayed prior to login via the Kubectl plugin.
#
# Optional#
sub get_login_banner {
   my ($self, %args) = @_;
   return $self->{'login_banner'}; 	
}

## @method set_login_banner ()
# Sets the given value for 'login_banner' property.
# 
# @param login_banner  - New value for the field.
# Disclaimer to be displayed prior to login via the Kubectl plugin.
#
sub set_login_banner {
   my ($self, %args) = @_;
   $self->{'login_banner'} = $args{'login_banner'}; 
   return;	
}

## @method get_Master_DNS_names ()
# Gets the value of 'Master_DNS_names' property.
#
# @retval Master_DNS_names - The current value of the field.
# List of additional DNS names to associate with the Kubernetes API server. These DNS
#     names are embedded in the TLS certificate presented by the API server.
#
# Optional#
sub get_Master_DNS_names {
   my ($self, %args) = @_;
   return $self->{'Master_DNS_names'}; 	
}

## @method set_Master_DNS_names ()
# Sets the given value for 'Master_DNS_names' property.
# 
# @param Master_DNS_names  - New value for the field.
# List of additional DNS names to associate with the Kubernetes API server. These DNS
#     names are embedded in the TLS certificate presented by the API server.
#
sub set_Master_DNS_names {
   my ($self, %args) = @_;
   $self->{'Master_DNS_names'} = $args{'Master_DNS_names'}; 
   return;	
}

## @method get_image_storage ()
# Gets the value of 'image_storage' property.
#
# @retval image_storage - The current value of the field.
# Specification for storage to be used for container images.
#
# ImageStorageSpec#
sub get_image_storage {
   my ($self, %args) = @_;
   return $self->{'image_storage'}; 	
}

## @method set_image_storage ()
# Sets the given value for 'image_storage' property.
# 
# @param image_storage  - New value for the field.
# Specification for storage to be used for container images.
#
sub set_image_storage {
   my ($self, %args) = @_;
   $self->{'image_storage'} = $args{'image_storage'}; 
   return;	
}

## @method get_default_image_registry ()
# Gets the value of 'default_image_registry' property.
#
# @retval default_image_registry - The current value of the field.
# Default image registry to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
# Optional#
sub get_default_image_registry {
   my ($self, %args) = @_;
   return $self->{'default_image_registry'}; 	
}

## @method set_default_image_registry ()
# Sets the given value for 'default_image_registry' property.
# 
# @param default_image_registry  - New value for the field.
# Default image registry to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
sub set_default_image_registry {
   my ($self, %args) = @_;
   $self->{'default_image_registry'} = $args{'default_image_registry'}; 
   return;	
}

## @method get_default_image_repository ()
# Gets the value of 'default_image_repository' property.
#
# @retval default_image_repository - The current value of the field.
# Default image repository to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
# Optional#
sub get_default_image_repository {
   my ($self, %args) = @_;
   return $self->{'default_image_repository'}; 	
}

## @method set_default_image_repository ()
# Sets the given value for 'default_image_repository' property.
# 
# @param default_image_repository  - New value for the field.
# Default image repository to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
sub set_default_image_repository {
   my ($self, %args) = @_;
   $self->{'default_image_repository'} = $args{'default_image_repository'}; 
   return;	
}

## @method get_default_kubernetes_service_content_library ()
# Gets the value of 'default_kubernetes_service_content_library' property.
#
# @retval default_kubernetes_service_content_library - The current value of the field.
# Identifier of the Content Library which holds the VM Images for vSphere Kubernetes
#     Service. This Content Library should be subscribed to VMware&apos;s hosted vSphere
#     Kubernetes Service Repository.
#
# Optional#
sub get_default_kubernetes_service_content_library {
   my ($self, %args) = @_;
   return $self->{'default_kubernetes_service_content_library'}; 	
}

## @method set_default_kubernetes_service_content_library ()
# Sets the given value for 'default_kubernetes_service_content_library' property.
# 
# @param default_kubernetes_service_content_library  - New value for the field.
# Identifier of the Content Library which holds the VM Images for vSphere Kubernetes
#     Service. This Content Library should be subscribed to VMware&apos;s hosted vSphere
#     Kubernetes Service Repository.
#
sub set_default_kubernetes_service_content_library {
   my ($self, %args) = @_;
   $self->{'default_kubernetes_service_content_library'} = $args{'default_kubernetes_service_content_library'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::UpdateSpec``   *class* 
#     contains the specification required to update the configuration on the Cluster. This 
#     *class*  is applied partially, and only the specified fields will replace or modify
#     their existing counterparts.

package Com::Vmware::Vcenter::Namespace_management::Clusters::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::UpdateSpec structure
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
         'discriminant_name' => 'network_provider',
         'case_map' => {
               'NSXT_CONTAINER_PLUGIN' => ['ncp_cluster_network_spec'],
               'VSPHERE_NETWORK' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{size_hint} = $args{'size_hint'};
   $self->{network_provider} = $args{'network_provider'};
   $self->{ncp_cluster_network_spec} = $args{'ncp_cluster_network_spec'};
   $self->{master_DNS} = $args{'master_DNS'};
   $self->{worker_DNS} = $args{'worker_DNS'};
   $self->{master_DNS_search_domains} = $args{'master_DNS_search_domains'};
   $self->{master_NTP_servers} = $args{'master_NTP_servers'};
   $self->{master_storage_policy} = $args{'master_storage_policy'};
   $self->{ephemeral_storage_policy} = $args{'ephemeral_storage_policy'};
   $self->{login_banner} = $args{'login_banner'};
   $self->{image_storage} = $args{'image_storage'};
   $self->{default_image_registry} = $args{'default_image_registry'};
   $self->{default_image_repository} = $args{'default_image_repository'};
   $self->{tls_endpoint_certificate} = $args{'tls_endpoint_certificate'};
   $self->{default_kubernetes_service_content_library} = $args{'default_kubernetes_service_content_library'};
   $self->{workload_ntp_servers} = $args{'workload_ntp_servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.update_spec');
   $self->set_binding_field('key' => 'size_hint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'SizingHint')));
   $self->set_binding_field('key' => 'network_provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NetworkProvider')));
   $self->set_binding_field('key' => 'ncp_cluster_network_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NCPClusterNetworkUpdateSpec')));
   $self->set_binding_field('key' => 'master_DNS', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'worker_DNS', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_DNS_search_domains', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_NTP_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ephemeral_storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'login_banner', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'image_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ImageStorageSpec')));
   $self->set_binding_field('key' => 'default_image_registry', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ImageRegistry')));
   $self->set_binding_field('key' => 'default_image_repository', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'tls_endpoint_certificate', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'default_kubernetes_service_content_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'workload_ntp_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_size_hint ()
# Gets the value of 'size_hint' property.
#
# @retval size_hint - The current value of the field.
# This affects the size and resources allocated to the Kubernetes API server.
#
# Optional#
sub get_size_hint {
   my ($self, %args) = @_;
   return $self->{'size_hint'}; 	
}

## @method set_size_hint ()
# Sets the given value for 'size_hint' property.
# 
# @param size_hint  - New value for the field.
# This affects the size and resources allocated to the Kubernetes API server.
#
sub set_size_hint {
   my ($self, %args) = @_;
   $self->{'size_hint'} = $args{'size_hint'}; 
   return;	
}

## @method get_network_provider ()
# Gets the value of 'network_provider' property.
#
# @retval network_provider - The current value of the field.
# The provider of cluster networking for this vSphere Namespaces cluster.
#
# Optional#
sub get_network_provider {
   my ($self, %args) = @_;
   return $self->{'network_provider'}; 	
}

## @method set_network_provider ()
# Sets the given value for 'network_provider' property.
# 
# @param network_provider  - New value for the field.
# The provider of cluster networking for this vSphere Namespaces cluster.
#
sub set_network_provider {
   my ($self, %args) = @_;
   $self->{'network_provider'} = $args{'network_provider'}; 
   return;	
}

## @method get_ncp_cluster_network_spec ()
# Gets the value of 'ncp_cluster_network_spec' property.
#
# @retval ncp_cluster_network_spec - The current value of the field.
# Updated specification for the cluster network configuration.
#
# Optional#
sub get_ncp_cluster_network_spec {
   my ($self, %args) = @_;
   return $self->{'ncp_cluster_network_spec'}; 	
}

## @method set_ncp_cluster_network_spec ()
# Sets the given value for 'ncp_cluster_network_spec' property.
# 
# @param ncp_cluster_network_spec  - New value for the field.
# Updated specification for the cluster network configuration.
#
sub set_ncp_cluster_network_spec {
   my ($self, %args) = @_;
   $self->{'ncp_cluster_network_spec'} = $args{'ncp_cluster_network_spec'}; 
   return;	
}

## @method get_master_DNS ()
# Gets the value of 'master_DNS' property.
#
# @retval master_DNS - The current value of the field.
# List of DNS server IP addresses to use on Kubernetes API server, specified in order of
#     preference.
#
# Optional#
sub get_master_DNS {
   my ($self, %args) = @_;
   return $self->{'master_DNS'}; 	
}

## @method set_master_DNS ()
# Sets the given value for 'master_DNS' property.
# 
# @param master_DNS  - New value for the field.
# List of DNS server IP addresses to use on Kubernetes API server, specified in order of
#     preference.
#
sub set_master_DNS {
   my ($self, %args) = @_;
   $self->{'master_DNS'} = $args{'master_DNS'}; 
   return;	
}

## @method get_worker_DNS ()
# Gets the value of 'worker_DNS' property.
#
# @retval worker_DNS - The current value of the field.
# List of DNS server IP addresses to use on the worker nodes, specified in order of
#     preference.
#
# Optional#
sub get_worker_DNS {
   my ($self, %args) = @_;
   return $self->{'worker_DNS'}; 	
}

## @method set_worker_DNS ()
# Sets the given value for 'worker_DNS' property.
# 
# @param worker_DNS  - New value for the field.
# List of DNS server IP addresses to use on the worker nodes, specified in order of
#     preference.
#
sub set_worker_DNS {
   my ($self, %args) = @_;
   $self->{'worker_DNS'} = $args{'worker_DNS'}; 
   return;	
}

## @method get_master_DNS_search_domains ()
# Gets the value of 'master_DNS_search_domains' property.
#
# @retval master_DNS_search_domains - The current value of the field.
# List of domains (for example &quot;vmware.com&quot;) to be searched when trying to
#     lookup a host name on Kubernetes API server, specified in order of preference.
#
# Optional#
sub get_master_DNS_search_domains {
   my ($self, %args) = @_;
   return $self->{'master_DNS_search_domains'}; 	
}

## @method set_master_DNS_search_domains ()
# Sets the given value for 'master_DNS_search_domains' property.
# 
# @param master_DNS_search_domains  - New value for the field.
# List of domains (for example &quot;vmware.com&quot;) to be searched when trying to
#     lookup a host name on Kubernetes API server, specified in order of preference.
#
sub set_master_DNS_search_domains {
   my ($self, %args) = @_;
   $self->{'master_DNS_search_domains'} = $args{'master_DNS_search_domains'}; 
   return;	
}

## @method get_master_NTP_servers ()
# Gets the value of 'master_NTP_servers' property.
#
# @retval master_NTP_servers - The current value of the field.
# List of NTP server DNS names or IP addresses to use on Kubernetes API server,
#     specified in order of preference.
#
# Optional#
sub get_master_NTP_servers {
   my ($self, %args) = @_;
   return $self->{'master_NTP_servers'}; 	
}

## @method set_master_NTP_servers ()
# Sets the given value for 'master_NTP_servers' property.
# 
# @param master_NTP_servers  - New value for the field.
# List of NTP server DNS names or IP addresses to use on Kubernetes API server,
#     specified in order of preference.
#
sub set_master_NTP_servers {
   my ($self, %args) = @_;
   $self->{'master_NTP_servers'} = $args{'master_NTP_servers'}; 
   return;	
}

## @method get_master_storage_policy ()
# Gets the value of 'master_storage_policy' property.
#
# @retval master_storage_policy - The current value of the field.
# Identifier of storage policy associated with Kubernetes API server.
#
# Optional#
sub get_master_storage_policy {
   my ($self, %args) = @_;
   return $self->{'master_storage_policy'}; 	
}

## @method set_master_storage_policy ()
# Sets the given value for 'master_storage_policy' property.
# 
# @param master_storage_policy  - New value for the field.
# Identifier of storage policy associated with Kubernetes API server.
#
sub set_master_storage_policy {
   my ($self, %args) = @_;
   $self->{'master_storage_policy'} = $args{'master_storage_policy'}; 
   return;	
}

## @method get_ephemeral_storage_policy ()
# Gets the value of 'ephemeral_storage_policy' property.
#
# @retval ephemeral_storage_policy - The current value of the field.
# Identifier of storage policy associated with ephemeral disks of all the Kubernetes
#     Pods in the cluster.
#
# Optional#
sub get_ephemeral_storage_policy {
   my ($self, %args) = @_;
   return $self->{'ephemeral_storage_policy'}; 	
}

## @method set_ephemeral_storage_policy ()
# Sets the given value for 'ephemeral_storage_policy' property.
# 
# @param ephemeral_storage_policy  - New value for the field.
# Identifier of storage policy associated with ephemeral disks of all the Kubernetes
#     Pods in the cluster.
#
sub set_ephemeral_storage_policy {
   my ($self, %args) = @_;
   $self->{'ephemeral_storage_policy'} = $args{'ephemeral_storage_policy'}; 
   return;	
}

## @method get_login_banner ()
# Gets the value of 'login_banner' property.
#
# @retval login_banner - The current value of the field.
# Disclaimer to be displayed prior to login via the Kubectl plugin.
#
# Optional#
sub get_login_banner {
   my ($self, %args) = @_;
   return $self->{'login_banner'}; 	
}

## @method set_login_banner ()
# Sets the given value for 'login_banner' property.
# 
# @param login_banner  - New value for the field.
# Disclaimer to be displayed prior to login via the Kubectl plugin.
#
sub set_login_banner {
   my ($self, %args) = @_;
   $self->{'login_banner'} = $args{'login_banner'}; 
   return;	
}

## @method get_image_storage ()
# Gets the value of 'image_storage' property.
#
# @retval image_storage - The current value of the field.
# Specification for storage to be used for container images.
#
# Optional#
sub get_image_storage {
   my ($self, %args) = @_;
   return $self->{'image_storage'}; 	
}

## @method set_image_storage ()
# Sets the given value for 'image_storage' property.
# 
# @param image_storage  - New value for the field.
# Specification for storage to be used for container images.
#
sub set_image_storage {
   my ($self, %args) = @_;
   $self->{'image_storage'} = $args{'image_storage'}; 
   return;	
}

## @method get_default_image_registry ()
# Gets the value of 'default_image_registry' property.
#
# @retval default_image_registry - The current value of the field.
# Default image registry to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
# Optional#
sub get_default_image_registry {
   my ($self, %args) = @_;
   return $self->{'default_image_registry'}; 	
}

## @method set_default_image_registry ()
# Sets the given value for 'default_image_registry' property.
# 
# @param default_image_registry  - New value for the field.
# Default image registry to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
sub set_default_image_registry {
   my ($self, %args) = @_;
   $self->{'default_image_registry'} = $args{'default_image_registry'}; 
   return;	
}

## @method get_default_image_repository ()
# Gets the value of 'default_image_repository' property.
#
# @retval default_image_repository - The current value of the field.
# Default image repository to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
# Optional#
sub get_default_image_repository {
   my ($self, %args) = @_;
   return $self->{'default_image_repository'}; 	
}

## @method set_default_image_repository ()
# Sets the given value for 'default_image_repository' property.
# 
# @param default_image_repository  - New value for the field.
# Default image repository to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
sub set_default_image_repository {
   my ($self, %args) = @_;
   $self->{'default_image_repository'} = $args{'default_image_repository'}; 
   return;	
}

## @method get_tls_endpoint_certificate ()
# Gets the value of 'tls_endpoint_certificate' property.
#
# @retval tls_endpoint_certificate - The current value of the field.
# Certificate issued for Kubernetes API Server. Certificate used must be created by
#     signing the Certificate Signing Request obtained from null Because a 
#     ``CertificateSigningRequest``  is created on an existing Namespaces-enabled 
#     ``Cluster`` , you must use the 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::UpdateSpec``  to specify this 
#     ``tlsEndpointCertificate``  on an existing  ``Cluster``  rather than during initially
#     enabling Namespaces on a  ``Cluster`` .
#
# Optional#
sub get_tls_endpoint_certificate {
   my ($self, %args) = @_;
   return $self->{'tls_endpoint_certificate'}; 	
}

## @method set_tls_endpoint_certificate ()
# Sets the given value for 'tls_endpoint_certificate' property.
# 
# @param tls_endpoint_certificate  - New value for the field.
# Certificate issued for Kubernetes API Server. Certificate used must be created by
#     signing the Certificate Signing Request obtained from null Because a 
#     ``CertificateSigningRequest``  is created on an existing Namespaces-enabled 
#     ``Cluster`` , you must use the 
#     ``Com::Vmware::Vcenter::Namespace_management::Clusters::UpdateSpec``  to specify this 
#     ``tlsEndpointCertificate``  on an existing  ``Cluster``  rather than during initially
#     enabling Namespaces on a  ``Cluster`` .
#
sub set_tls_endpoint_certificate {
   my ($self, %args) = @_;
   $self->{'tls_endpoint_certificate'} = $args{'tls_endpoint_certificate'}; 
   return;	
}

## @method get_default_kubernetes_service_content_library ()
# Gets the value of 'default_kubernetes_service_content_library' property.
#
# @retval default_kubernetes_service_content_library - The current value of the field.
# Identifier of the Content Library which holds the VM Images for vSphere Kubernetes
#     Service. This Content Library should be subscribed to VMware&apos;s hosted vSphere
#     Kubernetes Service Repository. Modifying or clearing the Content Library identifier
#     will not affect existing vSphere Kubernetes Service clusters. However, upgrades or
#     scale-out of existing clusters may be affected if the new Content Library doesn&apos;t
#     have the necessary VM Images.
#
# Optional#
sub get_default_kubernetes_service_content_library {
   my ($self, %args) = @_;
   return $self->{'default_kubernetes_service_content_library'}; 	
}

## @method set_default_kubernetes_service_content_library ()
# Sets the given value for 'default_kubernetes_service_content_library' property.
# 
# @param default_kubernetes_service_content_library  - New value for the field.
# Identifier of the Content Library which holds the VM Images for vSphere Kubernetes
#     Service. This Content Library should be subscribed to VMware&apos;s hosted vSphere
#     Kubernetes Service Repository. Modifying or clearing the Content Library identifier
#     will not affect existing vSphere Kubernetes Service clusters. However, upgrades or
#     scale-out of existing clusters may be affected if the new Content Library doesn&apos;t
#     have the necessary VM Images.
#
sub set_default_kubernetes_service_content_library {
   my ($self, %args) = @_;
   $self->{'default_kubernetes_service_content_library'} = $args{'default_kubernetes_service_content_library'}; 
   return;	
}

## @method get_workload_ntp_servers ()
# Gets the value of 'workload_ntp_servers' property.
#
# @retval workload_ntp_servers - The current value of the field.
# List of NTP server DNS names or IP addresses to use for workloads such as Tanzu
#     Kubernetes Grid VMs, specified in order of preference. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
# Optional#
sub get_workload_ntp_servers {
   my ($self, %args) = @_;
   return $self->{'workload_ntp_servers'}; 	
}

## @method set_workload_ntp_servers ()
# Sets the given value for 'workload_ntp_servers' property.
# 
# @param workload_ntp_servers  - New value for the field.
# List of NTP server DNS names or IP addresses to use for workloads such as Tanzu
#     Kubernetes Grid VMs, specified in order of preference. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
sub set_workload_ntp_servers {
   my ($self, %args) = @_;
   $self->{'workload_ntp_servers'} = $args{'workload_ntp_servers'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::Clusters::SetSpec
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Clusters::SetSpec``   *class* 
#     contains the specification required to set a new configuration on the Cluster. This 
#     *class*  is applied in entirety, replacing the current specification fully.

package Com::Vmware::Vcenter::Namespace_management::Clusters::SetSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Clusters::SetSpec structure
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
         'discriminant_name' => 'network_provider',
         'case_map' => {
               'NSXT_CONTAINER_PLUGIN' => ['ncp_cluster_network_spec'],
               'VSPHERE_NETWORK' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{size_hint} = $args{'size_hint'};
   $self->{network_provider} = $args{'network_provider'};
   $self->{ncp_cluster_network_spec} = $args{'ncp_cluster_network_spec'};
   $self->{master_DNS} = $args{'master_DNS'};
   $self->{worker_DNS} = $args{'worker_DNS'};
   $self->{master_DNS_search_domains} = $args{'master_DNS_search_domains'};
   $self->{master_NTP_servers} = $args{'master_NTP_servers'};
   $self->{master_storage_policy} = $args{'master_storage_policy'};
   $self->{ephemeral_storage_policy} = $args{'ephemeral_storage_policy'};
   $self->{login_banner} = $args{'login_banner'};
   $self->{image_storage} = $args{'image_storage'};
   $self->{default_image_registry} = $args{'default_image_registry'};
   $self->{default_image_repository} = $args{'default_image_repository'};
   $self->{default_kubernetes_service_content_library} = $args{'default_kubernetes_service_content_library'};
   $self->{workload_ntp_servers} = $args{'workload_ntp_servers'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Clusters::SetSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.clusters.set_spec');
   $self->set_binding_field('key' => 'size_hint', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'SizingHint'));
   $self->set_binding_field('key' => 'network_provider', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NetworkProvider'));
   $self->set_binding_field('key' => 'ncp_cluster_network_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::NCPClusterNetworkSetSpec')));
   $self->set_binding_field('key' => 'master_DNS', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'worker_DNS', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_DNS_search_domains', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_NTP_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'master_storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ephemeral_storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'login_banner', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'image_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ImageStorageSpec'));
   $self->set_binding_field('key' => 'default_image_registry', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Clusters::ImageRegistry')));
   $self->set_binding_field('key' => 'default_image_repository', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'default_kubernetes_service_content_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'workload_ntp_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_size_hint ()
# Gets the value of 'size_hint' property.
#
# @retval size_hint - The current value of the field.
# This affects the size and resources allocated to the Kubernetes API server.
#
# SizingHint#
sub get_size_hint {
   my ($self, %args) = @_;
   return $self->{'size_hint'}; 	
}

## @method set_size_hint ()
# Sets the given value for 'size_hint' property.
# 
# @param size_hint  - New value for the field.
# This affects the size and resources allocated to the Kubernetes API server.
#
sub set_size_hint {
   my ($self, %args) = @_;
   $self->{'size_hint'} = $args{'size_hint'}; 
   return;	
}

## @method get_network_provider ()
# Gets the value of 'network_provider' property.
#
# @retval network_provider - The current value of the field.
# The provider of cluster networking for this vSphere Namespaces cluster.
#
# NetworkProvider#
sub get_network_provider {
   my ($self, %args) = @_;
   return $self->{'network_provider'}; 	
}

## @method set_network_provider ()
# Sets the given value for 'network_provider' property.
# 
# @param network_provider  - New value for the field.
# The provider of cluster networking for this vSphere Namespaces cluster.
#
sub set_network_provider {
   my ($self, %args) = @_;
   $self->{'network_provider'} = $args{'network_provider'}; 
   return;	
}

## @method get_ncp_cluster_network_spec ()
# Gets the value of 'ncp_cluster_network_spec' property.
#
# @retval ncp_cluster_network_spec - The current value of the field.
# Specification for the NSX Container Plugin cluster network.
#
# optional#
sub get_ncp_cluster_network_spec {
   my ($self, %args) = @_;
   return $self->{'ncp_cluster_network_spec'}; 	
}

## @method set_ncp_cluster_network_spec ()
# Sets the given value for 'ncp_cluster_network_spec' property.
# 
# @param ncp_cluster_network_spec  - New value for the field.
# Specification for the NSX Container Plugin cluster network.
#
sub set_ncp_cluster_network_spec {
   my ($self, %args) = @_;
   $self->{'ncp_cluster_network_spec'} = $args{'ncp_cluster_network_spec'}; 
   return;	
}

## @method get_master_DNS ()
# Gets the value of 'master_DNS' property.
#
# @retval master_DNS - The current value of the field.
# List of DNS server IP addresses to use on Kubernetes API server, specified in order of
#     preference.
#
# Optional#
sub get_master_DNS {
   my ($self, %args) = @_;
   return $self->{'master_DNS'}; 	
}

## @method set_master_DNS ()
# Sets the given value for 'master_DNS' property.
# 
# @param master_DNS  - New value for the field.
# List of DNS server IP addresses to use on Kubernetes API server, specified in order of
#     preference.
#
sub set_master_DNS {
   my ($self, %args) = @_;
   $self->{'master_DNS'} = $args{'master_DNS'}; 
   return;	
}

## @method get_worker_DNS ()
# Gets the value of 'worker_DNS' property.
#
# @retval worker_DNS - The current value of the field.
# List of DNS server IP addresses to use on the worker nodes, specified in order of
#     preference.
#
# Optional#
sub get_worker_DNS {
   my ($self, %args) = @_;
   return $self->{'worker_DNS'}; 	
}

## @method set_worker_DNS ()
# Sets the given value for 'worker_DNS' property.
# 
# @param worker_DNS  - New value for the field.
# List of DNS server IP addresses to use on the worker nodes, specified in order of
#     preference.
#
sub set_worker_DNS {
   my ($self, %args) = @_;
   $self->{'worker_DNS'} = $args{'worker_DNS'}; 
   return;	
}

## @method get_master_DNS_search_domains ()
# Gets the value of 'master_DNS_search_domains' property.
#
# @retval master_DNS_search_domains - The current value of the field.
# List of domains (for example &quot;vmware.com&quot;) to be searched when trying to
#     lookup a host name on Kubernetes API server, specified in order of preference.
#
# Optional#
sub get_master_DNS_search_domains {
   my ($self, %args) = @_;
   return $self->{'master_DNS_search_domains'}; 	
}

## @method set_master_DNS_search_domains ()
# Sets the given value for 'master_DNS_search_domains' property.
# 
# @param master_DNS_search_domains  - New value for the field.
# List of domains (for example &quot;vmware.com&quot;) to be searched when trying to
#     lookup a host name on Kubernetes API server, specified in order of preference.
#
sub set_master_DNS_search_domains {
   my ($self, %args) = @_;
   $self->{'master_DNS_search_domains'} = $args{'master_DNS_search_domains'}; 
   return;	
}

## @method get_master_NTP_servers ()
# Gets the value of 'master_NTP_servers' property.
#
# @retval master_NTP_servers - The current value of the field.
# List of NTP server DNS names or IP addresses to use on Kubernetes API server,
#     specified in order of preference.
#
# Optional#
sub get_master_NTP_servers {
   my ($self, %args) = @_;
   return $self->{'master_NTP_servers'}; 	
}

## @method set_master_NTP_servers ()
# Sets the given value for 'master_NTP_servers' property.
# 
# @param master_NTP_servers  - New value for the field.
# List of NTP server DNS names or IP addresses to use on Kubernetes API server,
#     specified in order of preference.
#
sub set_master_NTP_servers {
   my ($self, %args) = @_;
   $self->{'master_NTP_servers'} = $args{'master_NTP_servers'}; 
   return;	
}

## @method get_master_storage_policy ()
# Gets the value of 'master_storage_policy' property.
#
# @retval master_storage_policy - The current value of the field.
# Identifier of storage policy associated with Kubernetes API server.
#
# ID#
sub get_master_storage_policy {
   my ($self, %args) = @_;
   return $self->{'master_storage_policy'}; 	
}

## @method set_master_storage_policy ()
# Sets the given value for 'master_storage_policy' property.
# 
# @param master_storage_policy  - New value for the field.
# Identifier of storage policy associated with Kubernetes API server.
#
sub set_master_storage_policy {
   my ($self, %args) = @_;
   $self->{'master_storage_policy'} = $args{'master_storage_policy'}; 
   return;	
}

## @method get_ephemeral_storage_policy ()
# Gets the value of 'ephemeral_storage_policy' property.
#
# @retval ephemeral_storage_policy - The current value of the field.
# Identifier of storage policy associated with ephemeral disks of all the Kubernetes
#     Pods in the cluster.
#
# ID#
sub get_ephemeral_storage_policy {
   my ($self, %args) = @_;
   return $self->{'ephemeral_storage_policy'}; 	
}

## @method set_ephemeral_storage_policy ()
# Sets the given value for 'ephemeral_storage_policy' property.
# 
# @param ephemeral_storage_policy  - New value for the field.
# Identifier of storage policy associated with ephemeral disks of all the Kubernetes
#     Pods in the cluster.
#
sub set_ephemeral_storage_policy {
   my ($self, %args) = @_;
   $self->{'ephemeral_storage_policy'} = $args{'ephemeral_storage_policy'}; 
   return;	
}

## @method get_login_banner ()
# Gets the value of 'login_banner' property.
#
# @retval login_banner - The current value of the field.
# Disclaimer to be displayed prior to login via the Kubectl plugin.
#
# Optional#
sub get_login_banner {
   my ($self, %args) = @_;
   return $self->{'login_banner'}; 	
}

## @method set_login_banner ()
# Sets the given value for 'login_banner' property.
# 
# @param login_banner  - New value for the field.
# Disclaimer to be displayed prior to login via the Kubectl plugin.
#
sub set_login_banner {
   my ($self, %args) = @_;
   $self->{'login_banner'} = $args{'login_banner'}; 
   return;	
}

## @method get_image_storage ()
# Gets the value of 'image_storage' property.
#
# @retval image_storage - The current value of the field.
# Specification for storage to be used for container images.
#
# ImageStorageSpec#
sub get_image_storage {
   my ($self, %args) = @_;
   return $self->{'image_storage'}; 	
}

## @method set_image_storage ()
# Sets the given value for 'image_storage' property.
# 
# @param image_storage  - New value for the field.
# Specification for storage to be used for container images.
#
sub set_image_storage {
   my ($self, %args) = @_;
   $self->{'image_storage'} = $args{'image_storage'}; 
   return;	
}

## @method get_default_image_registry ()
# Gets the value of 'default_image_registry' property.
#
# @retval default_image_registry - The current value of the field.
# Default image registry to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
# Optional#
sub get_default_image_registry {
   my ($self, %args) = @_;
   return $self->{'default_image_registry'}; 	
}

## @method set_default_image_registry ()
# Sets the given value for 'default_image_registry' property.
# 
# @param default_image_registry  - New value for the field.
# Default image registry to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
sub set_default_image_registry {
   my ($self, %args) = @_;
   $self->{'default_image_registry'} = $args{'default_image_registry'}; 
   return;	
}

## @method get_default_image_repository ()
# Gets the value of 'default_image_repository' property.
#
# @retval default_image_repository - The current value of the field.
# Default image repository to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
# Optional#
sub get_default_image_repository {
   my ($self, %args) = @_;
   return $self->{'default_image_repository'}; 	
}

## @method set_default_image_repository ()
# Sets the given value for 'default_image_repository' property.
# 
# @param default_image_repository  - New value for the field.
# Default image repository to use when Kubernetes Pod container specification does not
#     specify it as part of the container image name.
#
sub set_default_image_repository {
   my ($self, %args) = @_;
   $self->{'default_image_repository'} = $args{'default_image_repository'}; 
   return;	
}

## @method get_default_kubernetes_service_content_library ()
# Gets the value of 'default_kubernetes_service_content_library' property.
#
# @retval default_kubernetes_service_content_library - The current value of the field.
# Identifier of the Content Library which holds the VM Images for vSphere Kubernetes
#     Service. This Content Library should be subscribed to VMware&apos;s hosted vSphere
#     Kubernetes Service Repository. Modifying or clearing the Content Library identifier
#     will not affect existing vSphere Kubernetes Service clusters. However, upgrades or
#     scale-out of existing clusters may be affected if the new Content Library doesn&apos;t
#     have the necessary VM Images.
#
# Optional#
sub get_default_kubernetes_service_content_library {
   my ($self, %args) = @_;
   return $self->{'default_kubernetes_service_content_library'}; 	
}

## @method set_default_kubernetes_service_content_library ()
# Sets the given value for 'default_kubernetes_service_content_library' property.
# 
# @param default_kubernetes_service_content_library  - New value for the field.
# Identifier of the Content Library which holds the VM Images for vSphere Kubernetes
#     Service. This Content Library should be subscribed to VMware&apos;s hosted vSphere
#     Kubernetes Service Repository. Modifying or clearing the Content Library identifier
#     will not affect existing vSphere Kubernetes Service clusters. However, upgrades or
#     scale-out of existing clusters may be affected if the new Content Library doesn&apos;t
#     have the necessary VM Images.
#
sub set_default_kubernetes_service_content_library {
   my ($self, %args) = @_;
   $self->{'default_kubernetes_service_content_library'} = $args{'default_kubernetes_service_content_library'}; 
   return;	
}

## @method get_workload_ntp_servers ()
# Gets the value of 'workload_ntp_servers' property.
#
# @retval workload_ntp_servers - The current value of the field.
# List of NTP server DNS names or IP addresses to use for workloads such as Tanzu
#     Kubernetes Grid VMs, specified in order of preference. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
# Optional#
sub get_workload_ntp_servers {
   my ($self, %args) = @_;
   return $self->{'workload_ntp_servers'}; 	
}

## @method set_workload_ntp_servers ()
# Sets the given value for 'workload_ntp_servers' property.
# 
# @param workload_ntp_servers  - New value for the field.
# List of NTP server DNS names or IP addresses to use for workloads such as Tanzu
#     Kubernetes Grid VMs, specified in order of preference. This  *field*  was added in
#     vSphere API 7.0.1.0.
#
sub set_workload_ntp_servers {
   my ($self, %args) = @_;
   $self->{'workload_ntp_servers'} = $args{'workload_ntp_servers'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::Clusters service
#########################################################################################
