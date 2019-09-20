########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Recommendation.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Recommendation
# The service that provide recommendation.
#

package Com::Vmware::Vcenter::Lcm::Recommendation;

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
use Com::Vmware::Vcenter::Lcm::RecommendationStub;

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

## @method scan_migrate_deployment_size ()
# Recommend deployment sizes based on the configuration given in the specification.
#
# @param spec [REQUIRED]  The specification that contains information needed to recommend deloyment size.
# . The value must be
# Com::Vmware::Vcenter::Lcm::Recommendation::MigrateDeploymentSizeRequest.
#
# @retval 
# A task-id associated with this task.
# The return type will be Dictionary of String and Array of String
#

sub scan_migrate_deployment_size {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'scan_migrate_deployment_size',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'scan_migrate_deployment_size',
                         method_args => \%args);
}


## @method scan_datastore ()
# Recommend a datastore for the appliance to be deployed in.
#
# @param spec [REQUIRED]  The specification contains the information needed to recommend datastore
# . The value must be Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreRequest.
#
# @retval 
# A task-id associated with this task.
# The return type will be Dictionary of String and
# Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreInfo
#

sub scan_datastore {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'scan_datastore',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'scan_datastore',
                         method_args => \%args);
}


## @method scan_upgrade_deployment_size ()
# Recommend deployment sizes based on the configuration given in the specification.
#
# @param spec [REQUIRED]  The specification that contains information needed to recommend deloyment size.
# . The value must be
# Com::Vmware::Vcenter::Lcm::Recommendation::UpgradeDeploymentSizeRequest.
#
# @retval 
# A task-id associated with this task.
# The return type will be Dictionary of String and Array of String
#

sub scan_upgrade_deployment_size {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'scan_upgrade_deployment_size',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'scan_upgrade_deployment_size',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Recommendation service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Recommendation service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Recommendation service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Recommendation::DeploymentSizeDestinationAppliance
#
#
# Spec to describe the new appliance.

package Com::Vmware::Vcenter::Lcm::Recommendation::DeploymentSizeDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::DeploymentSizeDestinationAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ova_location} = $args{'ova_location'};
   $self->{ova_location_ssl_verify} = $args{'ova_location_ssl_verify'};
   $self->{ova_location_ssl_thumbprint} = $args{'ova_location_ssl_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::DeploymentSizeDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.deployment_size_destination_appliance');
   $self->set_binding_field('key' => 'ova_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ova_location_ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ova_location_ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_ova_location ()
# Gets the value of 'ova_location' property.
#
# @retval ova_location - The current value of the field.
# The location of the ova file.
#
# Optional#
sub get_ova_location {
   my ($self, %args) = @_;
   return $self->{'ova_location'}; 	
}

## @method set_ova_location ()
# Sets the given value for 'ova_location' property.
# 
# @param ova_location  - New value for the field.
# The location of the ova file.
#
sub set_ova_location {
   my ($self, %args) = @_;
   $self->{'ova_location'} = $args{'ova_location'}; 
   return;	
}

## @method get_ova_location_ssl_verify ()
# Gets the value of 'ova_location_ssl_verify' property.
#
# @retval ova_location_ssl_verify - The current value of the field.
# A flag to indicate whether the ssl verification is required.
#
# Optional#
sub get_ova_location_ssl_verify {
   my ($self, %args) = @_;
   return $self->{'ova_location_ssl_verify'}; 	
}

## @method set_ova_location_ssl_verify ()
# Sets the given value for 'ova_location_ssl_verify' property.
# 
# @param ova_location_ssl_verify  - New value for the field.
# A flag to indicate whether the ssl verification is required.
#
sub set_ova_location_ssl_verify {
   my ($self, %args) = @_;
   $self->{'ova_location_ssl_verify'} = $args{'ova_location_ssl_verify'}; 
   return;	
}

## @method get_ova_location_ssl_thumbprint ()
# Gets the value of 'ova_location_ssl_thumbprint' property.
#
# @retval ova_location_ssl_thumbprint - The current value of the field.
# SSL thumbprint of ssl verification. If provided, ssl_verify can be omitted or set to
#     true. If omitted, ssl_verify must be false. If omitted and ssl_verify is true, an
#     error will occur.
#
# Optional#
sub get_ova_location_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ova_location_ssl_thumbprint'}; 	
}

