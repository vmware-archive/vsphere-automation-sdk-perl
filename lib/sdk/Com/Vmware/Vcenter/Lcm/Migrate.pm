########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Migrate.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Migrate
# The service to migrate a windows VC to Embedded VCSA, PSC, and Management VCSA.
#

package Com::Vmware::Vcenter::Lcm::Migrate;

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
use Com::Vmware::Vcenter::Lcm::MigrateStub;

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

## @method check ()
# Performs a precheck for the given specification. The result of this operation can be
# queried by calling the cis/tasks/{task-id} with the task-id in the response of this call.
#
# @param spec [REQUIRED]  The specification of the deployment.
# . The value must be Com::Vmware::Vcenter::Lcm::Migrate::Spec.
#
# @param options [OPTIONAL]  The deployment precheck options.
# . The value must be Com::Vmware::Vcenter::Lcm::DeploymentOption or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  If the given spec and/or option contains error.
#

sub check {
   my ($self, %args) = @_;
   my $spec = $args {spec};
   my $options = $args {options};

   $self->validate_args (method_name => 'check',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check',
                         method_args => \%args);
}


## @method start ()
# Deploys the appliance for the given specification. The result of this operation can be
# queried by calling the cis/tasks/{task-id} with the task-id in the response of this call.
#
# @param spec [REQUIRED]  The specification of the deployment.
# . The value must be Com::Vmware::Vcenter::Lcm::Migrate::Spec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  If the given specification contains error.
#

sub start {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'start',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'start',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Migrate service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Migrate service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Migrate service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Migrate::MigrateDestinationAppliance
#
#
# Spec to describe the new appliance.

package Com::Vmware::Vcenter::Lcm::Migrate::MigrateDestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Migrate::MigrateDestinationAppliance structure
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
               'VCSA_EMBEDDED' => ['appliance_size', 'appliance_disk_size', 'vcsa_embedded'],
               'VCSA_EXTERNAL' => ['appliance_size', 'appliance_disk_size'],
               'PSC' => ['psc'],
               'VMC' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{appliance_name} = $args{'appliance_name'};
   $self->{appliance_type} = $args{'appliance_type'};
   $self->{appliance_size} = $args{'appliance_size'};
   $self->{appliance_disk_size} = $args{'appliance_disk_size'};
   $self->{root_password} = $args{'root_password'};
   $self->{thin_disk_mode} = $args{'thin_disk_mode'};
   $self->{ova_location} = $args{'ova_location'};
   $self->{ova_location_ssl_verify} = $args{'ova_location_ssl_verify'};
   $self->{ova_location_ssl_thumbprint} = $args{'ova_location_ssl_thumbprint'};
   $self->{ovftool_location} = $args{'ovftool_location'};
   $self->{ovftool_location_ssl_verify} = $args{'ovftool_location_ssl_verify'};
   $self->{ovftool_location_ssl_thumbprint} = $args{'ovftool_location_ssl_thumbprint'};
   $self->{active_directory_domain} = $args{'active_directory_domain'};
   $self->{active_directory_username} = $args{'active_directory_username'};
   $self->{active_directory_password} = $args{'active_directory_password'};
   $self->{services} = $args{'services'};
   $self->{temporary_network} = $args{'temporary_network'};
   $self->{history} = $args{'history'};
   $self->{ovftool_arguments} = $args{'ovftool_arguments'};
   $self->{vcsa_embedded} = $args{'vcsa_embedded'};
   $self->{psc} = $args{'psc'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Migrate::MigrateDestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.migrate.migrate_destination_appliance');
   $self->set_binding_field('key' => 'appliance_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'appliance_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ApplianceType')));
   $self->set_binding_field('key' => 'appliance_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ApplianceSize')));
   $self->set_binding_field('key' => 'appliance_disk_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'StorageSize')));
   $self->set_binding_field('key' => 'root_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'thin_disk_mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'ova_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ova_location_ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ova_location_ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ovftool_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ovftool_location_ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ovftool_location_ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'active_directory_domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'active_directory_username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'active_directory_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'services', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'UpgradeDestinationApplianceService'));
   $self->set_binding_field('key' => 'temporary_network', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'TemporaryNetwork'));
   $self->set_binding_field('key' => 'history', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'History')));
   $self->set_binding_field('key' => 'ovftool_arguments', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::StringType()})))));
   $self->set_binding_field('key' => 'vcsa_embedded', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'CeipOnlySso')));
   $self->set_binding_field('key' => 'psc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'CeipOnlySso')));
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
# Optional#
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
# The location of the OVA file.
#
# String#
sub get_ova_location {
   my ($self, %args) = @_;
   return $self->{'ova_location'}; 	
}

## @method set_ova_location ()
# Sets the given value for 'ova_location' property.
# 
# @param ova_location  - New value for the field.
# The location of the OVA file.
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

## @method get_ovftool_location ()
# Gets the value of 'ovftool_location' property.
#
# @retval ovftool_location - The current value of the field.
# The location of the OVF Tool.
#
# String#
sub get_ovftool_location {
   my ($self, %args) = @_;
   return $self->{'ovftool_location'}; 	
}

## @method set_ovftool_location ()
# Sets the given value for 'ovftool_location' property.
# 
# @param ovftool_location  - New value for the field.
# The location of the OVF Tool.
#
sub set_ovftool_location {
   my ($self, %args) = @_;
   $self->{'ovftool_location'} = $args{'ovftool_location'}; 
   return;	
}

## @method get_ovftool_location_ssl_verify ()
# Gets the value of 'ovftool_location_ssl_verify' property.
#
# @retval ovftool_location_ssl_verify - The current value of the field.
# Flag to indicate whether or not to verify the SSL thumbprint of OVF Tool location.
#
# Optional#
sub get_ovftool_location_ssl_verify {
   my ($self, %args) = @_;
   return $self->{'ovftool_location_ssl_verify'}; 	
}

## @method set_ovftool_location_ssl_verify ()
# Sets the given value for 'ovftool_location_ssl_verify' property.
# 
# @param ovftool_location_ssl_verify  - New value for the field.
# Flag to indicate whether or not to verify the SSL thumbprint of OVF Tool location.
#
sub set_ovftool_location_ssl_verify {
   my ($self, %args) = @_;
   $self->{'ovftool_location_ssl_verify'} = $args{'ovftool_location_ssl_verify'}; 
   return;	
}

## @method get_ovftool_location_ssl_thumbprint ()
# Gets the value of 'ovftool_location_ssl_thumbprint' property.
#
# @retval ovftool_location_ssl_thumbprint - The current value of the field.
# SSL thumbprint of OVF Tool location to be verified.
#
# Optional#
sub get_ovftool_location_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ovftool_location_ssl_thumbprint'}; 	
}

