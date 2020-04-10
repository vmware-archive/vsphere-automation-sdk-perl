########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Solutions.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Esx::Settings;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Solutions
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Solutions``   *interface* 
#     provides  *methods*  to manage desired software solution specifications for an ESX
#     cluster.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for solution resource

package Com::Vmware::Esx::Settings::Clusters::Software::Solutions;

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
use Com::Vmware::Esx::Settings::Clusters::Software::SolutionsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.solutions';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'set_task'} = 'set$task';
$_VAPI_OPERATION_IDS->{'delete_task'} = 'delete$task';

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
# Returns components registered for the given solution in the desired software
# specification.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param solution [REQUIRED] Identifier of the solution.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.solution).
# . The value must be str.
#
# @retval 
# Specification of components registered by the solution.
# The return type will be Com::Vmware::Esx::Settings::SolutionInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If invalid component name is provided.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or or no solution
#     associated with  ``solution``  in the system.
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
   my $solution = $args {solution};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns all solutions in the desired software specification.
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
# Map of solutions where key is solution identifier and value is a list of components
#     registered by that solution.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.solution).
# The return type will be Dictionary of str and Com::Vmware::Esx::Settings::SolutionInfo
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

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method set_task ()
# Sets the components registered for the given solution in the desired software
# specification. The task will set only one solution specification at a time. Solution
# constraints would be validated with the current desired software specification before it
# is committed as new desired spec. The result of this operation can be queried by calling
# the cis/tasks/{task-id} where the task-id is the response of this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param solution [REQUIRED] Identifier of the solution.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.solution).
# . The value must be str.
#
# @param spec [REQUIRED] Registered solution specification.
# . The value must be Com::Vmware::Esx::Settings::SolutionSpec.
#
# @retval 
# ID of the newly created commit.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.commit).
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if validation of the software document fails. The value of the data  *field*  of 
#     class Com::Vmware::Vapi::Std::Errors::Error  will be a  *class*  that contains all the
#      *fields*  defined in null.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  or no solution associated with 
#     ``solution``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub set_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $solution = $args {solution};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'set$task',
                         method_args => \%args);
}


## @method delete_task ()
# Deletes the given solution from the desired software specification. The deletion will be
# validated along with the entire software specification before it is committed as new
# desired spec. The result of this operation can be queried by calling the
# cis/tasks/{task-id} where the task-id is the response of this operation.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param solution [REQUIRED] Identifier of the solution.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.solution).
# . The value must be str.
#
# @retval 
# ID of the newly created commit.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.commit).
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if validation of the software document fails. The value of the data  *field*  of 
#     class Com::Vmware::Vapi::Std::Errors::Error  will be a  *class*  that contains all the
#      *fields*  defined in null.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  or no solution associated with 
#     ``solution``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
sub delete_task {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $solution = $args {solution};

   $self->validate_args (method_name => 'delete$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'delete$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Solutions service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Solutions service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Solutions service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Solutions service
#########################################################################################
