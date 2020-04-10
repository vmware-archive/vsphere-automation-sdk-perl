########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Drafts.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Esx::Settings;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts``   *interface* 
#     provides  *methods*  to manage working copy of software documents.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for draft resource

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts;

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
use Com::Vmware::Esx::Settings::Clusters::Software::DraftsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.drafts';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'commit_task'} = 'commit$task';
$_VAPI_OPERATION_IDS->{'validate_task'} = 'validate$task';
$_VAPI_OPERATION_IDS->{'scan_task'} = 'scan$task';

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

## @method commit_task ()
# Commits the specified draft as the desired state document. The result of this operation
# can be queried by calling the cis/tasks/{task-id} where the task-id is the response of
# this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param draft [REQUIRED] Identifier of the draft.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# . The value must be str.
#
# @param spec [REQUIRED] The spec to be used to create the commit.
# . The value must be Com::Vmware::Esx::Settings::Clusters::Software::Drafts::CommitSpec.
#
# @retval 
# Identifier of the commit.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.commit).
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  or no draft associated with 
#     ``draft``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# If there is another operation in progress.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If validation of the software document fails. The value of the data  *field*  of 
#     class Com::Vmware::Vapi::Std::Errors::Error  will be a  *class*  that contains all the
#     *fields*  defined in  class
#     Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ValidateResult .
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub commit_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $draft = $args {draft};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'commit$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'commit$task',
                         method_args => \%args);
}


