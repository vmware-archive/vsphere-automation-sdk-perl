########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Recommendations.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Esx::Settings;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Recommendations
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Recommendations``   *interface*
#     provides  *methods*  to manage the generation and retrieval of recommended image
#     specs.
#

package Com::Vmware::Esx::Settings::Clusters::Software::Recommendations;

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
use Com::Vmware::Esx::Settings::Clusters::Software::RecommendationsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.recommendations';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'generate_task'} = 'generate$task';

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

## @method generate_task ()
# Generates recommended software image spec(s) based on current desired software spec. The
# result of this operation can be queried by calling the cis/tasks/{task-id} where the
# task-id is the response of this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::ConcurrentChange 
# If a new desired image is committed in parallel via a different client while
#     recommendation is being generated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
sub generate_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'generate$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'generate$task',
                         method_args => \%args);
}


## @method get ()
# Returns Information about the most recent recommendation generation result.
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
# Information about the most recent recommendation generation result.
# The return type will be
# Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or recommendation
#     is non-existing for the cluster due to either it is never generated or deleted due to
#     changes in cluster state such as a new desired image spec being committed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
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

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Recommendations service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Recommendations service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Recommendations service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::ExplanationDetails
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::ExplanationDetails``
#     *class*  contains  *fields*  to describe the result of validation of desired software
#     specification.

package Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::ExplanationDetails;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::ExplanationDetails structure
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
   $self->{display_version} = $args{'display_version'};
   $self->{explanation} = $args{'explanation'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::ExplanationDetails');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.recommendations.explanation_details');
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'explanation', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Display name of an excluded image entity (base image, add-on etc.).
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
# Display name of an excluded image entity (base image, add-on etc.).
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_display_version ()
# Gets the value of 'display_version' property.
#
# @retval display_version - The current value of the field.
# Display version of an excluded image entity (base image, add-on etc.).
#
# String#
sub get_display_version {
   my ($self, %args) = @_;
   return $self->{'display_version'}; 	
}

## @method set_display_version ()
# Sets the given value for 'display_version' property.
# 
# @param display_version  - New value for the field.
# Display version of an excluded image entity (base image, add-on etc.).
#
sub set_display_version {
   my ($self, %args) = @_;
   $self->{'display_version'} = $args{'display_version'}; 
   return;	
}

## @method get_explanation ()
# Gets the value of 'explanation' property.
#
# @retval explanation - The current value of the field.
# List of explanations on why the image entity is excluded.
#
# List#
sub get_explanation {
   my ($self, %args) = @_;
   return $self->{'explanation'}; 	
}

## @method set_explanation ()
# Sets the given value for 'explanation' property.
# 
# @param explanation  - New value for the field.
# List of explanations on why the image entity is excluded.
#
sub set_explanation {
   my ($self, %args) = @_;
   $self->{'explanation'} = $args{'explanation'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::Info``  
#     *class*  defines the information about the most recent recommendation generation
#     result.

package Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{latest_recommendation} = $args{'latest_recommendation'};
   $self->{current_series_recommendation} = $args{'current_series_recommendation'};
   $self->{base_image_explanation_details} = $args{'base_image_explanation_details'};
   $self->{check_time} = $args{'check_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Recommendations::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.recommendations.info');
   $self->set_binding_field('key' => 'latest_recommendation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'SoftwareInfo')));
   $self->set_binding_field('key' => 'current_series_recommendation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'SoftwareInfo')));
   $self->set_binding_field('key' => 'base_image_explanation_details', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software', 'type_name' => 'Recommendations::ExplanationDetails')));
   $self->set_binding_field('key' => 'check_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   bless $self, $class;
   return $self;
}

## @method get_latest_recommendation ()
# Gets the value of 'latest_recommendation' property.
#
# @retval latest_recommendation - The current value of the field.
# Recommended image specification based on latest base image version.
#
# Optional#
sub get_latest_recommendation {
   my ($self, %args) = @_;
   return $self->{'latest_recommendation'}; 	
}

## @method set_latest_recommendation ()
# Sets the given value for 'latest_recommendation' property.
# 
# @param latest_recommendation  - New value for the field.
# Recommended image specification based on latest base image version.
#
sub set_latest_recommendation {
   my ($self, %args) = @_;
   $self->{'latest_recommendation'} = $args{'latest_recommendation'}; 
   return;	
}

## @method get_current_series_recommendation ()
# Gets the value of 'current_series_recommendation' property.
#
# @retval current_series_recommendation - The current value of the field.
# Recommended image specification based on latest base image patch or update of the
#     current series.
#
# Optional#
sub get_current_series_recommendation {
   my ($self, %args) = @_;
   return $self->{'current_series_recommendation'}; 	
}

## @method set_current_series_recommendation ()
# Sets the given value for 'current_series_recommendation' property.
# 
# @param current_series_recommendation  - New value for the field.
# Recommended image specification based on latest base image patch or update of the
#     current series.
#
sub set_current_series_recommendation {
   my ($self, %args) = @_;
   $self->{'current_series_recommendation'} = $args{'current_series_recommendation'}; 
   return;	
}

## @method get_base_image_explanation_details ()
# Gets the value of 'base_image_explanation_details' property.
#
# @retval base_image_explanation_details - The current value of the field.
# Details about why some base images are excluded in latest and current series
#     recommendations. This is not applicable for specified base image recommendations.
#
# List#
sub get_base_image_explanation_details {
   my ($self, %args) = @_;
   return $self->{'base_image_explanation_details'}; 	
}

## @method set_base_image_explanation_details ()
# Sets the given value for 'base_image_explanation_details' property.
# 
# @param base_image_explanation_details  - New value for the field.
# Details about why some base images are excluded in latest and current series
#     recommendations. This is not applicable for specified base image recommendations.
#
sub set_base_image_explanation_details {
   my ($self, %args) = @_;
   $self->{'base_image_explanation_details'} = $args{'base_image_explanation_details'}; 
   return;	
}

## @method get_check_time ()
# Gets the value of 'check_time' property.
#
# @retval check_time - The current value of the field.
# The most recent timestamp when check for recommended image is launched.
#
# Optional#
sub get_check_time {
   my ($self, %args) = @_;
   return $self->{'check_time'}; 	
}

## @method set_check_time ()
# Sets the given value for 'check_time' property.
# 
# @param check_time  - New value for the field.
# The most recent timestamp when check for recommended image is launched.
#
sub set_check_time {
   my ($self, %args) = @_;
   $self->{'check_time'} = $args{'check_time'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Recommendations service
#########################################################################################
