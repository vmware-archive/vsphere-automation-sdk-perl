## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceCompliance
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceCompliance`` 
#     *class*  contains information that describe the compliance result of all pci device
#     from all hosts in the clsuter with respect to the component present in the target
#     software specification.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceCompliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceCompliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{compatible_devices} = $args{'compatible_devices'};
   $self->{incompatible_devices} = $args{'incompatible_devices'};
   $self->{incompatible_driver_firmware} = $args{'incompatible_driver_firmware'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceCompliance');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.pci_device_compliance');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'ComplianceStatus'));
   $self->set_binding_field('key' => 'compatible_devices', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'PciDeviceComplianceInfo')));
   $self->set_binding_field('key' => 'incompatible_devices', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'PciDeviceComplianceInfo')));
   $self->set_binding_field('key' => 'incompatible_driver_firmware', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'PciDeviceComplianceInfo')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Over all Compliance status of PCI Devices in Cluster with respective to all hosts in
#     the cluster.
#
# ComplianceStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Over all Compliance status of PCI Devices in Cluster with respective to all hosts in
#     the cluster.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_compatible_devices ()
# Gets the value of 'compatible_devices' property.
#
# @retval compatible_devices - The current value of the field.
# Compatible Device Compliance result for all devices present on all hosts in the
#     cluster compared with the corresponding component in the software specification. The
#     key is the DeviceName and value is the PciDeviceComplianceInfo object.
#
# List#
sub get_compatible_devices {
   my ($self, %args) = @_;
   return $self->{'compatible_devices'}; 	
}

## @method set_compatible_devices ()
# Sets the given value for 'compatible_devices' property.
# 
# @param compatible_devices  - New value for the field.
# Compatible Device Compliance result for all devices present on all hosts in the
#     cluster compared with the corresponding component in the software specification. The
#     key is the DeviceName and value is the PciDeviceComplianceInfo object.
#
sub set_compatible_devices {
   my ($self, %args) = @_;
   $self->{'compatible_devices'} = $args{'compatible_devices'}; 
   return;	
}

## @method get_incompatible_devices ()
# Gets the value of 'incompatible_devices' property.
#
# @retval incompatible_devices - The current value of the field.
# Incompatible Device Compliance result for all devices present on all hosts in the
#     cluster compared with the corresponding component in the software specification. The
#     key is the DeviceName and value is the PciDeviceComplianceInfo object.
#
# List#
sub get_incompatible_devices {
   my ($self, %args) = @_;
   return $self->{'incompatible_devices'}; 	
}

## @method set_incompatible_devices ()
# Sets the given value for 'incompatible_devices' property.
# 
# @param incompatible_devices  - New value for the field.
# Incompatible Device Compliance result for all devices present on all hosts in the
#     cluster compared with the corresponding component in the software specification. The
#     key is the DeviceName and value is the PciDeviceComplianceInfo object.
#
sub set_incompatible_devices {
   my ($self, %args) = @_;
   $self->{'incompatible_devices'} = $args{'incompatible_devices'}; 
   return;	
}

## @method get_incompatible_driver_firmware ()
# Gets the value of 'incompatible_driver_firmware' property.
#
# @retval incompatible_driver_firmware - The current value of the field.
# Incompatible Driver Firmware combination Compliance result for all devices present on
#     hosts in the cluster compared with the corresponding component in the software
#     specification. The key is the DeviceName and value is the PciDeviceComplianceInfo
#     object.
#
# List#
sub get_incompatible_driver_firmware {
   my ($self, %args) = @_;
   return $self->{'incompatible_driver_firmware'}; 	
}

## @method set_incompatible_driver_firmware ()
# Sets the given value for 'incompatible_driver_firmware' property.
# 
# @param incompatible_driver_firmware  - New value for the field.
# Incompatible Driver Firmware combination Compliance result for all devices present on
#     hosts in the cluster compared with the corresponding component in the software
#     specification. The key is the DeviceName and value is the PciDeviceComplianceInfo
#     object.
#
sub set_incompatible_driver_firmware {
   my ($self, %args) = @_;
   $self->{'incompatible_driver_firmware'} = $args{'incompatible_driver_firmware'}; 
   return;	
}


1;