## @method set_ovftool_location_ssl_thumbprint ()
# Sets the given value for 'ovftool_location_ssl_thumbprint' property.
# 
# @param ovftool_location_ssl_thumbprint  - New value for the field.
# SSL thumbprint of OVF Tool location to be verified.
#
sub set_ovftool_location_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ovftool_location_ssl_thumbprint'} = $args{'ovftool_location_ssl_thumbprint'}; 
   return;	
}

## @method get_active_directory_domain ()
# Gets the value of 'active_directory_domain' property.
#
# @retval active_directory_domain - The current value of the field.
# The name of the Active Directory domain to which the source Windows installation is
#     joined. If the source Windows installation is not joined to an Active Directory
#     domain, omit this parameter.
#
# Optional#
sub get_active_directory_domain {
   my ($self, %args) = @_;
   return $self->{'active_directory_domain'}; 	
}

## @method set_active_directory_domain ()
# Sets the given value for 'active_directory_domain' property.
# 
# @param active_directory_domain  - New value for the field.
# The name of the Active Directory domain to which the source Windows installation is
#     joined. If the source Windows installation is not joined to an Active Directory
#     domain, omit this parameter.
#
sub set_active_directory_domain {
   my ($self, %args) = @_;
   $self->{'active_directory_domain'} = $args{'active_directory_domain'}; 
   return;	
}

## @method get_active_directory_username ()
# Gets the value of 'active_directory_username' property.
#
# @retval active_directory_username - The current value of the field.
# Administrator user name of the Active Directory domain to which the source Windows
#     installation is joined. The format can be either &apos;username&apos; or
#     &apos;username@domain&apos;
#
# Optional#
sub get_active_directory_username {
   my ($self, %args) = @_;
   return $self->{'active_directory_username'}; 	
}

## @method set_active_directory_username ()
# Sets the given value for 'active_directory_username' property.
# 
# @param active_directory_username  - New value for the field.
# Administrator user name of the Active Directory domain to which the source Windows
#     installation is joined. The format can be either &apos;username&apos; or
#     &apos;username@domain&apos;
#
sub set_active_directory_username {
   my ($self, %args) = @_;
   $self->{'active_directory_username'} = $args{'active_directory_username'}; 
   return;	
}

## @method get_active_directory_password ()
# Gets the value of 'active_directory_password' property.
#
# @retval active_directory_password - The current value of the field.
# Password for the active directory user.
#
# Optional#
sub get_active_directory_password {
   my ($self, %args) = @_;
   return $self->{'active_directory_password'}; 	
}

## @method set_active_directory_password ()
# Sets the given value for 'active_directory_password' property.
# 
# @param active_directory_password  - New value for the field.
# Password for the active directory user.
#
sub set_active_directory_password {
   my ($self, %args) = @_;
   $self->{'active_directory_password'} = $args{'active_directory_password'}; 
   return;	
}

## @method get_services ()
# Gets the value of 'services' property.
#
# @retval services - The current value of the field.
# Spec to configure vCenter server services.
#
# UpgradeDestinationApplianceService#
sub get_services {
   my ($self, %args) = @_;
   return $self->{'services'}; 	
}

