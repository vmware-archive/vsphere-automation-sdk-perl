########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Validation.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Validation
# The service that provides validation of a section of full deployment specification.
#

package Com::Vmware::Vcenter::Lcm::Validation;

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
use Com::Vmware::Vcenter::Lcm::ValidationStub;

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

## @method check_appliance_name ()
# Validate the name of the appliance to be deployed. <ol>
# <li>1. Return False if the there is already an appliance that has the same name as given
# in the spec exist in the path.</li>
#  </ol>
#
# @param spec [REQUIRED]  The configuration needed to validate the name of the appliance to be deployed.
# . The value must be Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameRequest.
#
# @retval 
# False if the name of the appliance already exists. True otherwise.
# The return type will be Boolean
#

sub check_appliance_name {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_appliance_name',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_appliance_name',
                         method_args => \%args);
}


## @method check_os_password ()
# Validate if the given password conforms password policy. <ol>
#  <li>1. Return False if the password in the spec violates password policy</li>
#  </ol>
#
# @param spec [REQUIRED]  The configuration needed to validate the given password against password policy.
# . The value must be Com::Vmware::Vcenter::Lcm::Validation::OsPasswordRequest.
#
# @retval 
# True if the password conforms password policy. False otherwise.
# The return type will be Boolean
#

sub check_os_password {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_os_password',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_os_password',
                         method_args => \%args);
}


## @method check_network ()
# Check to see if the given network configuration is valid. <ol>
#  <li>1. Return False if the given network will cause conflict.</li>
#  <li>2. Always return True if network mode is set to DHCP.</li>
#  </ol>
#
# @param spec [REQUIRED]  The configuration needed to validate network.
# . The value must be Com::Vmware::Vcenter::Lcm::Validation::NetworkRequest.
#
# @retval 
# True if the network configuration is valid. False otherwise.
# The return type will be Boolean
#

sub check_network {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_network',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_network',
                         method_args => \%args);
}


## @method check_host_config ()
# Validate the host configuration. <ol>
# <li>1. Return False if the provided appliance type, appliance size, and disk size
# combination is not valid.</li>
# <li>2. Return False if the provided deployment path does not have sufficient memory
# allocated.</li>
# <li>3. Return False if the provided deployment path does not have sufficient cpu
# allocated.</li>
# <li>3. Return False if the provided deployment path does not have sufficient datastore
# space.</li>
#  </ol>
#
# @param spec [REQUIRED]  The configuration needed to validate host configuration.
# . The value must be Com::Vmware::Vcenter::Lcm::Validation::HostConfigRequest.
#
# @retval 
# True if the host configuration is valid, False otherwise.
# The return type will be Boolean
#

sub check_host_config {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_host_config',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_host_config',
                         method_args => \%args);
}


## @method check_destination_location ()
# Validate the ESX of the appliance to be deployed.
#
# @param spec [REQUIRED]  The configuration needed to validate the ESX of the appliance to be deployed.
# . The value must be Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationRequest.
#
# @retval 
# True if the ESX of the appliance to be deployed is valid. False otherwise.
# The return type will be Boolean
#

sub check_destination_location {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_destination_location',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_destination_location',
                         method_args => \%args);
}


## @method check_temporary_network ()
# Check to see if the given network configuration is valid. <ol>
#  <li>1. Return False if the given network will cause conflict.</li>
#  <li>2. Always return True if network mode is set to DHCP.</li>
#  </ol>
#
# @param spec [REQUIRED]  The configuration needed to validate network.
# . The value must be Com::Vmware::Vcenter::Lcm::Validation::TemporaryNetworkRequest.
#
# @retval 
# True if the network configuration is valid. False otherwise.
# The return type will be Boolean
#

sub check_temporary_network {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_temporary_network',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_temporary_network',
                         method_args => \%args);
}


## @method check_source_vum ()
# Validate the source VUM configuration.
#
# @param spec [REQUIRED]  The configuration needed to validate the source VUM.
# . The value must be Com::Vmware::Vcenter::Lcm::Validation::SourceVumRequest.
#
# @retval 
# True if the given source VUM configuration is valid. False otherwise.
# The return type will be Boolean
#

sub check_source_vum {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_source_vum',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_source_vum',
                         method_args => \%args);
}


## @method check_upgrade_source_appliance ()
# Validate the source appliance to be upgraded. <ol>
#  <li>1. Return False if the provided source appliance credentials are incorrect</li>
#  <li>2. Return False if the provided source location credentials are incorrect.</li>
#  <li>3. Return False if upgrade runner precheck results in error.</li>
#  <li>4. Return False if export directory provided is invalid.</li>
#  </ol>
#
# @param spec [REQUIRED]  The configuration of the source appliance to be upgraded.
# . The value must be Com::Vmware::Vcenter::Lcm::Validation::UpgradeSourceApplianceRequest.
#
# @retval 
# True if the given source appliance configuration is valid. False otherwise.
# The return type will be Boolean
#

sub check_upgrade_source_appliance {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_upgrade_source_appliance',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_upgrade_source_appliance',
                         method_args => \%args);
}


## @method check_migrate_source_appliance ()
# Validate the source appliance to be migrated. <ol>
#  <li>1. Return False if the provided source windows vc credentials are incorrect</li>
#  <li>2. Return False if migration assistant precheck results in error.</li>
#  </ol>
#
# @param spec [REQUIRED]  The configuration of the source appliance to be migrated.
# . The value must be Com::Vmware::Vcenter::Lcm::Validation::MigrateSourceApplianceRequest.
#
# @retval 
# True if the given source appliance configuration is valid. False otherwise.
# The return type will be Boolean
#

