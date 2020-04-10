########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file InstalledComponents.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Hosts::Software::InstalledComponents
# The  ``Com::Vmware::Esx::Hosts::Software::InstalledComponents``   *interface* 
#     provides  *methods*  to get installed list of components.
#

package Com::Vmware::Esx::Hosts::Software::InstalledComponents;

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
use Com::Vmware::Esx::Hosts::Software::InstalledComponentsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.hosts.software.installed_components';


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
# Returns the installed components on the host.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSoftwareSpecification.Read.
#
# @param host [REQUIRED] Identifier of the cluster.
# The value must be an identifier for the resource type getQualifiedName(HostSystem).
# . The value must be str.
#
# @retval 
# The components installed on the host.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.hosts.component).
# The return type will be Dictionary of str and
# Com::Vmware::Esx::Hosts::Software::InstalledComponents::InstalledComponentInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::InternalServerError 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no host associated with  ``host``  in the system.
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
# <li> The resource  ``HostSystem``  referenced by the  *parameter*   ``host``  requires
#      ``VcIntegrity.lifecycleSoftwareSpecification.Read`` . </li>
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
# Begins enumerations for the Com::Vmware::Esx::Hosts::Software::InstalledComponents service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Hosts::Software::InstalledComponents service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Hosts::Software::InstalledComponents service
#########################################################################################

## @class Com::Vmware::Esx::Hosts::Software::InstalledComponents::InstalledComponentInfo
#
#
# The 
#     ``Com::Vmware::Esx::Hosts::Software::InstalledComponents::InstalledComponentInfo``  
#     *class*  contains  *fields*  that describe the installed component on the host.

package Com::Vmware::Esx::Hosts::Software::InstalledComponents::InstalledComponentInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hosts::Software::InstalledComponents::InstalledComponentInfo structure
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
   $self->{version} = $args{'version'};
   $self->{display_version} = $args{'display_version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hosts::Software::InstalledComponents::InstalledComponentInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.hosts.software.installed_components.installed_component_info');
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# Display name of the component.
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
# Display name of the component.
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of the installed component
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version of the installed component
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_display_version ()
# Gets the value of 'display_version' property.
#
# @retval display_version - The current value of the field.
# Human readable version of the component.
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
# Human readable version of the component.
#
sub set_display_version {
   my ($self, %args) = @_;
   $self->{'display_version'} = $args{'display_version'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Hosts::Software::InstalledComponents service
#########################################################################################