## @method set_ova_location_ssl_thumbprint ()
# Sets the given value for 'ova_location_ssl_thumbprint' property.
# 
# @param ova_location_ssl_thumbprint  - New value for the field.
# SSL thumbprint of ssl verification. If provided, ssl_verify can be omitted or set to
#     true. If omitted, ssl_verify must be false. If omitted and ssl_verify is true, an
#     error will occur.
#
sub set_ova_location_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ova_location_ssl_thumbprint'} = $args{'ova_location_ssl_thumbprint'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Recommendation::MigrateDeploymentSizeRequest
#
#
# The request for recommending migrate deployment size.

package Com::Vmware::Vcenter::Lcm::Recommendation::MigrateDeploymentSizeRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::MigrateDeploymentSizeRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{destination_appliance} = $args{'destination_appliance'};
   $self->{source_vc_windows} = $args{'source_vc_windows'};
   $self->{existing_migration_assistant} = $args{'existing_migration_assistant'};
   $self->{start_migration_assistant} = $args{'start_migration_assistant'};
   $self->{source_vum_location} = $args{'source_vum_location'};
   $self->{source_vum} = $args{'source_vum'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::MigrateDeploymentSizeRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.migrate_deployment_size_request');
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::DeploymentSizeDestinationAppliance'));
   $self->set_binding_field('key' => 'source_vc_windows', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'SourceVcWindows'));
   $self->set_binding_field('key' => 'existing_migration_assistant', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ExistingMigrationAssistant')));
   $self->set_binding_field('key' => 'start_migration_assistant', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'MigrationAssistant')));
   $self->set_binding_field('key' => 'source_vum_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection')));
   $self->set_binding_field('key' => 'source_vum', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'SourceVum')));
   bless $self, $class;
   return $self;
}

## @method get_destination_appliance ()
# Gets the value of 'destination_appliance' property.
#
# @retval destination_appliance - The current value of the field.
# Spec to describe the new appliance.
#
# DeploymentSizeDestinationAppliance#
sub get_destination_appliance {
   my ($self, %args) = @_;
   return $self->{'destination_appliance'}; 	
}

## @method set_destination_appliance ()
# Sets the given value for 'destination_appliance' property.
# 
# @param destination_appliance  - New value for the field.
# Spec to describe the new appliance.
#
sub set_destination_appliance {
   my ($self, %args) = @_;
   $self->{'destination_appliance'} = $args{'destination_appliance'}; 
   return;	
}

## @method get_source_vc_windows ()
# Gets the value of 'source_vc_windows' property.
#
# @retval source_vc_windows - The current value of the field.
# Spec to describe the existing Windows vCenter server to migrate.
#
# SourceVcWindows#
sub get_source_vc_windows {
   my ($self, %args) = @_;
   return $self->{'source_vc_windows'}; 	
}

## @method set_source_vc_windows ()
# Sets the given value for 'source_vc_windows' property.
# 
# @param source_vc_windows  - New value for the field.
# Spec to describe the existing Windows vCenter server to migrate.
#
sub set_source_vc_windows {
   my ($self, %args) = @_;
   $self->{'source_vc_windows'} = $args{'source_vc_windows'}; 
   return;	
}

## @method get_existing_migration_assistant ()
# Gets the value of 'existing_migration_assistant' property.
#
# @retval existing_migration_assistant - The current value of the field.
# Spec to describe the attributes of a running Migration Assistant on the Windows
#     vCenter server.
#
# Optional#
sub get_existing_migration_assistant {
   my ($self, %args) = @_;
   return $self->{'existing_migration_assistant'}; 	
}

