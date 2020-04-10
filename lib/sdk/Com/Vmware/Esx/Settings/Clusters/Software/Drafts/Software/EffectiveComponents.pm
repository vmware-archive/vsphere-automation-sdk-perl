########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file EffectiveComponents.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::EffectiveComponents
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::EffectiveComponents``
#       *interface*  provides  *methods*  to manage effective list of components.
#

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::EffectiveComponents;

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
use Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::EffectiveComponentsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.drafts.software.effective_components';


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

## @method list ()
# Returns the components that comprise the desired software state of the cluster.
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
# Map of effective components keyed by their identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.component).
# The return type will be Dictionary of str and
# Com::Vmware::Esx::Settings::EffectiveComponentInfo
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
sub list {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $draft = $args {draft};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::EffectiveComponents service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::EffectiveComponents service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::EffectiveComponents service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::EffectiveComponents service
#########################################################################################
