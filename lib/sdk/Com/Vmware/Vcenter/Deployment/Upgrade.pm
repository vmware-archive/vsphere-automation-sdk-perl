########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Upgrade.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Deployment::Upgrade
# The  ``Com::Vmware::Vcenter::Deployment::Upgrade``   *interface*  provides  *methods* 
#     to configure the upgrade of this appliance from an existing vCenter appliance. This 
#     *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::Deployment::Upgrade;

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
use Com::Vmware::Vcenter::Deployment::UpgradeStub;

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
# Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade. This 
# *method*  was added in vSphere API 6.7.
#
# @retval 
# UpgradeSpec parameters being used to configure appliance upgrade.
# The return type will be Com::Vmware::Vcenter::Deployment::Upgrade::UpgradeSpec
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if appliance is not in UPGRADE_PROGRESS state.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method check ()
# Run sanity checks using the UpgradeSpec parameters passed. This  *method*  was added in
# vSphere API 6.7.
#
# @param spec [REQUIRED] UpgradeSpec parameters to run sanity check on.
# . The value must be Com::Vmware::Vcenter::Deployment::Upgrade::UpgradeSpec.
#
# @retval 
# CheckInfo containing the check results.
# The return type will be Com::Vmware::Vcenter::Deployment::CheckInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if source credentials are not valid.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if source container credentials are not valid.
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
# Start the appliance installation. This  *method*  was added in vSphere API 6.7.
#
# @param spec [REQUIRED] UpgradeSpec parameters to configure the appliance upgrade.
# . The value must be Com::Vmware::Vcenter::Deployment::Upgrade::UpgradeSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if source credentials are not valid.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if source container credentials are not valid.
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
# Cancel the appliance upgrade that is in progress. This  *method*  was added in vSphere API
# 6.7.
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
# Begins enumerations for the Com::Vmware::Vcenter::Deployment::Upgrade service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Deployment::Upgrade service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Deployment::Upgrade service
#########################################################################################