## @method create ()
# Creates a new software draft from the desired document. It will be deleted, when the draft
# is committed successfully. If a desired document is missing, then this  *method*  will
# create an empty draft.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Write.
#
# @param cluster [REQUIRED] Identifier of the cluster
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# Identifier of the working copy of the document.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# If there is already a draft created by this user.
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
#     ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# </ul>
#
sub create {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method delete ()
# Deletes the software draft.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Write.
#
# @param cluster [REQUIRED] Identifier of the cluster
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param draft [REQUIRED] Identifier of the working copy of the document.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  or no draft associated with 
#     ``draft``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires 
#     ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# </ul>
#
sub delete {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $draft = $args {draft};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method get ()
# Returns the information about given software draft.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param draft [REQUIRED] Identifier of the software draft.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# . The value must be str.
#
# @retval 
# Information about the Software Draft.
# The return type will be Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  or no draft associated with 
#     ``draft``  in the system.
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
   my $draft = $args {draft};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns information about the software drafts for the specified cluster that match the 
# class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::FilterSpec .
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param filter [OPTIONAL] Filter to be applied while returning drafts.
# If  *null* , all drafts will be returned.
# . The value must be Com::Vmware::Esx::Settings::Clusters::Software::Drafts::FilterSpec or
# None.
#
# @retval 
# Map of software drafts keyed by their identifiers.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# The return type will be Dictionary of str and
# Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Summary
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
sub list {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method validate_task ()
# Validates the software draft. The result of this operation can be queried by calling the
# cis/tasks/{task-id} where the task-id is the response of this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param draft [REQUIRED] Identifier of the software draft.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# . The value must be str.
#
# @retval 
# Result of validation.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  or no draft associated with 
#     ``draft``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub validate_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $draft = $args {draft};

   $self->validate_args (method_name => 'validate$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'validate$task',
                         method_args => \%args);
}


## @method scan_task ()
# Scans all the hosts in the cluster against the software draft. The result of this
# operation can be queried by calling the cis/tasks/{task-id} where the task-id is the
# response of this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param draft [REQUIRED] Identifier of the working copy of the document.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# . The value must be str.
#
# @retval 
# Result of scan operation.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  or no draft associated with 
#     ``draft``  in the system.
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
   my $draft = $args {draft};

   $self->validate_args (method_name => 'scan$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'scan$task',
                         method_args => \%args);
}


## @method import_software_spec ()
# Imports the desired software specification as a new draft. If a desired document is
# missing, then this  *method*  will create an empty draft except when the source type is of
# either 
# :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType.LATEST_RECOMMENDATION`
# or 
# :attr:`Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType.CURRENT_SERIES_RECOMMENDATION`
# , then  class Com::Vmware::Vapi::Std::Errors::NotFound  error is reported. In addition,
# the exisiting draft will be overwritten when the source type is of either 
# ``LATEST_RECOMMENDATION``  or  ``CURRENT_SERIES_RECOMMENDATION`` .
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Write.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param spec [REQUIRED] Specification to import desired software specification.
# . The value must be Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ImportSpec.
#
# @retval 
# Identifier of the software draft.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or if the source
#     type of import specification is of either  ``LATEST_RECOMMENDATION``  or 
#     ``CURRENT_SERIES_RECOMMENDATION`` , and a recommendation does not exist for the
#     cluster. It was either never generated or deleted due to changes in cluster state such
#     as a new desired image spec being committed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires 
#     ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# </ul>
#
sub import_software_spec {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'import_software_spec',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'import_software_spec',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::StatusType
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::StatusType``  
#     *enumerated type*  defines possible values of status of a software draft.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Drafts::StatusType::VALID #
#Software draft is valid.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Drafts::StatusType::INVALID #
#Software draft is invalid.

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::StatusType;

use constant {
    VALID =>  'VALID',
    INVALID =>  'INVALID',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::StatusType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.drafts.status_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::StatusType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType``  
#     *enumerated type*  defines possible values of sources to import software
#     specification.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType::PULL #
#Content is pulled from the URL location. The URL scheme of the value in {@link
# #pullLocation) can be http, https or file.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType::PUSH #
#Content was previously uploaded using the file upload enpoint present on vCenter
# appliance. This endpoint is present at https://VCENTERFQDN:9087/vum-fileupload URL.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType::JSON_STRING #
#The string representing the content of the software specfication.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType::LATEST_RECOMMENDATION #
#Content is from recommended image specification based on latest base image version.
# Recommendations can be generated using {@link:
# com.vmware.esx.settings.clusters.software.Recommendations#generate}.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType::CURRENT_SERIES_RECOMMENDATION #
#Content is from recommended image specification based on latest base image patch or update
# of the current series. For example, a cluster&apos;s current desired base image is 7.0.
# Recommendation engine will look into any recommendable image specification with 7.0 series
# base images available at depot manager and try to recommend the highest version within 7.0
# series if possible. Let&apos;s say in this example, depot manager has 7.0 patch a and 7.0
# update 1 base images. Recommendation engine would first validate all possible images based
# on 7.0 update 1. If it finds a valid one, it will store the recommended content with that
# series. This enum value will point to that stored recommended image content.
# Recommendations can be generated using {@link:
# com.vmware.esx.settings.clusters.software.Recommendations#generate}.

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType;

use constant {
    PULL =>  'PULL',
    PUSH =>  'PUSH',
    JSON_STRING =>  'JSON_STRING',
    LATEST_RECOMMENDATION =>  'LATEST_RECOMMENDATION',
    CURRENT_SERIES_RECOMMENDATION =>  'CURRENT_SERIES_RECOMMENDATION',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.drafts.source_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::SourceType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ValidateResult
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ValidateResult``  
#     *class*  contains  *fields*  to describe result of validation of desired software
#     specification.

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ValidateResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ValidateResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ValidateResult');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.drafts.validate_result');
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'Notifications'));
   bless $self, $class;
   return $self;
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications associated with the validation.
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
# Notifications associated with the validation.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Metadata
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Metadata``   *class* 
#     defines the metadata information about software draft.

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Metadata;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Metadata structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{owner} = $args{'owner'};
   $self->{status} = $args{'status'};
   $self->{creation_time} = $args{'creation_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Metadata');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.drafts.metadata');
   $self->set_binding_field('key' => 'owner', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software', 'type_name' => 'Drafts::StatusType'));
   $self->set_binding_field('key' => 'creation_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   bless $self, $class;
   return $self;
}

## @method get_owner ()
# Gets the value of 'owner' property.
#
# @retval owner - The current value of the field.
# Owner of the software draft.
#
# String#
sub get_owner {
   my ($self, %args) = @_;
   return $self->{'owner'}; 	
}

## @method set_owner ()
# Sets the given value for 'owner' property.
# 
# @param owner  - New value for the field.
# Owner of the software draft.
#
sub set_owner {
   my ($self, %args) = @_;
   $self->{'owner'} = $args{'owner'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# Status of the software draft.
#
# StatusType#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# Status of the software draft.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_creation_time ()
# Gets the value of 'creation_time' property.
#
# @retval creation_time - The current value of the field.
# Creation time of the software draft.
#
# DateTime#
sub get_creation_time {
   my ($self, %args) = @_;
   return $self->{'creation_time'}; 	
}

## @method set_creation_time ()
# Sets the given value for 'creation_time' property.
# 
# @param creation_time  - New value for the field.
# Creation time of the software draft.
#
sub set_creation_time {
   my ($self, %args) = @_;
   $self->{'creation_time'} = $args{'creation_time'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Info``   *class* 
#     defines the information about software draft.

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{metadata} = $args{'metadata'};
   $self->{software} = $args{'software'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.drafts.info');
   $self->set_binding_field('key' => 'metadata', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software', 'type_name' => 'Drafts::Metadata'));
   $self->set_binding_field('key' => 'software', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'SoftwareInfo'));
   bless $self, $class;
   return $self;
}

## @method get_metadata ()
# Gets the value of 'metadata' property.
#
# @retval metadata - The current value of the field.
# Metadata about the software draft.
#
# Metadata#
sub get_metadata {
   my ($self, %args) = @_;
   return $self->{'metadata'}; 	
}

## @method set_metadata ()
# Sets the given value for 'metadata' property.
# 
# @param metadata  - New value for the field.
# Metadata about the software draft.
#
sub set_metadata {
   my ($self, %args) = @_;
   $self->{'metadata'} = $args{'metadata'}; 
   return;	
}

## @method get_software ()
# Gets the value of 'software' property.
#
# @retval software - The current value of the field.
# Software specification associated with the draft.
#
# SoftwareInfo#
sub get_software {
   my ($self, %args) = @_;
   return $self->{'software'}; 	
}

## @method set_software ()
# Sets the given value for 'software' property.
# 
# @param software  - New value for the field.
# Software specification associated with the draft.
#
sub set_software {
   my ($self, %args) = @_;
   $self->{'software'} = $args{'software'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Summary
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Summary``   *class* 
#     defines the summary information about software draft.

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{metadata} = $args{'metadata'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Summary');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.drafts.summary');
   $self->set_binding_field('key' => 'metadata', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software', 'type_name' => 'Drafts::Metadata'));
   bless $self, $class;
   return $self;
}

## @method get_metadata ()
# Gets the value of 'metadata' property.
#
# @retval metadata - The current value of the field.
# Metadata about the software draft.
#
# Metadata#
sub get_metadata {
   my ($self, %args) = @_;
   return $self->{'metadata'}; 	
}

## @method set_metadata ()
# Sets the given value for 'metadata' property.
# 
# @param metadata  - New value for the field.
# Metadata about the software draft.
#
sub set_metadata {
   my ($self, %args) = @_;
   $self->{'metadata'} = $args{'metadata'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::FilterSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::FilterSpec``   *class* 
#     contains  *fields*  used to filter the results when listing software drafts. See 
#     :func:`Com::Vmware::Esx::Settings::Clusters::Software::Drafts.list` .

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{owners} = $args{'owners'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.drafts.filter_spec');
   $self->set_binding_field('key' => 'owners', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_owners ()
# Gets the value of 'owners' property.
#
# @retval owners - The current value of the field.
# Owners of the drafts.
#
# Optional#
sub get_owners {
   my ($self, %args) = @_;
   return $self->{'owners'}; 	
}

## @method set_owners ()
# Sets the given value for 'owners' property.
# 
# @param owners  - New value for the field.
# Owners of the drafts.
#
sub set_owners {
   my ($self, %args) = @_;
   $self->{'owners'} = $args{'owners'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::CommitSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::CommitSpec``   *class* 
#     contains  *fields*  that are used to create a new commit.

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::CommitSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::CommitSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::CommitSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.drafts.commit_spec');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Message to include with the commit.
#
# Optional#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# Message to include with the commit.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ImportSpec
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ImportSpec``   *class* 
#     defines the information used to import the desired software specification.

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ImportSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ImportSpec structure
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
         'discriminant_name' => 'source_type',
         'case_map' => {
               'PULL' => ['location'],
               'PUSH' => ['file_id'],
               'JSON_STRING' => ['software_spec'],
               'LATEST_RECOMMENDATION' => [],
               'CURRENT_SERIES_RECOMMENDATION' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{source_type} = $args{'source_type'};
   $self->{location} = $args{'location'};
   $self->{file_id} = $args{'file_id'};
   $self->{software_spec} = $args{'software_spec'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::ImportSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.drafts.import_spec');
   $self->set_binding_field('key' => 'source_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software', 'type_name' => 'Drafts::SourceType'));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'file_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'software_spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_source_type ()
# Gets the value of 'source_type' property.
#
# @retval source_type - The current value of the field.
# Type of the source to import the desired software specification
#
# SourceType#
sub get_source_type {
   my ($self, %args) = @_;
   return $self->{'source_type'}; 	
}

## @method set_source_type ()
# Sets the given value for 'source_type' property.
# 
# @param source_type  - New value for the field.
# Type of the source to import the desired software specification
#
sub set_source_type {
   my ($self, %args) = @_;
   $self->{'source_type'} = $args{'source_type'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Location of the software specification file to be imported.
#
# optional#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Location of the software specification file to be imported.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_file_id ()
# Gets the value of 'file_id' property.
#
# @retval file_id - The current value of the field.
# File identifier returned by the file upload endpoint after file is uploaded.
#
# optional#
sub get_file_id {
   my ($self, %args) = @_;
   return $self->{'file_id'}; 	
}

## @method set_file_id ()
# Sets the given value for 'file_id' property.
# 
# @param file_id  - New value for the field.
# File identifier returned by the file upload endpoint after file is uploaded.
#
sub set_file_id {
   my ($self, %args) = @_;
   $self->{'file_id'} = $args{'file_id'}; 
   return;	
}

## @method get_software_spec ()
# Gets the value of 'software_spec' property.
#
# @retval software_spec - The current value of the field.
# The JSON string representing the desired software specification.
#
# optional#
sub get_software_spec {
   my ($self, %args) = @_;
   return $self->{'software_spec'}; 	
}

## @method set_software_spec ()
# Sets the given value for 'software_spec' property.
# 
# @param software_spec  - New value for the field.
# The JSON string representing the desired software specification.
#
sub set_software_spec {
   my ($self, %args) = @_;
   $self->{'software_spec'} = $args{'software_spec'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts service
#########################################################################################
