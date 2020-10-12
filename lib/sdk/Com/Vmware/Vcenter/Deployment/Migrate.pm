########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Migrate.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Deployment::Migrate;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Deployment::Migrate
# The  ``Com::Vmware::Vcenter::Deployment::Migrate``   *interface*  provides  *methods* 
#     to configure the migration of this appliance from an existing vCenter for Windows.
#     This  *interface*  was added in vSphere API 7.0.0.0.
#

package Com::Vmware::Vcenter::Deployment::Migrate;

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
use Com::Vmware::Vcenter::Deployment::MigrateStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.deployment.migrate';


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
# Get the MigrateSpec parameters used to configure the ongoing appliance migration. This 
# *method*  was added in vSphere API 7.0.0.0.
#
# @retval 
# MigrateSpec parameters being used to configure appliance migration.
# The return type will be Com::Vmware::Vcenter::Deployment::Migrate::MigrateSpec
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if appliance is not in MIGRATE_PROGRESS state.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method check ()
# Run sanity checks using the MigrateSpec parameters passed. This  *method*  was added in
# vSphere API 7.0.0.0.
#
# @param spec [REQUIRED] MigrateSpec parameters to run sanity check on.
# . The value must be Com::Vmware::Vcenter::Deployment::Migrate::MigrateSpec.
#
# @retval 
# CheckInfo containing the check results.
# The return type will be Com::Vmware::Vcenter::Deployment::CheckInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if migration assistant credentials are not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed arguments are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the appliance is not in INITIALIZED state.
#
sub check {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check',
                         method_args => \%args);
}

## @method start ()
# Start the appliance migration. This  *method*  was added in vSphere API 7.0.0.0.
#
# @param spec [REQUIRED] MigrateSpec parameters to configure the appliance migration.
# . The value must be Com::Vmware::Vcenter::Deployment::Migrate::MigrateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if migration assistant credentials are not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed arguments are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the appliance is not in INITIALIZED state.
#
sub start {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'start',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'start',
                         method_args => \%args);
}

