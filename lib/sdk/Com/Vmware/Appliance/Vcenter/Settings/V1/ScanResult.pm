## @class Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult
#
#
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult``   *class*  contains
#     *fields*  to describe the scan result of a appliance. <b>Warning:</b> This  *class* 
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult structure
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
   $self->{notifications} = $args{'notifications'};
   $self->{start_time} = $args{'start_time'};
   $self->{end_time} = $args{'end_time'};
   $self->{profile} = $args{'profile'};
   $self->{version} = $args{'version'};
   $self->{compliant} = $args{'compliant'};
   $self->{non_compliant} = $args{'non_compliant'};
   $self->{unavailable} = $args{'unavailable'};
   $self->{compliance_result} = $args{'compliance_result'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.scan_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1', 'type_name' => 'ScanResult::ComplianceStatus'));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1', 'type_name' => 'Notifications'));
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'end_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'profile', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'compliant', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'non_compliant', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'unavailable', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'compliance_result', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1', 'type_name' => 'ComplianceResult')}))));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Aggregrated compliance state of the appliance. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
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
# Aggregrated compliance state of the appliance. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications returned by the scan operation. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
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
# Notifications returned by the scan operation. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}

## @method get_start_time ()
# Gets the value of 'start_time' property.
#
# @retval start_time - The current value of the field.
# Time when the  *method*  started. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# DateTime#
sub get_start_time {
   my ($self, %args) = @_;
   return $self->{'start_time'}; 	
}

## @method set_start_time ()
# Sets the given value for 'start_time' property.
# 
# @param start_time  - New value for the field.
# Time when the  *method*  started. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_start_time {
   my ($self, %args) = @_;
   $self->{'start_time'} = $args{'start_time'}; 
   return;	
}

## @method get_end_time ()
# Gets the value of 'end_time' property.
#
# @retval end_time - The current value of the field.
# Time when the  *method*  completed. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Optional#
sub get_end_time {
   my ($self, %args) = @_;
   return $self->{'end_time'}; 	
}

## @method set_end_time ()
# Sets the given value for 'end_time' property.
# 
# @param end_time  - New value for the field.
# Time when the  *method*  completed. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_end_time {
   my ($self, %args) = @_;
   $self->{'end_time'} = $args{'end_time'}; 
   return;	
}

## @method get_profile ()
# Gets the value of 'profile' property.
#
# @retval profile - The current value of the field.
# Identifier of the apply on which the scan is run to generate this result.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# ID#
sub get_profile {
   my ($self, %args) = @_;
   return $self->{'profile'}; 	
}

## @method set_profile ()
# Sets the given value for 'profile' property.
# 
# @param profile  - New value for the field.
# Identifier of the apply on which the scan is run to generate this result.
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_profile {
   my ($self, %args) = @_;
   $self->{'profile'} = $args{'profile'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# The version of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# ID#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# The version of the profile. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_compliant ()
# Gets the value of 'compliant' property.
#
# @retval compliant - The current value of the field.
# Identifiers of compliant components. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Set#
sub get_compliant {
   my ($self, %args) = @_;
   return $self->{'compliant'}; 	
}

## @method set_compliant ()
# Sets the given value for 'compliant' property.
# 
# @param compliant  - New value for the field.
# Identifiers of compliant components. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_compliant {
   my ($self, %args) = @_;
   $self->{'compliant'} = $args{'compliant'}; 
   return;	
}

## @method get_non_compliant ()
# Gets the value of 'non_compliant' property.
#
# @retval non_compliant - The current value of the field.
# Identifiers of non-compliant components. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# Set#
sub get_non_compliant {
   my ($self, %args) = @_;
   return $self->{'non_compliant'}; 	
}

## @method set_non_compliant ()
# Sets the given value for 'non_compliant' property.
# 
# @param non_compliant  - New value for the field.
# Identifiers of non-compliant components. <b>Warning:</b> This  *field*  is available
#     as Technology Preview. These are early access APIs provided to test, automate and
#     provide feedback on the feature. Since this can change based on feedback, VMware does
#     not guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_non_compliant {
   my ($self, %args) = @_;
   $self->{'non_compliant'} = $args{'non_compliant'}; 
   return;	
}

## @method get_unavailable ()
# Gets the value of 'unavailable' property.
#
# @retval unavailable - The current value of the field.
# Identifiers of unavailable components. There will not be compliance details for these
#     components. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# Set#
sub get_unavailable {
   my ($self, %args) = @_;
   return $self->{'unavailable'}; 	
}

## @method set_unavailable ()
# Sets the given value for 'unavailable' property.
# 
# @param unavailable  - New value for the field.
# Identifiers of unavailable components. There will not be compliance details for these
#     components. <b>Warning:</b> This  *field*  is available as Technology Preview. These
#     are early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_unavailable {
   my ($self, %args) = @_;
   $self->{'unavailable'} = $args{'unavailable'}; 
   return;	
}

## @method get_compliance_result ()
# Gets the value of 'compliance_result' property.
#
# @retval compliance_result - The current value of the field.
# Mapping of component identifier to the compliance result. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
# Map#
sub get_compliance_result {
   my ($self, %args) = @_;
   return $self->{'compliance_result'}; 	
}

## @method set_compliance_result ()
# Sets the given value for 'compliance_result' property.
# 
# @param compliance_result  - New value for the field.
# Mapping of component identifier to the compliance result. <b>Warning:</b> This 
#     *field*  is available as Technology Preview. These are early access APIs provided to
#     test, automate and provide feedback on the feature. Since this can change based on
#     feedback, VMware does not guarantee backwards compatibility and recommends against
#     using them in production environments. Some Technology Preview APIs might only be
#     applicable to specific environments.
#
sub set_compliance_result {
   my ($self, %args) = @_;
   $self->{'compliance_result'} = $args{'compliance_result'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult::ComplianceStatus
#
# The  ``Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult::ComplianceStatus``  
#     *class*  contains the possible different status of compliance with respect to target
#     version. <b>Warning:</b> This  *enumeration*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
#
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult::ComplianceStatus::COMPLIANT #
#Target configuration is same as the current configuration?. <b>Warning:</b> This 
# *constant*  is available as Technology Preview. These are early access APIs provided to
# test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult::ComplianceStatus::NON_COMPLIANT #
#Target configuration is not same as the current configuration. <b>Warning:</b> This 
# *constant*  is available as Technology Preview. These are early access APIs provided to
# test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult::ComplianceStatus::UNAVAILABLE #
#Scan check failed due to unknown error or check hasn&apos;t happened yet and the results
# are not available. <b>Warning:</b> This  *constant*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult::ComplianceStatus;

use constant {
    COMPLIANT =>  'COMPLIANT',
    NON_COMPLIANT =>  'NON_COMPLIANT',
    UNAVAILABLE =>  'UNAVAILABLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult::ComplianceStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vcenter.settings.v1.scan_result.compliance_status',
                           'binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::ScanResult::ComplianceStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