## @method set_existing_migration_assistant ()
# Sets the given value for 'existing_migration_assistant' property.
# 
# @param existing_migration_assistant  - New value for the field.
# Spec to describe the attributes of a running Migration Assistant on the Windows
#     vCenter server.
#
sub set_existing_migration_assistant {
   my ($self, %args) = @_;
   $self->{'existing_migration_assistant'} = $args{'existing_migration_assistant'}; 
   return;	
}

## @method get_start_migration_assistant ()
# Gets the value of 'start_migration_assistant' property.
#
# @retval start_migration_assistant - The current value of the field.
# Spec to automate the invocation of Migration Assistant. Automatic invocation works
#     only if the source Windows installation is running as a virtual machine.
#
# Optional#
sub get_start_migration_assistant {
   my ($self, %args) = @_;
   return $self->{'start_migration_assistant'}; 	
}

## @method set_start_migration_assistant ()
# Sets the given value for 'start_migration_assistant' property.
# 
# @param start_migration_assistant  - New value for the field.
# Spec to automate the invocation of Migration Assistant. Automatic invocation works
#     only if the source Windows installation is running as a virtual machine.
#
sub set_start_migration_assistant {
   my ($self, %args) = @_;
   $self->{'start_migration_assistant'} = $args{'start_migration_assistant'}; 
   return;	
}

## @method get_source_vum_location ()
# Gets the value of 'source_vum_location' property.
#
# @retval source_vum_location - The current value of the field.
# The configuration to connect to an ESX/VC.
#
# Optional#
sub get_source_vum_location {
   my ($self, %args) = @_;
   return $self->{'source_vum_location'}; 	
}

## @method set_source_vum_location ()
# Sets the given value for 'source_vum_location' property.
# 
# @param source_vum_location  - New value for the field.
# The configuration to connect to an ESX/VC.
#
sub set_source_vum_location {
   my ($self, %args) = @_;
   $self->{'source_vum_location'} = $args{'source_vum_location'}; 
   return;	
}

## @method get_source_vum ()
# Gets the value of 'source_vum' property.
#
# @retval source_vum - The current value of the field.
# This section describes the source vSphere Update Manager (VUM) which you want to
#     upgrade.
#
# Optional#
sub get_source_vum {
   my ($self, %args) = @_;
   return $self->{'source_vum'}; 	
}

## @method set_source_vum ()
# Sets the given value for 'source_vum' property.
# 
# @param source_vum  - New value for the field.
# This section describes the source vSphere Update Manager (VUM) which you want to
#     upgrade.
#
sub set_source_vum {
   my ($self, %args) = @_;
   $self->{'source_vum'} = $args{'source_vum'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Recommendation::UpgradeDeploymentSizeRequest
#
#
# The request for recommending upgrade deployment size.

package Com::Vmware::Vcenter::Lcm::Recommendation::UpgradeDeploymentSizeRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::UpgradeDeploymentSizeRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{destination_appliance} = $args{'destination_appliance'};
   $self->{source_location} = $args{'source_location'};
   $self->{source_appliance} = $args{'source_appliance'};
   $self->{source_vum} = $args{'source_vum'};
   $self->{source_vum_location} = $args{'source_vum_location'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::UpgradeDeploymentSizeRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.upgrade_deployment_size_request');
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::DeploymentSizeDestinationAppliance'));
   $self->set_binding_field('key' => 'source_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   $self->set_binding_field('key' => 'source_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'UpgradeSourceAppliance'));
   $self->set_binding_field('key' => 'source_vum', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'SourceVum')));
   $self->set_binding_field('key' => 'source_vum_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection')));
   bless $self, $class;
   return $self;
}

## @method get_destination_appliance ()
# Gets the value of 'destination_appliance' property.
#
# @retval destination_appliance - The current value of the field.
# Spec to describe the new appliance
#
# DeploymentSizeDestinationAppliance#
sub get_destination_appliance {
   my ($self, %args) = @_;
   return $self->{'destination_appliance'}; 	
}

## @method set_destination_appliance ()
# Sets the given value for 'destination_appliance' property.
# 
# @param destination_appliance  - New value for the field.
# Spec to describe the new appliance
#
sub set_destination_appliance {
   my ($self, %args) = @_;
   $self->{'destination_appliance'} = $args{'destination_appliance'}; 
   return;	
}