## @method cancel ()
# Cancel the appliance migration that is in progress. This  *method*  was added in vSphere
# API 7.0.0.0.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the appliance is not in CONFIG_IN_PROGRESS state and if the operation is not
#     INSTALL.
#
sub cancel {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'cancel', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Deployment::Migrate service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Deployment::Migrate service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Deployment::Migrate service
#########################################################################################

## @class Com::Vmware::Vcenter::Deployment::Migrate::VcsaEmbeddedSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Migrate::VcsaEmbeddedSpec``   *class* 
#     contains information used to migrate an embedded vCenter Server for Windows to
#     embedded vCenter Server appliance. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Deployment::Migrate::VcsaEmbeddedSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Migrate::VcsaEmbeddedSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ceip_enabled} = $args{'ceip_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Migrate::VcsaEmbeddedSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.migrate.vcsa_embedded_spec');
   $self->set_binding_field('key' => 'ceip_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_ceip_enabled ()
# Gets the value of 'ceip_enabled' property.
#
# @retval ceip_enabled - The current value of the field.
# Customer experience improvement program should be enabled or disabled for this
#     embedded vCenter Server migration. This  *field*  was added in vSphere API 7.0.0.0.
#
# boolean#
sub get_ceip_enabled {
   my ($self, %args) = @_;
   return $self->{'ceip_enabled'}; 	
}

## @method set_ceip_enabled ()
# Sets the given value for 'ceip_enabled' property.
# 
# @param ceip_enabled  - New value for the field.
# Customer experience improvement program should be enabled or disabled for this
#     embedded vCenter Server migration. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_ceip_enabled {
   my ($self, %args) = @_;
   $self->{'ceip_enabled'} = $args{'ceip_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Migrate::PscSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Migrate::PscSpec``   *class*  contains
#     information used to migrate a windows Platform Service Controller to Platform Service
#     Controller appliance. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Deployment::Migrate::PscSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Migrate::PscSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ceip_enabled} = $args{'ceip_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Migrate::PscSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.migrate.psc_spec');
   $self->set_binding_field('key' => 'ceip_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_ceip_enabled ()
# Gets the value of 'ceip_enabled' property.
#
# @retval ceip_enabled - The current value of the field.
# Customer experience improvement program should be enabled or disabled for this
#     Platform Services Controller migration. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# boolean#
sub get_ceip_enabled {
   my ($self, %args) = @_;
   return $self->{'ceip_enabled'}; 	
}

## @method set_ceip_enabled ()
# Sets the given value for 'ceip_enabled' property.
# 
# @param ceip_enabled  - New value for the field.
# Customer experience improvement program should be enabled or disabled for this
#     Platform Services Controller migration. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_ceip_enabled {
   my ($self, %args) = @_;
   $self->{'ceip_enabled'} = $args{'ceip_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Migrate::SourceVcWindows
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Migrate::SourceVcWindows``   *class* 
#     contains information about the windows vCenter Server that is going to be migrated.
#     This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Deployment::Migrate::SourceVcWindows;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Migrate::SourceVcWindows structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Migrate::SourceVcWindows');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.migrate.source_vc_windows');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# The IP address or DNS resolvable name of the source Windows machine. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# The IP address or DNS resolvable name of the source Windows machine. This  *field* 
#     was added in vSphere API 7.0.0.0.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# The SSO account with administrative privilege to perform the migration operation. This
#      *field*  was added in vSphere API 7.0.0.0.
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
# The SSO account with administrative privilege to perform the migration operation. This
#      *field*  was added in vSphere API 7.0.0.0.
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
# The SSO administrator account password. This  *field*  was added in vSphere API
#     7.0.0.0.
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
# The SSO administrator account password. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Migrate::MigrationAssistantSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Migrate::MigrationAssistantSpec``   *class* 
#     contains the information needed to connect to the Migration Assistant that is running
#     on the source windows vCenter Server machine. This  *class*  was added in vSphere API
#     7.0.0.0.

package Com::Vmware::Vcenter::Deployment::Migrate::MigrationAssistantSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Migrate::MigrationAssistantSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{https_port} = $args{'https_port'};
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Migrate::MigrationAssistantSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.migrate.migration_assistant_spec');
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# The HTTPS port being used by Migration Assistant. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
# Optional#
sub get_https_port {
   my ($self, %args) = @_;
   return $self->{'https_port'}; 	
}

## @method set_https_port ()
# Sets the given value for 'https_port' property.
# 
# @param https_port  - New value for the field.
# The HTTPS port being used by Migration Assistant. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# SHA1 thumbprint of the Migration Assistant SSL certificate that will be used for
#     verification. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.
# SHA1 thumbprint of the Migration Assistant SSL certificate that will be used for
#     verification. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Migrate::MigrateSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Migrate::MigrateSpec``   *class*  contains
#     the fields to migrate an existing vCenter Server for Windows to an appliance. This 
#     *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Deployment::Migrate::MigrateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Migrate::MigrateSpec structure
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
   $self->{existing_migration_assistant} = $args{'existing_migration_assistant'};
   $self->{history} = $args{'history'};
   $self->{vcsa_embedded} = $args{'vcsa_embedded'};
   $self->{psc} = $args{'psc'};
   $self->{active_directory} = $args{'active_directory'};
   $self->{auto_answer} = $args{'auto_answer'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Migrate::MigrateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.migrate.migrate_spec');
   $self->set_binding_field('key' => 'source_vc_windows', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Migrate::SourceVcWindows'));
   $self->set_binding_field('key' => 'existing_migration_assistant', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Migrate::MigrationAssistantSpec'));
   $self->set_binding_field('key' => 'history', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'HistoryMigrationSpec')));
   $self->set_binding_field('key' => 'vcsa_embedded', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Migrate::VcsaEmbeddedSpec')));
   $self->set_binding_field('key' => 'psc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Migrate::PscSpec')));
   $self->set_binding_field('key' => 'active_directory', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment::Migrate', 'type_name' => 'ActiveDirectorySpec')));
   $self->set_binding_field('key' => 'auto_answer', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_source_vc_windows ()
# Gets the value of 'source_vc_windows' property.
#
# @retval source_vc_windows - The current value of the field.
# Information specific to the Windows vCenter Server. This  *field*  was added in
#     vSphere API 7.0.0.0.
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
# Information specific to the Windows vCenter Server. This  *field*  was added in
#     vSphere API 7.0.0.0.
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
# Information specific to the Migration Assistant that is running on the Windows vCenter
#     Server. This  *field*  was added in vSphere API 7.0.0.0.
#
# MigrationAssistantSpec#
sub get_existing_migration_assistant {
   my ($self, %args) = @_;
   return $self->{'existing_migration_assistant'}; 	
}

## @method set_existing_migration_assistant ()
# Sets the given value for 'existing_migration_assistant' property.
# 
# @param existing_migration_assistant  - New value for the field.
# Information specific to the Migration Assistant that is running on the Windows vCenter
#     Server. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_existing_migration_assistant {
   my ($self, %args) = @_;
   $self->{'existing_migration_assistant'} = $args{'existing_migration_assistant'}; 
   return;	
}

## @method get_history ()
# Gets the value of 'history' property.
#
# @retval history - The current value of the field.
# Determines how vCenter history will be migrated during the migration process. vCenter
#     history consists of: <ul>
#  <li>Statistics</li>
#  <li>Events</li>
#  <li>Tasks</li>
# </ul> By default only core data will be migrated. Use this spec to define which part
#     of vCenter history data will be migrated and when. This  *field*  was added in vSphere
#     API 7.0.0.0.
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
# Determines how vCenter history will be migrated during the migration process. vCenter
#     history consists of: <ul>
#  <li>Statistics</li>
#  <li>Events</li>
#  <li>Tasks</li>
# </ul> By default only core data will be migrated. Use this spec to define which part
#     of vCenter history data will be migrated and when. This  *field*  was added in vSphere
#     API 7.0.0.0.
#
sub set_history {
   my ($self, %args) = @_;
   $self->{'history'} = $args{'history'}; 
   return;	
}

## @method get_vcsa_embedded ()
# Gets the value of 'vcsa_embedded' property.
#
# @retval vcsa_embedded - The current value of the field.
# Information specific to an embedded vCenter Server. This  *field*  was added in
#     vSphere API 7.0.0.0.
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
# Information specific to an embedded vCenter Server. This  *field*  was added in
#     vSphere API 7.0.0.0.
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
# Information specific to a Platform Services Controller. This  *field*  was added in
#     vSphere API 7.0.0.0.
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
# Information specific to a Platform Services Controller. This  *field*  was added in
#     vSphere API 7.0.0.0.
#
sub set_psc {
   my ($self, %args) = @_;
   $self->{'psc'} = $args{'psc'}; 
   return;	
}

## @method get_active_directory ()
# Gets the value of 'active_directory' property.
#
# @retval active_directory - The current value of the field.
# Information specific to the Active Directory server to which the source windows
#     vCenter Server is joined. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_active_directory {
   my ($self, %args) = @_;
   return $self->{'active_directory'}; 	
}

## @method set_active_directory ()
# Sets the given value for 'active_directory' property.
# 
# @param active_directory  - New value for the field.
# Information specific to the Active Directory server to which the source windows
#     vCenter Server is joined. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_active_directory {
   my ($self, %args) = @_;
   $self->{'active_directory'} = $args{'active_directory'}; 
   return;	
}

## @method get_auto_answer ()
# Gets the value of 'auto_answer' property.
#
# @retval auto_answer - The current value of the field.
# Use the default option for any questions that may come up during appliance
#     configuration. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_auto_answer {
   my ($self, %args) = @_;
   return $self->{'auto_answer'}; 	
}

## @method set_auto_answer ()
# Sets the given value for 'auto_answer' property.
# 
# @param auto_answer  - New value for the field.
# Use the default option for any questions that may come up during appliance
#     configuration. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_auto_answer {
   my ($self, %args) = @_;
   $self->{'auto_answer'} = $args{'auto_answer'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Deployment::Migrate service
#########################################################################################
