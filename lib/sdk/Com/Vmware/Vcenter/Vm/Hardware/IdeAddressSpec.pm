## @class Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec``   *class*  contains
#     information for specifying the address of a virtual device that is attached to a
#     virtual IDE adapter of a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{primary} = $args{'primary'};
   $self->{master} = $args{'master'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::IdeAddressSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.ide_address_spec');
   $self->set_binding_field('key' => 'primary', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'master', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_primary ()
# Gets the value of 'primary' property.
#
# @retval primary - The current value of the field.
# Flag specifying whether the device should be attached to the primary or secondary IDE
#     adapter of the virtual machine.
#
# Optional#
sub get_primary {
   my ($self, %args) = @_;
   return $self->{'primary'}; 	
}

## @method set_primary ()
# Sets the given value for 'primary' property.
# 
# @param primary  - New value for the field.
# Flag specifying whether the device should be attached to the primary or secondary IDE
#     adapter of the virtual machine.
#
sub set_primary {
   my ($self, %args) = @_;
   $self->{'primary'} = $args{'primary'}; 
   return;	
}

## @method get_master ()
# Gets the value of 'master' property.
#
# @retval master - The current value of the field.
# Flag specifying whether the device should be the master or slave device on the IDE
#     adapter.
#
# Optional#
sub get_master {
   my ($self, %args) = @_;
   return $self->{'master'}; 	
}

## @method set_master ()
# Sets the given value for 'master' property.
# 
# @param master  - New value for the field.
# Flag specifying whether the device should be the master or slave device on the IDE
#     adapter.
#
sub set_master {
   my ($self, %args) = @_;
   $self->{'master'} = $args{'master'}; 
   return;	
}


1;