## @method get_source_location ()
# Gets the value of 'source_location' property.
#
# @retval source_location - The current value of the field.
# The configuration to connect to an ESX/VC.
#
# Connection#
sub get_source_location {
   my ($self, %args) = @_;
   return $self->{'source_location'}; 	
}

## @method set_source_location ()
# Sets the given value for 'source_location' property.
# 
# @param source_location  - New value for the field.
# The configuration to connect to an ESX/VC.
#
sub set_source_location {
   my ($self, %args) = @_;
   $self->{'source_location'} = $args{'source_location'}; 
   return;	
}

## @method get_source_appliance ()
# Gets the value of 'source_appliance' property.
#
# @retval source_appliance - The current value of the field.
# Spec to describe the existing appliance to upgrade.
#
# UpgradeSourceAppliance#
sub get_source_appliance {
   my ($self, %args) = @_;
   return $self->{'source_appliance'}; 	
}

## @method set_source_appliance ()
# Sets the given value for 'source_appliance' property.
# 
# @param source_appliance  - New value for the field.
# Spec to describe the existing appliance to upgrade.
#
sub set_source_appliance {
   my ($self, %args) = @_;
   $self->{'source_appliance'} = $args{'source_appliance'}; 
   return;	
}

## @method get_source_vum ()
# Gets the value of 'source_vum' property.
#
# @retval source_vum - The current value of the field.
# This section describes the source vSphere Update Manager (VUM) which you want to
#     upgrade.
#
# Optional#
sub get_source_vum {
   my ($self, %args) = @_;
   return $self->{'source_vum'}; 	
}

## @method set_source_vum ()
# Sets the given value for 'source_vum' property.
# 
# @param source_vum  - New value for the field.
# This section describes the source vSphere Update Manager (VUM) which you want to
#     upgrade.
#
sub set_source_vum {
   my ($self, %args) = @_;
   $self->{'source_vum'} = $args{'source_vum'}; 
   return;	
}

## @method get_source_vum_location ()
# Gets the value of 'source_vum_location' property.
#
# @retval source_vum_location - The current value of the field.
# The configuration to connect to an ESX/VC.
#
# Optional#
sub get_source_vum_location {
   my ($self, %args) = @_;
   return $self->{'source_vum_location'}; 	
}

