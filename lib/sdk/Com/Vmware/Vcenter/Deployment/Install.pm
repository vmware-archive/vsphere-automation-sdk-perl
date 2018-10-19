########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Install.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Deployment::Install
# The  ``Com::Vmware::Vcenter::Deployment::Install``   *interface*  provides  *methods* 
#     to configure the installation of the appliance. This  *interface*  was added in
#     vSphere API 6.7.
#

package Com::Vmware::Vcenter::Deployment::Install;

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
use Com::Vmware::Vcenter::Deployment::InstallStub;

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
# Get the parameters used to configure the ongoing appliance installation. This  *method* 
# was added in vSphere API 6.7.
#
# @retval 
# InstallSpec parameters being used to configure appliance install.
# The return type will be Com::Vmware::Vcenter::Deployment::Install::InstallSpec
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if appliance is not in INSTALL_PROGRESS state.
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


## @method check ()
# Run sanity checks using the InstallSpec parameters passed. This  *method*  was added in
# vSphere API 6.7.
#
# @param spec [REQUIRED] InstallSpec parameters to run sanity check with.
# . The value must be Com::Vmware::Vcenter::Deployment::Install::InstallSpec.
#
# @retval 
# CheckInfo containing the check results.
# The return type will be Com::Vmware::Vcenter::Deployment::CheckInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if external PSC credentials are not valid when configuring PSC to replicate with an
#     external existing PSC.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if external PSC credentials are not valid when configuring a VCSA_EXTERNAL appliance.
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
# @param spec [REQUIRED] InstallSpec parameters to configure the appliance install.
# . The value must be Com::Vmware::Vcenter::Deployment::Install::InstallSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the partner PSC credentials are not valid when configuring PSC to replicate with
#     partner PSC.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if external PSC credentials are not valid when configuring a VCSA_EXTERNAL appliance.
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
# Cancel the appliance installation that is in progress. This  *method*  was added in
# vSphere API 6.7.
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
# Begins enumerations for the Com::Vmware::Vcenter::Deployment::Install service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Deployment::Install service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Deployment::Install service
#########################################################################################

