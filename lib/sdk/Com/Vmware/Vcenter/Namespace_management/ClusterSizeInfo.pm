########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ClusterSizeInfo.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo
# The {@name cluster-size-info}  *interface*  provides  *methods*  to retrieve various
#     sizes available for enabling Namespaces and information about each size.
#

package Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo;

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
use Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfoStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.namespace_management.cluster_size_info';


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
# Get information about the default values associated with various sizes.
#
# @retval 
# Information for each size.
# The return type will be Dictionary of
# Com::Vmware::Vcenter::Namespace_management::SizingHint and
# Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo service
#########################################################################################

## @class Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::VmInfo
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::VmInfo``   *class*
#     contains the information about the configuration of the virtual machines which would
#     be created for Namespaces.

package Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::VmInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::VmInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{count} = $args{'count'};
   $self->{cores_per_socket} = $args{'cores_per_socket'};
   $self->{memory} = $args{'memory'};
   $self->{capacity} = $args{'capacity'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::VmInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.cluster_size_info.vm_info');
   $self->set_binding_field('key' => 'count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'cores_per_socket', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'memory', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_count ()
# Gets the value of 'count' property.
#
# @retval count - The current value of the field.
# Number of CPU cores.
#
# long#
sub get_count {
   my ($self, %args) = @_;
   return $self->{'count'}; 	
}

## @method set_count ()
# Sets the given value for 'count' property.
# 
# @param count  - New value for the field.
# Number of CPU cores.
#
sub set_count {
   my ($self, %args) = @_;
   $self->{'count'} = $args{'count'}; 
   return;	
}

## @method get_cores_per_socket ()
# Gets the value of 'cores_per_socket' property.
#
# @retval cores_per_socket - The current value of the field.
# Number of CPU cores per socket.
#
# long#
sub get_cores_per_socket {
   my ($self, %args) = @_;
   return $self->{'cores_per_socket'}; 	
}

## @method set_cores_per_socket ()
# Sets the given value for 'cores_per_socket' property.
# 
# @param cores_per_socket  - New value for the field.
# Number of CPU cores per socket.
#
sub set_cores_per_socket {
   my ($self, %args) = @_;
   $self->{'cores_per_socket'} = $args{'cores_per_socket'}; 
   return;	
}

## @method get_memory ()
# Gets the value of 'memory' property.
#
# @retval memory - The current value of the field.
# Memory size, in mebibytes.
#
# long#
sub get_memory {
   my ($self, %args) = @_;
   return $self->{'memory'}; 	
}

## @method set_memory ()
# Sets the given value for 'memory' property.
# 
# @param memory  - New value for the field.
# Memory size, in mebibytes.
#
sub set_memory {
   my ($self, %args) = @_;
   $self->{'memory'} = $args{'memory'}; 
   return;	
}

## @method get_capacity ()
# Gets the value of 'capacity' property.
#
# @retval capacity - The current value of the field.
# Overall capacity of the disks in the virtual machine, in mebibytes.
#
# long#
sub get_capacity {
   my ($self, %args) = @_;
   return $self->{'capacity'}; 	
}

## @method set_capacity ()
# Sets the given value for 'capacity' property.
# 
# @param capacity  - New value for the field.
# Overall capacity of the disks in the virtual machine, in mebibytes.
#
sub set_capacity {
   my ($self, %args) = @_;
   $self->{'capacity'} = $args{'capacity'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::Info
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::Info``   *class* 
#     contains the information about limits associated with a 
#     ``Com::Vmware::Vcenter::Namespace_management::SizingHint`` .

package Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{num_supported_pods} = $args{'num_supported_pods'};
   $self->{num_supported_services} = $args{'num_supported_services'};
   $self->{default_service_cidr} = $args{'default_service_cidr'};
   $self->{default_pod_cidr} = $args{'default_pod_cidr'};
   $self->{master_vm_info} = $args{'master_vm_info'};
   $self->{worker_vm_info} = $args{'worker_vm_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.cluster_size_info.info');
   $self->set_binding_field('key' => 'num_supported_pods', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'num_supported_services', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'default_service_cidr', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr'));
   $self->set_binding_field('key' => 'default_pod_cidr', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'Ipv4Cidr'));
   $self->set_binding_field('key' => 'master_vm_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'ClusterSizeInfo::VmInfo'));
   $self->set_binding_field('key' => 'worker_vm_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management', 'type_name' => 'ClusterSizeInfo::VmInfo')));
   bless $self, $class;
   return $self;
}

## @method get_num_supported_pods ()
# Gets the value of 'num_supported_pods' property.
#
# @retval num_supported_pods - The current value of the field.
# The maximum number of supported pods.
#
# long#
sub get_num_supported_pods {
   my ($self, %args) = @_;
   return $self->{'num_supported_pods'}; 	
}

## @method set_num_supported_pods ()
# Sets the given value for 'num_supported_pods' property.
# 
# @param num_supported_pods  - New value for the field.
# The maximum number of supported pods.
#
sub set_num_supported_pods {
   my ($self, %args) = @_;
   $self->{'num_supported_pods'} = $args{'num_supported_pods'}; 
   return;	
}

## @method get_num_supported_services ()
# Gets the value of 'num_supported_services' property.
#
# @retval num_supported_services - The current value of the field.
# The maximum number of supported services.
#
# long#
sub get_num_supported_services {
   my ($self, %args) = @_;
   return $self->{'num_supported_services'}; 	
}

## @method set_num_supported_services ()
# Sets the given value for 'num_supported_services' property.
# 
# @param num_supported_services  - New value for the field.
# The maximum number of supported services.
#
sub set_num_supported_services {
   my ($self, %args) = @_;
   $self->{'num_supported_services'} = $args{'num_supported_services'}; 
   return;	
}

## @method get_default_service_cidr ()
# Gets the value of 'default_service_cidr' property.
#
# @retval default_service_cidr - The current value of the field.
# Default CIDR range from which Kubernetes allocates service cluster IP addresses.
#
# Ipv4Cidr#
sub get_default_service_cidr {
   my ($self, %args) = @_;
   return $self->{'default_service_cidr'}; 	
}

## @method set_default_service_cidr ()
# Sets the given value for 'default_service_cidr' property.
# 
# @param default_service_cidr  - New value for the field.
# Default CIDR range from which Kubernetes allocates service cluster IP addresses.
#
sub set_default_service_cidr {
   my ($self, %args) = @_;
   $self->{'default_service_cidr'} = $args{'default_service_cidr'}; 
   return;	
}

## @method get_default_pod_cidr ()
# Gets the value of 'default_pod_cidr' property.
#
# @retval default_pod_cidr - The current value of the field.
# Default CIDR range from which Kubernetes allocates pod IP addresses.
#
# Ipv4Cidr#
sub get_default_pod_cidr {
   my ($self, %args) = @_;
   return $self->{'default_pod_cidr'}; 	
}

## @method set_default_pod_cidr ()
# Sets the given value for 'default_pod_cidr' property.
# 
# @param default_pod_cidr  - New value for the field.
# Default CIDR range from which Kubernetes allocates pod IP addresses.
#
sub set_default_pod_cidr {
   my ($self, %args) = @_;
   $self->{'default_pod_cidr'} = $args{'default_pod_cidr'}; 
   return;	
}

## @method get_master_vm_info ()
# Gets the value of 'master_vm_info' property.
#
# @retval master_vm_info - The current value of the field.
# Information about Kubernetes API server virtual machine configuration.
#
# VmInfo#
sub get_master_vm_info {
   my ($self, %args) = @_;
   return $self->{'master_vm_info'}; 	
}

## @method set_master_vm_info ()
# Sets the given value for 'master_vm_info' property.
# 
# @param master_vm_info  - New value for the field.
# Information about Kubernetes API server virtual machine configuration.
#
sub set_master_vm_info {
   my ($self, %args) = @_;
   $self->{'master_vm_info'} = $args{'master_vm_info'}; 
   return;	
}

## @method get_worker_vm_info ()
# Gets the value of 'worker_vm_info' property.
#
# @retval worker_vm_info - The current value of the field.
# Information about worker virtual machine configuration.
#
# Optional#
sub get_worker_vm_info {
   my ($self, %args) = @_;
   return $self->{'worker_vm_info'}; 	
}

## @method set_worker_vm_info ()
# Sets the given value for 'worker_vm_info' property.
# 
# @param worker_vm_info  - New value for the field.
# Information about worker virtual machine configuration.
#
sub set_worker_vm_info {
   my ($self, %args) = @_;
   $self->{'worker_vm_info'} = $args{'worker_vm_info'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo service
#########################################################################################