## @method set_source_vum_location ()
# Sets the given value for 'source_vum_location' property.
# 
# @param source_vum_location  - New value for the field.
# The configuration to connect to an ESX/VC.
#
sub set_source_vum_location {
   my ($self, %args) = @_;
   $self->{'source_vum_location'} = $args{'source_vum_location'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreRequest
#
#
# The request for recommending datastore.

package Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{destination_location} = $args{'destination_location'};
   $self->{destination_appliance} = $args{'destination_appliance'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.datastore_request');
   $self->set_binding_field('key' => 'destination_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::DatastoreDestinationLocation'));
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::DatastoreDestinationAppliance'));
   bless $self, $class;
   return $self;
}

## @method get_destination_location ()
# Gets the value of 'destination_location' property.
#
# @retval destination_location - The current value of the field.
# This subsection describes the ESX or VC on which to deploy the appliance.
#
# DatastoreDestinationLocation#
sub get_destination_location {
   my ($self, %args) = @_;
   return $self->{'destination_location'}; 	
}

## @method set_destination_location ()
# Sets the given value for 'destination_location' property.
# 
# @param destination_location  - New value for the field.
# This subsection describes the ESX or VC on which to deploy the appliance.
#
sub set_destination_location {
   my ($self, %args) = @_;
   $self->{'destination_location'} = $args{'destination_location'}; 
   return;	
}

## @method get_destination_appliance ()
# Gets the value of 'destination_appliance' property.
#
# @retval destination_appliance - The current value of the field.
# Spec to describe the new appliance.
#
# DatastoreDestinationAppliance#
sub get_destination_appliance {
   my ($self, %args) = @_;
   return $self->{'destination_appliance'}; 	
}

## @method set_destination_appliance ()
# Sets the given value for 'destination_appliance' property.
# 
# @param destination_appliance  - New value for the field.
# Spec to describe the new appliance.
#
sub set_destination_appliance {
   my ($self, %args) = @_;
   $self->{'destination_appliance'} = $args{'destination_appliance'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreDestinationAppliance
#
#
# The configuration of destination appliance to recommend datastore.

package Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreDestinationAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{appliance_size} = $args{'appliance_size'};
   $self->{appliance_disk_size} = $args{'appliance_disk_size'};
   $self->{ova_location} = $args{'ova_location'};
   $self->{ova_location_ssl_verify} = $args{'ova_location_ssl_verify'};
   $self->{ova_location_ssl_thumbprint} = $args{'ova_location_ssl_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.datastore_destination_appliance');
   $self->set_binding_field('key' => 'appliance_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ApplianceSize')));
   $self->set_binding_field('key' => 'appliance_disk_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'StorageSize')));
   $self->set_binding_field('key' => 'ova_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ova_location_ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ova_location_ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_appliance_size ()
# Gets the value of 'appliance_size' property.
#
# @retval appliance_size - The current value of the field.
# A size descriptor based on the number of virtual machines which will be managed by the
#     new vCenter appliance.
#
# Optional#
sub get_appliance_size {
   my ($self, %args) = @_;
   return $self->{'appliance_size'}; 	
}

## @method set_appliance_size ()
# Sets the given value for 'appliance_size' property.
# 
# @param appliance_size  - New value for the field.
# A size descriptor based on the number of virtual machines which will be managed by the
#     new vCenter appliance.
#
sub set_appliance_size {
   my ($self, %args) = @_;
   $self->{'appliance_size'} = $args{'appliance_size'}; 
   return;	
}

## @method get_appliance_disk_size ()
# Gets the value of 'appliance_disk_size' property.
#
# @retval appliance_disk_size - The current value of the field.
# The disk size of the new vCenter appliance.
#
# Optional#
sub get_appliance_disk_size {
   my ($self, %args) = @_;
   return $self->{'appliance_disk_size'}; 	
}

## @method set_appliance_disk_size ()
# Sets the given value for 'appliance_disk_size' property.
# 
# @param appliance_disk_size  - New value for the field.
# The disk size of the new vCenter appliance.
#
sub set_appliance_disk_size {
   my ($self, %args) = @_;
   $self->{'appliance_disk_size'} = $args{'appliance_disk_size'}; 
   return;	
}

## @method get_ova_location ()
# Gets the value of 'ova_location' property.
#
# @retval ova_location - The current value of the field.
# The location of the ova file.
#
# Optional#
sub get_ova_location {
   my ($self, %args) = @_;
   return $self->{'ova_location'}; 	
}

## @method set_ova_location ()
# Sets the given value for 'ova_location' property.
# 
# @param ova_location  - New value for the field.
# The location of the ova file.
#
sub set_ova_location {
   my ($self, %args) = @_;
   $self->{'ova_location'} = $args{'ova_location'}; 
   return;	
}

## @method get_ova_location_ssl_verify ()
# Gets the value of 'ova_location_ssl_verify' property.
#
# @retval ova_location_ssl_verify - The current value of the field.
# A flag to indicate whether the ssl verification is required.
#
# Optional#
sub get_ova_location_ssl_verify {
   my ($self, %args) = @_;
   return $self->{'ova_location_ssl_verify'}; 	
}

## @method set_ova_location_ssl_verify ()
# Sets the given value for 'ova_location_ssl_verify' property.
# 
# @param ova_location_ssl_verify  - New value for the field.
# A flag to indicate whether the ssl verification is required.
#
sub set_ova_location_ssl_verify {
   my ($self, %args) = @_;
   $self->{'ova_location_ssl_verify'} = $args{'ova_location_ssl_verify'}; 
   return;	
}

## @method get_ova_location_ssl_thumbprint ()
# Gets the value of 'ova_location_ssl_thumbprint' property.
#
# @retval ova_location_ssl_thumbprint - The current value of the field.
# SSL thumbprint of ssl verification. If provided, ssl_verify can be omitted or set to
#     true. If omitted, ssl_verify must be false. If omitted and ssl_verify is true, an
#     error will occur.
#
# Optional#
sub get_ova_location_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ova_location_ssl_thumbprint'}; 	
}

## @method set_ova_location_ssl_thumbprint ()
# Sets the given value for 'ova_location_ssl_thumbprint' property.
# 
# @param ova_location_ssl_thumbprint  - New value for the field.
# SSL thumbprint of ssl verification. If provided, ssl_verify can be omitted or set to
#     true. If omitted, ssl_verify must be false. If omitted and ssl_verify is true, an
#     error will occur.
#
sub set_ova_location_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ova_location_ssl_thumbprint'} = $args{'ova_location_ssl_thumbprint'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreDestinationLocation
#
#
# This subsection describes the ESX or VC on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreDestinationLocation;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreDestinationLocation structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{esx} = $args{'esx'};
   $self->{vcenter} = $args{'vcenter'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreDestinationLocation');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.datastore_destination_location');
   $self->set_binding_field('key' => 'esx', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::DatastoreEsx')));
   $self->set_binding_field('key' => 'vcenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::DatastoreVc')));
   bless $self, $class;
   return $self;
}

