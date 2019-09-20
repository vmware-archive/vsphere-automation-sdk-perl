## @class Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm_vm_affinity::Info
#
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm_vm_affinity::Info``  
#     *class*  contains information about a VM-VM affinity policy, see 
#     :func:`Com::Vmware::Vcenter::Compute::Policies.get` . All virtual machines that share
#     the tag indicated by 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm_vm_affinity::Info.vm_tag`
#     are affined to each other. <b>Warning:</b> This  *class*  is available as technical
#     preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm_vm_affinity::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm_vm_affinity::Info structure
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
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};
   $self->{capability} = $args{'capability'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::Capabilities::Vm_vm_affinity::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.compute.policies.capabilities.vm_vm_affinity.info');
   $self->set_binding_field('key' => 'vm_tag', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'capability', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_vm_tag ()
# Gets the value of 'vm_tag' property.
#
# @retval vm_tag - The current value of the field.
# Identifier of a tag that can be associated with a virtual machine. Virtual machines
#     with this tag will be affined to each other. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
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
#     with this tag will be affined to each other. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
sub set_vm_tag {
   my ($self, %args) = @_;
   $self->{'vm_tag'} = $args{'vm_tag'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the policy. <b>Warning:</b> This  *field*  is available as technical preview.
#     It may be changed in a future release.
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
# Name of the policy. <b>Warning:</b> This  *field*  is available as technical preview.
#     It may be changed in a future release.
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
# Description of the policy. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
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
# Description of the policy. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_capability ()
# Gets the value of 'capability' property.
#
# @retval capability - The current value of the field.
# Identifier of the capability this policy is based on. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
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
#     is available as technical preview. It may be changed in a future release.
#
sub set_capability {
   my ($self, %args) = @_;
   $self->{'capability'} = $args{'capability'}; 
   return;	
}


1;