sub check_migrate_source_appliance {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_migrate_source_appliance',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_migrate_source_appliance',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Validation service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Validation service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Validation service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Validation::UpgradeSourceApplianceDestinationAppliance
#
#
# Spec to describe the new appliance.

package Com::Vmware::Vcenter::Lcm::Validation::UpgradeSourceApplianceDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::UpgradeSourceApplianceDestinationAppliance structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::UpgradeSourceApplianceDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.upgrade_source_appliance_destination_appliance');
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


## @class Com::Vmware::Vcenter::Lcm::Validation::UpgradeSourceApplianceRequest
#
#
# The configuration to validate source appliance for upgrade.

package Com::Vmware::Vcenter::Lcm::Validation::UpgradeSourceApplianceRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::UpgradeSourceApplianceRequest structure
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
   $self->{source_appliance} = $args{'source_appliance'};
   $self->{source_location} = $args{'source_location'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::UpgradeSourceApplianceRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.upgrade_source_appliance_request');
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::UpgradeSourceApplianceDestinationAppliance'));
   $self->set_binding_field('key' => 'source_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'UpgradeSourceAppliance'));
   $self->set_binding_field('key' => 'source_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   bless $self, $class;
   return $self;
}

## @method get_destination_appliance ()
# Gets the value of 'destination_appliance' property.
#
# @retval destination_appliance - The current value of the field.
# Spec to describe the new appliance.
#
# UpgradeSourceApplianceDestinationAppliance#
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

## @method get_source_appliance ()
# Gets the value of 'source_appliance' property.
#
# @retval source_appliance - The current value of the field.
# The source appliance configuration.
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
# The source appliance configuration.
#
sub set_source_appliance {
   my ($self, %args) = @_;
   $self->{'source_appliance'} = $args{'source_appliance'}; 
   return;	
}

## @method get_source_location ()
# Gets the value of 'source_location' property.
#
# @retval source_location - The current value of the field.
# The source location configuration.
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
# The source location configuration.
#
sub set_source_location {
   my ($self, %args) = @_;
   $self->{'source_location'} = $args{'source_location'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::SourceLocationRequest
#
#
# This subsection describes the ESX or VC on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Validation::SourceLocationRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::SourceLocationRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{source_location} = $args{'source_location'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::SourceLocationRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.source_location_request');
   $self->set_binding_field('key' => 'source_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   bless $self, $class;
   return $self;
}

## @method get_source_location ()
# Gets the value of 'source_location' property.
#
# @retval source_location - The current value of the field.
# The source location configuration
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
# The source location configuration
#
sub set_source_location {
   my ($self, %args) = @_;
   $self->{'source_location'} = $args{'source_location'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::SourceVumRequest
#
#
# The request that contains information needed to verify the credentials of source
#     vSphere Update Manager and run the migration assistant.

package Com::Vmware::Vcenter::Lcm::Validation::SourceVumRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::SourceVumRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{source_vc_windows} = $args{'source_vc_windows'};
   $self->{source_appliance} = $args{'source_appliance'};
   $self->{source_vum_location} = $args{'source_vum_location'};
   $self->{source_vum} = $args{'source_vum'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::SourceVumRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.source_vum_request');
   $self->set_binding_field('key' => 'source_vc_windows', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::SourceVumSourceVcWindows')));
   $self->set_binding_field('key' => 'source_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::SourceVumUpgradeSourceAppliance')));
   $self->set_binding_field('key' => 'source_vum_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection')));
   $self->set_binding_field('key' => 'source_vum', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'SourceVum'));
   bless $self, $class;
   return $self;
}

## @method get_source_vc_windows ()
# Gets the value of 'source_vc_windows' property.
#
# @retval source_vc_windows - The current value of the field.
# Spec to describe the existing Windows vCenter server to migrate.
#
# Optional#
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

## @method get_source_appliance ()
# Gets the value of 'source_appliance' property.
#
# @retval source_appliance - The current value of the field.
# Source appliance configuration for upgrade service.
#
# Optional#
sub get_source_appliance {
   my ($self, %args) = @_;
   return $self->{'source_appliance'}; 	
}

## @method set_source_appliance ()
# Sets the given value for 'source_appliance' property.
# 
# @param source_appliance  - New value for the field.
# Source appliance configuration for upgrade service.
#
sub set_source_appliance {
   my ($self, %args) = @_;
   $self->{'source_appliance'} = $args{'source_appliance'}; 
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
# SourceVum#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::SourceVumUpgradeSourceAppliance
#
#
# Source appliance configuration for upgrade service.

package Com::Vmware::Vcenter::Lcm::Validation::SourceVumUpgradeSourceAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::SourceVumUpgradeSourceAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{sso_admin_username} = $args{'sso_admin_username'};
   $self->{sso_admin_password} = $args{'sso_admin_password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::SourceVumUpgradeSourceAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.source_vum_upgrade_source_appliance');
   $self->set_binding_field('key' => 'sso_admin_username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sso_admin_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_sso_admin_username ()
# Gets the value of 'sso_admin_username' property.
#
# @retval sso_admin_username - The current value of the field.
# vCenter Single Sign-On administrator user name of the source appliance.
#
# String#
sub get_sso_admin_username {
   my ($self, %args) = @_;
   return $self->{'sso_admin_username'}; 	
}

## @method set_sso_admin_username ()
# Sets the given value for 'sso_admin_username' property.
# 
# @param sso_admin_username  - New value for the field.
# vCenter Single Sign-On administrator user name of the source appliance.
#
sub set_sso_admin_username {
   my ($self, %args) = @_;
   $self->{'sso_admin_username'} = $args{'sso_admin_username'}; 
   return;	
}

## @method get_sso_admin_password ()
# Gets the value of 'sso_admin_password' property.
#
# @retval sso_admin_password - The current value of the field.
# vCenter Single Sign-On administrator password of the source appliance.
#
# Secret#
sub get_sso_admin_password {
   my ($self, %args) = @_;
   return $self->{'sso_admin_password'}; 	
}

## @method set_sso_admin_password ()
# Sets the given value for 'sso_admin_password' property.
# 
# @param sso_admin_password  - New value for the field.
# vCenter Single Sign-On administrator password of the source appliance.
#
sub set_sso_admin_password {
   my ($self, %args) = @_;
   $self->{'sso_admin_password'} = $args{'sso_admin_password'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::SourceVumSourceVcWindows
#
#
# Spec to describe the existing Windows vCenter server to migrate.

package Com::Vmware::Vcenter::Lcm::Validation::SourceVumSourceVcWindows;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::SourceVumSourceVcWindows structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::SourceVumSourceVcWindows');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.source_vum_source_vc_windows');
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Single Sign-On administrator user on the source Windows vCenter server. For example,
#     administrator@vsphere.local. Important: The user must be
#     administrator@your_domain_name.
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Single Sign-On administrator user on the source Windows vCenter server. For example,
#     administrator@vsphere.local. Important: The user must be
#     administrator@your_domain_name.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# The password of the Single Sign-On administrator on the source Windows vCenter server.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# The password of the Single Sign-On administrator on the source Windows vCenter server.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::OsPasswordRequest
#
#
# The request that contains information needed to verify the given password conforms
#     password policy.

package Com::Vmware::Vcenter::Lcm::Validation::OsPasswordRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::OsPasswordRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::OsPasswordRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.os_password_request');
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::OsPasswordDestinationAppliance'));
   bless $self, $class;
   return $self;
}

## @method get_destination_appliance ()
# Gets the value of 'destination_appliance' property.
#
# @retval destination_appliance - The current value of the field.
# Spec to describe the new appliance.
#
# OsPasswordDestinationAppliance#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::OsPasswordDestinationAppliance
#
#
# Spec to describe the new appliance.

package Com::Vmware::Vcenter::Lcm::Validation::OsPasswordDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::OsPasswordDestinationAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{root_password} = $args{'root_password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::OsPasswordDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.os_password_destination_appliance');
   $self->set_binding_field('key' => 'root_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_root_password ()
# Gets the value of 'root_password' property.
#
# @retval root_password - The current value of the field.
# Password must conform to the following requirements: 1. At least 8 characters. 2. No
#     more than 20 characters. 3. At least 1 uppercase character. 4. At least 1 lowercase
#     character. 5. At least 1 number. 6. At least 1 special character (e.g., &apos;!&apos;,
#     &apos;(&apos;, &apos;@&apos;, etc.). 7. Only visible A-Z, a-z, 0-9 and punctuation
#     (spaces are not allowed)
#
# Secret#
sub get_root_password {
   my ($self, %args) = @_;
   return $self->{'root_password'}; 	
}

## @method set_root_password ()
# Sets the given value for 'root_password' property.
# 
# @param root_password  - New value for the field.
# Password must conform to the following requirements: 1. At least 8 characters. 2. No
#     more than 20 characters. 3. At least 1 uppercase character. 4. At least 1 lowercase
#     character. 5. At least 1 number. 6. At least 1 special character (e.g., &apos;!&apos;,
#     &apos;(&apos;, &apos;@&apos;, etc.). 7. Only visible A-Z, a-z, 0-9 and punctuation
#     (spaces are not allowed)
#
sub set_root_password {
   my ($self, %args) = @_;
   $self->{'root_password'} = $args{'root_password'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::NtpServerRequest
#
#
# A request that contains the information needed to validate the given ntp servers.

package Com::Vmware::Vcenter::Lcm::Validation::NtpServerRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::NtpServerRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::NtpServerRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.ntp_server_request');
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::NtpServerDestinationAppliance'));
   bless $self, $class;
   return $self;
}

## @method get_destination_appliance ()
# Gets the value of 'destination_appliance' property.
#
# @retval destination_appliance - The current value of the field.
# Spec to describe the new appliance.
#
# NtpServerDestinationAppliance#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::NtpServerDestinationAppliance
#
#
# Spec to describe the new appliance.

package Com::Vmware::Vcenter::Lcm::Validation::NtpServerDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::NtpServerDestinationAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{time} = $args{'time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::NtpServerDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.ntp_server_destination_appliance');
   $self->set_binding_field('key' => 'time', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Time'));
   bless $self, $class;
   return $self;
}

## @method get_time ()
# Gets the value of 'time' property.
#
# @retval time - The current value of the field.
# Configuration of the vCSA time synchronization.
#
# Time#
sub get_time {
   my ($self, %args) = @_;
   return $self->{'time'}; 	
}

## @method set_time ()
# Sets the given value for 'time' property.
# 
# @param time  - New value for the field.
# Configuration of the vCSA time synchronization.
#
sub set_time {
   my ($self, %args) = @_;
   $self->{'time'} = $args{'time'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::EsxRequest
#
#
# The request that contains the information to verify esx management status.

package Com::Vmware::Vcenter::Lcm::Validation::EsxRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::EsxRequest structure
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
   $self->{source_location} = $args{'source_location'};
   $self->{source_vum_location} = $args{'source_vum_location'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::EsxRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.esx_request');
   $self->set_binding_field('key' => 'destination_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::EsxDestinationLocation'));
   $self->set_binding_field('key' => 'source_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection')));
   $self->set_binding_field('key' => 'source_vum_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection')));
   bless $self, $class;
   return $self;
}

## @method get_destination_location ()
# Gets the value of 'destination_location' property.
#
# @retval destination_location - The current value of the field.
# This subsection describes the ESX or VC on which to deploy the appliance.
#
# EsxDestinationLocation#
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

## @method get_source_location ()
# Gets the value of 'source_location' property.
#
# @retval source_location - The current value of the field.
# The configuration to connect to an ESX/VC.
#
# Optional#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::EsxDestinationLocation
#
#
# This subsection describes the ESX or VC on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Validation::EsxDestinationLocation;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::EsxDestinationLocation structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::EsxDestinationLocation');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.esx_destination_location');
   $self->set_binding_field('key' => 'esx', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::ContainerWithoutInventory')));
   $self->set_binding_field('key' => 'vcenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::ContainerWithoutInventory')));
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


## @class Com::Vmware::Vcenter::Lcm::Validation::ContainerWithoutInventory
#
#
# This section describes the ESX host on which to deploy the appliance. Required if you
#     are deploying the appliance directly on an ESX host.

package Com::Vmware::Vcenter::Lcm::Validation::ContainerWithoutInventory;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::ContainerWithoutInventory structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::ContainerWithoutInventory');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.container_without_inventory');
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


## @class Com::Vmware::Vcenter::Lcm::Validation::NetworkRequest
#
#
# The request that contains network information to be validated.

package Com::Vmware::Vcenter::Lcm::Validation::NetworkRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::NetworkRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::NetworkRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.network_request');
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::NetworkDestinationAppliance'));
   bless $self, $class;
   return $self;
}

## @method get_destination_appliance ()
# Gets the value of 'destination_appliance' property.
#
# @retval destination_appliance - The current value of the field.
# Spec to describe the new appliance.
#
# NetworkDestinationAppliance#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::NetworkDestinationAppliance
#
#
# Spec to describe the new appliance.

package Com::Vmware::Vcenter::Lcm::Validation::NetworkDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::NetworkDestinationAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{network} = $args{'network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::NetworkDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.network_destination_appliance');
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Network'));
   bless $self, $class;
   return $self;
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# The network settings of the appliance to be deployed.
#
# Network#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# The network settings of the appliance to be deployed.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::TemporaryNetworkRequest
#
#
# The request that contains network information to be validated.

package Com::Vmware::Vcenter::Lcm::Validation::TemporaryNetworkRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::TemporaryNetworkRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::TemporaryNetworkRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.temporary_network_request');
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::TemporaryNetworkDestinationAppliance'));
   bless $self, $class;
   return $self;
}

