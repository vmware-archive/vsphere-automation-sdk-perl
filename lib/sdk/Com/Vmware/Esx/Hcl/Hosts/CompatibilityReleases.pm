########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CompatibilityReleases.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Esx::Hcl;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases
# This  *interface*  provides  *methods*  to list available releases for generating
#     compatibility report for a specific ESXi host.
#

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases;

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
use Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleasesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.hcl.hosts.compatibility_releases';


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
# Lists the locally available ESXi releases for a given host that can be used to generate a
# compatiblity report. Each host has its own list of supported releases depending on its
# current release.
#
# Note:
# Privileges required for this operation are VcIntegrity.HardwareCompatibility.Read.
#
# @param host [REQUIRED] Contains the MoID identifying the ESXi host.
# The value must be an identifier for the resource type getQualifiedName(HostSystem).
# . The value must be str.
#
# @retval 
# Available releases for compatibility for a specified host.
# The return type will be
# Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases::EsxiCompatibilityReleases
#
# @throw Com::Vmware::Vapi::Std::Errors::InternalServerError 
# If there is some internal error. The accompanying error message will give more details
#     about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if there is no compatibility data on the vCenter executing the operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if no host with the given MoID can be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the provided host is not supported.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the vCenter this API is executed on is not part of the Customer Experience
#     Improvement Program (CEIP).
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown error. The accompanying error message will give more details
#     about the failure.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires  ``VcIntegrity.HardwareCompatibility.Read`` .
#     </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   my $host = $args {host};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases service
#########################################################################################

## @class Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases::EsxiCompatibilityReleases
#
#
# This 
#     ``Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases::EsxiCompatibilityReleases``  
#     *class*  contains  *fields*  that describe available releases for generating
#     compatibility report for a specific ESXi host.

package Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases::EsxiCompatibilityReleases;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases::EsxiCompatibilityReleases structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{current_compatibility_release} = $args{'current_compatibility_release'};
   $self->{newer_compatibility_releases} = $args{'newer_compatibility_releases'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases::EsxiCompatibilityReleases');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.hosts.compatibility_releases.esxi_compatibility_releases');
   $self->set_binding_field('key' => 'current_compatibility_release', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'newer_compatibility_releases', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Notifications'));
   bless $self, $class;
   return $self;
}

## @method get_current_compatibility_release ()
# Gets the value of 'current_compatibility_release' property.
#
# @retval current_compatibility_release - The current value of the field.
# The current release of the ESXi, which also can be checked for compatibility. <p>
# 
#  The information for the release does not include patch information.</p>
#
# String#
sub get_current_compatibility_release {
   my ($self, %args) = @_;
   return $self->{'current_compatibility_release'}; 	
}

## @method set_current_compatibility_release ()
# Sets the given value for 'current_compatibility_release' property.
# 
# @param current_compatibility_release  - New value for the field.
# The current release of the ESXi, which also can be checked for compatibility. <p>
# 
#  The information for the release does not include patch information.</p>
#
sub set_current_compatibility_release {
   my ($self, %args) = @_;
   $self->{'current_compatibility_release'} = $args{'current_compatibility_release'}; 
   return;	
}

## @method get_newer_compatibility_releases ()
# Gets the value of 'newer_compatibility_releases' property.
#
# @retval newer_compatibility_releases - The current value of the field.
# The available ESXi releases, greater than the current one, than can be checked for
#     compatibility.
#
# List#
sub get_newer_compatibility_releases {
   my ($self, %args) = @_;
   return $self->{'newer_compatibility_releases'}; 	
}

## @method set_newer_compatibility_releases ()
# Sets the given value for 'newer_compatibility_releases' property.
# 
# @param newer_compatibility_releases  - New value for the field.
# The available ESXi releases, greater than the current one, than can be checked for
#     compatibility.
#
sub set_newer_compatibility_releases {
   my ($self, %args) = @_;
   $self->{'newer_compatibility_releases'} = $args{'newer_compatibility_releases'}; 
   return;	
}

## @method get_notifications ()
# Gets the value of 'notifications' property.
#
# @retval notifications - The current value of the field.
# Notifications returned by the operation.
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
# Notifications returned by the operation.
#
sub set_notifications {
   my ($self, %args) = @_;
   $self->{'notifications'} = $args{'notifications'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Hcl::Hosts::CompatibilityReleases service
#########################################################################################
