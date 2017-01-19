## @class Com::Vmware::Vcenter::Ovf::ExtraConfig
#
#
# The  ``Com::Vmware::Vcenter::Ovf::ExtraConfig``   *class*  contains the information
#     about a vmw:ExtraConfig element which can be used to specify configuration settings
#     that are transferred directly to the  <code>.vmx</code>  file. The behavior of the
#     vmw:ExtraConfig element is similar to the  <code>extraConfig</code>  property of the 
#     <code>VirtualMachineConfigSpec</code>  object in the VMware vSphere API. Thus, the
#     same restrictions apply, such as you cannot set values that could otherwise be set
#     with other properties in the  <code>VirtualMachineConfigSpec</code>  object. See the
#     VMware vSphere API reference for details on this. <p>
# 
# vmw:ExtraConfig elements may occur as direct child elements of a
#     VirtualHardwareSection, or as child elements of individual virtual hardware items.
#     </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::ExtraConfig;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::ExtraConfig structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{key} = $args{'key'};
   $self->{value} = $args{'value'};
   $self->{virtual_system_id} = $args{'virtual_system_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::ExtraConfig');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.extra_config');
   $self->set_binding_field('key' => 'key', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'value', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'virtual_system_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_key ()
# Gets the value of 'key' property.
#
# @retval key - The current value of the field.
# The key of the ExtraConfig element.
#
# optional#
sub get_key {
   my ($self, %args) = @_;
   return $self->{'key'}; 	
}

## @method set_key ()
# Sets the given value for 'key' property.
# 
# @param key  - New value for the field.
# The key of the ExtraConfig element.
#
sub set_key {
   my ($self, %args) = @_;
   $self->{'key'} = $args{'key'}; 
   return;	
}

## @method get_value ()
# Gets the value of 'value' property.
#
# @retval value - The current value of the field.
# The value of the ExtraConfig element.
#
# optional#
sub get_value {
   my ($self, %args) = @_;
   return $self->{'value'}; 	
}

## @method set_value ()
# Sets the given value for 'value' property.
# 
# @param value  - New value for the field.
# The value of the ExtraConfig element.
#
sub set_value {
   my ($self, %args) = @_;
   $self->{'value'} = $args{'value'}; 
   return;	
}

## @method get_virtual_system_id ()
# Gets the value of 'virtual_system_id' property.
#
# @retval virtual_system_id - The current value of the field.
# The identifier of the virtual system containing the vmw:ExtraConfig element.
#
# optional#
sub get_virtual_system_id {
   my ($self, %args) = @_;
   return $self->{'virtual_system_id'}; 	
}

## @method set_virtual_system_id ()
# Sets the given value for 'virtual_system_id' property.
# 
# @param virtual_system_id  - New value for the field.
# The identifier of the virtual system containing the vmw:ExtraConfig element.
#
sub set_virtual_system_id {
   my ($self, %args) = @_;
   $self->{'virtual_system_id'} = $args{'virtual_system_id'}; 
   return;	
}


1;


