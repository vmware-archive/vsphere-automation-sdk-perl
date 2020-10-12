########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Components.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Esx::Settings;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components`` 
#     *interface*  provides  *methods*  to manage component specification in a software
#     draft.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for component resource

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components;

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
use Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::ComponentsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.drafts.software.components';


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
# Returns the component version for the given component in the software draft.
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
# @param component [REQUIRED] Identifier of the component.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.component).
# . The value must be str.
#
# @retval 
# Information about component version.
# If  *null*  then version will be chosen based on the constraints in the system.
# The return type will be Com::Vmware::Esx::Settings::ComponentInfo or None
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  or no draft associated with 
#     ``draft``  or no component associated with  ``component``  in the system.
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
   my $component = $args {component};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method set ()
# Set the component version for a given component in the software draft. This will overwrite
# any existing version for the given component.
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
# @param component [REQUIRED] Identifier of the component.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.component).
# . The value must be str.
#
# @param version [OPTIONAL] Component version.
# This  *field*  is currently required. In the future,if this  *field*  is  *null*  then
#     version is chosen based on the constraints in the system.
# . The value must be String or None.
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
sub set {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $draft = $args {draft};
   my $component = $args {component};
   my $version = $args {version};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method delete ()
# Deletes the given component from the software draft.
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
# @param component [REQUIRED] Identifier of the component.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.component).
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
# if the caller is not authenticated.
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
   my $component = $args {component};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method update ()
# Updates the list of components in a given draft. This allows set and/or delete of multiple
# components in a batch operation.
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
# @param spec [REQUIRED] Update specification containing list of components to add and/or delete.
# . The value must be
# Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components::UpdateSpec.
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
# If the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires 
#     ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.lifecycleSoftwareSpecification.Write`` . </li>
# </ul>
#
sub update {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $draft = $args {draft};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method list ()
# Returns the components that comprise the software draft.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read, VcIntegrity.lifecycleSettings.Read.
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
# Map of component version information keyed by the component identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.component).
# The return type will be Dictionary of str and Com::Vmware::Esx::Settings::ComponentInfo
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
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components::UpdateSpec
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components::UpdateSpec``
#     *class*  contains  *fields*  that are specified to update list of components in the
#     draft.

package Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{components_to_set} = $args{'components_to_set'};
   $self->{components_to_delete} = $args{'components_to_delete'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.drafts.software.components.update_spec');
   $self->set_binding_field('key' => 'components_to_set', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType())})))));
   $self->set_binding_field('key' => 'components_to_delete', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_components_to_set ()
# Gets the value of 'components_to_set' property.
#
# @retval components_to_set - The current value of the field.
# List of components to be updated. If the component already exists in the draft, the
#     version is updated, else it is added. If a component is provided without version, then
#     its version will be chosen based on constraints in the system.
#
# Optional#
sub get_components_to_set {
   my ($self, %args) = @_;
   return $self->{'components_to_set'}; 	
}

## @method set_components_to_set ()
# Sets the given value for 'components_to_set' property.
# 
# @param components_to_set  - New value for the field.
# List of components to be updated. If the component already exists in the draft, the
#     version is updated, else it is added. If a component is provided without version, then
#     its version will be chosen based on constraints in the system.
#
sub set_components_to_set {
   my ($self, %args) = @_;
   $self->{'components_to_set'} = $args{'components_to_set'}; 
   return;	
}

## @method get_components_to_delete ()
# Gets the value of 'components_to_delete' property.
#
# @retval components_to_delete - The current value of the field.
# List of components to be removed.
#
# Optional#
sub get_components_to_delete {
   my ($self, %args) = @_;
   return $self->{'components_to_delete'}; 	
}

## @method set_components_to_delete ()
# Sets the given value for 'components_to_delete' property.
# 
# @param components_to_delete  - New value for the field.
# List of components to be removed.
#
sub set_components_to_delete {
   my ($self, %args) = @_;
   $self->{'components_to_delete'} = $args{'components_to_delete'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Drafts::Software::Components service
#########################################################################################
