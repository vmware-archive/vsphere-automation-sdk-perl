## @class Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressInfo``   *class*  contains
#     information about the address of a virtual device that is attached to a virtual SCSI
#     adapter of a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{bus} = $args{'bus'};
   $self->{unit} = $args{'unit'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::ScsiAddressInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.scsi_address_info');
   $self->set_binding_field('key' => 'bus', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'unit', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_bus ()
# Gets the value of 'bus' property.
#
# @retval bus - The current value of the field.
# Bus number of the adapter to which the device is attached.
#
# long#
sub get_bus {
   my ($self, %args) = @_;
   return $self->{'bus'}; 	
}

## @method set_bus ()
# Sets the given value for 'bus' property.
# 
# @param bus  - New value for the field.
# Bus number of the adapter to which the device is attached.
#
sub set_bus {
   my ($self, %args) = @_;
   $self->{'bus'} = $args{'bus'}; 
   return;	
}

## @method get_unit ()
# Gets the value of 'unit' property.
#
# @retval unit - The current value of the field.
# Unit number of the device.
#
# long#
sub get_unit {
   my ($self, %args) = @_;
   return $self->{'unit'}; 	
}

## @method set_unit ()
# Sets the given value for 'unit' property.
# 
# @param unit  - New value for the field.
# Unit number of the device.
#
sub set_unit {
   my ($self, %args) = @_;
   $self->{'unit'} = $args{'unit'}; 
   return;	
}


1;


