## @class Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm::Evacuation::Vmotion::CreateSpec
#
#
# The 
#     ``Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm::Evacuation::Vmotion::CreateSpec``
#     *class*  contains information used to create a new vMotion policy that applies when a
#     host is evacuated, see  :func:`Com::Vmware::Vcenter::Compute::Policies.create` , in
#     VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. All virtual
#     machines that share the tag indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm::Evacuation::Vmotion::CreateSpec.vm_tag`
#     will be vMotioned from a host whenever the host is evacuated by vCenter. If vCenter
#     cannot migrate a virtual machine, then it will remain running on its current host.
#     <b>Warning:</b> This  *class*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.

package Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm::Evacuation::Vmotion::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm::Evacuation::Vmotion::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm_tag} = $args{'vm_tag'};
   $self->{capability} = $args{'capability'};
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm::Evacuation::Vmotion::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.compute.policies.capabilities.vm.evacuation.vmotion.create_spec');
   $self->set_binding_field('key' => 'vm_tag', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'capability', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_vm_tag ()
# Gets the value of 'vm_tag' property.
#
# @retval vm_tag - The current value of the field.
# Identifier of a tag that can be associated with a virtual machine. Virtual machines
#     with this tag will be vMotioned from a host if vCenter requires to evacuate the host.
#     If vMotion is not feasible, then the virtual machine will remain running on its
#     current host. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# ID#
sub get_vm_tag {
   my ($self, %args) = @_;
   return $self->{'vm_tag'}; 	
}

## @method set_vm_tag ()
# Sets the given value for 'vm_tag' property.
# 
# @param vm_tag  - New value for the field.
# Identifier of a tag that can be associated with a virtual machine. Virtual machines
#     with this tag will be vMotioned from a host if vCenter requires to evacuate the host.
#     If vMotion is not feasible, then the virtual machine will remain running on its
#     current host. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_vm_tag {
   my ($self, %args) = @_;
   $self->{'vm_tag'} = $args{'vm_tag'}; 
   return;	
}

## @method get_capability ()
# Gets the value of 'capability' property.
#
# @retval capability - The current value of the field.
# Identifier of the capability this policy is based on. <b>Warning:</b> This  *field* 
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# ID#
sub get_capability {
   my ($self, %args) = @_;
   return $self->{'capability'}; 	
}

## @method set_capability ()
# Sets the given value for 'capability' property.
# 
# @param capability  - New value for the field.
# Identifier of the capability this policy is based on. <b>Warning:</b> This  *field* 
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_capability {
   my ($self, %args) = @_;
   $self->{'capability'} = $args{'capability'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the policy. The name needs to be unique within this vCenter server.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
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
# Name of the policy. The name needs to be unique within this vCenter server.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the policy. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the policy. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


