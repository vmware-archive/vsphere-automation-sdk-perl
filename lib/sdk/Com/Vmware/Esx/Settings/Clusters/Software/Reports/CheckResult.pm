## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::CheckResult
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::CheckResult``  
#     *class*  contains information to describe HCL compliance result of a cluster on target
#     software specification.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::CheckResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::CheckResult structure
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
   $self->{scan_time} = $args{'scan_time'};
   $self->{v_san_data_only} = $args{'v_san_data_only'};
   $self->{commit} = $args{'commit'};
   $self->{base_image_version} = $args{'base_image_version'};
   $self->{pci_device_compliance} = $args{'pci_device_compliance'};
   $self->{notifications} = $args{'notifications'};
   $self->{note} = $args{'note'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::CheckResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.check_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'ComplianceStatus'));
   $self->set_binding_field('key' => 'scan_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'v_san_data_only', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'base_image_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'pci_device_compliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'PciDeviceCompliance')));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications'));
   $self->set_binding_field('key' => 'note', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Overall compliance status of Cluster with respective to all hosts in the cluster.
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
# Overall compliance status of Cluster with respective to all hosts in the cluster.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_scan_time ()
# Gets the value of 'scan_time' property.
#
# @retval scan_time - The current value of the field.
# HCL Validation check time.
#
# DateTime#
sub get_scan_time {
   my ($self, %args) = @_;
   return $self->{'scan_time'}; 	
}

## @method set_scan_time ()
# Sets the given value for 'scan_time' property.
# 
# @param scan_time  - New value for the field.
# HCL Validation check time.
#
sub set_scan_time {
   my ($self, %args) = @_;
   $self->{'scan_time'} = $args{'scan_time'}; 
   return;	
}

## @method get_v_san_data_only ()
# Gets the value of 'v_san_data_only' property.
#
# @retval v_san_data_only - The current value of the field.
# HCL Validation Computed only for vSAN Clusters.
#
# Optional#
sub get_v_san_data_only {
   my ($self, %args) = @_;
   return $self->{'v_san_data_only'}; 	
}

## @method set_v_san_data_only ()
# Sets the given value for 'v_san_data_only' property.
# 
# @param v_san_data_only  - New value for the field.
# HCL Validation Computed only for vSAN Clusters.
#
sub set_v_san_data_only {
   my ($self, %args) = @_;
   $self->{'v_san_data_only'} = $args{'v_san_data_only'}; 
   return;	
}

## @method get_commit ()
# Gets the value of 'commit' property.
#
# @retval commit - The current value of the field.
# Spec Identifier of the desired configuration on which the HCL scan is performed to
#     generate this result, populated by the HCL validation.
#
# Optional#
sub get_commit {
   my ($self, %args) = @_;
   return $self->{'commit'}; 	
}

## @method set_commit ()
# Sets the given value for 'commit' property.
# 
# @param commit  - New value for the field.
# Spec Identifier of the desired configuration on which the HCL scan is performed to
#     generate this result, populated by the HCL validation.
#
sub set_commit {
   my ($self, %args) = @_;
   $self->{'commit'} = $args{'commit'}; 
   return;	
}

## @method get_base_image_version ()
# Gets the value of 'base_image_version' property.
#
# @retval base_image_version - The current value of the field.
# Target base image version E.g., version = BaseImageSpec-&gt;Version 
#     :attr:`Com::Vmware::Esx::Settings::BaseImageSpec.version`   *class* 
#
# String#
sub get_base_image_version {
   my ($self, %args) = @_;
   return $self->{'base_image_version'}; 	
}

## @method set_base_image_version ()
# Sets the given value for 'base_image_version' property.
# 
# @param base_image_version  - New value for the field.
# Target base image version E.g., version = BaseImageSpec-&gt;Version 
#     :attr:`Com::Vmware::Esx::Settings::BaseImageSpec.version`   *class* 
#
sub set_base_image_version {
   my ($self, %args) = @_;
   $self->{'base_image_version'} = $args{'base_image_version'}; 
   return;	
}

## @method get_pci_device_compliance ()
# Gets the value of 'pci_device_compliance' property.
#
# @retval pci_device_compliance - The current value of the field.
# Compliance result for the Pci Devices that are present in all hosts of the cluster.
#
# Optional#
sub get_pci_device_compliance {
   my ($self, %args) = @_;
   return $self->{'pci_device_compliance'}; 	
}

## @method set_pci_device_compliance ()
# Sets the given value for 'pci_device_compliance' property.
# 
# @param pci_device_compliance  - New value for the field.
# Compliance result for the Pci Devices that are present in all hosts of the cluster.
#
sub set_pci_device_compliance {
   my ($self, %args) = @_;
   $self->{'pci_device_compliance'} = $args{'pci_device_compliance'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications returned by the HCL Validation operation.
#
# Notifications#
sub get_notifications {
   my ($self, %args) = @_;
   return $self->{'notifications'}; 	
}

## @method set_notifications ()
# Sets the given value for 'notifications' property.
# 
# @param notifications  - New value for the field.
# Notifications returned by the HCL Validation operation.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}

## @method get_note ()
# Gets the value of 'note' property.
#
# @retval note - The current value of the field.
# Localizable disclaimer notice to show on the UI detailing the type of checks are done
#     by the HCL Validaiton. Example : HCL Validation is only done on storage and network
#     controllers.
#
# LocalizableMessage#
sub get_note {
   my ($self, %args) = @_;
   return $self->{'note'}; 	
}

## @method set_note ()
# Sets the given value for 'note' property.
# 
# @param note  - New value for the field.
# Localizable disclaimer notice to show on the UI detailing the type of checks are done
#     by the HCL Validaiton. Example : HCL Validation is only done on storage and network
#     controllers.
#
sub set_note {
   my ($self, %args) = @_;
   $self->{'note'} = $args{'note'}; 
   return;	
}


1;