## @method get_destination_appliance ()
# Gets the value of 'destination_appliance' property.
#
# @retval destination_appliance - The current value of the field.
# Spec to describe the new appliance.
#
# TemporaryNetworkDestinationAppliance#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::TemporaryNetworkDestinationAppliance
#
#
# Spec to describe the new appliance.

package Com::Vmware::Vcenter::Lcm::Validation::TemporaryNetworkDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::TemporaryNetworkDestinationAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{network} = $args{'network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::TemporaryNetworkDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.temporary_network_destination_appliance');
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'TemporaryNetwork'));
   bless $self, $class;
   return $self;
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# The network settings of the appliance to be deployed.
#
# TemporaryNetwork#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# The network settings of the appliance to be deployed.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameRequest
#
#
# Data container that contains the information needed to validate appliance name.

package Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.appliance_name_request');
   $self->set_binding_field('key' => 'destination_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::ApplianceNameDestinationLocation'));
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::ApplianceNameDestinationAppliance'));
   bless $self, $class;
   return $self;
}

## @method get_destination_location ()
# Gets the value of 'destination_location' property.
#
# @retval destination_location - The current value of the field.
# This subsection describes the ESX or VC on which to deploy the appliance.
#
# ApplianceNameDestinationLocation#
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
# ApplianceNameDestinationAppliance#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameDestinationAppliance
#
#
# Data container for appliance name information used in validation of appliance name
#     request.

package Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameDestinationAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{appliance_name} = $args{'appliance_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.appliance_name_destination_appliance');
   $self->set_binding_field('key' => 'appliance_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_appliance_name ()
# Gets the value of 'appliance_name' property.
#
# @retval appliance_name - The current value of the field.
# The name of the appliance to deploy.
#
# String#
sub get_appliance_name {
   my ($self, %args) = @_;
   return $self->{'appliance_name'}; 	
}

## @method set_appliance_name ()
# Sets the given value for 'appliance_name' property.
# 
# @param appliance_name  - New value for the field.
# The name of the appliance to deploy.
#
sub set_appliance_name {
   my ($self, %args) = @_;
   $self->{'appliance_name'} = $args{'appliance_name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameDestinationLocation
#
#


package Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameDestinationLocation;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameDestinationLocation structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameDestinationLocation');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.appliance_name_destination_location');
   $self->set_binding_field('key' => 'esx', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::ApplianceNameEsx')));
   $self->set_binding_field('key' => 'vcenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::ApplianceNameVc')));
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


## @class Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameEsx
#
#
# This section describes the ESX host on which to deploy the appliance. Required if you
#     are deploying the appliance directly on an ESX host.

package Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameEsx;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameEsx structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameEsx');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.appliance_name_esx');
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


## @class Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameEsxInventory
#
#
# The configuration of ESX inventory.

package Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameEsxInventory;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameEsxInventory structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{resource_pool_path} = $args{'resource_pool_path'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameEsxInventory');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.appliance_name_esx_inventory');
   $self->set_binding_field('key' => 'resource_pool_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_resource_pool_path ()
# Gets the value of 'resource_pool_path' property.
#
# @retval resource_pool_path - The current value of the field.
# The path to the resource pool on the ESX host in which the appliance will be deployed.
#
# Optional#
sub get_resource_pool_path {
   my ($self, %args) = @_;
   return $self->{'resource_pool_path'}; 	
}

## @method set_resource_pool_path ()
# Sets the given value for 'resource_pool_path' property.
# 
# @param resource_pool_path  - New value for the field.
# The path to the resource pool on the ESX host in which the appliance will be deployed.
#
sub set_resource_pool_path {
   my ($self, %args) = @_;
   $self->{'resource_pool_path'} = $args{'resource_pool_path'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameVc
#
#
# This subsection describes the vCenter on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameVc;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameVc structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameVc');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.appliance_name_vc');
   $self->set_binding_field('key' => 'connection', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   $self->set_binding_field('key' => 'inventory', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::ApplianceNameVcInventory'));
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
# ApplianceNameVcInventory#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameVcInventory
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

package Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameVcInventory;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameVcInventory structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm_folder_path} = $args{'vm_folder_path'};
   $self->{resource_pool_path} = $args{'resource_pool_path'};
   $self->{cluster_path} = $args{'cluster_path'};
   $self->{host_path} = $args{'host_path'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::ApplianceNameVcInventory');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.appliance_name_vc_inventory');
   $self->set_binding_field('key' => 'vm_folder_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_vm_folder_path ()
# Gets the value of 'vm_folder_path' property.
#
# @retval vm_folder_path - The current value of the field.

#
# Optional#
sub get_vm_folder_path {
   my ($self, %args) = @_;
   return $self->{'vm_folder_path'}; 	
}

## @method set_vm_folder_path ()
# Sets the given value for 'vm_folder_path' property.
# 
# @param vm_folder_path  - New value for the field.

#
sub set_vm_folder_path {
   my ($self, %args) = @_;
   $self->{'vm_folder_path'} = $args{'vm_folder_path'}; 
   return;	
}

## @method get_resource_pool_path ()
# Gets the value of 'resource_pool_path' property.
#
# @retval resource_pool_path - The current value of the field.
# Full path to resource pool. Format: /{datacenter folder}/{datacenter name}/host/{host
#     name}/{cluster_name}/Resources/{resource pool}. e.g: /Your Datacenter Folder/Your
#     Datacenter/host/Your Cluster/Resources/Your Resource Pool
#
# Optional#
sub get_resource_pool_path {
   my ($self, %args) = @_;
   return $self->{'resource_pool_path'}; 	
}

## @method set_resource_pool_path ()
# Sets the given value for 'resource_pool_path' property.
# 
# @param resource_pool_path  - New value for the field.
# Full path to resource pool. Format: /{datacenter folder}/{datacenter name}/host/{host
#     name}/{cluster_name}/Resources/{resource pool}. e.g: /Your Datacenter Folder/Your
#     Datacenter/host/Your Cluster/Resources/Your Resource Pool
#
sub set_resource_pool_path {
   my ($self, %args) = @_;
   $self->{'resource_pool_path'} = $args{'resource_pool_path'}; 
   return;	
}

## @method get_cluster_path ()
# Gets the value of 'cluster_path' property.
#
# @retval cluster_path - The current value of the field.
# Full path to the cluster. Format: /{datacenter folder}/{datacenter
#     name}/host/{cluster_name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your
#     Cluster
#
# Optional#
sub get_cluster_path {
   my ($self, %args) = @_;
   return $self->{'cluster_path'}; 	
}

## @method set_cluster_path ()
# Sets the given value for 'cluster_path' property.
# 
# @param cluster_path  - New value for the field.
# Full path to the cluster. Format: /{datacenter folder}/{datacenter
#     name}/host/{cluster_name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your
#     Cluster
#
sub set_cluster_path {
   my ($self, %args) = @_;
   $self->{'cluster_path'} = $args{'cluster_path'}; 
   return;	
}

## @method get_host_path ()
# Gets the value of 'host_path' property.
#
# @retval host_path - The current value of the field.
# Full path to an ESX host. Format: /{datacenter folder}/{datacenter name}/host/{host
#     name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your Host
#
# Optional#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationRequest
#
#
# This subsection describes the ESX or VC on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.destination_location_request');
   $self->set_binding_field('key' => 'destination_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::ValidationDestinationLocation'));
   bless $self, $class;
   return $self;
}

## @method get_destination_location ()
# Gets the value of 'destination_location' property.
#
# @retval destination_location - The current value of the field.
# The destination location configuration.
#
# ValidationDestinationLocation#
sub get_destination_location {
   my ($self, %args) = @_;
   return $self->{'destination_location'}; 	
}

## @method set_destination_location ()
# Sets the given value for 'destination_location' property.
# 
# @param destination_location  - New value for the field.
# The destination location configuration.
#
sub set_destination_location {
   my ($self, %args) = @_;
   $self->{'destination_location'} = $args{'destination_location'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::ValidationDestinationLocation
#
#
# This subsection describes the ESX or VC on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Validation::ValidationDestinationLocation;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::ValidationDestinationLocation structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::ValidationDestinationLocation');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.validation_destination_location');
   $self->set_binding_field('key' => 'esx', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::DestinationLocationEsx')));
   $self->set_binding_field('key' => 'vcenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::DestinationLocationVc')));
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


## @class Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationEsx
#
#
# This section describes the ESX host on which to deploy the appliance. Required if you
#     are deploying the appliance directly on an ESX host.

package Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationEsx;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationEsx structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationEsx');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.destination_location_esx');
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


## @class Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationVc
#
#
# This subsection describes the vCenter on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationVc;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationVc structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::DestinationLocationVc');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.destination_location_vc');
   $self->set_binding_field('key' => 'connection', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   $self->set_binding_field('key' => 'inventory', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'VcInventory')));
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
# Optional#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::HostConfigRequest
#
#
# Data container that contains the information needed to validate appliance name.

package Com::Vmware::Vcenter::Lcm::Validation::HostConfigRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::HostConfigRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::HostConfigRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.host_config_request');
   $self->set_binding_field('key' => 'destination_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::HostConfigDestinationLocation'));
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::HostConfigDestinationAppliance'));
   bless $self, $class;
   return $self;
}

## @method get_destination_location ()
# Gets the value of 'destination_location' property.
#
# @retval destination_location - The current value of the field.
# This subsection describes the ESX or VC on which to deploy the appliance.
#
# HostConfigDestinationLocation#
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
# HostConfigDestinationAppliance#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::HostConfigDestinationAppliance
#
#
# Data container for appliance name information used in validation of appliance name
#     request.

