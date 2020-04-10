########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Software.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Esx::Settings;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Software
# The  ``Com::Vmware::Esx::Settings::Clusters::Software``   *interface*  provides 
#     *methods*  to manage desired software specification of an ESX cluster.
#

package Com::Vmware::Esx::Settings::Clusters::Software;

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
use Com::Vmware::Esx::Settings::Clusters::SoftwareStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'scan_task'} = 'scan$task';
$_VAPI_OPERATION_IDS->{'apply_task'} = 'apply$task';
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
# Returns the complete desired software specification.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Cluster software specification.
# The return type will be Com::Vmware::Esx::Settings::SoftwareInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires 
#     ``VcIntegrity.lifecycleSoftwareSpecification.Read`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareSpecification.Read`` . </li>
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

## @method scan_task ()
# Scans all the hosts in the cluster against the cluster&apos;s desired state. The result of
# this operation can be queried by calling the cis/tasks/{task-id} where the task-id is the
# response of this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Compliance result for the cluster.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or if desired
#     software document is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub scan_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'scan$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'scan$task',
                         method_args => \%args);
}


## @method export ()
# Exports the desired software specification document and/or image. This API will not export
# the solution section of the desired software specification.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] 
# . The value must be Com::Vmware::Esx::Settings::Clusters::Software::ExportSpec.
#
# @retval 
# A map from export type to URL of the exported data for that type.
# The return type will be Dictionary of
# Com::Vmware::Esx::Settings::Clusters::Software::ExportType and str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is am unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or if desired
#     software document is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires 
#     ``VcIntegrity.lifecycleSoftwareSpecification.Read`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareSpecification.Read`` . </li>
# </ul>
#
sub export {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'export',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'export',
                         method_args => \%args);
}

## @method apply_task ()
# Applies the desired software document associated with the given cluster to hosts within
# the cluster. If  ``commit``   *field*  is  *set* , it implies the minimum commit that the 
# :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method*  should use,
# however if subsequent commits have been made to the desired state document the apply 
# *method*  will use the most recent desired state document. The result of this operation
# can be queried by calling the cis/tasks/{task-id} where the task-id is the response of
# this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] Apply specification.
# . The value must be Com::Vmware::Esx::Settings::Clusters::Software::ApplySpec.
#
# @retval 
# The result of the  :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`  
#     *method* .
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# If the cluster is already at specified commit as described in the apply specification.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is an unknown internal error or if the EULA has not been accepted. The
#     accompanying error message will give more details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the  ``commit``   *field*  of  ``spec``  specifies an invalid commit, or the 
#     ``hosts``   *field*  of  ``spec``  specifies an invalid host or a host not part of the
#     cluster.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# If there is another operation in progress.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or if desired
#     software document is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::TimedOut 
# If the operation times out.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub apply_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'apply$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'apply$task',
                         method_args => \%args);
}


## @method check_task ()
# Runs checks on the cluster before applying the desired software document across all hosts
# in the cluster. Checks if all hosts in the cluster are in a good state to be updated with
# the desired software document. If  ``commit``   *field*  is  *set*  it implies the minimum
# commit that the check  *method*  should use, however if subsequent commits have been made
# to the desired state document the check  *method*  will use the most recent desired state
# document. The result of this operation can be queried by calling the cis/tasks/{task-id}
# where the task-id is the response of this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] Check specification.
# . The value must be Com::Vmware::Esx::Settings::Clusters::Software::CheckSpec.
#
# @retval 
# The results of all checks performed.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the  ``commit``   *field*  of  ``spec``  specifies an invalid commit, or the 
#     ``hosts``   *field*  of  ``spec``  specifies an invalid host or a host not part of the
#     cluster.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# If there is another operation in progress or if the  ``commit``   *field*  of 
#     ``spec``  specifies a commit that has already been applied.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::TimedOut 
# If the operation times out.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub check_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'check$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::ExportType
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::ExportType``   *enumerated
#     type*  defines the formats in which software specification document or image can be
#     exported.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::ExportType::SOFTWARE_SPEC #
#Export software specification document.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::ExportType::ISO_IMAGE #
#Export ISO image.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::ExportType::OFFLINE_BUNDLE #
#Export offline bundle.