## @class Com::Vmware::Vcenter::Deployment::Upgrade::VcsaEmbeddedSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Upgrade::VcsaEmbeddedSpec``   *class* 
#     contains information used to upgrade a Embedded vCenter Server appliance. This 
#     *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Upgrade::VcsaEmbeddedSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Upgrade::VcsaEmbeddedSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Upgrade::VcsaEmbeddedSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.upgrade.vcsa_embedded_spec');
   $self->set_binding_field('key' => 'ceip_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_ceip_enabled ()
# Gets the value of 'ceip_enabled' property.
#
# @retval ceip_enabled - The current value of the field.
# Customer experience improvement program should be enabled or disabled for this
#     embedded vCenter Server upgrade. This  *field*  was added in vSphere API 6.7.
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
#     embedded vCenter Server upgrade. This  *field*  was added in vSphere API 6.7.
#
sub set_ceip_enabled {
   my ($self, %args) = @_;
   $self->{'ceip_enabled'} = $args{'ceip_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Upgrade::PscSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Upgrade::PscSpec``   *class*  contains
#     information used to upgrade a Platform Service Controller appliance. This  *class* 
#     was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Upgrade::PscSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Upgrade::PscSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Upgrade::PscSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.upgrade.psc_spec');
   $self->set_binding_field('key' => 'ceip_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_ceip_enabled ()
# Gets the value of 'ceip_enabled' property.
#
# @retval ceip_enabled - The current value of the field.
# Customer experience improvement program should be enabled or disabled for this
#     Platform Services Controller upgrade. This  *field*  was added in vSphere API 6.7.
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
#     Platform Services Controller upgrade. This  *field*  was added in vSphere API 6.7.
#
sub set_ceip_enabled {
   my ($self, %args) = @_;
   $self->{'ceip_enabled'} = $args{'ceip_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Upgrade::SourceApplianceSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Upgrade::SourceApplianceSpec``   *class* 
#     contains information used to connect to the appliance used as the source for an
#     upgrade. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Upgrade::SourceApplianceSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Upgrade::SourceApplianceSpec structure
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
   $self->{https_port} = $args{'https_port'};
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};
   $self->{ssl_verify} = $args{'ssl_verify'};
   $self->{sso_admin_username} = $args{'sso_admin_username'};
   $self->{sso_admin_password} = $args{'sso_admin_password'};
   $self->{root_password} = $args{'root_password'};
   $self->{ssh_verify} = $args{'ssh_verify'};
   $self->{ssh_thumbprint} = $args{'ssh_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Upgrade::SourceApplianceSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.upgrade.source_appliance_spec');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'sso_admin_username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sso_admin_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'root_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'ssh_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ssh_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# The IP address or DNS resolvable name of the source appliance. This  *field*  was
#     added in vSphere API 6.7.
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
# The IP address or DNS resolvable name of the source appliance. This  *field*  was
#     added in vSphere API 6.7.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# The HTTPS port of the source appliance. This  *field*  was added in vSphere API 6.7.
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
# The HTTPS port of the source appliance. This  *field*  was added in vSphere API 6.7.
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
# SHA1 thumbprint of the server SSL certificate will be used for verification. This 
#     *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.
# SHA1 thumbprint of the server SSL certificate will be used for verification. This 
#     *field*  was added in vSphere API 6.7.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}

## @method get_ssl_verify ()
# Gets the value of 'ssl_verify' property.
#
# @retval ssl_verify - The current value of the field.
# SSL verification should be enabled or disabled for the source appliance validations.
#     By default it is enabled and will use SSL certificate for verification. If thumbprint
#     is provided, will use thumbprint for the verification. This  *field*  was added in
#     vSphere API 6.7.
#
# Optional#
sub get_ssl_verify {
   my ($self, %args) = @_;
   return $self->{'ssl_verify'}; 	
}

## @method set_ssl_verify ()
# Sets the given value for 'ssl_verify' property.
# 
# @param ssl_verify  - New value for the field.
# SSL verification should be enabled or disabled for the source appliance validations.
#     By default it is enabled and will use SSL certificate for verification. If thumbprint
#     is provided, will use thumbprint for the verification. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_ssl_verify {
   my ($self, %args) = @_;
   $self->{'ssl_verify'} = $args{'ssl_verify'}; 
   return;	
}

## @method get_sso_admin_username ()
# Gets the value of 'sso_admin_username' property.
#
# @retval sso_admin_username - The current value of the field.
# The SSO administrator account on the source appliance. This  *field*  was added in
#     vSphere API 6.7.
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
# The SSO administrator account on the source appliance. This  *field*  was added in
#     vSphere API 6.7.
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
# The SSO administrator account password. This  *field*  was added in vSphere API 6.7.
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
# The SSO administrator account password. This  *field*  was added in vSphere API 6.7.
#
sub set_sso_admin_password {
   my ($self, %args) = @_;
   $self->{'sso_admin_password'} = $args{'sso_admin_password'}; 
   return;	
}

## @method get_root_password ()
# Gets the value of 'root_password' property.
#
# @retval root_password - The current value of the field.
# The password of the root user on the source appliance. This  *field*  was added in
#     vSphere API 6.7.
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
# The password of the root user on the source appliance. This  *field*  was added in
#     vSphere API 6.7.
#
sub set_root_password {
   my ($self, %args) = @_;
   $self->{'root_password'} = $args{'root_password'}; 
   return;	
}

## @method get_ssh_verify ()
# Gets the value of 'ssh_verify' property.
#
# @retval ssh_verify - The current value of the field.
# Appliance SSH verification should be enabled or disabled. By default it is disabled
#     and will not use any verification. If thumbprint is provided, thumbprint verification
#     will be performed. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_ssh_verify {
   my ($self, %args) = @_;
   return $self->{'ssh_verify'}; 	
}

## @method set_ssh_verify ()
# Sets the given value for 'ssh_verify' property.
# 
# @param ssh_verify  - New value for the field.
# Appliance SSH verification should be enabled or disabled. By default it is disabled
#     and will not use any verification. If thumbprint is provided, thumbprint verification
#     will be performed. This  *field*  was added in vSphere API 6.7.
#
sub set_ssh_verify {
   my ($self, %args) = @_;
   $self->{'ssh_verify'} = $args{'ssh_verify'}; 
   return;	
}

## @method get_ssh_thumbprint ()
# Gets the value of 'ssh_thumbprint' property.
#
# @retval ssh_thumbprint - The current value of the field.
# MD5 thumbprint of the server SSH key will be used for verification. This  *field*  was
#     added in vSphere API 6.7.
#
# Optional#
sub get_ssh_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssh_thumbprint'}; 	
}

## @method set_ssh_thumbprint ()
# Sets the given value for 'ssh_thumbprint' property.
# 
# @param ssh_thumbprint  - New value for the field.
# MD5 thumbprint of the server SSH key will be used for verification. This  *field*  was
#     added in vSphere API 6.7.
#
sub set_ssh_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssh_thumbprint'} = $args{'ssh_thumbprint'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Upgrade::UpgradeSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Upgrade::UpgradeSpec``   *class*  contains
#     information used to configure the appliance upgrade. This  *class*  was added in
#     vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Upgrade::UpgradeSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Upgrade::UpgradeSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{source_appliance} = $args{'source_appliance'};
   $self->{source_location} = $args{'source_location'};
   $self->{history} = $args{'history'};
   $self->{vcsa_embedded} = $args{'vcsa_embedded'};
   $self->{psc} = $args{'psc'};
   $self->{auto_answer} = $args{'auto_answer'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Upgrade::UpgradeSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.upgrade.upgrade_spec');
   $self->set_binding_field('key' => 'source_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Upgrade::SourceApplianceSpec'));
   $self->set_binding_field('key' => 'source_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'LocationSpec'));
   $self->set_binding_field('key' => 'history', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'HistoryMigrationSpec')));
   $self->set_binding_field('key' => 'vcsa_embedded', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Upgrade::VcsaEmbeddedSpec')));
   $self->set_binding_field('key' => 'psc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Upgrade::PscSpec')));
   $self->set_binding_field('key' => 'auto_answer', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_source_appliance ()
# Gets the value of 'source_appliance' property.
#
# @retval source_appliance - The current value of the field.
# Source appliance spec. This  *field*  was added in vSphere API 6.7.
#
# SourceApplianceSpec#
sub get_source_appliance {
   my ($self, %args) = @_;
   return $self->{'source_appliance'}; 	
}

## @method set_source_appliance ()
# Sets the given value for 'source_appliance' property.
# 
# @param source_appliance  - New value for the field.
# Source appliance spec. This  *field*  was added in vSphere API 6.7.
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
# Source location spec. This  *field*  was added in vSphere API 6.7.
#
# LocationSpec#
sub get_source_location {
   my ($self, %args) = @_;
   return $self->{'source_location'}; 	
}

## @method set_source_location ()
# Sets the given value for 'source_location' property.
# 
# @param source_location  - New value for the field.
# Source location spec. This  *field*  was added in vSphere API 6.7.
#
sub set_source_location {
   my ($self, %args) = @_;
   $self->{'source_location'} = $args{'source_location'}; 
   return;	
}

## @method get_history ()
# Gets the value of 'history' property.
#
# @retval history - The current value of the field.
# Determines how vCenter history will be migrated during the upgrade process. vCenter
#     history consists of: <ul>
#  <li>Statistics</li>
#  <li>Events</li>
#  <li>Tasks</li>
# </ul> By default only core data will be migrated. Use this spec to define which part
#     of vCenter history data will be migrated and when. This  *field*  was added in vSphere
#     API 6.7.
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
# Determines how vCenter history will be migrated during the upgrade process. vCenter
#     history consists of: <ul>
#  <li>Statistics</li>
#  <li>Events</li>
#  <li>Tasks</li>
# </ul> By default only core data will be migrated. Use this spec to define which part
#     of vCenter history data will be migrated and when. This  *field*  was added in vSphere
#     API 6.7.
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
# Information that are specific to this embedded vCenter Server. This  *field*  was
#     added in vSphere API 6.7.
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
# Information that are specific to this embedded vCenter Server. This  *field*  was
#     added in vSphere API 6.7.
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
# Information that are specific to this Platform Services Controller. This  *field*  was
#     added in vSphere API 6.7.
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
# Information that are specific to this Platform Services Controller. This  *field*  was
#     added in vSphere API 6.7.
#
sub set_psc {
   my ($self, %args) = @_;
   $self->{'psc'} = $args{'psc'}; 
   return;	
}

## @method get_auto_answer ()
# Gets the value of 'auto_answer' property.
#
# @retval auto_answer - The current value of the field.
# Use the default option for any questions that may come up during appliance
#     configuration. This  *field*  was added in vSphere API 6.7.
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
#     configuration. This  *field*  was added in vSphere API 6.7.
#
sub set_auto_answer {
   my ($self, %args) = @_;
   $self->{'auto_answer'} = $args{'auto_answer'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Deployment::Upgrade service
#########################################################################################
