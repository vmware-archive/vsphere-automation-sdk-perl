########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LastApplyResult.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Cis::Task;
#use Com::Vmware::Esx::Settings;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult``  
#     *interface*  provides  *methods*  to get the most recent available result of applying
#     the desired software document to all hosts within a cluster.
#

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult;

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
use Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResultStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.reports.last_apply_result';


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
# Returns the most recent available result of applying the desired software document to all
# hosts within the cluster.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareRemediation.Read.
#
# @param cluster [REQUIRED] The cluster identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Most recent available result of applying the desired software document to all hosts
#     within the cluster.
# The return type will be
# Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is an unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or if there is no
#     result associated with the cluster  ``cluster`` 
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSoftwareRemediation.Read``
#     . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareRemediation.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus``
#       *class*  contains  *fields*  that describe the status of an apply  *method* .

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'status',
         'case_map' => {
               'OK' => ['progress'],
               'ERROR' => ['progress'],
               'SKIPPED' => [],
               'TIMED_OUT' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{progress} = $args{'progress'};
   $self->{start_time} = $args{'start_time'};
   $self->{end_time} = $args{'end_time'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.last_apply_result.apply_status');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastApplyResult::ApplyStatus::Status'));
   $self->set_binding_field('key' => 'progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Task', 'type_name' => 'Progress')));
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'end_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications'));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# The status of the  *method* .
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The status of the  *method* .
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_progress ()
# Gets the value of 'progress' property.
#
# @retval progress - The current value of the field.
# Progress of the operation. This  *field*  was added in vSphere API 7.0.1.0.
#
# Optional#
sub get_progress {
   my ($self, %args) = @_;
   return $self->{'progress'}; 	
}

## @method set_progress ()
# Sets the given value for 'progress' property.
# 
# @param progress  - New value for the field.
# Progress of the operation. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_progress {
   my ($self, %args) = @_;
   $self->{'progress'} = $args{'progress'}; 
   return;	
}

## @method get_start_time ()
# Gets the value of 'start_time' property.
#
# @retval start_time - The current value of the field.
# Time when the  *method*  started.
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
# Time when the  *method*  started.
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
# Time when the  *method*  completed.
#
# DateTime#
sub get_end_time {
   my ($self, %args) = @_;
   return $self->{'end_time'}; 	
}