package Com::Vmware::Esx::Settings::Clusters::Software::ExportType;

use constant {
    SOFTWARE_SPEC =>  'SOFTWARE_SPEC',
    ISO_IMAGE =>  'ISO_IMAGE',
    OFFLINE_BUNDLE =>  'OFFLINE_BUNDLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::ExportType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.export_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::ExportType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Esx::Settings::Clusters::Software::Status
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Status``   *enumerated type* 
#     defines the status result for a particular check.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Status::OK #
#The check indicates a success.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Status::WARNING #
#The check indicates a warning.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Status::TIMEOUT #
#The check did not return in a timely manner.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Status::ERROR #
#The check indicates an error.

package Com::Vmware::Esx::Settings::Clusters::Software::Status;

use constant {
    OK =>  'OK',
    WARNING =>  'WARNING',
    TIMEOUT =>  'TIMEOUT',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.status',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::ExportSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::ExportSpec``   *class* 
#     contains information describing how a software specification or image should be
#     exported.

package Com::Vmware::Esx::Settings::Clusters::Software::ExportSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::ExportSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{export_software_spec} = $args{'export_software_spec'};
   $self->{export_iso_image} = $args{'export_iso_image'};
   $self->{export_offline_bundle} = $args{'export_offline_bundle'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::ExportSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.export_spec');
   $self->set_binding_field('key' => 'export_software_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'export_iso_image', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'export_offline_bundle', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_export_software_spec ()
# Gets the value of 'export_software_spec' property.
#
# @retval export_software_spec - The current value of the field.
# Whether to export software specification document.
#
# boolean#
sub get_export_software_spec {
   my ($self, %args) = @_;
   return $self->{'export_software_spec'}; 	
}

## @method set_export_software_spec ()
# Sets the given value for 'export_software_spec' property.
# 
# @param export_software_spec  - New value for the field.
# Whether to export software specification document.
#
sub set_export_software_spec {
   my ($self, %args) = @_;
   $self->{'export_software_spec'} = $args{'export_software_spec'}; 
   return;	
}

## @method get_export_iso_image ()
# Gets the value of 'export_iso_image' property.
#
# @retval export_iso_image - The current value of the field.
# Whether to export ISO image.
#
# boolean#
sub get_export_iso_image {
   my ($self, %args) = @_;
   return $self->{'export_iso_image'}; 	
}

## @method set_export_iso_image ()
# Sets the given value for 'export_iso_image' property.
# 
# @param export_iso_image  - New value for the field.
# Whether to export ISO image.
#
sub set_export_iso_image {
   my ($self, %args) = @_;
   $self->{'export_iso_image'} = $args{'export_iso_image'}; 
   return;	
}

## @method get_export_offline_bundle ()
# Gets the value of 'export_offline_bundle' property.
#
# @retval export_offline_bundle - The current value of the field.
# Whether to export offline bundle.
#
# boolean#
sub get_export_offline_bundle {
   my ($self, %args) = @_;
   return $self->{'export_offline_bundle'}; 	
}

## @method set_export_offline_bundle ()
# Sets the given value for 'export_offline_bundle' property.
# 
# @param export_offline_bundle  - New value for the field.
# Whether to export offline bundle.
#
sub set_export_offline_bundle {
   my ($self, %args) = @_;
   $self->{'export_offline_bundle'} = $args{'export_offline_bundle'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::ApplySpec
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::ApplySpec``   *class*  contains
#     *fields*  that describe the specification to be used for applying the desired software
#     document to a cluster.

package Com::Vmware::Esx::Settings::Clusters::Software::ApplySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::ApplySpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{commit} = $args{'commit'};
   $self->{hosts} = $args{'hosts'};
   $self->{accept_eula} = $args{'accept_eula'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::ApplySpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.apply_spec');
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'accept_eula', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_commit ()
# Gets the value of 'commit' property.
#
# @retval commit - The current value of the field.
# The minimum commit identifier of the desired software document to be used during the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .
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
# The minimum commit identifier of the desired software document to be used during the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .
#
sub set_commit {
   my ($self, %args) = @_;
   $self->{'commit'} = $args{'commit'}; 
   return;	
}

## @method get_hosts ()
# Gets the value of 'hosts' property.
#
# @retval hosts - The current value of the field.
# The specific hosts within the cluster to be considered during the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .
#
# Optional#
sub get_hosts {
   my ($self, %args) = @_;
   return $self->{'hosts'}; 	
}

## @method set_hosts ()
# Sets the given value for 'hosts' property.
# 
# @param hosts  - New value for the field.
# The specific hosts within the cluster to be considered during the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .
#
sub set_hosts {
   my ($self, %args) = @_;
   $self->{'hosts'} = $args{'hosts'}; 
   return;	
}

## @method get_accept_eula ()
# Gets the value of 'accept_eula' property.
#
# @retval accept_eula - The current value of the field.
# Accept the VMware End User License Agreement (EULA) before starting the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* . The VMware
#     EULA is available for download at, https://www.vmware.com/download/eula.html
#
# Optional#
sub get_accept_eula {
   my ($self, %args) = @_;
   return $self->{'accept_eula'}; 	
}

## @method set_accept_eula ()
# Sets the given value for 'accept_eula' property.
# 
# @param accept_eula  - New value for the field.
# Accept the VMware End User License Agreement (EULA) before starting the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* . The VMware
#     EULA is available for download at, https://www.vmware.com/download/eula.html
#
sub set_accept_eula {
   my ($self, %args) = @_;
   $self->{'accept_eula'} = $args{'accept_eula'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus``   *class* 
#     contains  *fields*  that describe the status of an 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .

package Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus structure
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
   $self->{start_time} = $args{'start_time'};
   $self->{end_time} = $args{'end_time'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.apply_status');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::ApplyStatus::Status'));
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


## @class Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus::Status
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus::Status``  
#     *enumerated type*  contains the possible different status codes that can be returned
#     while trying to  :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`  the
#     desired software specification to hosts within the cluster.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus::Status::OK #
#The  *method*  completed successfully.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus::Status::SKIPPED #
#The  *method*  was skipped.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus::Status::TIMED_OUT #
#The  *method*  timed out.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus::Status::ERROR #
#The  *method*  encountered an unspecified error.

package Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus::Status;

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
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.apply_status.status',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::ApplyStatus::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult``   *class* 
#     contains  *fields*  that describe the result of an 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .

package Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.apply_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::ApplyStatus')));
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HostInfo')}))));
   $self->set_binding_field('key' => 'host_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::ApplyStatus')}))));
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
# Specifies the aggregated status of the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .
#
# Optional#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Specifies the aggregated status of the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .
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
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.commit`  should be
#     applied to.
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
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.commit`  should be
#     applied to.
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
#     by the  :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.commit` 
#     was applied to. Hosts on which the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method*  was
#     successful are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.successful_hosts` .
#     Hosts on which the apply  *method*  failed are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.failed_hosts` .
#     Hosts which were skipped by the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method*  are specified
#     by  :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.skipped_hosts`
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
#     by the  :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.commit` 
#     was applied to. Hosts on which the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method*  was
#     successful are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.successful_hosts` .
#     Hosts on which the apply  *method*  failed are specified by 
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.failed_hosts` .
#     Hosts which were skipped by the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method*  are specified
#     by  :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.skipped_hosts`
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
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.commit`  has been
#     successfully applied to.
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
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.commit`  has been
#     successfully applied to.
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
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.commit`  failed to
#     be applied to.
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
#     :attr:`Com::Vmware::Esx::Settings::Clusters::Software::ApplyResult.commit`  failed to
#     be applied to.
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
# Hosts in this cluster that were skipped by the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .
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
# Hosts in this cluster that were skipped by the 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .
#
sub set_skipped_hosts {
   my ($self, %args) = @_;
   $self->{'skipped_hosts'} = $args{'skipped_hosts'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::CheckSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::CheckSpec``   *class*  contains
#     *fields*  that describe the specification to be used for running checks on the cluster
#     before the  :func:`Com::Vmware::Esx::Settings::Clusters::Software.apply`   *method* .

package Com::Vmware::Esx::Settings::Clusters::Software::CheckSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::CheckSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{commit} = $args{'commit'};
   $self->{hosts} = $args{'hosts'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::CheckSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.check_spec');
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_commit ()
# Gets the value of 'commit' property.
#
# @retval commit - The current value of the field.
# The minimum commit identifier of the desired software document to be used during the
#     check  *method* .
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
# The minimum commit identifier of the desired software document to be used during the
#     check  *method* .
#
sub set_commit {
   my ($self, %args) = @_;
   $self->{'commit'} = $args{'commit'}; 
   return;	
}

## @method get_hosts ()
# Gets the value of 'hosts' property.
#
# @retval hosts - The current value of the field.
# The specific hosts for which checks need to be performed
#
# Optional#
sub get_hosts {
   my ($self, %args) = @_;
   return $self->{'hosts'}; 	
}

## @method set_hosts ()
# Sets the given value for 'hosts' property.
# 
# @param hosts  - New value for the field.
# The specific hosts for which checks need to be performed
#
sub set_hosts {
   my ($self, %args) = @_;
   $self->{'hosts'} = $args{'hosts'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::CheckInfo
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::CheckInfo``   *class*  contains
#      *fields*  that describe a particular check.

package Com::Vmware::Esx::Settings::Clusters::Software::CheckInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::CheckInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{check} = $args{'check'};
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::CheckInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.check_info');
   $self->set_binding_field('key' => 'check', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_check ()
# Gets the value of 'check' property.
#
# @retval check - The current value of the field.
# The check identifier.
#
# String#
sub get_check {
   my ($self, %args) = @_;
   return $self->{'check'}; 	
}

## @method set_check ()
# Sets the given value for 'check' property.
# 
# @param check  - New value for the field.
# The check identifier.
#
sub set_check {
   my ($self, %args) = @_;
   $self->{'check'} = $args{'check'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The check name.
#
# LocalizableMessage#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The check name.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Human-readable check description.
#
# LocalizableMessage#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Human-readable check description.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::CheckStatus
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::CheckStatus``   *class* 
#     contains  *fields*  that describe a check result.

package Com::Vmware::Esx::Settings::Clusters::Software::CheckStatus;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::CheckStatus structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{check} = $args{'check'};
   $self->{status} = $args{'status'};
   $self->{issues} = $args{'issues'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::CheckStatus');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.check_status');
   $self->set_binding_field('key' => 'check', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::CheckInfo'));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::Status'));
   $self->set_binding_field('key' => 'issues', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_check ()
# Gets the value of 'check' property.
#
# @retval check - The current value of the field.
# Information about this check.
#
# CheckInfo#
sub get_check {
   my ($self, %args) = @_;
   return $self->{'check'}; 	
}

## @method set_check ()
# Sets the given value for 'check' property.
# 
# @param check  - New value for the field.
# Information about this check.
#
sub set_check {
   my ($self, %args) = @_;
   $self->{'check'} = $args{'check'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# The status of this check.
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
# The status of this check.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_issues ()
# Gets the value of 'issues' property.
#
# @retval issues - The current value of the field.
# The issues encountered while running this check.
#
# List#
sub get_issues {
   my ($self, %args) = @_;
   return $self->{'issues'}; 	
}

## @method set_issues ()
# Sets the given value for 'issues' property.
# 
# @param issues  - New value for the field.
# The issues encountered while running this check.
#
sub set_issues {
   my ($self, %args) = @_;
   $self->{'issues'} = $args{'issues'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult``   *class* 
#     contains  *fields*  that describe aggregated status of all checks performed on a
#     specific entity.

package Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'CLUSTER' => ['cluster'],
               'HOST' => ['host'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{cluster} = $args{'cluster'};
   $self->{host} = $args{'host'};
   $self->{status} = $args{'status'};
   $self->{check_statuses} = $args{'check_statuses'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.entity_check_result');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::EntityCheckResult::EntityType'));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::Status'));
   $self->set_binding_field('key' => 'check_statuses', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::CheckStatus')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The entity type for which these checks are being run.
#
# EntityType#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The entity type for which these checks are being run.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# If the entity type is CLUSTER then the cluster identifier for which the checks have
#     been run.
#
# optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# If the entity type is CLUSTER then the cluster identifier for which the checks have
#     been run.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# If the entity type is HOST then the host identifier for which the checks have been
#     run.
#
# optional#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# If the entity type is HOST then the host identifier for which the checks have been
#     run.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Aggregated status from all checks performed on this entity.
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
# Aggregated status from all checks performed on this entity.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_check_statuses ()
# Gets the value of 'check_statuses' property.
#
# @retval check_statuses - The current value of the field.
# List of  ``Com::Vmware::Esx::Settings::Clusters::Software::CheckStatus``  for all
#     checks performed.
#
# List#
sub get_check_statuses {
   my ($self, %args) = @_;
   return $self->{'check_statuses'}; 	
}

## @method set_check_statuses ()
# Sets the given value for 'check_statuses' property.
# 
# @param check_statuses  - New value for the field.
# List of  ``Com::Vmware::Esx::Settings::Clusters::Software::CheckStatus``  for all
#     checks performed.
#
sub set_check_statuses {
   my ($self, %args) = @_;
   $self->{'check_statuses'} = $args{'check_statuses'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult::EntityType
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult::EntityType``
#       *enumerated type*  contains the entitites on which checks can be performed.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult::EntityType::CLUSTER #
#Entity type Cluster
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult::EntityType::HOST #
#Entity type Host

package Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult::EntityType;

use constant {
    CLUSTER =>  'CLUSTER',
    HOST =>  'HOST',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult::EntityType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.entity_check_result.entity_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult::EntityType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::CheckResult
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::CheckResult``   *class* 
#     contains  *fields*  that describe aggregated status of all checks performed.

package Com::Vmware::Esx::Settings::Clusters::Software::CheckResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::CheckResult structure
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
   $self->{start_time} = $args{'start_time'};
   $self->{end_time} = $args{'end_time'};
   $self->{commit} = $args{'commit'};
   $self->{host_info} = $args{'host_info'};
   $self->{entity_results} = $args{'entity_results'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::CheckResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.check_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::Status'));
   $self->set_binding_field('key' => 'start_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'end_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'commit', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HostInfo')}))));
   $self->set_binding_field('key' => 'entity_results', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters', 'type_name' => 'Software::EntityCheckResult')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Aggregated status from all checks performed.
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
# Aggregated status from all checks performed.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_start_time ()
# Gets the value of 'start_time' property.
#
# @retval start_time - The current value of the field.
# Time when the operation started.
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
# Time when the operation started.
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
# Time when the operation completed.
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
# Time when the operation completed.
#
sub set_end_time {
   my ($self, %args) = @_;
   $self->{'end_time'} = $args{'end_time'}; 
   return;	
}

## @method get_commit ()
# Gets the value of 'commit' property.
#
# @retval commit - The current value of the field.
# The identifier of the commit on which checks have been run.
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
# The identifier of the commit on which checks have been run.
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
# Information about the hosts in this cluster for which checks have been requested to be
#     run.
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
# Information about the hosts in this cluster for which checks have been requested to be
#     run.
#
sub set_host_info {
   my ($self, %args) = @_;
   $self->{'host_info'} = $args{'host_info'}; 
   return;	
}

## @method get_entity_results ()
# Gets the value of 'entity_results' property.
#
# @retval entity_results - The current value of the field.
# List of  ``Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult``  for
#     all entities for which checks have been run.
#
# List#
sub get_entity_results {
   my ($self, %args) = @_;
   return $self->{'entity_results'}; 	
}

## @method set_entity_results ()
# Sets the given value for 'entity_results' property.
# 
# @param entity_results  - New value for the field.
# List of  ``Com::Vmware::Esx::Settings::Clusters::Software::EntityCheckResult``  for
#     all entities for which checks have been run.
#
sub set_entity_results {
   my ($self, %args) = @_;
   $self->{'entity_results'} = $args{'entity_results'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software service
#########################################################################################
