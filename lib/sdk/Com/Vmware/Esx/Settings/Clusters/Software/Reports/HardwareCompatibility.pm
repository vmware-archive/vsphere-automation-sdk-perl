########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file HardwareCompatibility.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Esx::Settings;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility``  
#     *interface*  provides  *methods*  to manage HCL Validation of a software specification
#     of an ESX cluster.
#

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibilityStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.reports.hardware_compatibility';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'check_task'} = 'check$task';

## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method get ()
# Returns the hcl validation check summary.
#
# @param cluster [REQUIRED] identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# CheckSummary hcl validation summary.
# The return type will be
# Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::CheckSummary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some other unknown internal error. The accompanying error message will
#     give more details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method check_task ()
# Initiates a Cluster HCL Validation check for a given cluster. The result of this operation
# can be queried by calling the cis/tasks/{task-id} where the task-id is the response of
# this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# CheckResult Hcl validation result.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some other unknown internal error. The accompanying error message will
#     give more details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub check_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'check$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'check$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus``
#     *enumerated type*  contains the possible different status of compliance with respect
#     to target version.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus::COMPATIBLE #
#Target version is compliant with cluster hardware.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus::INCOMPATIBLE #
#Target version is not compatible with the device present in one of the hosts which is part
# of this cluster.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus::HCL_DATA_UNAVAILABLE #
#HCL data can not be fetched to validate cluster hardware.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus::UNAVAILABLE #
#Hosts in cluster are not available to validate cluster hardware.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus::NO_FIRMWARE_PROVIDER #
#No Firmware HSM present in Software Spec to get Firmware Details null  *class* 

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus;

use constant {
    COMPATIBLE =>  'COMPATIBLE',
    INCOMPATIBLE =>  'INCOMPATIBLE',
    HCL_DATA_UNAVAILABLE =>  'HCL_DATA_UNAVAILABLE',
    UNAVAILABLE =>  'UNAVAILABLE',
    NO_FIRMWARE_PROVIDER =>  'NO_FIRMWARE_PROVIDER',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.reports.hardware_compatibility.compliance_status',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::ComplianceStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::CheckSummary
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::CheckSummary``
#     *class*  contains information to describe the HCL compliance summary result of a
#     cluster on target software specification.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::CheckSummary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::CheckSummary structure
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
   $self->{commit} = $args{'commit'};
   $self->{base_image_version} = $args{'base_image_version'};
   $self->{summary_result} = $args{'summary_result'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility::CheckSummary');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.hardware_compatibility.check_summary');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'HardwareCompatibility::ComplianceStatus'));
   $self->set_binding_field('key' => 'scan_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'base_image_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'summary_result', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications'));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Overall compliance state of HCL Validation on the host.
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
# Overall compliance state of HCL Validation on the host.
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

## @method get_summary_result ()
# Gets the value of 'summary_result' property.
#
# @retval summary_result - The current value of the field.
# Over all Compliance result for cluster for the software specification.
#
# LocalizableMessage#
sub get_summary_result {
   my ($self, %args) = @_;
   return $self->{'summary_result'}; 	
}

## @method set_summary_result ()
# Sets the given value for 'summary_result' property.
# 
# @param summary_result  - New value for the field.
# Over all Compliance result for cluster for the software specification.
#
sub set_summary_result {
   my ($self, %args) = @_;
   $self->{'summary_result'} = $args{'summary_result'}; 
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


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::HardwareCompatibility service
#########################################################################################
