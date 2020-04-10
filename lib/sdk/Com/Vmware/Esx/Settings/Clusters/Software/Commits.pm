########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Commits.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Commits
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Commits``   *interface* 
#     provides  *methods*  to manage committed changes to desired software document.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for commit resource

package Com::Vmware::Esx::Settings::Clusters::Software::Commits;

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
use Com::Vmware::Esx::Settings::Clusters::Software::CommitsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.commits';


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
# Returns the information about a specific commit.
#
# @param cluster [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @param commit [REQUIRED] Identifier of the specific commit.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.settings.commit).
# . The value must be str.
#
# @retval 
# Information about the commit.
# The return type will be Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or if desired
#     specification commit is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};
   my $commit = $args {commit};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Commits service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Commits service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Commits service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info
#
#
# The  ``Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info``   *class* 
#     defines the information about software draft.

package Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{author} = $args{'author'};
   $self->{commit_time} = $args{'commit_time'};
   $self->{description} = $args{'description'};
   $self->{apply_status} = $args{'apply_status'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.clusters.software.commits.info');
   $self->set_binding_field('key' => 'author', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'commit_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'apply_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings::Clusters::Software', 'type_name' => 'Commits::Info::ApplyStatusType'));
   bless $self, $class;
   return $self;
}

## @method get_author ()
# Gets the value of 'author' property.
#
# @retval author - The current value of the field.
# Author of the commit.
#
# String#
sub get_author {
   my ($self, %args) = @_;
   return $self->{'author'}; 	
}

## @method set_author ()
# Sets the given value for 'author' property.
# 
# @param author  - New value for the field.
# Author of the commit.
#
sub set_author {
   my ($self, %args) = @_;
   $self->{'author'} = $args{'author'}; 
   return;	
}

## @method get_commit_time ()
# Gets the value of 'commit_time' property.
#
# @retval commit_time - The current value of the field.
# Creation time of the commit.
#
# DateTime#
sub get_commit_time {
   my ($self, %args) = @_;
   return $self->{'commit_time'}; 	
}

## @method set_commit_time ()
# Sets the given value for 'commit_time' property.
# 
# @param commit_time  - New value for the field.
# Creation time of the commit.
#
sub set_commit_time {
   my ($self, %args) = @_;
   $self->{'commit_time'} = $args{'commit_time'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description accompanying this commit.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description accompanying this commit.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_apply_status ()
# Gets the value of 'apply_status' property.
#
# @retval apply_status - The current value of the field.
# Apply status of the commit.
#
# ApplyStatusType#
sub get_apply_status {
   my ($self, %args) = @_;
   return $self->{'apply_status'}; 	
}

## @method set_apply_status ()
# Sets the given value for 'apply_status' property.
# 
# @param apply_status  - New value for the field.
# Apply status of the commit.
#
sub set_apply_status {
   my ($self, %args) = @_;
   $self->{'apply_status'} = $args{'apply_status'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info::ApplyStatusType
#
# The 
#     ``Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info::ApplyStatusType``  
#     *class*  defines possible values regarding the application of this commit.
#
#
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info::ApplyStatusType::APPLIED #
#Commit has been applied to the cluster.
#
# Constant Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info::ApplyStatusType::NOT_APPLIED #
#Commit hasn&apos;t been applied to the cluster.

package Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info::ApplyStatusType;

use constant {
    APPLIED =>  'APPLIED',
    NOT_APPLIED =>  'NOT_APPLIED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info::ApplyStatusType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.clusters.software.commits.info.apply_status_type',
                           'binding_class' => 'Com::Vmware::Esx::Settings::Clusters::Software::Commits::Info::ApplyStatusType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Commits service
#########################################################################################
