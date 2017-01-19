## @class Com::Vmware::Vcenter::Vm::Hardware::ConnectionCreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::ConnectionCreateSpec``   *class*  provides
#     a specification for the configuration of a newly-created removable device.

package Com::Vmware::Vcenter::Vm::Hardware::ConnectionCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::ConnectionCreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{start_connected} = $args{'start_connected'};
   $self->{allow_guest_control} = $args{'allow_guest_control'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::ConnectionCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.connection_create_spec');
   $self->set_binding_field('key' => 'start_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'allow_guest_control', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_start_connected ()
# Gets the value of 'start_connected' property.
#
# @retval start_connected - The current value of the field.
# Flag indicating whether the virtual device should be connected whenever the virtual
#     machine is powered on.
#
# Optional#
sub get_start_connected {
   my ($self, %args) = @_;
   return $self->{'start_connected'}; 	
}

## @method set_start_connected ()
# Sets the given value for 'start_connected' property.
# 
# @param start_connected  - New value for the field.
# Flag indicating whether the virtual device should be connected whenever the virtual
#     machine is powered on.
#
sub set_start_connected {
   my ($self, %args) = @_;
   $self->{'start_connected'} = $args{'start_connected'}; 
   return;	
}

## @method get_allow_guest_control ()
# Gets the value of 'allow_guest_control' property.
#
# @retval allow_guest_control - The current value of the field.
# Flag indicating whether the guest can connect and disconnect the device.
#
# Optional#
sub get_allow_guest_control {
   my ($self, %args) = @_;
   return $self->{'allow_guest_control'}; 	
}

## @method set_allow_guest_control ()
# Sets the given value for 'allow_guest_control' property.
# 
# @param allow_guest_control  - New value for the field.
# Flag indicating whether the guest can connect and disconnect the device.
#
sub set_allow_guest_control {
   my ($self, %args) = @_;
   $self->{'allow_guest_control'} = $args{'allow_guest_control'}; 
   return;	
}


1;


