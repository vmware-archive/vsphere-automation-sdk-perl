########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Managers.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Settings::Hardware_support::Managers
# The  ``Com::Vmware::Esx::Settings::Hardware_support::Managers``   *interface* 
#     provides  *methods*  to list Hardware Support Manager (HSM) for a given vCenter.
#

package Com::Vmware::Esx::Settings::Hardware_support::Managers;

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
use Com::Vmware::Esx::Settings::Hardware_support::ManagersStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.hardware_support.managers';


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
# Returns the list of registered Hardware Support Managers (HSMs) in the system.
#
# Note:
# Privileges required for this operation are VcIntegrity.lifecycleSettings.Read.
#
# @retval 
# List of currently registered Hardware Support Manager (HSMs)
# The return type will be Array of
# Com::Vmware::Esx::Settings::Hardware_support::Managers::HardwareSupportManagerInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``VcIntegrity.lifecycleSettings.Read`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Hardware_support::Managers service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Hardware_support::Managers service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Hardware_support::Managers service
#########################################################################################

## @class Com::Vmware::Esx::Settings::Hardware_support::Managers::HardwareSupportManagerInfo
#
#
# The 
#     ``Com::Vmware::Esx::Settings::Hardware_support::Managers::HardwareSupportManagerInfo``
#     *class*  contains  *fields*  that describe a particular 3rd party Hardware Support
#     Manager (HSM)

package Com::Vmware::Esx::Settings::Hardware_support::Managers::HardwareSupportManagerInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::Hardware_support::Managers::HardwareSupportManagerInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{manager} = $args{'manager'};
   $self->{description} = $args{'description'};
   $self->{display_name} = $args{'display_name'};
   $self->{vendor} = $args{'vendor'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::Hardware_support::Managers::HardwareSupportManagerInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.hardware_support.managers.hardware_support_manager_info');
   $self->set_binding_field('key' => 'manager', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'display_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_manager ()
# Gets the value of 'manager' property.
#
# @retval manager - The current value of the field.
# Name of the Hardware Support Manager (HSM) (e.g. &quot;Frobozz Hardware Support
#     Manager&quot;)
#
# ID#
sub get_manager {
   my ($self, %args) = @_;
   return $self->{'manager'}; 	
}

## @method set_manager ()
# Sets the given value for 'manager' property.
# 
# @param manager  - New value for the field.
# Name of the Hardware Support Manager (HSM) (e.g. &quot;Frobozz Hardware Support
#     Manager&quot;)
#
sub set_manager {
   my ($self, %args) = @_;
   $self->{'manager'} = $args{'manager'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# User-intelligible description of the HSM (e.g. &quot;Front end for Frobozz so-and-so
#     management system&quot;)
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
# User-intelligible description of the HSM (e.g. &quot;Front end for Frobozz so-and-so
#     management system&quot;)
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_display_name ()
# Gets the value of 'display_name' property.
#
# @retval display_name - The current value of the field.
# UI label for HSM, derived from HSM extension&apos;s description&apos;s
#     &apos;label&apos; field. (e.g. &quot;Frobozz Free Management System&quot;)
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
# UI label for HSM, derived from HSM extension&apos;s description&apos;s
#     &apos;label&apos; field. (e.g. &quot;Frobozz Free Management System&quot;)
#
sub set_display_name {
   my ($self, %args) = @_;
   $self->{'display_name'} = $args{'display_name'}; 
   return;	
}

## @method get_vendor ()
# Gets the value of 'vendor' property.
#
# @retval vendor - The current value of the field.
# Company providing the Hardware Support Manager (HSM) (e.g. &quot;Frobozz Magic
#     Software Company&quot;)
#
# String#
sub get_vendor {
   my ($self, %args) = @_;
   return $self->{'vendor'}; 	
}

## @method set_vendor ()
# Sets the given value for 'vendor' property.
# 
# @param vendor  - New value for the field.
# Company providing the Hardware Support Manager (HSM) (e.g. &quot;Frobozz Magic
#     Software Company&quot;)
#
sub set_vendor {
   my ($self, %args) = @_;
   $self->{'vendor'} = $args{'vendor'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Hardware_support::Managers service
#########################################################################################
