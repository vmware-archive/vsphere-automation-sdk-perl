## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceComplianceInfo
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceComplianceInfo``  
#     *class*  contains information that describe the compliance of a pci device with
#     respect to the component present in the target software specification.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceComplianceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceComplianceInfo structure
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
   $self->{device} = $args{'device'};
   $self->{compatible_versions} = $args{'compatible_versions'};
   $self->{host_info} = $args{'host_info'};
   $self->{target} = $args{'target'};
   $self->{supported} = $args{'supported'};
   $self->{compatibility_guide_link} = $args{'compatibility_guide_link'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::PciDeviceComplianceInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.pci_device_compliance_info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'ComplianceStatus'));
   $self->set_binding_field('key' => 'device', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'PciDevice'));
   $self->set_binding_field('key' => 'compatible_versions', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HostInfo')}))));
   $self->set_binding_field('key' => 'target', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'DriverFirmwareVersion'));
   $self->set_binding_field('key' => 'supported', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'DriverFirmwareVersion')));
   $self->set_binding_field('key' => 'compatibility_guide_link', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Compliance status of the device.
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
# Compliance status of the device.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_device ()
# Gets the value of 'device' property.
#
# @retval device - The current value of the field.
# Pci Device Details
#
# PciDevice#
sub get_device {
   my ($self, %args) = @_;
   return $self->{'device'}; 	
}

## @method set_device ()
# Sets the given value for 'device' property.
# 
# @param device  - New value for the field.
# Pci Device Details
#
sub set_device {
   my ($self, %args) = @_;
   $self->{'device'} = $args{'device'}; 
   return;	
}

## @method get_compatible_versions ()
# Gets the value of 'compatible_versions' property.
#
# @retval compatible_versions - The current value of the field.
# List of vSphere Versions compatible for this device. This field is populated only for
#     device found INCOMPATIBLE
#
# List#
sub get_compatible_versions {
   my ($self, %args) = @_;
   return $self->{'compatible_versions'}; 	
}

## @method set_compatible_versions ()
# Sets the given value for 'compatible_versions' property.
# 
# @param compatible_versions  - New value for the field.
# List of vSphere Versions compatible for this device. This field is populated only for
#     device found INCOMPATIBLE
#
sub set_compatible_versions {
   my ($self, %args) = @_;
   $self->{'compatible_versions'} = $args{'compatible_versions'}; 
   return;	
}

## @method get_host_info ()
# Gets the value of 'host_info' property.
#
# @retval host_info - The current value of the field.
# Affected List of Host IDs where this device is found.
#
# Map#
sub get_host_info {
   my ($self, %args) = @_;
   return $self->{'host_info'}; 	
}

## @method set_host_info ()
# Sets the given value for 'host_info' property.
# 
# @param host_info  - New value for the field.
# Affected List of Host IDs where this device is found.
#
sub set_host_info {
   my ($self, %args) = @_;
   $self->{'host_info'} = $args{'host_info'}; 
   return;	
}

## @method get_target ()
# Gets the value of 'target' property.
#
# @retval target - The current value of the field.
# Driver and Firmware Version from Image Specification.
#
# DriverFirmwareVersion#
sub get_target {
   my ($self, %args) = @_;
   return $self->{'target'}; 	
}

## @method set_target ()
# Sets the given value for 'target' property.
# 
# @param target  - New value for the field.
# Driver and Firmware Version from Image Specification.
#
sub set_target {
   my ($self, %args) = @_;
   $self->{'target'} = $args{'target'}; 
   return;	
}

## @method get_supported ()
# Gets the value of 'supported' property.
#
# @retval supported - The current value of the field.
# List of Supported Driver and Firmware Version combination from Harware Compatibility
#     List.
#
# List#
sub get_supported {
   my ($self, %args) = @_;
   return $self->{'supported'}; 	
}

## @method set_supported ()
# Sets the given value for 'supported' property.
# 
# @param supported  - New value for the field.
# List of Supported Driver and Firmware Version combination from Harware Compatibility
#     List.
#
sub set_supported {
   my ($self, %args) = @_;
   $self->{'supported'} = $args{'supported'}; 
   return;	
}

## @method get_compatibility_guide_link ()
# Gets the value of 'compatibility_guide_link' property.
#
# @retval compatibility_guide_link - The current value of the field.
# Provides link to the VMware Compatibility Guide for further information on the
#     compatibility.
#
# Optional#
sub get_compatibility_guide_link {
   my ($self, %args) = @_;
   return $self->{'compatibility_guide_link'}; 	
}

## @method set_compatibility_guide_link ()
# Sets the given value for 'compatibility_guide_link' property.
# 
# @param compatibility_guide_link  - New value for the field.
# Provides link to the VMware Compatibility Guide for further information on the
#     compatibility.
#
sub set_compatibility_guide_link {
   my ($self, %args) = @_;
   $self->{'compatibility_guide_link'} = $args{'compatibility_guide_link'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Device Specific notifications describing the compliance result.
#
# Optional#
sub get_notifications {
   my ($self, %args) = @_;
   return $self->{'notifications'}; 	
}

## @method set_notifications ()
# Sets the given value for 'notifications' property.
# 
# @param notifications  - New value for the field.
# Device Specific notifications describing the compliance result.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}


1;


