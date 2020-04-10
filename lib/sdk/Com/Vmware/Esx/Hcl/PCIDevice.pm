## @class Com::Vmware::Esx::Hcl::PCIDevice
#
#
# The  ``Com::Vmware::Esx::Hcl::PCIDevice``   *class*  contains  *fields*  describing
#     information about a single PCI device on a host.

package Com::Vmware::Esx::Hcl::PCIDevice;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::PCIDevice structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{pci_address} = $args{'pci_address'};
   $self->{vid} = $args{'vid'};
   $self->{did} = $args{'did'};
   $self->{svid} = $args{'svid'};
   $self->{ssid} = $args{'ssid'};
   $self->{vendor} = $args{'vendor'};
   $self->{model_name} = $args{'model_name'};
   $self->{class_code} = $args{'class_code'};
   $self->{sub_class_code} = $args{'sub_class_code'};
   $self->{driver} = $args{'driver'};
   $self->{firmware} = $args{'firmware'};
   $self->{used_by_vsan} = $args{'used_by_vsan'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::PCIDevice');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.PCI_device');
   $self->set_binding_field('key' => 'pci_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'did', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'svid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ssid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'model_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'class_code', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sub_class_code', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'driver', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Driver'));
   $self->set_binding_field('key' => 'firmware', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Firmware')));
   $self->set_binding_field('key' => 'used_by_vsan', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_pci_address ()
# Gets the value of 'pci_address' property.
#
# @retval pci_address - The current value of the field.
# The device&apos;s address in a given ESXi host.
#
# String#
sub get_pci_address {
   my ($self, %args) = @_;
   return $self->{'pci_address'}; 	
}

## @method set_pci_address ()
# Sets the given value for 'pci_address' property.
# 
# @param pci_address  - New value for the field.
# The device&apos;s address in a given ESXi host.
#
sub set_pci_address {
   my ($self, %args) = @_;
   $self->{'pci_address'} = $args{'pci_address'}; 
   return;	
}

## @method get_vid ()
# Gets the value of 'vid' property.
#
# @retval vid - The current value of the field.
# A unique number assigned to each computer hardware device that helps to identify the
#     chipset manufacturer. For example, Dell, Broadcom, etc.
#
# String#
sub get_vid {
   my ($self, %args) = @_;
   return $self->{'vid'}; 	
}

## @method set_vid ()
# Sets the given value for 'vid' property.
# 
# @param vid  - New value for the field.
# A unique number assigned to each computer hardware device that helps to identify the
#     chipset manufacturer. For example, Dell, Broadcom, etc.
#
sub set_vid {
   my ($self, %args) = @_;
   $self->{'vid'} = $args{'vid'}; 
   return;	
}

## @method get_did ()
# Gets the value of 'did' property.
#
# @retval did - The current value of the field.
# A unique number that identifies the specific device of the Vendor (VID).
#
# String#
sub get_did {
   my ($self, %args) = @_;
   return $self->{'did'}; 	
}

## @method set_did ()
# Sets the given value for 'did' property.
# 
# @param did  - New value for the field.
# A unique number that identifies the specific device of the Vendor (VID).
#
sub set_did {
   my ($self, %args) = @_;
   $self->{'did'} = $args{'did'}; 
   return;	
}

## @method get_svid ()
# Gets the value of 'svid' property.
#
# @retval svid - The current value of the field.
# A unique number that identifies the card manufacturer.
#
# String#
sub get_svid {
   my ($self, %args) = @_;
   return $self->{'svid'}; 	
}

## @method set_svid ()
# Sets the given value for 'svid' property.
# 
# @param svid  - New value for the field.
# A unique number that identifies the card manufacturer.
#
sub set_svid {
   my ($self, %args) = @_;
   $self->{'svid'} = $args{'svid'}; 
   return;	
}

## @method get_ssid ()
# Gets the value of 'ssid' property.
#
# @retval ssid - The current value of the field.
# A unique number that identifies the specific device of Subsystem Vendor (SVID).
#
# String#
sub get_ssid {
   my ($self, %args) = @_;
   return $self->{'ssid'}; 	
}

## @method set_ssid ()
# Sets the given value for 'ssid' property.
# 
# @param ssid  - New value for the field.
# A unique number that identifies the specific device of Subsystem Vendor (SVID).
#
sub set_ssid {
   my ($self, %args) = @_;
   $self->{'ssid'} = $args{'ssid'}; 
   return;	
}

## @method get_vendor ()
# Gets the value of 'vendor' property.
#
# @retval vendor - The current value of the field.
# The name of the vendor.
#
# String#
sub get_vendor {
   my ($self, %args) = @_;
   return $self->{'vendor'}; 	
}

## @method set_vendor ()
# Sets the given value for 'vendor' property.
# 
# @param vendor  - New value for the field.
# The name of the vendor.
#
sub set_vendor {
   my ($self, %args) = @_;
   $self->{'vendor'} = $args{'vendor'}; 
   return;	
}

## @method get_model_name ()
# Gets the value of 'model_name' property.
#
# @retval model_name - The current value of the field.
# The name of the device model.
#
# String#
sub get_model_name {
   my ($self, %args) = @_;
   return $self->{'model_name'}; 	
}

## @method set_model_name ()
# Sets the given value for 'model_name' property.
# 
# @param model_name  - New value for the field.
# The name of the device model.
#
sub set_model_name {
   my ($self, %args) = @_;
   $self->{'model_name'} = $args{'model_name'}; 
   return;	
}

## @method get_class_code ()
# Gets the value of 'class_code' property.
#
# @retval class_code - The current value of the field.
# Register that specifies the type of function the device performs.
#
# String#
sub get_class_code {
   my ($self, %args) = @_;
   return $self->{'class_code'}; 	
}

## @method set_class_code ()
# Sets the given value for 'class_code' property.
# 
# @param class_code  - New value for the field.
# Register that specifies the type of function the device performs.
#
sub set_class_code {
   my ($self, %args) = @_;
   $self->{'class_code'} = $args{'class_code'}; 
   return;	
}

## @method get_sub_class_code ()
# Gets the value of 'sub_class_code' property.
#
# @retval sub_class_code - The current value of the field.
# Register that specifies the specific function the device performs.
#
# String#
sub get_sub_class_code {
   my ($self, %args) = @_;
   return $self->{'sub_class_code'}; 	
}

## @method set_sub_class_code ()
# Sets the given value for 'sub_class_code' property.
# 
# @param sub_class_code  - New value for the field.
# Register that specifies the specific function the device performs.
#
sub set_sub_class_code {
   my ($self, %args) = @_;
   $self->{'sub_class_code'} = $args{'sub_class_code'}; 
   return;	
}

## @method get_driver ()
# Gets the value of 'driver' property.
#
# @retval driver - The current value of the field.
# Currently installed driver used by the device.
#
# Driver#
sub get_driver {
   my ($self, %args) = @_;
   return $self->{'driver'}; 	
}

## @method set_driver ()
# Sets the given value for 'driver' property.
# 
# @param driver  - New value for the field.
# Currently installed driver used by the device.
#
sub set_driver {
   my ($self, %args) = @_;
   $self->{'driver'} = $args{'driver'}; 
   return;	
}

## @method get_firmware ()
# Gets the value of 'firmware' property.
#
# @retval firmware - The current value of the field.
# Currently installed firmware used by the device.
#
# Optional#
sub get_firmware {
   my ($self, %args) = @_;
   return $self->{'firmware'}; 	
}

## @method set_firmware ()
# Sets the given value for 'firmware' property.
# 
# @param firmware  - New value for the field.
# Currently installed firmware used by the device.
#
sub set_firmware {
   my ($self, %args) = @_;
   $self->{'firmware'} = $args{'firmware'}; 
   return;	
}

## @method get_used_by_vsan ()
# Gets the value of 'used_by_vsan' property.
#
# @retval used_by_vsan - The current value of the field.
# Shows whether the device is part of VSAN cluster or not.
#
# boolean#
sub get_used_by_vsan {
   my ($self, %args) = @_;
   return $self->{'used_by_vsan'}; 	
}

## @method set_used_by_vsan ()
# Sets the given value for 'used_by_vsan' property.
# 
# @param used_by_vsan  - New value for the field.
# Shows whether the device is part of VSAN cluster or not.
#
sub set_used_by_vsan {
   my ($self, %args) = @_;
   $self->{'used_by_vsan'} = $args{'used_by_vsan'}; 
   return;	
}


1;


