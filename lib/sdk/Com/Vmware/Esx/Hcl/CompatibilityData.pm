########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CompatibilityData.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Hcl::CompatibilityData
# This  *interface*  provides  *methods*  to update the local compatibility data
#     residing on the vCenter Appliance or to get information about the said data. The
#     information in the data is generic VMware compatibility information for servers and
#     devices.
#

package Com::Vmware::Esx::Hcl::CompatibilityData;

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
use Com::Vmware::Esx::Hcl::CompatibilityDataStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.hcl.compatibility_data';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'update_task'} = 'update$task';

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
# Provides information about the compatibility data located on the vCenter Appliance.
#
# Note:
# Privileges required for this operation are VcIntegrity.HardwareCompatibility.Read.
#
# @retval 
# Information about the compatibility data.
# The return type will be Com::Vmware::Esx::Hcl::CompatibilityData::Status
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if there is no compatibility data on the vCenter executing the operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
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
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method update_task ()
# Replaces the local compatibility data with the latest version found from VMware official
# source.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if there is compatibility data update in progress.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the vCenter this API is executed on is not part of the Customer Experience
#     Improvement Program (CEIP).
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown error. The accompanying error message will give more details
#     about the failure.
#
sub update_task {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'update$task', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Hcl::CompatibilityData service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Hcl::CompatibilityData service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Hcl::CompatibilityData service
#########################################################################################

## @class Com::Vmware::Esx::Hcl::CompatibilityData::Status
#
#
# The  ``Com::Vmware::Esx::Hcl::CompatibilityData::Status``   *class*  contains 
#     *fields*  to describe the information available for the compatibility data.

package Com::Vmware::Esx::Hcl::CompatibilityData::Status;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::CompatibilityData::Status structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{updated_at} = $args{'updated_at'};
   $self->{notifications} = $args{'notifications'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::CompatibilityData::Status');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.compatibility_data.status');
   $self->set_binding_field('key' => 'updated_at', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'notifications', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Notifications'));
   bless $self, $class;
   return $self;
}

## @method get_updated_at ()
# Gets the value of 'updated_at' property.
#
# @retval updated_at - The current value of the field.
# Indicates when the data was last updated.
#
# DateTime#
sub get_updated_at {
   my ($self, %args) = @_;
   return $self->{'updated_at'}; 	
}

## @method set_updated_at ()
# Sets the given value for 'updated_at' property.
# 
# @param updated_at  - New value for the field.
# Indicates when the data was last updated.
#
sub set_updated_at {
   my ($self, %args) = @_;
   $self->{'updated_at'} = $args{'updated_at'}; 
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
# Ends structures for the Com::Vmware::Esx::Hcl::CompatibilityData service
#########################################################################################
