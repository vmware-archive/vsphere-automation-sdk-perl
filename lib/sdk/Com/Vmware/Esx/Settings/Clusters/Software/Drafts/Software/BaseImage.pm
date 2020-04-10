########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file BaseImage.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Esx::Settings;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::BaseImage
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::BaseImage``  
#     *interface*  provides  *methods*  to manage the base-image specification in a software
#     draft.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for base-image resource

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::BaseImage;

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
use Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::BaseImageStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.drafts.software.base_image';


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
# Returns the base-image specification in a software draft.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param draft [REQUIRED] Identifier of the working copy document.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# . The value must be str.
#
# @retval 
# Base-image specification.
# The return type will be Com::Vmware::Esx::Settings::BaseImageInfo
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
# if the caller is not authenticated.
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

## @method set ()
# Sets a new desired base-image specification in the software draft. It will overwrite the
# existing desired base-image specification if one already exists.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Write.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param draft [REQUIRED] Identifier of the working copy document.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.draft).
# . The value must be str.
#
# @param spec [REQUIRED] Base-image specification.
# . The value must be Com::Vmware::Esx::Settings::BaseImageSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
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
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires 
#     ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# </ul>
#
sub set {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $draft = $args {draft};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::BaseImage service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::BaseImage service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::BaseImage service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::BaseImage service
#########################################################################################
