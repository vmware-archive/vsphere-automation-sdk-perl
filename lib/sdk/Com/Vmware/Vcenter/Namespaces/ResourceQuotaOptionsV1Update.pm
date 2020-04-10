## @class Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update
#
#
# The  ``Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update``   *class* 
#     represents the changes to resource quota limits which are set on the namespace. Refer
#     to  <a href="https://kubernetes.io/docs/concepts/policy/resource-quotas"> &lt;\a&gt;
#     Kubernetes Resource Quota</a>  for information related to the properties of this
#     object and what they map to.

package Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update structure
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
   $self->{memory_limit_unset} = $args{'memory_limit_unset'};
   $self->{memory_limit_default} = $args{'memory_limit_default'};
   $self->{memory_limit_default_unset} = $args{'memory_limit_default_unset'};
   $self->{memory_request_default} = $args{'memory_request_default'};
   $self->{memory_request_default_unset} = $args{'memory_request_default_unset'};
   $self->{cpu_limit} = $args{'cpu_limit'};
   $self->{cpu_limit_unset} = $args{'cpu_limit_unset'};
   $self->{cpu_limit_default} = $args{'cpu_limit_default'};
   $self->{cpu_limit_default_unset} = $args{'cpu_limit_default_unset'};
   $self->{cpu_request_default} = $args{'cpu_request_default'};
   $self->{cpu_request_default_unset} = $args{'cpu_request_default_unset'};
   $self->{storage_request_limit} = $args{'storage_request_limit'};
   $self->{storage_request_limit_unset} = $args{'storage_request_limit_unset'};
   $self->{pod_count} = $args{'pod_count'};
   $self->{pod_count_unset} = $args{'pod_count_unset'};
   $self->{service_count} = $args{'service_count'};
   $self->{service_count_unset} = $args{'service_count_unset'};
   $self->{deployment_count} = $args{'deployment_count'};
   $self->{deployment_count_unset} = $args{'deployment_count_unset'};
   $self->{daemon_set_count} = $args{'daemon_set_count'};
   $self->{daemon_set_count_unset} = $args{'daemon_set_count_unset'};
   $self->{replica_set_count} = $args{'replica_set_count'};
   $self->{replica_set_count_unset} = $args{'replica_set_count_unset'};
   $self->{replication_controller_count} = $args{'replication_controller_count'};
   $self->{replication_controller_count_unset} = $args{'replication_controller_count_unset'};
   $self->{stateful_set_count} = $args{'stateful_set_count'};
   $self->{stateful_set_count_unset} = $args{'stateful_set_count_unset'};
   $self->{config_map_count} = $args{'config_map_count'};
   $self->{config_map_count_unset} = $args{'config_map_count_unset'};
   $self->{secret_count} = $args{'secret_count'};
   $self->{secret_count_unset} = $args{'secret_count_unset'};
   $self->{persistent_volume_claim_count} = $args{'persistent_volume_claim_count'};
   $self->{persistent_volume_claim_count_unset} = $args{'persistent_volume_claim_count_unset'};
   $self->{job_count} = $args{'job_count'};
   $self->{job_count_unset} = $args{'job_count_unset'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.resource_quota_options_v1_update');
   $self->set_binding_field('key' => 'memory_limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'memory_limit_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'memory_limit_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'memory_limit_default_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'memory_request_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'memory_request_default_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'cpu_limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'cpu_limit_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'cpu_limit_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'cpu_limit_default_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'cpu_request_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'cpu_request_default_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'storage_request_limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'storage_request_limit_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'pod_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'pod_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'service_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'service_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'deployment_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'deployment_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'daemon_set_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'daemon_set_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'replica_set_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'replica_set_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'replication_controller_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'replication_controller_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'stateful_set_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'stateful_set_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'config_map_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'config_map_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'secret_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'secret_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'persistent_volume_claim_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'persistent_volume_claim_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'job_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'job_count_unset', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_memory_limit ()
# Gets the value of 'memory_limit' property.
#
# @retval memory_limit - The current value of the field.
# This represents the new value for &apos;limits.memory&apos; option which is equivalent
#     to the maximum memory limit (in mebibytes) across all pods in the namespace. This
#     field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;limits.memory&apos; option which is equivalent
#     to the maximum memory limit (in mebibytes) across all pods in the namespace. This
#     field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit_unset`
#      is set to  ``true`` .
#
sub set_memory_limit {
   my ($self, %args) = @_;
   $self->{'memory_limit'} = $args{'memory_limit'}; 
   return;	
}

## @method get_memory_limit_unset ()
# Gets the value of 'memory_limit_unset' property.
#
# @retval memory_limit_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit` .
#     If this field is set to  ``true`` , the existing memory limit on the ResourcePool is
#     removed. If this field is set to  ``false`` , the existing memory limit will be
#     changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit` ,
#     if any.
#
# Optional#
sub get_memory_limit_unset {
   my ($self, %args) = @_;
   return $self->{'memory_limit_unset'}; 	
}

## @method set_memory_limit_unset ()
# Sets the given value for 'memory_limit_unset' property.
# 
# @param memory_limit_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit` .
#     If this field is set to  ``true`` , the existing memory limit on the ResourcePool is
#     removed. If this field is set to  ``false`` , the existing memory limit will be
#     changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit` ,
#     if any.
#
sub set_memory_limit_unset {
   my ($self, %args) = @_;
   $self->{'memory_limit_unset'} = $args{'memory_limit_unset'}; 
   return;	
}

## @method get_memory_limit_default ()
# Gets the value of 'memory_limit_default' property.
#
# @retval memory_limit_default - The current value of the field.
# This represents the new value for the default memory limit (in mebibytes) for
#     containers in the pod. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit_default_unset`
#      is set to  ``true`` .
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
# This represents the new value for the default memory limit (in mebibytes) for
#     containers in the pod. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit_default_unset`
#      is set to  ``true`` .
#
sub set_memory_limit_default {
   my ($self, %args) = @_;
   $self->{'memory_limit_default'} = $args{'memory_limit_default'}; 
   return;	
}

## @method get_memory_limit_default_unset ()
# Gets the value of 'memory_limit_default_unset' property.
#
# @retval memory_limit_default_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit_default`
#     . If this field is set to  ``true`` , the existing default memory limit on containers
#     in the pod is removed. If this field is set to  ``false`` , the existing default
#     memory limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit_default`
#     , if any.
#
# Optional#
sub get_memory_limit_default_unset {
   my ($self, %args) = @_;
   return $self->{'memory_limit_default_unset'}; 	
}

## @method set_memory_limit_default_unset ()
# Sets the given value for 'memory_limit_default_unset' property.
# 
# @param memory_limit_default_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit_default`
#     . If this field is set to  ``true`` , the existing default memory limit on containers
#     in the pod is removed. If this field is set to  ``false`` , the existing default
#     memory limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_limit_default`
#     , if any.
#
sub set_memory_limit_default_unset {
   my ($self, %args) = @_;
   $self->{'memory_limit_default_unset'} = $args{'memory_limit_default_unset'}; 
   return;	
}

## @method get_memory_request_default ()
# Gets the value of 'memory_request_default' property.
#
# @retval memory_request_default - The current value of the field.
# This represents the new value for the default memory request (in mebibytes) for
#     containers in the pod. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_request_default_unset`
#      is set to  ``true`` .
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
# This represents the new value for the default memory request (in mebibytes) for
#     containers in the pod. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_request_default_unset`
#      is set to  ``true`` .
#
sub set_memory_request_default {
   my ($self, %args) = @_;
   $self->{'memory_request_default'} = $args{'memory_request_default'}; 
   return;	
}

## @method get_memory_request_default_unset ()
# Gets the value of 'memory_request_default_unset' property.
#
# @retval memory_request_default_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_request_default`
#     . If this field is set to  ``true`` , the existing default memory request on
#     containers in the pod will be removed. If this field is set to  ``false`` , the
#     existing default memory request will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_request_default`
#     , if any.
#
# Optional#
sub get_memory_request_default_unset {
   my ($self, %args) = @_;
   return $self->{'memory_request_default_unset'}; 	
}

## @method set_memory_request_default_unset ()
# Sets the given value for 'memory_request_default_unset' property.
# 
# @param memory_request_default_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_request_default`
#     . If this field is set to  ``true`` , the existing default memory request on
#     containers in the pod will be removed. If this field is set to  ``false`` , the
#     existing default memory request will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.memory_request_default`
#     , if any.
#
sub set_memory_request_default_unset {
   my ($self, %args) = @_;
   $self->{'memory_request_default_unset'} = $args{'memory_request_default_unset'}; 
   return;	
}

## @method get_cpu_limit ()
# Gets the value of 'cpu_limit' property.
#
# @retval cpu_limit - The current value of the field.
# This represents the new value for &apos;limits.cpu&apos; option which is equivalent to
#     the maximum CPU limit (in MHz) across all pods in the namespace. This field is ignored
#     if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit_unset`
#      is set to  ``true`` . If specified, this limit should be at least 10 MHz.
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
# This represents the new value for &apos;limits.cpu&apos; option which is equivalent to
#     the maximum CPU limit (in MHz) across all pods in the namespace. This field is ignored
#     if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit_unset`
#      is set to  ``true`` . If specified, this limit should be at least 10 MHz.
#
sub set_cpu_limit {
   my ($self, %args) = @_;
   $self->{'cpu_limit'} = $args{'cpu_limit'}; 
   return;	
}

## @method get_cpu_limit_unset ()
# Gets the value of 'cpu_limit_unset' property.
#
# @retval cpu_limit_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit` . If
#     this field is set to  ``true`` , the existing CPU limit on the ResourcePool is
#     removed. If this field is set to  ``false`` , the existing CPU limit will be changed
#     to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit` , if
#     any.
#
# Optional#
sub get_cpu_limit_unset {
   my ($self, %args) = @_;
   return $self->{'cpu_limit_unset'}; 	
}

## @method set_cpu_limit_unset ()
# Sets the given value for 'cpu_limit_unset' property.
# 
# @param cpu_limit_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit` . If
#     this field is set to  ``true`` , the existing CPU limit on the ResourcePool is
#     removed. If this field is set to  ``false`` , the existing CPU limit will be changed
#     to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit` , if
#     any.
#
sub set_cpu_limit_unset {
   my ($self, %args) = @_;
   $self->{'cpu_limit_unset'} = $args{'cpu_limit_unset'}; 
   return;	
}

## @method get_cpu_limit_default ()
# Gets the value of 'cpu_limit_default' property.
#
# @retval cpu_limit_default - The current value of the field.
# This represents the new value for the default CPU limit (in Mhz) for containers in the
#     pod. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit_default_unset`
#      is set to  ``true`` . If specified, this limit should be at least 10 MHz.
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
# This represents the new value for the default CPU limit (in Mhz) for containers in the
#     pod. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit_default_unset`
#      is set to  ``true`` . If specified, this limit should be at least 10 MHz.
#
sub set_cpu_limit_default {
   my ($self, %args) = @_;
   $self->{'cpu_limit_default'} = $args{'cpu_limit_default'}; 
   return;	
}

## @method get_cpu_limit_default_unset ()
# Gets the value of 'cpu_limit_default_unset' property.
#
# @retval cpu_limit_default_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit_default`
#     . If this field is set to  ``true`` , the existing default CPU limit on containers in
#     the pod is removed. If this field is set to  ``false`` , the existing default CPU
#     limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit_default`
#     , if any.
#
# Optional#
sub get_cpu_limit_default_unset {
   my ($self, %args) = @_;
   return $self->{'cpu_limit_default_unset'}; 	
}

## @method set_cpu_limit_default_unset ()
# Sets the given value for 'cpu_limit_default_unset' property.
# 
# @param cpu_limit_default_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit_default`
#     . If this field is set to  ``true`` , the existing default CPU limit on containers in
#     the pod is removed. If this field is set to  ``false`` , the existing default CPU
#     limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_limit_default`
#     , if any.
#
sub set_cpu_limit_default_unset {
   my ($self, %args) = @_;
   $self->{'cpu_limit_default_unset'} = $args{'cpu_limit_default_unset'}; 
   return;	
}

## @method get_cpu_request_default ()
# Gets the value of 'cpu_request_default' property.
#
# @retval cpu_request_default - The current value of the field.
# This represents the new value for the default CPU request (in Mhz) for containers in
#     the pod. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_request_default_unset`
#      is set to  ``true`` . If specified, this field should be at least 10 MHz.
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
# This represents the new value for the default CPU request (in Mhz) for containers in
#     the pod. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_request_default_unset`
#      is set to  ``true`` . If specified, this field should be at least 10 MHz.
#
sub set_cpu_request_default {
   my ($self, %args) = @_;
   $self->{'cpu_request_default'} = $args{'cpu_request_default'}; 
   return;	
}

## @method get_cpu_request_default_unset ()
# Gets the value of 'cpu_request_default_unset' property.
#
# @retval cpu_request_default_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_request_default`
#     . If this field is set to  ``true`` , the existing default CPU request on containers
#     in the pod is removed. If this field is set to  ``false`` , the existing default CPU
#     request will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_request_default`
#     , if any.
#
# Optional#
sub get_cpu_request_default_unset {
   my ($self, %args) = @_;
   return $self->{'cpu_request_default_unset'}; 	
}

## @method set_cpu_request_default_unset ()
# Sets the given value for 'cpu_request_default_unset' property.
# 
# @param cpu_request_default_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_request_default`
#     . If this field is set to  ``true`` , the existing default CPU request on containers
#     in the pod is removed. If this field is set to  ``false`` , the existing default CPU
#     request will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.cpu_request_default`
#     , if any.
#
sub set_cpu_request_default_unset {
   my ($self, %args) = @_;
   $self->{'cpu_request_default_unset'} = $args{'cpu_request_default_unset'}; 
   return;	
}

## @method get_storage_request_limit ()
# Gets the value of 'storage_request_limit' property.
#
# @retval storage_request_limit - The current value of the field.
# This represents the new value for &apos;requests.storage&apos; which is the limit on
#     storage requests (in mebibytes) across all persistent volume claims from pods in the
#     namespace. This field is ignored if if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.storage_request_limit_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;requests.storage&apos; which is the limit on
#     storage requests (in mebibytes) across all persistent volume claims from pods in the
#     namespace. This field is ignored if if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.storage_request_limit_unset`
#      is set to  ``true`` .
#
sub set_storage_request_limit {
   my ($self, %args) = @_;
   $self->{'storage_request_limit'} = $args{'storage_request_limit'}; 
   return;	
}

## @method get_storage_request_limit_unset ()
# Gets the value of 'storage_request_limit_unset' property.
#
# @retval storage_request_limit_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.storage_request_limit`
#     . If this field is set to  ``true`` , the existing storage request limit will be
#     reset. If this field is set to  ``false`` , the existing storage request limit will be
#     changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.storage_request_limit`
#     , if any.
#
# Optional#
sub get_storage_request_limit_unset {
   my ($self, %args) = @_;
   return $self->{'storage_request_limit_unset'}; 	
}

## @method set_storage_request_limit_unset ()
# Sets the given value for 'storage_request_limit_unset' property.
# 
# @param storage_request_limit_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.storage_request_limit`
#     . If this field is set to  ``true`` , the existing storage request limit will be
#     reset. If this field is set to  ``false`` , the existing storage request limit will be
#     changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.storage_request_limit`
#     , if any.
#
sub set_storage_request_limit_unset {
   my ($self, %args) = @_;
   $self->{'storage_request_limit_unset'} = $args{'storage_request_limit_unset'}; 
   return;	
}

## @method get_pod_count ()
# Gets the value of 'pod_count' property.
#
# @retval pod_count - The current value of the field.
# This represents the new value for &apos;podCount&apos; option which is the maximum
#     number of pods in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.pod_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;podCount&apos; option which is the maximum
#     number of pods in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.pod_count_unset`
#      is set to  ``true`` .
#
sub set_pod_count {
   my ($self, %args) = @_;
   $self->{'pod_count'} = $args{'pod_count'}; 
   return;	
}

## @method get_pod_count_unset ()
# Gets the value of 'pod_count_unset' property.
#
# @retval pod_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.pod_count` . If
#     this field is set to  ``true`` , the existing &apos;podCount&apos; limit on the
#     namespace will be reset. If this field is set to  ``false`` , the existing CPU limit
#     will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.pod_count` , if
#     any.
#
# Optional#
sub get_pod_count_unset {
   my ($self, %args) = @_;
   return $self->{'pod_count_unset'}; 	
}

## @method set_pod_count_unset ()
# Sets the given value for 'pod_count_unset' property.
# 
# @param pod_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.pod_count` . If
#     this field is set to  ``true`` , the existing &apos;podCount&apos; limit on the
#     namespace will be reset. If this field is set to  ``false`` , the existing CPU limit
#     will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.pod_count` , if
#     any.
#
sub set_pod_count_unset {
   my ($self, %args) = @_;
   $self->{'pod_count_unset'} = $args{'pod_count_unset'}; 
   return;	
}

## @method get_service_count ()
# Gets the value of 'service_count' property.
#
# @retval service_count - The current value of the field.
# This represents the new value for &apos;serviceCount&apos; option which is the maximum
#     number of services in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.service_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;serviceCount&apos; option which is the maximum
#     number of services in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.service_count_unset`
#      is set to  ``true`` .
#
sub set_service_count {
   my ($self, %args) = @_;
   $self->{'service_count'} = $args{'service_count'}; 
   return;	
}

## @method get_service_count_unset ()
# Gets the value of 'service_count_unset' property.
#
# @retval service_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.service_count` .
#     If this field is set to  ``true`` , the existing &apos;serviceCount&apos; limit on the
#     namespace will be reset. If this field is set to  ``false`` , the existing service
#     count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.service_count` ,
#     if any.
#
# Optional#
sub get_service_count_unset {
   my ($self, %args) = @_;
   return $self->{'service_count_unset'}; 	
}

## @method set_service_count_unset ()
# Sets the given value for 'service_count_unset' property.
# 
# @param service_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.service_count` .
#     If this field is set to  ``true`` , the existing &apos;serviceCount&apos; limit on the
#     namespace will be reset. If this field is set to  ``false`` , the existing service
#     count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.service_count` ,
#     if any.
#
sub set_service_count_unset {
   my ($self, %args) = @_;
   $self->{'service_count_unset'} = $args{'service_count_unset'}; 
   return;	
}

## @method get_deployment_count ()
# Gets the value of 'deployment_count' property.
#
# @retval deployment_count - The current value of the field.
# This represents the new value for &apos;deploymentCount&apos; option which is the
#     maximum number of deployments in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.deployment_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;deploymentCount&apos; option which is the
#     maximum number of deployments in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.deployment_count_unset`
#      is set to  ``true`` .
#
sub set_deployment_count {
   my ($self, %args) = @_;
   $self->{'deployment_count'} = $args{'deployment_count'}; 
   return;	
}

## @method get_deployment_count_unset ()
# Gets the value of 'deployment_count_unset' property.
#
# @retval deployment_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.deployment_count`
#     . If this field is set to  ``true`` , the existing &apos;deploymentCount&apos; limit
#     on the namespace will be reset. If this field is set to  ``false`` , the existing
#     deployment count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.deployment_count`
#     , if any.
#
# Optional#
sub get_deployment_count_unset {
   my ($self, %args) = @_;
   return $self->{'deployment_count_unset'}; 	
}

## @method set_deployment_count_unset ()
# Sets the given value for 'deployment_count_unset' property.
# 
# @param deployment_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.deployment_count`
#     . If this field is set to  ``true`` , the existing &apos;deploymentCount&apos; limit
#     on the namespace will be reset. If this field is set to  ``false`` , the existing
#     deployment count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.deployment_count`
#     , if any.
#
sub set_deployment_count_unset {
   my ($self, %args) = @_;
   $self->{'deployment_count_unset'} = $args{'deployment_count_unset'}; 
   return;	
}

## @method get_daemon_set_count ()
# Gets the value of 'daemon_set_count' property.
#
# @retval daemon_set_count - The current value of the field.
# This represents the new value for &apos;daemonSetCount&apos; option which is the
#     maximum number of DaemonSets in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.daemon_set_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;daemonSetCount&apos; option which is the
#     maximum number of DaemonSets in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.daemon_set_count_unset`
#      is set to  ``true`` .
#
sub set_daemon_set_count {
   my ($self, %args) = @_;
   $self->{'daemon_set_count'} = $args{'daemon_set_count'}; 
   return;	
}

## @method get_daemon_set_count_unset ()
# Gets the value of 'daemon_set_count_unset' property.
#
# @retval daemon_set_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.daemon_set_count`
#     . If this field is set to  ``true`` , the existing &apos;daemonSetCount&apos; limit on
#     the namespace will be reset. If this field is set to  ``false`` , the existing
#     daemonset count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.daemon_set_count`
#     , if any.
#
# Optional#
sub get_daemon_set_count_unset {
   my ($self, %args) = @_;
   return $self->{'daemon_set_count_unset'}; 	
}

## @method set_daemon_set_count_unset ()
# Sets the given value for 'daemon_set_count_unset' property.
# 
# @param daemon_set_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.daemon_set_count`
#     . If this field is set to  ``true`` , the existing &apos;daemonSetCount&apos; limit on
#     the namespace will be reset. If this field is set to  ``false`` , the existing
#     daemonset count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.daemon_set_count`
#     , if any.
#
sub set_daemon_set_count_unset {
   my ($self, %args) = @_;
   $self->{'daemon_set_count_unset'} = $args{'daemon_set_count_unset'}; 
   return;	
}

## @method get_replica_set_count ()
# Gets the value of 'replica_set_count' property.
#
# @retval replica_set_count - The current value of the field.
# This represents the new value for &apos;replicaSetCount&apos; option which is the
#     maximum number of ReplicaSets in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replica_set_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;replicaSetCount&apos; option which is the
#     maximum number of ReplicaSets in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replica_set_count_unset`
#      is set to  ``true`` .
#
sub set_replica_set_count {
   my ($self, %args) = @_;
   $self->{'replica_set_count'} = $args{'replica_set_count'}; 
   return;	
}

## @method get_replica_set_count_unset ()
# Gets the value of 'replica_set_count_unset' property.
#
# @retval replica_set_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replica_set_count`
#     . If this field is set to  ``true`` , the existing &apos;replicaSetCount&apos; limit
#     on the namespace will be reset. If this field is set to  ``false`` , the existing
#     replicaset count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replica_set_count`
#     , if any.
#
# Optional#
sub get_replica_set_count_unset {
   my ($self, %args) = @_;
   return $self->{'replica_set_count_unset'}; 	
}

## @method set_replica_set_count_unset ()
# Sets the given value for 'replica_set_count_unset' property.
# 
# @param replica_set_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replica_set_count`
#     . If this field is set to  ``true`` , the existing &apos;replicaSetCount&apos; limit
#     on the namespace will be reset. If this field is set to  ``false`` , the existing
#     replicaset count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replica_set_count`
#     , if any.
#
sub set_replica_set_count_unset {
   my ($self, %args) = @_;
   $self->{'replica_set_count_unset'} = $args{'replica_set_count_unset'}; 
   return;	
}

## @method get_replication_controller_count ()
# Gets the value of 'replication_controller_count' property.
#
# @retval replication_controller_count - The current value of the field.
# This represents the new value for &apos;replicationControllerCount&apos; option which
#     is the maximum number of ReplicationControllers in the namespace. This field is
#     ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replication_controller_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;replicationControllerCount&apos; option which
#     is the maximum number of ReplicationControllers in the namespace. This field is
#     ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replication_controller_count_unset`
#      is set to  ``true`` .
#
sub set_replication_controller_count {
   my ($self, %args) = @_;
   $self->{'replication_controller_count'} = $args{'replication_controller_count'}; 
   return;	
}

## @method get_replication_controller_count_unset ()
# Gets the value of 'replication_controller_count_unset' property.
#
# @retval replication_controller_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replication_controller_count`
#     . If this field is set to  ``true`` , the existing
#     &apos;replicationControllerCount&apos; limit on the namespace will be reset. If this
#     field is set to  ``false`` , the existing replicationcontroller count limit will be
#     changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replication_controller_count`
#     , if any.
#
# Optional#
sub get_replication_controller_count_unset {
   my ($self, %args) = @_;
   return $self->{'replication_controller_count_unset'}; 	
}

## @method set_replication_controller_count_unset ()
# Sets the given value for 'replication_controller_count_unset' property.
# 
# @param replication_controller_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replication_controller_count`
#     . If this field is set to  ``true`` , the existing
#     &apos;replicationControllerCount&apos; limit on the namespace will be reset. If this
#     field is set to  ``false`` , the existing replicationcontroller count limit will be
#     changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.replication_controller_count`
#     , if any.
#
sub set_replication_controller_count_unset {
   my ($self, %args) = @_;
   $self->{'replication_controller_count_unset'} = $args{'replication_controller_count_unset'}; 
   return;	
}

## @method get_stateful_set_count ()
# Gets the value of 'stateful_set_count' property.
#
# @retval stateful_set_count - The current value of the field.
# This represents the new value for &apos;statefulSetCount&apos; option which is the
#     maximum number of StatefulSets in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.stateful_set_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;statefulSetCount&apos; option which is the
#     maximum number of StatefulSets in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.stateful_set_count_unset`
#      is set to  ``true`` .
#
sub set_stateful_set_count {
   my ($self, %args) = @_;
   $self->{'stateful_set_count'} = $args{'stateful_set_count'}; 
   return;	
}

## @method get_stateful_set_count_unset ()
# Gets the value of 'stateful_set_count_unset' property.
#
# @retval stateful_set_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.stateful_set_count`
#     . If this field is set to  ``true`` , the existing &apos;statefulSetCount&apos; limit
#     on the namespace will be reset. If this field is set to  ``false`` , the existing
#     statefulset count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.stateful_set_count`
#     , if any.
#
# Optional#
sub get_stateful_set_count_unset {
   my ($self, %args) = @_;
   return $self->{'stateful_set_count_unset'}; 	
}

## @method set_stateful_set_count_unset ()
# Sets the given value for 'stateful_set_count_unset' property.
# 
# @param stateful_set_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.stateful_set_count`
#     . If this field is set to  ``true`` , the existing &apos;statefulSetCount&apos; limit
#     on the namespace will be reset. If this field is set to  ``false`` , the existing
#     statefulset count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.stateful_set_count`
#     , if any.
#
sub set_stateful_set_count_unset {
   my ($self, %args) = @_;
   $self->{'stateful_set_count_unset'} = $args{'stateful_set_count_unset'}; 
   return;	
}

## @method get_config_map_count ()
# Gets the value of 'config_map_count' property.
#
# @retval config_map_count - The current value of the field.
# This represents the new value for &apos;configMapCount&apos; option which is the
#     maximum number of ConfigMaps in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.config_map_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;configMapCount&apos; option which is the
#     maximum number of ConfigMaps in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.config_map_count_unset`
#      is set to  ``true`` .
#
sub set_config_map_count {
   my ($self, %args) = @_;
   $self->{'config_map_count'} = $args{'config_map_count'}; 
   return;	
}

## @method get_config_map_count_unset ()
# Gets the value of 'config_map_count_unset' property.
#
# @retval config_map_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.config_map_count`
#     . If this field is set to  ``true`` , the existing &apos;configMapCount&apos; limit on
#     the namespace will be reset. If this field is set to  ``false`` , the existing
#     configmap count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.config_map_count`
#     , if any.
#
# Optional#
sub get_config_map_count_unset {
   my ($self, %args) = @_;
   return $self->{'config_map_count_unset'}; 	
}

## @method set_config_map_count_unset ()
# Sets the given value for 'config_map_count_unset' property.
# 
# @param config_map_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.config_map_count`
#     . If this field is set to  ``true`` , the existing &apos;configMapCount&apos; limit on
#     the namespace will be reset. If this field is set to  ``false`` , the existing
#     configmap count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.config_map_count`
#     , if any.
#
sub set_config_map_count_unset {
   my ($self, %args) = @_;
   $self->{'config_map_count_unset'} = $args{'config_map_count_unset'}; 
   return;	
}

## @method get_secret_count ()
# Gets the value of 'secret_count' property.
#
# @retval secret_count - The current value of the field.
# This represents the new value for &apos;secretCount&apos; option which is the maximum
#     number of secrets in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.secret_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;secretCount&apos; option which is the maximum
#     number of secrets in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.secret_count_unset`
#      is set to  ``true`` .
#
sub set_secret_count {
   my ($self, %args) = @_;
   $self->{'secret_count'} = $args{'secret_count'}; 
   return;	
}

## @method get_secret_count_unset ()
# Gets the value of 'secret_count_unset' property.
#
# @retval secret_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.secret_count` .
#     If this field is set to  ``true`` , the existing &apos;secretCount&apos; limit on the
#     namespace will be reset. If this field is set to  ``false`` , the existing secret
#     count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.secret_count` ,
#     if any.
#
# Optional#
sub get_secret_count_unset {
   my ($self, %args) = @_;
   return $self->{'secret_count_unset'}; 	
}

## @method set_secret_count_unset ()
# Sets the given value for 'secret_count_unset' property.
# 
# @param secret_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.secret_count` .
#     If this field is set to  ``true`` , the existing &apos;secretCount&apos; limit on the
#     namespace will be reset. If this field is set to  ``false`` , the existing secret
#     count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.secret_count` ,
#     if any.
#
sub set_secret_count_unset {
   my ($self, %args) = @_;
   $self->{'secret_count_unset'} = $args{'secret_count_unset'}; 
   return;	
}

## @method get_persistent_volume_claim_count ()
# Gets the value of 'persistent_volume_claim_count' property.
#
# @retval persistent_volume_claim_count - The current value of the field.
# This represents the new value for &apos;persistentVolumeClaimCount&apos; option which
#     is the maximum number of PersistentVolumeClaims in the namespace. This field is
#     ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.persistent_volume_claim_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;persistentVolumeClaimCount&apos; option which
#     is the maximum number of PersistentVolumeClaims in the namespace. This field is
#     ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.persistent_volume_claim_count_unset`
#      is set to  ``true`` .
#
sub set_persistent_volume_claim_count {
   my ($self, %args) = @_;
   $self->{'persistent_volume_claim_count'} = $args{'persistent_volume_claim_count'}; 
   return;	
}

## @method get_persistent_volume_claim_count_unset ()
# Gets the value of 'persistent_volume_claim_count_unset' property.
#
# @retval persistent_volume_claim_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.persistent_volume_claim_count`
#     . If this field is set to  ``true`` , the existing
#     &apos;persistentVolumeClaimCount&apos; limit on the namespace will be reset. If this
#     field is set to  ``false`` , the existing replicationcontroller count limit will be
#     changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.persistent_volume_claim_count`
#     , if any.
#
# Optional#
sub get_persistent_volume_claim_count_unset {
   my ($self, %args) = @_;
   return $self->{'persistent_volume_claim_count_unset'}; 	
}

## @method set_persistent_volume_claim_count_unset ()
# Sets the given value for 'persistent_volume_claim_count_unset' property.
# 
# @param persistent_volume_claim_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.persistent_volume_claim_count`
#     . If this field is set to  ``true`` , the existing
#     &apos;persistentVolumeClaimCount&apos; limit on the namespace will be reset. If this
#     field is set to  ``false`` , the existing replicationcontroller count limit will be
#     changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.persistent_volume_claim_count`
#     , if any.
#
sub set_persistent_volume_claim_count_unset {
   my ($self, %args) = @_;
   $self->{'persistent_volume_claim_count_unset'} = $args{'persistent_volume_claim_count_unset'}; 
   return;	
}

## @method get_job_count ()
# Gets the value of 'job_count' property.
#
# @retval job_count - The current value of the field.
# This represents the new value for &apos;jobCount&apos; option which is the maximum
#     number of jobs in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.job_count_unset`
#      is set to  ``true`` .
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
# This represents the new value for &apos;jobCount&apos; option which is the maximum
#     number of jobs in the namespace. This field is ignored if 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.job_count_unset`
#      is set to  ``true`` .
#
sub set_job_count {
   my ($self, %args) = @_;
   $self->{'job_count'} = $args{'job_count'}; 
   return;	
}

## @method get_job_count_unset ()
# Gets the value of 'job_count_unset' property.
#
# @retval job_count_unset - The current value of the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.job_count` . If
#     this field is set to  ``true`` , the existing &apos;jobCount&apos; limit on the
#     namespace will be reset. If this field is set to  ``false`` , the existing secret
#     count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.job_count` , if
#     any.
#
# Optional#
sub get_job_count_unset {
   my ($self, %args) = @_;
   return $self->{'job_count_unset'}; 	
}

## @method set_job_count_unset ()
# Sets the given value for 'job_count_unset' property.
# 
# @param job_count_unset  - New value for the field.
# This represents the intent of the change to 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.job_count` . If
#     this field is set to  ``true`` , the existing &apos;jobCount&apos; limit on the
#     namespace will be reset. If this field is set to  ``false`` , the existing secret
#     count limit will be changed to the value specified in 
#     :attr:`Com::Vmware::Vcenter::Namespaces::ResourceQuotaOptionsV1Update.job_count` , if
#     any.
#
sub set_job_count_unset {
   my ($self, %args) = @_;
   $self->{'job_count_unset'} = $args{'job_count_unset'}; 
   return;	
}


1;


