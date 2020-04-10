## @class Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1``   *class* 
#     represents the resource quota limits which can be applied on the namespace. Refer to 
#     <a href="https://kubernetes.io/docs/concepts/policy/resource-quotas"></a>  for
#     information related to the properties of this object and what they map to.

package Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1 structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{memory_limit} = $args{'memory_limit'};
   $self->{memory_limit_default} = $args{'memory_limit_default'};
   $self->{memory_request_default} = $args{'memory_request_default'};
   $self->{cpu_limit} = $args{'cpu_limit'};
   $self->{cpu_limit_default} = $args{'cpu_limit_default'};
   $self->{cpu_request_default} = $args{'cpu_request_default'};
   $self->{storage_request_limit} = $args{'storage_request_limit'};
   $self->{pod_count} = $args{'pod_count'};
   $self->{service_count} = $args{'service_count'};
   $self->{deployment_count} = $args{'deployment_count'};
   $self->{daemon_set_count} = $args{'daemon_set_count'};
   $self->{replica_set_count} = $args{'replica_set_count'};
   $self->{replication_controller_count} = $args{'replication_controller_count'};
   $self->{stateful_set_count} = $args{'stateful_set_count'};
   $self->{config_map_count} = $args{'config_map_count'};
   $self->{secret_count} = $args{'secret_count'};
   $self->{persistent_volume_claim_count} = $args{'persistent_volume_claim_count'};
   $self->{job_count} = $args{'job_count'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.resource_quota_options_v1');
   $self->set_binding_field('key' => 'memory_limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'memory_limit_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'memory_request_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'cpu_limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'cpu_limit_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'cpu_request_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'storage_request_limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'pod_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'service_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'deployment_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'daemon_set_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'replica_set_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'replication_controller_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'stateful_set_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'config_map_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'secret_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'persistent_volume_claim_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'job_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_memory_limit ()
# Gets the value of 'memory_limit' property.
#
# @retval memory_limit - The current value of the field.
# This is equivalent to &apos;limits.memory&apos; option which is the maximum memory
#     limit (in mebibytes) across all pods which exist in a non-terminal state in the
#     namespace. This value translates to the memory limit on the ResourcePool in vCenter
#     Server created for the namespace.
#
# Optional#
sub get_memory_limit {
   my ($self, %args) = @_;
   return $self->{'memory_limit'}; 	
}

## @method set_memory_limit ()
# Sets the given value for 'memory_limit' property.
# 
# @param memory_limit  - New value for the field.
# This is equivalent to &apos;limits.memory&apos; option which is the maximum memory
#     limit (in mebibytes) across all pods which exist in a non-terminal state in the
#     namespace. This value translates to the memory limit on the ResourcePool in vCenter
#     Server created for the namespace.
#
sub set_memory_limit {
   my ($self, %args) = @_;
   $self->{'memory_limit'} = $args{'memory_limit'}; 
   return;	
}

## @method get_memory_limit_default ()
# Gets the value of 'memory_limit_default' property.
#
# @retval memory_limit_default - The current value of the field.
# This represents the default memory limit (in mebibytes) for containers in the pod.
#     This translates to default memory limit in a LimitRange object. Refer  <a
#     href="https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/memory-default-namespace/">
#     for information about LimitRange.</a> 
#
# Optional#
sub get_memory_limit_default {
   my ($self, %args) = @_;
   return $self->{'memory_limit_default'}; 	
}

## @method set_memory_limit_default ()
# Sets the given value for 'memory_limit_default' property.
# 
# @param memory_limit_default  - New value for the field.
# This represents the default memory limit (in mebibytes) for containers in the pod.
#     This translates to default memory limit in a LimitRange object. Refer  <a
#     href="https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/memory-default-namespace/">
#     for information about LimitRange.</a> 
#
sub set_memory_limit_default {
   my ($self, %args) = @_;
   $self->{'memory_limit_default'} = $args{'memory_limit_default'}; 
   return;	
}

## @method get_memory_request_default ()
# Gets the value of 'memory_request_default' property.
#
# @retval memory_request_default - The current value of the field.
# This represents the default memory request (in mebibytes) for containers in the pod.
#     This translates to default memory request in a LimitRange object. Refer  <a
#     href="https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/memory-default-namespace/">
#     for information about LimitRange.</a> 
#
# Optional#
sub get_memory_request_default {
   my ($self, %args) = @_;
   return $self->{'memory_request_default'}; 	
}

## @method set_memory_request_default ()
# Sets the given value for 'memory_request_default' property.
# 
# @param memory_request_default  - New value for the field.
# This represents the default memory request (in mebibytes) for containers in the pod.
#     This translates to default memory request in a LimitRange object. Refer  <a
#     href="https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/memory-default-namespace/">
#     for information about LimitRange.</a> 
#
sub set_memory_request_default {
   my ($self, %args) = @_;
   $self->{'memory_request_default'} = $args{'memory_request_default'}; 
   return;	
}

## @method get_cpu_limit ()
# Gets the value of 'cpu_limit' property.
#
# @retval cpu_limit - The current value of the field.
# This is equivalent to &apos;limits.cpu&apos; option which is the maximum CPU limit (in
#     MHz) across all pods which exist in a non-terminal state in the namespace. If
#     specified, this limit should be at least 10 MHz. This value translates to the CPU
#     limit on the ResourcePool in vCenter Server created for the namespace.
#
# Optional#
sub get_cpu_limit {
   my ($self, %args) = @_;
   return $self->{'cpu_limit'}; 	
}

## @method set_cpu_limit ()
# Sets the given value for 'cpu_limit' property.
# 
# @param cpu_limit  - New value for the field.
# This is equivalent to &apos;limits.cpu&apos; option which is the maximum CPU limit (in
#     MHz) across all pods which exist in a non-terminal state in the namespace. If
#     specified, this limit should be at least 10 MHz. This value translates to the CPU
#     limit on the ResourcePool in vCenter Server created for the namespace.
#
sub set_cpu_limit {
   my ($self, %args) = @_;
   $self->{'cpu_limit'} = $args{'cpu_limit'}; 
   return;	
}

## @method get_cpu_limit_default ()
# Gets the value of 'cpu_limit_default' property.
#
# @retval cpu_limit_default - The current value of the field.
# This represents the default cpu limit (in MHz) for containers in the pod.
#
# Optional#
sub get_cpu_limit_default {
   my ($self, %args) = @_;
   return $self->{'cpu_limit_default'}; 	
}

## @method set_cpu_limit_default ()
# Sets the given value for 'cpu_limit_default' property.
# 
# @param cpu_limit_default  - New value for the field.
# This represents the default cpu limit (in MHz) for containers in the pod.
#
sub set_cpu_limit_default {
   my ($self, %args) = @_;
   $self->{'cpu_limit_default'} = $args{'cpu_limit_default'}; 
   return;	
}

## @method get_cpu_request_default ()
# Gets the value of 'cpu_request_default' property.
#
# @retval cpu_request_default - The current value of the field.
# This represents the default CPU request (in MHz) for containers in the pod.
#
# Optional#
sub get_cpu_request_default {
   my ($self, %args) = @_;
   return $self->{'cpu_request_default'}; 	
}

## @method set_cpu_request_default ()
# Sets the given value for 'cpu_request_default' property.
# 
# @param cpu_request_default  - New value for the field.
# This represents the default CPU request (in MHz) for containers in the pod.
#
sub set_cpu_request_default {
   my ($self, %args) = @_;
   $self->{'cpu_request_default'} = $args{'cpu_request_default'}; 
   return;	
}

## @method get_storage_request_limit ()
# Gets the value of 'storage_request_limit' property.
#
# @retval storage_request_limit - The current value of the field.
# This represents &apos;requests.storage&apos; option which is the maximum storage
#     request (in mebibytes) across all persistent volume claims from pods which exist in a
#     non-terminal state in the namespace.
#
# Optional#
sub get_storage_request_limit {
   my ($self, %args) = @_;
   return $self->{'storage_request_limit'}; 	
}

## @method set_storage_request_limit ()
# Sets the given value for 'storage_request_limit' property.
# 
# @param storage_request_limit  - New value for the field.
# This represents &apos;requests.storage&apos; option which is the maximum storage
#     request (in mebibytes) across all persistent volume claims from pods which exist in a
#     non-terminal state in the namespace.
#
sub set_storage_request_limit {
   my ($self, %args) = @_;
   $self->{'storage_request_limit'} = $args{'storage_request_limit'}; 
   return;	
}

## @method get_pod_count ()
# Gets the value of 'pod_count' property.
#
# @retval pod_count - The current value of the field.
# This represents &apos;pods&apos; option which is the maximum number of pods which
#     exist in a non-terminal state in the namespace.
#
# Optional#
sub get_pod_count {
   my ($self, %args) = @_;
   return $self->{'pod_count'}; 	
}

## @method set_pod_count ()
# Sets the given value for 'pod_count' property.
# 
# @param pod_count  - New value for the field.
# This represents &apos;pods&apos; option which is the maximum number of pods which
#     exist in a non-terminal state in the namespace.
#
sub set_pod_count {
   my ($self, %args) = @_;
   $self->{'pod_count'} = $args{'pod_count'}; 
   return;	
}

## @method get_service_count ()
# Gets the value of 'service_count' property.
#
# @retval service_count - The current value of the field.
# This represents &apos;count/services&apos; option which is the maximum number of
#     services in the namespace.
#
# Optional#
sub get_service_count {
   my ($self, %args) = @_;
   return $self->{'service_count'}; 	
}

## @method set_service_count ()
# Sets the given value for 'service_count' property.
# 
# @param service_count  - New value for the field.
# This represents &apos;count/services&apos; option which is the maximum number of
#     services in the namespace.
#
sub set_service_count {
   my ($self, %args) = @_;
   $self->{'service_count'} = $args{'service_count'}; 
   return;	
}

## @method get_deployment_count ()
# Gets the value of 'deployment_count' property.
#
# @retval deployment_count - The current value of the field.
# This represents &apos;count/deployments.apps&apos; option which is the maximum number
#     of deployments in the namespace.
#
# Optional#
sub get_deployment_count {
   my ($self, %args) = @_;
   return $self->{'deployment_count'}; 	
}

## @method set_deployment_count ()
# Sets the given value for 'deployment_count' property.
# 
# @param deployment_count  - New value for the field.
# This represents &apos;count/deployments.apps&apos; option which is the maximum number
#     of deployments in the namespace.
#
sub set_deployment_count {
   my ($self, %args) = @_;
   $self->{'deployment_count'} = $args{'deployment_count'}; 
   return;	
}

## @method get_daemon_set_count ()
# Gets the value of 'daemon_set_count' property.
#
# @retval daemon_set_count - The current value of the field.
# This represents &apos;count/daemonsets.apps&apos; option which is the maximum number
#     of DaemonSets in the namespace.
#
# Optional#
sub get_daemon_set_count {
   my ($self, %args) = @_;
   return $self->{'daemon_set_count'}; 	
}

## @method set_daemon_set_count ()
# Sets the given value for 'daemon_set_count' property.
# 
# @param daemon_set_count  - New value for the field.
# This represents &apos;count/daemonsets.apps&apos; option which is the maximum number
#     of DaemonSets in the namespace.
#
sub set_daemon_set_count {
   my ($self, %args) = @_;
   $self->{'daemon_set_count'} = $args{'daemon_set_count'}; 
   return;	
}

## @method get_replica_set_count ()
# Gets the value of 'replica_set_count' property.
#
# @retval replica_set_count - The current value of the field.
# This represents &apos;count/replicasets.apps&apos; option which is the maximum number
#     of ReplicaSets in the namespace.
#
# Optional#
sub get_replica_set_count {
   my ($self, %args) = @_;
   return $self->{'replica_set_count'}; 	
}

## @method set_replica_set_count ()
# Sets the given value for 'replica_set_count' property.
# 
# @param replica_set_count  - New value for the field.
# This represents &apos;count/replicasets.apps&apos; option which is the maximum number
#     of ReplicaSets in the namespace.
#
sub set_replica_set_count {
   my ($self, %args) = @_;
   $self->{'replica_set_count'} = $args{'replica_set_count'}; 
   return;	
}

## @method get_replication_controller_count ()
# Gets the value of 'replication_controller_count' property.
#
# @retval replication_controller_count - The current value of the field.
# This represents &apos;count/replicationcontrollers&apos; option which is the maximum
#     number of ReplicationControllers in the namespace.
#
# Optional#
sub get_replication_controller_count {
   my ($self, %args) = @_;
   return $self->{'replication_controller_count'}; 	
}

## @method set_replication_controller_count ()
# Sets the given value for 'replication_controller_count' property.
# 
# @param replication_controller_count  - New value for the field.
# This represents &apos;count/replicationcontrollers&apos; option which is the maximum
#     number of ReplicationControllers in the namespace.
#
sub set_replication_controller_count {
   my ($self, %args) = @_;
   $self->{'replication_controller_count'} = $args{'replication_controller_count'}; 
   return;	
}

## @method get_stateful_set_count ()
# Gets the value of 'stateful_set_count' property.
#
# @retval stateful_set_count - The current value of the field.
# This represents &apos;count/statefulsets.apps&apos; option which is the maximum number
#     of StatefulSets in the namespace.
#
# Optional#
sub get_stateful_set_count {
   my ($self, %args) = @_;
   return $self->{'stateful_set_count'}; 	
}

## @method set_stateful_set_count ()
# Sets the given value for 'stateful_set_count' property.
# 
# @param stateful_set_count  - New value for the field.
# This represents &apos;count/statefulsets.apps&apos; option which is the maximum number
#     of StatefulSets in the namespace.
#
sub set_stateful_set_count {
   my ($self, %args) = @_;
   $self->{'stateful_set_count'} = $args{'stateful_set_count'}; 
   return;	
}

## @method get_config_map_count ()
# Gets the value of 'config_map_count' property.
#
# @retval config_map_count - The current value of the field.
# This represents &apos;count/configmaps&apos; option which is the maximum number of
#     ConfigMaps in the namespace.
#
# Optional#
sub get_config_map_count {
   my ($self, %args) = @_;
   return $self->{'config_map_count'}; 	
}

## @method set_config_map_count ()
# Sets the given value for 'config_map_count' property.
# 
# @param config_map_count  - New value for the field.
# This represents &apos;count/configmaps&apos; option which is the maximum number of
#     ConfigMaps in the namespace.
#
sub set_config_map_count {
   my ($self, %args) = @_;
   $self->{'config_map_count'} = $args{'config_map_count'}; 
   return;	
}

## @method get_secret_count ()
# Gets the value of 'secret_count' property.
#
# @retval secret_count - The current value of the field.
# This represents &apos;count/secrets&apos; option which is the maximum number of
#     secrets in the namespace.
#
# Optional#
sub get_secret_count {
   my ($self, %args) = @_;
   return $self->{'secret_count'}; 	
}

## @method set_secret_count ()
# Sets the given value for 'secret_count' property.
# 
# @param secret_count  - New value for the field.
# This represents &apos;count/secrets&apos; option which is the maximum number of
#     secrets in the namespace.
#
sub set_secret_count {
   my ($self, %args) = @_;
   $self->{'secret_count'} = $args{'secret_count'}; 
   return;	
}

## @method get_persistent_volume_claim_count ()
# Gets the value of 'persistent_volume_claim_count' property.
#
# @retval persistent_volume_claim_count - The current value of the field.
# This represents &apos;count/persistentvolumeclaims&apos; option which is the maximum
#     number of PersistentVolumeClaims in the namespace.
#
# Optional#
sub get_persistent_volume_claim_count {
   my ($self, %args) = @_;
   return $self->{'persistent_volume_claim_count'}; 	
}

## @method set_persistent_volume_claim_count ()
# Sets the given value for 'persistent_volume_claim_count' property.
# 
# @param persistent_volume_claim_count  - New value for the field.
# This represents &apos;count/persistentvolumeclaims&apos; option which is the maximum
#     number of PersistentVolumeClaims in the namespace.
#
sub set_persistent_volume_claim_count {
   my ($self, %args) = @_;
   $self->{'persistent_volume_claim_count'} = $args{'persistent_volume_claim_count'}; 
   return;	
}

## @method get_job_count ()
# Gets the value of 'job_count' property.
#
# @retval job_count - The current value of the field.
# This represents &apos;count/jobs.batch&apos; option which is the maximum number jobs
#     in the namespace.
#
# Optional#
sub get_job_count {
   my ($self, %args) = @_;
   return $self->{'job_count'}; 	
}

## @method set_job_count ()
# Sets the given value for 'job_count' property.
# 
# @param job_count  - New value for the field.
# This represents &apos;count/jobs.batch&apos; option which is the maximum number jobs
#     in the namespace.
#
sub set_job_count {
   my ($self, %args) = @_;
   $self->{'job_count'} = $args{'job_count'}; 
   return;	
}


1;


