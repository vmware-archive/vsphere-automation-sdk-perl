########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Install.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Install
# The service to install Embedded VCSA, PSC, Management VCSA, VMC gateway.
#

package Com::Vmware::Vcenter::Lcm::Install;

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
use Com::Vmware::Vcenter::Lcm::InstallStub;

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
# . The value must be Com::Vmware::Vcenter::Lcm::Install::Spec.
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
# . The value must be Com::Vmware::Vcenter::Lcm::Install::Spec.
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
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Install service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Install service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Install service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Install::Psc
#
#
# Spec used to configure a Platform Services Controller. This section describes how the
#     Platform Services Controller appliance should be configured. If unset, either 
#     ``#vcsaEmbedded``  or  ``#vcsaExternal``  must be provided.

package Com::Vmware::Vcenter::Lcm::Install::Psc;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Install::Psc structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Install::Psc');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.install.psc');
   $self->set_binding_field('key' => 'standalone', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'PscStandalone')));
   $self->set_binding_field('key' => 'replicated', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'PscReplicated')));
   $self->set_binding_field('key' => 'ceip_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
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

## @method get_ceip_enabled ()
# Gets the value of 'ceip_enabled' property.
#
# @retval ceip_enabled - The current value of the field.
# This key describes the enabling option for the VMware&apos;s Customer Experience
#     Improvement Program (CEIP). By default we have  ``ceipEnabled`` : true, which
#     indicates that you are joining CEIP. If you prefer not to participate in the
#     VMware&apos;s CEIP for this product, you must disable CEIP by setting  ``ceipEnabled``
#     : false. You may join or leave VMware&apos;s CEIP for this product at any time.
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
# This key describes the enabling option for the VMware&apos;s Customer Experience
#     Improvement Program (CEIP). By default we have  ``ceipEnabled`` : true, which
#     indicates that you are joining CEIP. If you prefer not to participate in the
#     VMware&apos;s CEIP for this product, you must disable CEIP by setting  ``ceipEnabled``
#     : false. You may join or leave VMware&apos;s CEIP for this product at any time.
#
sub set_ceip_enabled {
   my ($self, %args) = @_;
   $self->{'ceip_enabled'} = $args{'ceip_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Install::VcsaEmbedded
#
#
# Spec used to configure an embedded vCenter Server. This field describes how the
#     embedded vCenter Server appliance should be configured.

package Com::Vmware::Vcenter::Lcm::Install::VcsaEmbedded;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Install::VcsaEmbedded structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Install::VcsaEmbedded');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.install.vcsa_embedded');
   $self->set_binding_field('key' => 'standalone', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'EmbeddedStandaloneVcsa')));
   $self->set_binding_field('key' => 'replicated', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'EmbeddedReplicatedVcsa')));
   $self->set_binding_field('key' => 'ceip_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
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

## @method get_ceip_enabled ()
# Gets the value of 'ceip_enabled' property.
#
# @retval ceip_enabled - The current value of the field.
# This key describes the enabling option for the VMware&apos;s Customer Experience
#     Improvement Program (CEIP). By default we have  ``ceipEnabled`` : true, which
#     indicates that you are joining CEIP. If you prefer not to participate in the
#     VMware&apos;s CEIP for this product, you must disable CEIP by setting  ``ceipEnabled``
#     : false. You may join or leave VMware&apos;s CEIP for this product at any time.
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
# This key describes the enabling option for the VMware&apos;s Customer Experience
#     Improvement Program (CEIP). By default we have  ``ceipEnabled`` : true, which
#     indicates that you are joining CEIP. If you prefer not to participate in the
#     VMware&apos;s CEIP for this product, you must disable CEIP by setting  ``ceipEnabled``
#     : false. You may join or leave VMware&apos;s CEIP for this product at any time.
#
sub set_ceip_enabled {
   my ($self, %args) = @_;
   $self->{'ceip_enabled'} = $args{'ceip_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Install::ReverseProxy
#
#
# Port numbers on which the vCenter Server Appliance communicates with the other vSphere
#     components.

package Com::Vmware::Vcenter::Lcm::Install::ReverseProxy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Install::ReverseProxy structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{http_port} = $args{'http_port'};
   $self->{https_port} = $args{'https_port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Install::ReverseProxy');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.install.reverse_proxy');
   $self->set_binding_field('key' => 'http_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_http_port ()
# Gets the value of 'http_port' property.
#
# @retval http_port - The current value of the field.
# Reverse proxy http port.
#
# Optional#
sub get_http_port {
   my ($self, %args) = @_;
   return $self->{'http_port'}; 	
}

## @method set_http_port ()
# Sets the given value for 'http_port' property.
# 
# @param http_port  - New value for the field.
# Reverse proxy http port.
#
sub set_http_port {
   my ($self, %args) = @_;
   $self->{'http_port'} = $args{'http_port'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# Reverse proxy https port.
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
# Reverse proxy https port.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Install::DestinationApplianceService
#
#
# The configuration of vCenter services.

package Com::Vmware::Vcenter::Lcm::Install::DestinationApplianceService;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Install::DestinationApplianceService structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{rhttpproxy} = $args{'rhttpproxy'};
   $self->{ssh} = $args{'ssh'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Install::DestinationApplianceService');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.install.destination_appliance_service');
   $self->set_binding_field('key' => 'rhttpproxy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Install::ReverseProxy')));
   $self->set_binding_field('key' => 'ssh', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Ssh'));
   bless $self, $class;
   return $self;
}

## @method get_rhttpproxy ()
# Gets the value of 'rhttpproxy' property.
#
# @retval rhttpproxy - The current value of the field.
# Port numbers on which the vCenter Server Appliance communicates with the other vSphere
#     components.
#
# Optional#
sub get_rhttpproxy {
   my ($self, %args) = @_;
   return $self->{'rhttpproxy'}; 	
}

## @method set_rhttpproxy ()
# Sets the given value for 'rhttpproxy' property.
# 
# @param rhttpproxy  - New value for the field.
# Port numbers on which the vCenter Server Appliance communicates with the other vSphere
#     components.
#
sub set_rhttpproxy {
   my ($self, %args) = @_;
   $self->{'rhttpproxy'} = $args{'rhttpproxy'}; 
   return;	
}

## @method get_ssh ()
# Gets the value of 'ssh' property.
#
# @retval ssh - The current value of the field.
# Whether to enable SSH on the vCenter Appliance.
#
# Ssh#
sub get_ssh {
   my ($self, %args) = @_;
   return $self->{'ssh'}; 	
}

## @method set_ssh ()
# Sets the given value for 'ssh' property.
# 
# @param ssh  - New value for the field.
# Whether to enable SSH on the vCenter Appliance.
#
sub set_ssh {
   my ($self, %args) = @_;
   $self->{'ssh'} = $args{'ssh'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Install::DestinationAppliance
#
#
# Spec to describe the new appliance.

package Com::Vmware::Vcenter::Lcm::Install::DestinationAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Install::DestinationAppliance structure
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
               'VCSA_EXTERNAL' => ['appliance_size', 'appliance_disk_size', 'vcsa_external'],
               'PSC' => ['psc'],
               'VMC' => ['vmc'],
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
   $self->{services} = $args{'services'};
   $self->{network} = $args{'network'};
   $self->{time} = $args{'time'};
   $self->{ovftool_arguments} = $args{'ovftool_arguments'};
   $self->{vcsa_embedded} = $args{'vcsa_embedded'};
   $self->{psc} = $args{'psc'};
   $self->{vcsa_external} = $args{'vcsa_external'};
   $self->{vmc} = $args{'vmc'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Install::DestinationAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.install.destination_appliance');
   $self->set_binding_field('key' => 'appliance_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'appliance_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ApplianceType'));
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
   $self->set_binding_field('key' => 'services', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Install::DestinationApplianceService'));
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Network'));
   $self->set_binding_field('key' => 'time', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Time'));
   $self->set_binding_field('key' => 'ovftool_arguments', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::StringType()})))));
   $self->set_binding_field('key' => 'vcsa_embedded', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Install::VcsaEmbedded')));
   $self->set_binding_field('key' => 'psc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Install::Psc')));
   $self->set_binding_field('key' => 'vcsa_external', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ExternalVcsa')));
   $self->set_binding_field('key' => 'vmc', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ExternalVcsa')));
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

## @method get_services ()
# Gets the value of 'services' property.
#
# @retval services - The current value of the field.
# The configuration of vCenter services.
#
# DestinationApplianceService#
sub get_services {
   my ($self, %args) = @_;
   return $self->{'services'}; 	
}

## @method set_services ()
# Sets the given value for 'services' property.
# 
# @param services  - New value for the field.
# The configuration of vCenter services.
#
sub set_services {
   my ($self, %args) = @_;
   $self->{'services'} = $args{'services'}; 
   return;	
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
#     ``vcsaEmbedded``  or  ``vcsaExternal``  must be provided.
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
#     ``vcsaEmbedded``  or  ``vcsaExternal``  must be provided.
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
# Spec used to configure a vCenter Server registered with an external PSC. If unset,
#     either vcsa_embedded or psc must be provided.
#
# optional#
sub get_vcsa_external {
   my ($self, %args) = @_;
   return $self->{'vcsa_external'}; 	
}

## @method set_vcsa_external ()
# Sets the given value for 'vcsa_external' property.
# 
# @param vcsa_external  - New value for the field.
# Spec used to configure a vCenter Server registered with an external PSC. If unset,
#     either vcsa_embedded or psc must be provided.
#
sub set_vcsa_external {
   my ($self, %args) = @_;
   $self->{'vcsa_external'} = $args{'vcsa_external'}; 
   return;	
}

## @method get_vmc ()
# Gets the value of 'vmc' property.
#
# @retval vmc - The current value of the field.
# Spec used to configure a vCenter Server registered with an external PSC. If unset,
#     either vcsa_embedded or psc must be provided.
#
# optional#
sub get_vmc {
   my ($self, %args) = @_;
   return $self->{'vmc'}; 	
}

## @method set_vmc ()
# Sets the given value for 'vmc' property.
# 
# @param vmc  - New value for the field.
# Spec used to configure a vCenter Server registered with an external PSC. If unset,
#     either vcsa_embedded or psc must be provided.
#
sub set_vmc {
   my ($self, %args) = @_;
   $self->{'vmc'} = $args{'vmc'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Lcm::Install::Spec
#
#


package Com::Vmware::Vcenter::Lcm::Install::Spec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Install::Spec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Install::Spec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.install.spec');
   $self->set_binding_field('key' => 'destination_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'DestinationLocation'));
   $self->set_binding_field('key' => 'destination_appliance', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Install::DestinationAppliance'));
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
# DestinationAppliance#
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



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Install service
#########################################################################################
