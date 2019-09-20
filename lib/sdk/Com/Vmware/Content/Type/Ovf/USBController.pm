## @class Com::Vmware::Content::Type::Ovf::USBController
#
#
# Provide USB controller information in a template VM.

package Com::Vmware::Content::Type::Ovf::USBController;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::USBController structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{auto_connect} = $args{'auto_connect'};
   $self->{ehci_pci_slot_number} = $args{'ehci_pci_slot_number'};
   $self->{pci_slot_number} = $args{'pci_slot_number'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::USBController');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.USB_controller');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'auto_connect', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ehci_pci_slot_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'pci_slot_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# USBControllerType.EHCI (USB 2.0), XHCI (USB 3.0)
#
# Optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# USBControllerType.EHCI (USB 2.0), XHCI (USB 3.0)
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_auto_connect ()
# Gets the value of 'auto_connect' property.
#
# @retval auto_connect - The current value of the field.
# True if the USB controller is connected automatically
#
# Optional#
sub get_auto_connect {
   my ($self, %args) = @_;
   return $self->{'auto_connect'}; 	
}

## @method set_auto_connect ()
# Sets the given value for 'auto_connect' property.
# 
# @param auto_connect  - New value for the field.
# True if the USB controller is connected automatically
#
sub set_auto_connect {
   my ($self, %args) = @_;
   $self->{'auto_connect'} = $args{'auto_connect'}; 
   return;	
}

## @method get_ehci_pci_slot_number ()
# Gets the value of 'ehci_pci_slot_number' property.
#
# @retval ehci_pci_slot_number - The current value of the field.
# ehci.pci slot number
#
# Optional#
sub get_ehci_pci_slot_number {
   my ($self, %args) = @_;
   return $self->{'ehci_pci_slot_number'}; 	
}

## @method set_ehci_pci_slot_number ()
# Sets the given value for 'ehci_pci_slot_number' property.
# 
# @param ehci_pci_slot_number  - New value for the field.
# ehci.pci slot number
#
sub set_ehci_pci_slot_number {
   my ($self, %args) = @_;
   $self->{'ehci_pci_slot_number'} = $args{'ehci_pci_slot_number'}; 
   return;	
}

## @method get_pci_slot_number ()
# Gets the value of 'pci_slot_number' property.
#
# @retval pci_slot_number - The current value of the field.
# pci slot number
#
# Optional#
sub get_pci_slot_number {
   my ($self, %args) = @_;
   return $self->{'pci_slot_number'}; 	
}

## @method set_pci_slot_number ()
# Sets the given value for 'pci_slot_number' property.
# 
# @param pci_slot_number  - New value for the field.
# pci slot number
#
sub set_pci_slot_number {
   my ($self, %args) = @_;
   $self->{'pci_slot_number'} = $args{'pci_slot_number'}; 
   return;	
}


1;