## @method set_end_time ()
# Sets the given value for 'end_time' property.
# 
# @param end_time  - New value for the field.
# Time when the  *method*  completed.
#
sub set_end_time {
   my ($self, %args) = @_;
   $self->{'end_time'} = $args{'end_time'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications providing additional information about the status of the  *method* .
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
# Notifications providing additional information about the status of the  *method* .
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus::Status
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus::Status``
#     *enumerated type*  contains the possible different status codes that can be returned
#     while trying to apply the desired software specification to hosts within the cluster.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus::Status::OK #
#The  *method*  completed successfully.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus::Status::SKIPPED #
#The  *method*  was skipped.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus::Status::TIMED_OUT #
#The  *method*  timed out.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus::Status::ERROR #
#The  *method*  encountered an unspecified error.

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus::Status;

use constant {
    OK =>  'OK',
    SKIPPED =>  'SKIPPED',
    TIMED_OUT =>  'TIMED_OUT',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.reports.last_apply_result.apply_status.status',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyStatus::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult``
#       *class*  contains  *fields*  that describe the result of an apply  *method* .

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult structure
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
   $self->{commit} = $args{'commit'};
   $self->{host_info} = $args{'host_info'};
   $self->{host_status} = $args{'host_status'};
   $self->{successful_hosts} = $args{'successful_hosts'};
   $self->{failed_hosts} = $args{'failed_hosts'};
   $self->{skipped_hosts} = $args{'skipped_hosts'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.reports.last_apply_result.apply_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastApplyResult::ApplyStatus'));
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HostInfo')}))));
   $self->set_binding_field('key' => 'host_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software::Reports', 'type_name' => 'LastApplyResult::ApplyStatus')}))));
   $self->set_binding_field('key' => 'successful_hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'failed_hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'skipped_hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Specifies the aggregated status of the apply  *method* .
#
# ApplyStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Specifies the aggregated status of the apply  *method* .
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_commit ()
# Gets the value of 'commit' property.
#
# @retval commit - The current value of the field.
# The identifier of the commit used to fetch the desired software document to be applied
#     to all hosts within the cluster.
#
# ID#
sub get_commit {
   my ($self, %args) = @_;
   return $self->{'commit'}; 	
}

## @method set_commit ()
# Sets the given value for 'commit' property.
# 
# @param commit  - New value for the field.
# The identifier of the commit used to fetch the desired software document to be applied
#     to all hosts within the cluster.
#
sub set_commit {
   my ($self, %args) = @_;
   $self->{'commit'} = $args{'commit'}; 
   return;	
}

## @method get_host_info ()
# Gets the value of 'host_info' property.
#
# @retval host_info - The current value of the field.
# Information of the hosts in this cluster to which the desired software document
#     specified by the 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.commit`
#      should be applied to.
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
# Information of the hosts in this cluster to which the desired software document
#     specified by the 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.commit`
#      should be applied to.
#
sub set_host_info {
   my ($self, %args) = @_;
   $self->{'host_info'} = $args{'host_info'}; 
   return;	
}

## @method get_host_status ()
# Gets the value of 'host_status' property.
#
# @retval host_status - The current value of the field.
# Status of the hosts in this cluster to which the desired software document specified
#     by the 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.commit`
#     was applied to. Hosts on which the apply  *method*  was sucessful are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.successful_hosts`
#     . Hosts on which the apply  *method*  failed are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.failed_hosts`
#     . Hosts which were skipped by the apply  *method*  are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.skipped_hosts`
#     .
#
# Map#
sub get_host_status {
   my ($self, %args) = @_;
   return $self->{'host_status'}; 	
}

## @method set_host_status ()
# Sets the given value for 'host_status' property.
# 
# @param host_status  - New value for the field.
# Status of the hosts in this cluster to which the desired software document specified
#     by the 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.commit`
#     was applied to. Hosts on which the apply  *method*  was sucessful are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.successful_hosts`
#     . Hosts on which the apply  *method*  failed are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.failed_hosts`
#     . Hosts which were skipped by the apply  *method*  are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.skipped_hosts`
#     .
#
sub set_host_status {
   my ($self, %args) = @_;
   $self->{'host_status'} = $args{'host_status'}; 
   return;	
}

## @method get_successful_hosts ()
# Gets the value of 'successful_hosts' property.
#
# @retval successful_hosts - The current value of the field.
# Hosts in this cluster to which the desired software document specified by the 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.commit`
#      has been successfully applied to.
#
# Set#
sub get_successful_hosts {
   my ($self, %args) = @_;
   return $self->{'successful_hosts'}; 	
}

## @method set_successful_hosts ()
# Sets the given value for 'successful_hosts' property.
# 
# @param successful_hosts  - New value for the field.
# Hosts in this cluster to which the desired software document specified by the 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.commit`
#      has been successfully applied to.
#
sub set_successful_hosts {
   my ($self, %args) = @_;
   $self->{'successful_hosts'} = $args{'successful_hosts'}; 
   return;	
}

## @method get_failed_hosts ()
# Gets the value of 'failed_hosts' property.
#
# @retval failed_hosts - The current value of the field.
# Hosts in this cluster to which the desired software document specified by the 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.commit`
#      failed to be applied to.
#
# Set#
sub get_failed_hosts {
   my ($self, %args) = @_;
   return $self->{'failed_hosts'}; 	
}

## @method set_failed_hosts ()
# Sets the given value for 'failed_hosts' property.
# 
# @param failed_hosts  - New value for the field.
# Hosts in this cluster to which the desired software document specified by the 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult::ApplyResult.commit`
#      failed to be applied to.
#
sub set_failed_hosts {
   my ($self, %args) = @_;
   $self->{'failed_hosts'} = $args{'failed_hosts'}; 
   return;	
}

## @method get_skipped_hosts ()
# Gets the value of 'skipped_hosts' property.
#
# @retval skipped_hosts - The current value of the field.
# Hosts in this cluster that were skipped by the apply  *method* .
#
# Set#
sub get_skipped_hosts {
   my ($self, %args) = @_;
   return $self->{'skipped_hosts'}; 	
}

## @method set_skipped_hosts ()
# Sets the given value for 'skipped_hosts' property.
# 
# @param skipped_hosts  - New value for the field.
# Hosts in this cluster that were skipped by the apply  *method* .
#
sub set_skipped_hosts {
   my ($self, %args) = @_;
   $self->{'skipped_hosts'} = $args{'skipped_hosts'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::LastApplyResult service
#########################################################################################
