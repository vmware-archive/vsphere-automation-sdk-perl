########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Staged.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Update::Staged
# The  ``Com::Vmware::Appliance::Update::Staged``   *interface*  provides  *methods*  to
#     get the status of the staged update. This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Appliance::Update::Staged;

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
use Com::Vmware::Appliance::Update::StagedStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

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
# Gets the current status of the staged update. This  *method*  was added in vSphere API
# 6.7.
#
# @retval 
# Info structure with information about staged update
# The return type will be Com::Vmware::Appliance::Update::Staged::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if nothing is staged
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method delete ()
# Deletes the staged update. This  *method*  was added in vSphere API 6.7.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# session is not authenticated
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# session is not authorized to perform this operation
#

sub delete {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'delete', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Update::Staged service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Update::Staged service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Update::Staged service
#########################################################################################

## @class Com::Vmware::Appliance::Update::Staged::Info
#
#
# The  ``Com::Vmware::Appliance::Update::Staged::Info``   *class*  contains information
#     about the staged update. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Update::Staged::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Update::Staged::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{staging_complete} = $args{'staging_complete'};
   $self->{version} = $args{'version'};
   $self->{description} = $args{'description'};
   $self->{priority} = $args{'priority'};
   $self->{severity} = $args{'severity'};
   $self->{update_type} = $args{'update_type'};
   $self->{release_date} = $args{'release_date'};
   $self->{reboot_required} = $args{'reboot_required'};
   $self->{size} = $args{'size'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Update::Staged::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.update.staged.info');
   $self->set_binding_field('key' => 'staging_complete', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   $self->set_binding_field('key' => 'priority', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'CommonInfo::Priority'));
   $self->set_binding_field('key' => 'severity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'CommonInfo::Severity'));
   $self->set_binding_field('key' => 'update_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Update', 'type_name' => 'CommonInfo::Category'));
   $self->set_binding_field('key' => 'release_date', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'reboot_required', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_staging_complete ()
# Gets the value of 'staging_complete' property.
#
# @retval staging_complete - The current value of the field.
# Is staging complete. This  *field*  was added in vSphere API 6.7.
#
# boolean#
sub get_staging_complete {
   my ($self, %args) = @_;
   return $self->{'staging_complete'}; 	
}

## @method set_staging_complete ()
# Sets the given value for 'staging_complete' property.
# 
# @param staging_complete  - New value for the field.
# Is staging complete. This  *field*  was added in vSphere API 6.7.
#
sub set_staging_complete {
   my ($self, %args) = @_;
   $self->{'staging_complete'} = $args{'staging_complete'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version in form of X.Y.Z.P. e.g. 6.5.1.5400. This  *field*  was added in vSphere API
#     6.7.
#
# ID#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version in form of X.Y.Z.P. e.g. 6.5.1.5400. This  *field*  was added in vSphere API
#     6.7.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the update. The short information what this update is. E.g.
#     &quot;Update2 for vCenter Server Appliance 6.5&quot;. This  *field*  was added in
#     vSphere API 6.7.
#
# LocalizableMessage#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the update. The short information what this update is. E.g.
#     &quot;Update2 for vCenter Server Appliance 6.5&quot;. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_priority ()
# Gets the value of 'priority' property.
#
# @retval priority - The current value of the field.
# Update priority. This  *field*  was added in vSphere API 6.7.
#
# Priority#
sub get_priority {
   my ($self, %args) = @_;
   return $self->{'priority'}; 	
}

## @method set_priority ()
# Sets the given value for 'priority' property.
# 
# @param priority  - New value for the field.
# Update priority. This  *field*  was added in vSphere API 6.7.
#
sub set_priority {
   my ($self, %args) = @_;
   $self->{'priority'} = $args{'priority'}; 
   return;	
}

## @method get_severity ()
# Gets the value of 'severity' property.
#
# @retval severity - The current value of the field.
# Update severity. This  *field*  was added in vSphere API 6.7.
#
# Severity#
sub get_severity {
   my ($self, %args) = @_;
   return $self->{'severity'}; 	
}

## @method set_severity ()
# Sets the given value for 'severity' property.
# 
# @param severity  - New value for the field.
# Update severity. This  *field*  was added in vSphere API 6.7.
#
sub set_severity {
   my ($self, %args) = @_;
   $self->{'severity'} = $args{'severity'}; 
   return;	
}

## @method get_update_type ()
# Gets the value of 'update_type' property.
#
# @retval update_type - The current value of the field.
# Update category. This  *field*  was added in vSphere API 6.7.
#
# Category#
sub get_update_type {
   my ($self, %args) = @_;
   return $self->{'update_type'}; 	
}

## @method set_update_type ()
# Sets the given value for 'update_type' property.
# 
# @param update_type  - New value for the field.
# Update category. This  *field*  was added in vSphere API 6.7.
#
sub set_update_type {
   my ($self, %args) = @_;
   $self->{'update_type'} = $args{'update_type'}; 
   return;	
}

## @method get_release_date ()
# Gets the value of 'release_date' property.
#
# @retval release_date - The current value of the field.
# Update release date. This  *field*  was added in vSphere API 6.7.
#
# DateTime#
sub get_release_date {
   my ($self, %args) = @_;
   return $self->{'release_date'}; 	
}

## @method set_release_date ()
# Sets the given value for 'release_date' property.
# 
# @param release_date  - New value for the field.
# Update release date. This  *field*  was added in vSphere API 6.7.
#
sub set_release_date {
   my ($self, %args) = @_;
   $self->{'release_date'} = $args{'release_date'}; 
   return;	
}

## @method get_reboot_required ()
# Gets the value of 'reboot_required' property.
#
# @retval reboot_required - The current value of the field.
# Flag indicating whether reboot is required after update. This  *field*  was added in
#     vSphere API 6.7.
#
# boolean#
sub get_reboot_required {
   my ($self, %args) = @_;
   return $self->{'reboot_required'}; 	
}

## @method set_reboot_required ()
# Sets the given value for 'reboot_required' property.
# 
# @param reboot_required  - New value for the field.
# Flag indicating whether reboot is required after update. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_reboot_required {
   my ($self, %args) = @_;
   $self->{'reboot_required'} = $args{'reboot_required'}; 
   return;	
}

## @method get_size ()
# Gets the value of 'size' property.
#
# @retval size - The current value of the field.
# Download Size of update in Megabytes. This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_size {
   my ($self, %args) = @_;
   return $self->{'size'}; 	
}

## @method set_size ()
# Sets the given value for 'size' property.
# 
# @param size  - New value for the field.
# Download Size of update in Megabytes. This  *field*  was added in vSphere API 6.7.
#
sub set_size {
   my ($self, %args) = @_;
   $self->{'size'} = $args{'size'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Update::Staged service
#########################################################################################