## @method get_esx ()
# Gets the value of 'esx' property.
#
# @retval esx - The current value of the field.
# This section describes the ESX host on which to deploy the appliance. Required if you
#     are deploying the appliance directly on an ESX host.
#
# Optional#
sub get_esx {
   my ($self, %args) = @_;
   return $self->{'esx'}; 	
}

## @method set_esx ()
# Sets the given value for 'esx' property.
# 
# @param esx  - New value for the field.
# This section describes the ESX host on which to deploy the appliance. Required if you
#     are deploying the appliance directly on an ESX host.
#
sub set_esx {
   my ($self, %args) = @_;
   $self->{'esx'} = $args{'esx'}; 
   return;	
}

## @method get_vcenter ()
# Gets the value of 'vcenter' property.
#
# @retval vcenter - The current value of the field.
# This subsection describes the vCenter on which to deploy the appliance.
#
# Optional#
sub get_vcenter {
   my ($self, %args) = @_;
   return $self->{'vcenter'}; 	
}

## @method set_vcenter ()
# Sets the given value for 'vcenter' property.
# 
# @param vcenter  - New value for the field.
# This subsection describes the vCenter on which to deploy the appliance.
#
sub set_vcenter {
   my ($self, %args) = @_;
   $self->{'vcenter'} = $args{'vcenter'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreEsx
#
#
# This section describes the ESX host on which to deploy the appliance. Required if you
#     are deploying the appliance directly on an ESX host.

package Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreEsx;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreEsx structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{connection} = $args{'connection'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreEsx');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.datastore_esx');
   $self->set_binding_field('key' => 'connection', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   bless $self, $class;
   return $self;
}

## @method get_connection ()
# Gets the value of 'connection' property.
#
# @retval connection - The current value of the field.
# The configuration to connect to an ESX/VC.
#
# Connection#
sub get_connection {
   my ($self, %args) = @_;
   return $self->{'connection'}; 	
}

## @method set_connection ()
# Sets the given value for 'connection' property.
# 
# @param connection  - New value for the field.
# The configuration to connect to an ESX/VC.
#
sub set_connection {
   my ($self, %args) = @_;
   $self->{'connection'} = $args{'connection'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreVc
#
#
# This subsection describes the vCenter on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreVc;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreVc structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{connection} = $args{'connection'};
   $self->{inventory} = $args{'inventory'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreVc');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.datastore_vc');
   $self->set_binding_field('key' => 'connection', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   $self->set_binding_field('key' => 'inventory', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Recommendation::DatastoreVcInventory'));
   bless $self, $class;
   return $self;
}

## @method get_connection ()
# Gets the value of 'connection' property.
#
# @retval connection - The current value of the field.
# The configuration to connect to an ESX/VC.
#
# Connection#
sub get_connection {
   my ($self, %args) = @_;
   return $self->{'connection'}; 	
}

## @method set_connection ()
# Sets the given value for 'connection' property.
# 
# @param connection  - New value for the field.
# The configuration to connect to an ESX/VC.
#
sub set_connection {
   my ($self, %args) = @_;
   $self->{'connection'} = $args{'connection'}; 
   return;	
}

## @method get_inventory ()
# Gets the value of 'inventory' property.
#
# @retval inventory - The current value of the field.
# All names are case-sensitive. you can install the appliance to one of the following
#     destinations: 1. A resource pool in a cluster, use &apos;cluster_path&apos;. 2. A
#     specific ESX host in a cluster, use &apos;host_path&apos;. 3. A resource pool in a
#     specific ESX host being managed by the current vCenter, use
#     &apos;resource_pool_path&apos;. You must always provide the &apos;network_name&apos;
#     key. To install a new appliance to a specific ESX host in a cluster, provide the
#     &apos;host_path&apos; key, and the &apos;datastore_name&apos;, e.g.
#     &apos;host_path&apos;: &apos;/MyDataCenter/host/MyCluster/10.20.30.40&apos;,
#     &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To install a new appliance to
#     a specific resource pool, provide the &apos;resource_pool_path&apos;, and the
#     &apos;datastore_name&apos;, e.g. &apos;resource_pool_path&apos;: &apos;/Your
#     Datacenter Folder/Your Datacenter/host/Your Cluster/Resources/Your Resource
#     Pool&apos;, &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To place a new
#     appliance to a virtual machine Folder, provide the &apos;vm_folder_path&apos;, e.g.
#     &apos;vm_folder_path&apos;: &apos;VM Folder 0/VM Folder1&apos;.
#
# DatastoreVcInventory#
sub get_inventory {
   my ($self, %args) = @_;
   return $self->{'inventory'}; 	
}

## @method set_inventory ()
# Sets the given value for 'inventory' property.
# 
# @param inventory  - New value for the field.
# All names are case-sensitive. you can install the appliance to one of the following
#     destinations: 1. A resource pool in a cluster, use &apos;cluster_path&apos;. 2. A
#     specific ESX host in a cluster, use &apos;host_path&apos;. 3. A resource pool in a
#     specific ESX host being managed by the current vCenter, use
#     &apos;resource_pool_path&apos;. You must always provide the &apos;network_name&apos;
#     key. To install a new appliance to a specific ESX host in a cluster, provide the
#     &apos;host_path&apos; key, and the &apos;datastore_name&apos;, e.g.
#     &apos;host_path&apos;: &apos;/MyDataCenter/host/MyCluster/10.20.30.40&apos;,
#     &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To install a new appliance to
#     a specific resource pool, provide the &apos;resource_pool_path&apos;, and the
#     &apos;datastore_name&apos;, e.g. &apos;resource_pool_path&apos;: &apos;/Your
#     Datacenter Folder/Your Datacenter/host/Your Cluster/Resources/Your Resource
#     Pool&apos;, &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To place a new
#     appliance to a virtual machine Folder, provide the &apos;vm_folder_path&apos;, e.g.
#     &apos;vm_folder_path&apos;: &apos;VM Folder 0/VM Folder1&apos;.
#
sub set_inventory {
   my ($self, %args) = @_;
   $self->{'inventory'} = $args{'inventory'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreVcInventory
#
#
# All names are case-sensitive. you can install the appliance to one of the following
#     destinations: 1. A resource pool in a cluster, use &apos;cluster_path&apos;. 2. A
#     specific ESX host in a cluster, use &apos;host_path&apos;. 3. A resource pool in a
#     specific ESX host being managed by the current vCenter, use
#     &apos;resource_pool_path&apos;. You must always provide the &apos;network_name&apos;
#     key. To install a new appliance to a specific ESX host in a cluster, provide the
#     &apos;host_path&apos; key, and the &apos;datastore_name&apos;, e.g.
#     &apos;host_path&apos;: &apos;/MyDataCenter/host/MyCluster/10.20.30.40&apos;,
#     &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To install a new appliance to
#     a specific resource pool, provide the &apos;resource_pool_path&apos;, and the
#     &apos;datastore_name&apos;, e.g. &apos;resource_pool_path&apos;: &apos;/Your
#     Datacenter Folder/Your Datacenter/host/Your Cluster/Resources/Your Resource
#     Pool&apos;, &apos;datastore_name&apos;: &apos;Your Datastore&apos;. To place a new
#     appliance to a virtual machine Folder, provide the &apos;vm_folder_path&apos;, e.g.
#     &apos;vm_folder_path&apos;: &apos;VM Folder 0/VM Folder1&apos;.

package Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreVcInventory;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreVcInventory structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{host_path} = $args{'host_path'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreVcInventory');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.datastore_vc_inventory');
   $self->set_binding_field('key' => 'host_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_host_path ()
# Gets the value of 'host_path' property.
#
# @retval host_path - The current value of the field.
# Full path to an ESX host. Format: /{datacenter folder}/{datacenter name}/host/{host
#     name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your Host
#
# String#
sub get_host_path {
   my ($self, %args) = @_;
   return $self->{'host_path'}; 	
}

## @method set_host_path ()
# Sets the given value for 'host_path' property.
# 
# @param host_path  - New value for the field.
# Full path to an ESX host. Format: /{datacenter folder}/{datacenter name}/host/{host
#     name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your Host
#
sub set_host_path {
   my ($self, %args) = @_;
   $self->{'host_path'} = $args{'host_path'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreInfo
#
#
# Datastore space information. Space information are in GB unit.

package Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{freespace} = $args{'freespace'};
   $self->{freespace_after_placement} = $args{'freespace_after_placement'};
   $self->{required_space} = $args{'required_space'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Recommendation::DatastoreInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.recommendation.datastore_info');
   $self->set_binding_field('key' => 'freespace', 'value' => new Com::Vmware::Vapi::Bindings::Type::DoubleType());
   $self->set_binding_field('key' => 'freespace_after_placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::DoubleType());
   $self->set_binding_field('key' => 'required_space', 'value' => new Com::Vmware::Vapi::Bindings::Type::DoubleType());
   bless $self, $class;
   return $self;
}

## @method get_freespace ()
# Gets the value of 'freespace' property.
#
# @retval freespace - The current value of the field.
# The amount of space that the datastore currently has.
#
# double#
sub get_freespace {
   my ($self, %args) = @_;
   return $self->{'freespace'}; 	
}

## @method set_freespace ()
# Sets the given value for 'freespace' property.
# 
# @param freespace  - New value for the field.
# The amount of space that the datastore currently has.
#
sub set_freespace {
   my ($self, %args) = @_;
   $self->{'freespace'} = $args{'freespace'}; 
   return;	
}

## @method get_freespace_after_placement ()
# Gets the value of 'freespace_after_placement' property.
#
# @retval freespace_after_placement - The current value of the field.
# The amount of space that the datastore will have after deployment.
#
# double#
sub get_freespace_after_placement {
   my ($self, %args) = @_;
   return $self->{'freespace_after_placement'}; 	
}

## @method set_freespace_after_placement ()
# Sets the given value for 'freespace_after_placement' property.
# 
# @param freespace_after_placement  - New value for the field.
# The amount of space that the datastore will have after deployment.
#
sub set_freespace_after_placement {
   my ($self, %args) = @_;
   $self->{'freespace_after_placement'} = $args{'freespace_after_placement'}; 
   return;	
}

## @method get_required_space ()
# Gets the value of 'required_space' property.
#
# @retval required_space - The current value of the field.
# The amount of space that the deployment will occupy.
#
# double#
sub get_required_space {
   my ($self, %args) = @_;
   return $self->{'required_space'}; 	
}

## @method set_required_space ()
# Sets the given value for 'required_space' property.
# 
# @param required_space  - New value for the field.
# The amount of space that the deployment will occupy.
#
sub set_required_space {
   my ($self, %args) = @_;
   $self->{'required_space'} = $args{'required_space'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Recommendation service
#########################################################################################