package Com::Vmware::Vcenter::Lcm::Validation::HostConfigDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::HostConfigDestinationAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'appliance_type',
         'case_map' => {
               'VCSA_EXTERNAL' => [],
               'VCSA_EMBEDDED' => [],
               'PSC' => [],
               'VMC' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{appliance_name} = $args{'appliance_name'};
   $self->{appliance_type} = $args{'appliance_type'};
   $self->{appliance_size} = $args{'appliance_size'};
   $self->{appliance_disk_size} = $args{'appliance_disk_size'};
   $self->{thin_disk_mode} = $args{'thin_disk_mode'};
   $self->{ova_location} = $args{'ova_location'};
   $self->{ova_location_ssl_verify} = $args{'ova_location_ssl_verify'};
   $self->{ova_location_ssl_thumbprint} = $args{'ova_location_ssl_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::HostConfigDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.host_config_destination_appliance');
   $self->set_binding_field('key' => 'appliance_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'appliance_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ApplianceType'));
   $self->set_binding_field('key' => 'appliance_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ApplianceSize')));
   $self->set_binding_field('key' => 'appliance_disk_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'StorageSize')));
   $self->set_binding_field('key' => 'thin_disk_mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'ova_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ova_location_ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ova_location_ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_appliance_name ()
# Gets the value of 'appliance_name' property.
#
# @retval appliance_name - The current value of the field.
# The name of the appliance to deploy.
#
# String#
sub get_appliance_name {
   my ($self, %args) = @_;
   return $self->{'appliance_name'}; 	
}

## @method set_appliance_name ()
# Sets the given value for 'appliance_name' property.
# 
# @param appliance_name  - New value for the field.
# The name of the appliance to deploy.
#
sub set_appliance_name {
   my ($self, %args) = @_;
   $self->{'appliance_name'} = $args{'appliance_name'}; 
   return;	
}

## @method get_appliance_type ()
# Gets the value of 'appliance_type' property.
#
# @retval appliance_type - The current value of the field.
# The type of appliance to deploy.
#
# ApplianceType#
sub get_appliance_type {
   my ($self, %args) = @_;
   return $self->{'appliance_type'}; 	
}

## @method set_appliance_type ()
# Sets the given value for 'appliance_type' property.
# 
# @param appliance_type  - New value for the field.
# The type of appliance to deploy.
#
sub set_appliance_type {
   my ($self, %args) = @_;
   $self->{'appliance_type'} = $args{'appliance_type'}; 
   return;	
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

## @method get_thin_disk_mode ()
# Gets the value of 'thin_disk_mode' property.
#
# @retval thin_disk_mode - The current value of the field.
# Whether to deploy the appliance with thin mode virtual disks.
#
# boolean#
sub get_thin_disk_mode {
   my ($self, %args) = @_;
   return $self->{'thin_disk_mode'}; 	
}

## @method set_thin_disk_mode ()
# Sets the given value for 'thin_disk_mode' property.
# 
# @param thin_disk_mode  - New value for the field.
# Whether to deploy the appliance with thin mode virtual disks.
#
sub set_thin_disk_mode {
   my ($self, %args) = @_;
   $self->{'thin_disk_mode'} = $args{'thin_disk_mode'}; 
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


## @class Com::Vmware::Vcenter::Lcm::Validation::HostConfigDestinationLocation
#
#
# This subsection describes the ESX or VC on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Validation::HostConfigDestinationLocation;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::HostConfigDestinationLocation structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::HostConfigDestinationLocation');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.host_config_destination_location');
   $self->set_binding_field('key' => 'esx', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::HostConfigEsx')));
   $self->set_binding_field('key' => 'vcenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::HostConfigVc')));
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


## @class Com::Vmware::Vcenter::Lcm::Validation::HostConfigEsx
#
#
# This section describes the ESX host on which to deploy the appliance. Required if you
#     are deploying the appliance directly on an ESX host.

package Com::Vmware::Vcenter::Lcm::Validation::HostConfigEsx;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::HostConfigEsx structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::HostConfigEsx');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.host_config_esx');
   $self->set_binding_field('key' => 'connection', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   $self->set_binding_field('key' => 'inventory', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::HostConfigEsxInventory'));
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
# The configuration of ESX inventory.
#
# HostConfigEsxInventory#
sub get_inventory {
   my ($self, %args) = @_;
   return $self->{'inventory'}; 	
}

## @method set_inventory ()
# Sets the given value for 'inventory' property.
# 
# @param inventory  - New value for the field.
# The configuration of ESX inventory.
#
sub set_inventory {
   my ($self, %args) = @_;
   $self->{'inventory'} = $args{'inventory'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::HostConfigEsxInventory
#
#
# The configuration of ESX inventory.

package Com::Vmware::Vcenter::Lcm::Validation::HostConfigEsxInventory;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::HostConfigEsxInventory structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore_name} = $args{'datastore_name'};
   $self->{resource_pool_path} = $args{'resource_pool_path'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::HostConfigEsxInventory');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.host_config_esx_inventory');
   $self->set_binding_field('key' => 'datastore_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'resource_pool_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_datastore_name ()
# Gets the value of 'datastore_name' property.
#
# @retval datastore_name - The current value of the field.
# The datastore on which to store the files of the appliance. This value has to be
#     either a specific datastore name, or a specific datastore in a datastore cluster. The
#     datastore must be accessible from the ESX host and must have at least 25 GB of free
#     space. Otherwise, the new appliance might not power on.
#
# String#
sub get_datastore_name {
   my ($self, %args) = @_;
   return $self->{'datastore_name'}; 	
}

## @method set_datastore_name ()
# Sets the given value for 'datastore_name' property.
# 
# @param datastore_name  - New value for the field.
# The datastore on which to store the files of the appliance. This value has to be
#     either a specific datastore name, or a specific datastore in a datastore cluster. The
#     datastore must be accessible from the ESX host and must have at least 25 GB of free
#     space. Otherwise, the new appliance might not power on.
#
sub set_datastore_name {
   my ($self, %args) = @_;
   $self->{'datastore_name'} = $args{'datastore_name'}; 
   return;	
}

## @method get_resource_pool_path ()
# Gets the value of 'resource_pool_path' property.
#
# @retval resource_pool_path - The current value of the field.
# The path to the resource pool on the ESX host in which the appliance will be deployed.
#
# Optional#
sub get_resource_pool_path {
   my ($self, %args) = @_;
   return $self->{'resource_pool_path'}; 	
}

## @method set_resource_pool_path ()
# Sets the given value for 'resource_pool_path' property.
# 
# @param resource_pool_path  - New value for the field.
# The path to the resource pool on the ESX host in which the appliance will be deployed.
#
sub set_resource_pool_path {
   my ($self, %args) = @_;
   $self->{'resource_pool_path'} = $args{'resource_pool_path'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::HostConfigVc
#
#
# This subsection describes the vCenter on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Validation::HostConfigVc;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::HostConfigVc structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::HostConfigVc');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.host_config_vc');
   $self->set_binding_field('key' => 'connection', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   $self->set_binding_field('key' => 'inventory', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::HostConfigVcInventory'));
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
# HostConfigVcInventory#
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


## @class Com::Vmware::Vcenter::Lcm::Validation::HostConfigVcInventory
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

package Com::Vmware::Vcenter::Lcm::Validation::HostConfigVcInventory;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::HostConfigVcInventory structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm_folder_path} = $args{'vm_folder_path'};
   $self->{resource_pool_path} = $args{'resource_pool_path'};
   $self->{cluster_path} = $args{'cluster_path'};
   $self->{host_path} = $args{'host_path'};
   $self->{datastore_name} = $args{'datastore_name'};
   $self->{datastore_cluster_name} = $args{'datastore_cluster_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::HostConfigVcInventory');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.host_config_vc_inventory');
   $self->set_binding_field('key' => 'vm_folder_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'datastore_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'datastore_cluster_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_vm_folder_path ()
# Gets the value of 'vm_folder_path' property.
#
# @retval vm_folder_path - The current value of the field.
# Path of the VM folder. VM folder must be visible by the Data Center of the compute
#     resourceFormat:{vm_folder1}/{vm_folder2}e.g.:&apos;VM Folder 0/VM Folder1&apos;.
#
# Optional#
sub get_vm_folder_path {
   my ($self, %args) = @_;
   return $self->{'vm_folder_path'}; 	
}

## @method set_vm_folder_path ()
# Sets the given value for 'vm_folder_path' property.
# 
# @param vm_folder_path  - New value for the field.
# Path of the VM folder. VM folder must be visible by the Data Center of the compute
#     resourceFormat:{vm_folder1}/{vm_folder2}e.g.:&apos;VM Folder 0/VM Folder1&apos;.
#
sub set_vm_folder_path {
   my ($self, %args) = @_;
   $self->{'vm_folder_path'} = $args{'vm_folder_path'}; 
   return;	
}

## @method get_resource_pool_path ()
# Gets the value of 'resource_pool_path' property.
#
# @retval resource_pool_path - The current value of the field.
# Full path to resource pool. Format: /{datacenter folder}/{datacenter name}/host/{host
#     name}/{cluster_name}/Resources/{resource pool}. e.g: /Your Datacenter Folder/Your
#     Datacenter/host/Your Cluster/Resources/Your Resource Pool
#
# Optional#
sub get_resource_pool_path {
   my ($self, %args) = @_;
   return $self->{'resource_pool_path'}; 	
}

## @method set_resource_pool_path ()
# Sets the given value for 'resource_pool_path' property.
# 
# @param resource_pool_path  - New value for the field.
# Full path to resource pool. Format: /{datacenter folder}/{datacenter name}/host/{host
#     name}/{cluster_name}/Resources/{resource pool}. e.g: /Your Datacenter Folder/Your
#     Datacenter/host/Your Cluster/Resources/Your Resource Pool
#
sub set_resource_pool_path {
   my ($self, %args) = @_;
   $self->{'resource_pool_path'} = $args{'resource_pool_path'}; 
   return;	
}

## @method get_cluster_path ()
# Gets the value of 'cluster_path' property.
#
# @retval cluster_path - The current value of the field.
# Full path to the cluster. Format: /{datacenter folder}/{datacenter
#     name}/host/{cluster_name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your
#     Cluster
#
# Optional#
sub get_cluster_path {
   my ($self, %args) = @_;
   return $self->{'cluster_path'}; 	
}

## @method set_cluster_path ()
# Sets the given value for 'cluster_path' property.
# 
# @param cluster_path  - New value for the field.
# Full path to the cluster. Format: /{datacenter folder}/{datacenter
#     name}/host/{cluster_name}. e.g: /Your Datacenter Folder/Your Datacenter/host/Your
#     Cluster
#
sub set_cluster_path {
   my ($self, %args) = @_;
   $self->{'cluster_path'} = $args{'cluster_path'}; 
   return;	
}

## @method get_host_path ()
# Gets the value of 'host_path' property.
#
# @retval host_path - The current value of the field.

#
# Optional#
sub get_host_path {
   my ($self, %args) = @_;
   return $self->{'host_path'}; 	
}

## @method set_host_path ()
# Sets the given value for 'host_path' property.
# 
# @param host_path  - New value for the field.

#
sub set_host_path {
   my ($self, %args) = @_;
   $self->{'host_path'} = $args{'host_path'}; 
   return;	
}

## @method get_datastore_name ()
# Gets the value of 'datastore_name' property.
#
# @retval datastore_name - The current value of the field.
# The datastore on which to store the files of the appliance. This value has to be
#     either a specific datastore name, or a specific datastore in a datastore cluster. The
#     datastore must be accessible from the ESX host and must have at least 25 GB of free
#     space. Otherwise, the new appliance might not power on.
#
# Optional#
sub get_datastore_name {
   my ($self, %args) = @_;
   return $self->{'datastore_name'}; 	
}

## @method set_datastore_name ()
# Sets the given value for 'datastore_name' property.
# 
# @param datastore_name  - New value for the field.
# The datastore on which to store the files of the appliance. This value has to be
#     either a specific datastore name, or a specific datastore in a datastore cluster. The
#     datastore must be accessible from the ESX host and must have at least 25 GB of free
#     space. Otherwise, the new appliance might not power on.
#
sub set_datastore_name {
   my ($self, %args) = @_;
   $self->{'datastore_name'} = $args{'datastore_name'}; 
   return;	
}

## @method get_datastore_cluster_name ()
# Gets the value of 'datastore_cluster_name' property.
#
# @retval datastore_cluster_name - The current value of the field.
# The datastore cluster on which to store the files of the appliance.
#
# Optional#
sub get_datastore_cluster_name {
   my ($self, %args) = @_;
   return $self->{'datastore_cluster_name'}; 	
}

## @method set_datastore_cluster_name ()
# Sets the given value for 'datastore_cluster_name' property.
# 
# @param datastore_cluster_name  - New value for the field.
# The datastore cluster on which to store the files of the appliance.
#
sub set_datastore_cluster_name {
   my ($self, %args) = @_;
   $self->{'datastore_cluster_name'} = $args{'datastore_cluster_name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::MigrateSourceApplianceRequest
#
#
# This subsection describes the ESX or VC on which to deploy the appliance.

package Com::Vmware::Vcenter::Lcm::Validation::MigrateSourceApplianceRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::MigrateSourceApplianceRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::MigrateSourceApplianceRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.migrate_source_appliance_request');
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


## @class Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationRequest
#
#
# The request that contains information needed to verify the Single Sign-On
#     configuration.

package Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationRequest structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.sso_configuration_request');
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::SsoConfigurationDestinationAppliance'));
   bless $self, $class;
   return $self;
}

## @method get_destination_appliance ()
# Gets the value of 'destination_appliance' property.
#
# @retval destination_appliance - The current value of the field.
# Destination appliance configuration needed to validate Single Sign-On.
#
# SsoConfigurationDestinationAppliance#
sub get_destination_appliance {
   my ($self, %args) = @_;
   return $self->{'destination_appliance'}; 	
}

## @method set_destination_appliance ()
# Sets the given value for 'destination_appliance' property.
# 
# @param destination_appliance  - New value for the field.
# Destination appliance configuration needed to validate Single Sign-On.
#
sub set_destination_appliance {
   my ($self, %args) = @_;
   $self->{'destination_appliance'} = $args{'destination_appliance'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationDestinationAppliance
#
#
# Spec to describe the new appliance.

package Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationDestinationAppliance structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vcsa_embedded} = $args{'vcsa_embedded'};
   $self->{psc} = $args{'psc'};
   $self->{vcsa_external} = $args{'vcsa_external'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.sso_configuration_destination_appliance');
   $self->set_binding_field('key' => 'vcsa_embedded', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::SsoConfigurationVcsaEmbedded')));
   $self->set_binding_field('key' => 'psc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Validation::SsoConfigurationPsc')));
   $self->set_binding_field('key' => 'vcsa_external', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ExternalVcsa')));
   bless $self, $class;
   return $self;
}

## @method get_vcsa_embedded ()
# Gets the value of 'vcsa_embedded' property.
#
# @retval vcsa_embedded - The current value of the field.
# Configuration of Single Sign-On for deploying Embedded.
#
# Optional#
sub get_vcsa_embedded {
   my ($self, %args) = @_;
   return $self->{'vcsa_embedded'}; 	
}

## @method set_vcsa_embedded ()
# Sets the given value for 'vcsa_embedded' property.
# 
# @param vcsa_embedded  - New value for the field.
# Configuration of Single Sign-On for deploying Embedded.
#
sub set_vcsa_embedded {
   my ($self, %args) = @_;
   $self->{'vcsa_embedded'} = $args{'vcsa_embedded'}; 
   return;	
}

## @method get_psc ()
# Gets the value of 'psc' property.
#
# @retval psc - The current value of the field.
# Configuration of Single Sign-On for deploying PSC.
#
# Optional#
sub get_psc {
   my ($self, %args) = @_;
   return $self->{'psc'}; 	
}

## @method set_psc ()
# Sets the given value for 'psc' property.
# 
# @param psc  - New value for the field.
# Configuration of Single Sign-On for deploying PSC.
#
sub set_psc {
   my ($self, %args) = @_;
   $self->{'psc'} = $args{'psc'}; 
   return;	
}

## @method get_vcsa_external ()
# Gets the value of 'vcsa_external' property.
#
# @retval vcsa_external - The current value of the field.
# Configuration of Single Sign-On for deploying management node.
#
# Optional#
sub get_vcsa_external {
   my ($self, %args) = @_;
   return $self->{'vcsa_external'}; 	
}

## @method set_vcsa_external ()
# Sets the given value for 'vcsa_external' property.
# 
# @param vcsa_external  - New value for the field.
# Configuration of Single Sign-On for deploying management node.
#
sub set_vcsa_external {
   my ($self, %args) = @_;
   $self->{'vcsa_external'} = $args{'vcsa_external'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationVcsaEmbedded
#
#
# Spec used to configure an embedded vCenter Server. This field describes how the
#     embedded vCenter Server appliance should be configured.

package Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationVcsaEmbedded;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationVcsaEmbedded structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{standalone} = $args{'standalone'};
   $self->{replicated} = $args{'replicated'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationVcsaEmbedded');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.sso_configuration_vcsa_embedded');
   $self->set_binding_field('key' => 'standalone', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'EmbeddedStandaloneVcsa')));
   $self->set_binding_field('key' => 'replicated', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'EmbeddedReplicatedVcsa')));
   bless $self, $class;
   return $self;
}

## @method get_standalone ()
# Gets the value of 'standalone' property.
#
# @retval standalone - The current value of the field.
# Spec used to configure a standalone embedded vCenter Server. This field describes how
#     the standalone vCenter Server appliance should be configured.
#
# Optional#
sub get_standalone {
   my ($self, %args) = @_;
   return $self->{'standalone'}; 	
}

## @method set_standalone ()
# Sets the given value for 'standalone' property.
# 
# @param standalone  - New value for the field.
# Spec used to configure a standalone embedded vCenter Server. This field describes how
#     the standalone vCenter Server appliance should be configured.
#
sub set_standalone {
   my ($self, %args) = @_;
   $self->{'standalone'} = $args{'standalone'}; 
   return;	
}

## @method get_replicated ()
# Gets the value of 'replicated' property.
#
# @retval replicated - The current value of the field.
# Spec used to configure a replicated embedded vCenter Server. This field describes how
#     the replicated vCenter Server appliance should be configured.
#
# Optional#
sub get_replicated {
   my ($self, %args) = @_;
   return $self->{'replicated'}; 	
}

## @method set_replicated ()
# Sets the given value for 'replicated' property.
# 
# @param replicated  - New value for the field.
# Spec used to configure a replicated embedded vCenter Server. This field describes how
#     the replicated vCenter Server appliance should be configured.
#
sub set_replicated {
   my ($self, %args) = @_;
   $self->{'replicated'} = $args{'replicated'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationPsc
#
#
# Spec used to configure a Platform Services Controller. This section describes how the
#     Platform Services Controller appliance should be configured. If unset, either 
#     ``#vcsaEmbedded``  or  ``#vcsaExternal``  must be provided.

package Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationPsc;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationPsc structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{standalone} = $args{'standalone'};
   $self->{replicated} = $args{'replicated'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Validation::SsoConfigurationPsc');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.validation.sso_configuration_psc');
   $self->set_binding_field('key' => 'standalone', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'PscStandalone')));
   $self->set_binding_field('key' => 'replicated', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'PscReplicated')));
   bless $self, $class;
   return $self;
}

## @method get_standalone ()
# Gets the value of 'standalone' property.
#
# @retval standalone - The current value of the field.
# Spec used to configure a standalone Platform Services Controller. This section
#     describes how the standalone PSC should be configured.
#
# Optional#
sub get_standalone {
   my ($self, %args) = @_;
   return $self->{'standalone'}; 	
}

## @method set_standalone ()
# Sets the given value for 'standalone' property.
# 
# @param standalone  - New value for the field.
# Spec used to configure a standalone Platform Services Controller. This section
#     describes how the standalone PSC should be configured.
#
sub set_standalone {
   my ($self, %args) = @_;
   $self->{'standalone'} = $args{'standalone'}; 
   return;	
}

## @method get_replicated ()
# Gets the value of 'replicated' property.
#
# @retval replicated - The current value of the field.
# Spec used to configure a replicated Platform Services Controller. This section
#     describes how the replicated PSC should be configured.
#
# Optional#
sub get_replicated {
   my ($self, %args) = @_;
   return $self->{'replicated'}; 	
}

## @method set_replicated ()
# Sets the given value for 'replicated' property.
# 
# @param replicated  - New value for the field.
# Spec used to configure a replicated Platform Services Controller. This section
#     describes how the replicated PSC should be configured.
#
sub set_replicated {
   my ($self, %args) = @_;
   $self->{'replicated'} = $args{'replicated'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Validation service
#########################################################################################