## @class Com::Vmware::Vcenter::Deployment::Install::VcsaEmbeddedSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Install::VcsaEmbeddedSpec``   *class* 
#     contains information used to configure an embedded standalone or replicated vCenter
#     Server. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Install::VcsaEmbeddedSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Install::VcsaEmbeddedSpec structure
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
   $self->{ceip_enabled} = $args{'ceip_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Install::VcsaEmbeddedSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.install.vcsa_embedded_spec');
   $self->set_binding_field('key' => 'standalone', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'StandaloneSpec')));
   $self->set_binding_field('key' => 'replicated', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'ReplicatedSpec')));
   $self->set_binding_field('key' => 'ceip_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_standalone ()
# Gets the value of 'standalone' property.
#
# @retval standalone - The current value of the field.
# Spec used to configure a standalone embedded vCenter Server. This field describes how
#     the standalone vCenter Server appliance should be configured. This  *field*  was added
#     in vSphere API 6.7.
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
#     the standalone vCenter Server appliance should be configured. This  *field*  was added
#     in vSphere API 6.7.
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
#     the replicated vCenter Server appliance should be configured. This  *field*  was added
#     in vSphere API 6.7.
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
#     the replicated vCenter Server appliance should be configured. This  *field*  was added
#     in vSphere API 6.7.
#
sub set_replicated {
   my ($self, %args) = @_;
   $self->{'replicated'} = $args{'replicated'}; 
   return;	
}

## @method get_ceip_enabled ()
# Gets the value of 'ceip_enabled' property.
#
# @retval ceip_enabled - The current value of the field.
# Whether CEIP should be enabled or disabled. This  *field*  was added in vSphere API
#     6.7.
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
# Whether CEIP should be enabled or disabled. This  *field*  was added in vSphere API
#     6.7.
#
sub set_ceip_enabled {
   my ($self, %args) = @_;
   $self->{'ceip_enabled'} = $args{'ceip_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Install::PscSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Install::PscSpec``   *class*  contains
#     information used to configure a standalone or replicated PSC. This  *class*  was added
#     in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Install::PscSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Install::PscSpec structure
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
   $self->{ceip_enabled} = $args{'ceip_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Install::PscSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.install.psc_spec');
   $self->set_binding_field('key' => 'standalone', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'StandalonePscSpec')));
   $self->set_binding_field('key' => 'replicated', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'ReplicatedPscSpec')));
   $self->set_binding_field('key' => 'ceip_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_standalone ()
# Gets the value of 'standalone' property.
#
# @retval standalone - The current value of the field.
# Spec used to configure a standalone Platform Services Controller. This field describes
#     how the standalone PSC should be configured. This  *field*  was added in vSphere API
#     6.7.
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
# Spec used to configure a standalone Platform Services Controller. This field describes
#     how the standalone PSC should be configured. This  *field*  was added in vSphere API
#     6.7.
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
# Spec used to configure a replicated Platform Services Controller. This field describes
#     how the replicated PSC should be configured. This  *field*  was added in vSphere API
#     6.7.
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
# Spec used to configure a replicated Platform Services Controller. This field describes
#     how the replicated PSC should be configured. This  *field*  was added in vSphere API
#     6.7.
#
sub set_replicated {
   my ($self, %args) = @_;
   $self->{'replicated'} = $args{'replicated'}; 
   return;	
}

## @method get_ceip_enabled ()
# Gets the value of 'ceip_enabled' property.
#
# @retval ceip_enabled - The current value of the field.
# Customer experience improvement program should be enabled or disabled. This  *field* 
#     was added in vSphere API 6.7.
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
# Customer experience improvement program should be enabled or disabled. This  *field* 
#     was added in vSphere API 6.7.
#
sub set_ceip_enabled {
   my ($self, %args) = @_;
   $self->{'ceip_enabled'} = $args{'ceip_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Deployment::Install::InstallSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Install::InstallSpec``   *class*  contains
#     information used to configure the appliance installation. This  *class*  was added in
#     vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::Install::InstallSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Install::InstallSpec structure
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
   $self->{auto_answer} = $args{'auto_answer'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Install::InstallSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.install.install_spec');
   $self->set_binding_field('key' => 'vcsa_embedded', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Install::VcsaEmbeddedSpec')));
   $self->set_binding_field('key' => 'psc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'Install::PscSpec')));
   $self->set_binding_field('key' => 'vcsa_external', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'RemotePscSpec')));
   $self->set_binding_field('key' => 'auto_answer', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_vcsa_embedded ()
# Gets the value of 'vcsa_embedded' property.
#
# @retval vcsa_embedded - The current value of the field.
# Spec used to configure an embedded vCenter Server. This field describes how the
#     embedded vCenter Server appliance should be configured. This  *field*  was added in
#     vSphere API 6.7.
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
# Spec used to configure an embedded vCenter Server. This field describes how the
#     embedded vCenter Server appliance should be configured. This  *field*  was added in
#     vSphere API 6.7.
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
# Spec used to configure a Platform Services Controller. This field describes how the
#     Platform Services Controller appliance should be configured. This  *field*  was added
#     in vSphere API 6.7.
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
# Spec used to configure a Platform Services Controller. This field describes how the
#     Platform Services Controller appliance should be configured. This  *field*  was added
#     in vSphere API 6.7.
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
# Spec used to configure a vCenter Server registered with an external PSC. This fields
#     represent the remote external PSC that the configuring vCenter Server will be
#     registering with. This  *field*  was added in vSphere API 6.7.
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
# Spec used to configure a vCenter Server registered with an external PSC. This fields
#     represent the remote external PSC that the configuring vCenter Server will be
#     registering with. This  *field*  was added in vSphere API 6.7.
#
sub set_vcsa_external {
   my ($self, %args) = @_;
   $self->{'vcsa_external'} = $args{'vcsa_external'}; 
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
# Ends structures for the Com::Vmware::Vcenter::Deployment::Install service
#########################################################################################