## @method set_services ()
# Sets the given value for 'services' property.
# 
# @param services  - New value for the field.
# Spec to configure vCenter server services.
#
sub set_services {
   my ($self, %args) = @_;
   $self->{'services'} = $args{'services'}; 
   return;	
}

## @method get_temporary_network ()
# Gets the value of 'temporary_network' property.
#
# @retval temporary_network - The current value of the field.
# The network settings of the appliance to be deployed.
#
# TemporaryNetwork#
sub get_temporary_network {
   my ($self, %args) = @_;
   return $self->{'temporary_network'}; 	
}

## @method set_temporary_network ()
# Sets the given value for 'temporary_network' property.
# 
# @param temporary_network  - New value for the field.
# The network settings of the appliance to be deployed.
#
sub set_temporary_network {
   my ($self, %args) = @_;
   $self->{'temporary_network'} = $args{'temporary_network'}; 
   return;	
}

## @method get_history ()
# Gets the value of 'history' property.
#
# @retval history - The current value of the field.
# History data to be included in the upgrade and migrate
#
# Optional#
sub get_history {
   my ($self, %args) = @_;
   return $self->{'history'}; 	
}

## @method set_history ()
# Sets the given value for 'history' property.
# 
# @param history  - New value for the field.
# History data to be included in the upgrade and migrate
#
sub set_history {
   my ($self, %args) = @_;
   $self->{'history'} = $args{'history'}; 
   return;	
}

## @method get_ovftool_arguments ()
# Gets the value of 'ovftool_arguments' property.
#
# @retval ovftool_arguments - The current value of the field.
# The OVF Tool arguments to be included.
#
# Optional#
sub get_ovftool_arguments {
   my ($self, %args) = @_;
   return $self->{'ovftool_arguments'}; 	
}

## @method set_ovftool_arguments ()
# Sets the given value for 'ovftool_arguments' property.
# 
# @param ovftool_arguments  - New value for the field.
# The OVF Tool arguments to be included.
#
sub set_ovftool_arguments {
   my ($self, %args) = @_;
   $self->{'ovftool_arguments'} = $args{'ovftool_arguments'}; 
   return;	
}

## @method get_vcsa_embedded ()
# Gets the value of 'vcsa_embedded' property.
#
# @retval vcsa_embedded - The current value of the field.
# Spec used to configure an embedded vCenter Server. This field describes how the
#     embedded vCenter Server appliance should be configured.
#
# optional#
sub get_vcsa_embedded {
   my ($self, %args) = @_;
   return $self->{'vcsa_embedded'}; 	
}

## @method set_vcsa_embedded ()
# Sets the given value for 'vcsa_embedded' property.
# 
# @param vcsa_embedded  - New value for the field.
# Spec used to configure an embedded vCenter Server. This field describes how the
#     embedded vCenter Server appliance should be configured.
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
# Spec used to configure a Platform Services Controller. This section describes how the
#     Platform Services Controller appliance should be configured. If unset, either 
#     ``vcsaEmbedded``  or  ``#vcsaExternal``  must be provided.
#
# optional#
sub get_psc {
   my ($self, %args) = @_;
   return $self->{'psc'}; 	
}

## @method set_psc ()
# Sets the given value for 'psc' property.
# 
# @param psc  - New value for the field.
# Spec used to configure a Platform Services Controller. This section describes how the
#     Platform Services Controller appliance should be configured. If unset, either 
#     ``vcsaEmbedded``  or  ``#vcsaExternal``  must be provided.
#
sub set_psc {
   my ($self, %args) = @_;
   $self->{'psc'} = $args{'psc'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Migrate::Spec
#
#
# Spec to describe the configuration parameters that are required for migrating a
#     Windows vCenter Server.

package Com::Vmware::Vcenter::Lcm::Migrate::Spec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Migrate::Spec structure
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
   $self->{source_vc_windows} = $args{'source_vc_windows'};
   $self->{existing_migration_assistant} = $args{'existing_migration_assistant'};
   $self->{start_migration_assistant} = $args{'start_migration_assistant'};
   $self->{source_vum_location} = $args{'source_vum_location'};
   $self->{source_vum} = $args{'source_vum'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Migrate::Spec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.migrate.spec');
   $self->set_binding_field('key' => 'destination_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'DestinationLocation'));
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Migrate::MigrateDestinationAppliance'));
   $self->set_binding_field('key' => 'source_vc_windows', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'SourceVcWindows'));
   $self->set_binding_field('key' => 'existing_migration_assistant', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ExistingMigrationAssistant')));
   $self->set_binding_field('key' => 'start_migration_assistant', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'MigrationAssistant')));
   $self->set_binding_field('key' => 'source_vum_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection')));
   $self->set_binding_field('key' => 'source_vum', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'SourceVum')));
   bless $self, $class;
   return $self;
}

## @method get_destination_location ()
# Gets the value of 'destination_location' property.
#
# @retval destination_location - The current value of the field.
# This subsection describes the ESX or VC on which to deploy the appliance.
#
# DestinationLocation#
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
# MigrateDestinationAppliance#
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



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Migrate service
#########################################################################################
