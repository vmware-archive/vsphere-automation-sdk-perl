## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDevice
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDevice``   *class* 
#     contains information about a PCI Device.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDevice;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDevice structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{display_name} = $args{'display_name'};
   $self->{driver_name} = $args{'driver_name'};
   $self->{vendor} = $args{'vendor'};
   $self->{vid} = $args{'vid'};
   $self->{did} = $args{'did'};
   $self->{svid} = $args{'svid'};
   $self->{ssid} = $args{'ssid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDevice');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.pci_device');
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'driver_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'did', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'svid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ssid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Display name of the device.
#
# String#
sub get_display_name {
   my ($self, %args) = @_;
   return $self->{'display_name'}; 	
}

## @method set_display_name ()
# Sets the given value for 'display_name' property.
# 
# @param display_name  - New value for the field.
# Display name of the device.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_driver_name ()
# Gets the value of 'driver_name' property.
#
# @retval driver_name - The current value of the field.
# Driver Name of the device.
#
# String#
sub get_driver_name {
   my ($self, %args) = @_;
   return $self->{'driver_name'}; 	
}

## @method set_driver_name ()
# Sets the given value for 'driver_name' property.
# 
# @param driver_name  - New value for the field.
# Driver Name of the device.
#
sub set_driver_name {
   my ($self, %args) = @_;
   $self->{'driver_name'} = $args{'driver_name'}; 
   return;	
}

## @method get_vendor ()
# Gets the value of 'vendor' property.
#
# @retval vendor - The current value of the field.
# Vendor Name of the device.
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
# Vendor Name of the device.
#
sub set_vendor {
   my ($self, %args) = @_;
   $self->{'vendor'} = $args{'vendor'}; 
   return;	
}

## @method get_vid ()
# Gets the value of 'vid' property.
#
# @retval vid - The current value of the field.
# PCI VID of the device.
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
# PCI VID of the device.
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
# PCI DID of the device.
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
# PCI DID of the device.
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
# PCI SVID of the device.
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
# PCI SVID of the device.
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
# PCI SSID of the device.
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
# PCI SSID of the device.
#
sub set_ssid {
   my ($self, %args) = @_;
   $self->{'ssid'} = $args{'ssid'}; 
   return;	
}


1;


