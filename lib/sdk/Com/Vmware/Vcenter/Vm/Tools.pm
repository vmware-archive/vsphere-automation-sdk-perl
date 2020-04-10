########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Tools.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Tools
# The  ``Com::Vmware::Vcenter::Vm::Tools``   *interface*  provides  *methods*  for
#     managing VMware Tools in the guest operating system. This  *interface*  was added in
#     vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Vm::Tools;

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
use Com::Vmware::Vcenter::Vm::ToolsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.tools';


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
# Get the properties of VMware Tools. This  *method*  was added in vSphere API 7.0.0.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# VMware Tools properties.
# The return type will be Com::Vmware::Vcenter::Vm::Tools::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method update ()
# Update the properties of VMware Tools. This  *method*  was added in vSphere API 7.0.0.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] The new values.
# . The value must be Com::Vmware::Vcenter::Vm::Tools::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Vm::Tools::UpdateSpec.upgrade_policy`   *field* 
#     contains a value that is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
sub update {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

## @method upgrade ()
# Begins the Tools upgrade process. To monitor the status of the Tools upgrade, clients
# should check the Tools status by calling  :func:`Com::Vmware::Vcenter::Vm::Tools.get`  and
# examining  ``versionStatus``  and  ``runState`` . This  *method*  was added in vSphere API
# 7.0.0.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param command_line_options [OPTIONAL] Command line options passed to the installer to modify the installation procedure for
#     Tools.
# Set if any additional options are desired.
# . The value must be String or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the VMware Tools are not running.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered on.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# is an upgrade is already in progress.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the upgrade process fails inside the guest operating system.
#
sub upgrade {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $command_line_options = $args {command_line_options};

   $self->validate_args (method_name => 'upgrade',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'upgrade',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Tools service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Tools::RunState
#
# Current run state of VMware Tools in the guest operating system. This  *enumeration* 
#     was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Tools::RunState::NOT_RUNNING #
#VMware Tools is not running. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::RunState::RUNNING #
#VMware Tools is running. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::RunState::EXECUTING_SCRIPTS #
#VMware Tools is running scripts as part of a state transition. This  *constant*  was added
# in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Vm::Tools::RunState;

use constant {
    NOT_RUNNING =>  'NOT_RUNNING',
    RUNNING =>  'RUNNING',
    EXECUTING_SCRIPTS =>  'EXECUTING_SCRIPTS',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Tools::RunState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.tools.run_state',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Tools::RunState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy
#
# The  ``Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy``   *enumerated type*  defines
#     when Tools are auto-upgraded for a virtual machine. This  *enumeration*  was added in
#     vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy::MANUAL #
#No auto-upgrades for Tools will be performed for this virtual machine. Users must manually
# invoke the  :func:`Com::Vmware::Vcenter::Vm::Tools.upgrade`   *method*  to update Tools.
# This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy::UPGRADE_AT_POWER_CYCLE #
#When the virtual machine is power-cycled, the system checks for a newer version of Tools
# when the virtual machine is powered on. If it is available, a Tools upgrade is
# automatically performed on the virtual machine and it is rebooted if necessary. This 
# *constant*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy;

use constant {
    MANUAL =>  'MANUAL',
    UPGRADE_AT_POWER_CYCLE =>  'UPGRADE_AT_POWER_CYCLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.tools.upgrade_policy',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Tools::VersionStatus
#
# The  ``Com::Vmware::Vcenter::Vm::Tools::VersionStatus``   *enumerated type*  defines
#     the version status types of VMware Tools installed in the guest operating system. This
#      *enumeration*  was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Tools::VersionStatus::NOT_INSTALLED #
#VMware Tools has never been installed. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::VersionStatus::CURRENT #
#VMware Tools is installed, and the version is current. This  *constant*  was added in
# vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::VersionStatus::UNMANAGED #
#VMware Tools is installed, but it is not managed by VMware. This includes open-vm-tools or
# OSPs which should be managed by the guest operating system. This  *constant*  was added in
# vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::VersionStatus::TOO_OLD_UNSUPPORTED #
#VMware Tools is installed, but the version is too old. This  *constant*  was added in
# vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::VersionStatus::SUPPORTED_OLD #
#VMware Tools is installed, supported, but a newer version is available. This  *constant* 
# was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::VersionStatus::SUPPORTED_NEW #
#VMware Tools is installed, supported, and newer than the version available on the host.
# This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::VersionStatus::TOO_NEW #
#VMware Tools is installed, and the version is known to be too new to work correctly with
# this virtual machine. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::VersionStatus::BLACKLISTED #
#VMware Tools is installed, but the installed version is known to have a grave bug and
# should be immediately upgraded. This  *constant*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Vm::Tools::VersionStatus;

use constant {
    NOT_INSTALLED =>  'NOT_INSTALLED',
    CURRENT =>  'CURRENT',
    UNMANAGED =>  'UNMANAGED',
    TOO_OLD_UNSUPPORTED =>  'TOO_OLD_UNSUPPORTED',
    SUPPORTED_OLD =>  'SUPPORTED_OLD',
    SUPPORTED_NEW =>  'SUPPORTED_NEW',
    TOO_NEW =>  'TOO_NEW',
    BLACKLISTED =>  'BLACKLISTED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Tools::VersionStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.tools.version_status',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Tools::VersionStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType
#
# The  ``Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType``   *enumerated type* 
#     defines the installation type of the Tools in the guest operating system. This 
#     *enumeration*  was added in vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType::UNKNOWN #
#Installation type is not known. Most likely tools have been installed by OSPs or
# open-vm-tools, but a version that does not report its install type or an install type that
# we do not recognize. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType::MSI #
#MSI is the installation type used for VMware Tools on Windows. This  *constant*  was added
# in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType::TAR #
#Tools have been installed by the tar installer. This  *constant*  was added in vSphere API
# 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType::OSP #
#OSPs are RPM or Debian packages tailored for the OS in the VM. See
# http://packages.vmware.com. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType::OPEN_VM_TOOLS #
#open-vm-tools are the open-source version of VMware Tools, may have been packaged by the
# OS vendor. This  *constant*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType;

use constant {
    UNKNOWN =>  'UNKNOWN',
    MSI =>  'MSI',
    TAR =>  'TAR',
    OSP =>  'OSP',
    OPEN_VM_TOOLS =>  'OPEN_VM_TOOLS',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.tools.tools_install_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Tools::ToolsInstallType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Tools service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Tools service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Tools::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Tools::Info``   *class*  describes the VMWare Tools
#     properties of a virtual machine. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Vm::Tools::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Tools::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{auto_update_supported} = $args{'auto_update_supported'};
   $self->{install_attempt_count} = $args{'install_attempt_count'};
   $self->{error} = $args{'error'};
   $self->{version_number} = $args{'version_number'};
   $self->{version} = $args{'version'};
   $self->{upgrade_policy} = $args{'upgrade_policy'};
   $self->{version_status} = $args{'version_status'};
   $self->{install_type} = $args{'install_type'};
   $self->{run_state} = $args{'run_state'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Tools::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.tools.info');
   $self->set_binding_field('key' => 'auto_update_supported', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'install_attempt_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'error', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ErrorType()));
   $self->set_binding_field('key' => 'version_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'upgrade_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Tools::UpgradePolicy'));
   $self->set_binding_field('key' => 'version_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Tools::VersionStatus')));
   $self->set_binding_field('key' => 'install_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Tools::ToolsInstallType')));
   $self->set_binding_field('key' => 'run_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Tools::RunState'));
   bless $self, $class;
   return $self;
}

## @method get_auto_update_supported ()
# Gets the value of 'auto_update_supported' property.
#
# @retval auto_update_supported - The current value of the field.
# Set if the virtual machine supports auto-upgrading Tools via  class
#     Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy . This  *field*  was added in vSphere
#     API 7.0.0.
#
# boolean#
sub get_auto_update_supported {
   my ($self, %args) = @_;
   return $self->{'auto_update_supported'}; 	
}

## @method set_auto_update_supported ()
# Sets the given value for 'auto_update_supported' property.
# 
# @param auto_update_supported  - New value for the field.
# Set if the virtual machine supports auto-upgrading Tools via  class
#     Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy . This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_auto_update_supported {
   my ($self, %args) = @_;
   $self->{'auto_update_supported'} = $args{'auto_update_supported'}; 
   return;	
}

## @method get_install_attempt_count ()
# Gets the value of 'install_attempt_count' property.
#
# @retval install_attempt_count - The current value of the field.
# Number of attempts that have been made to install or upgrade the version of Tools
#     installed on this virtual machine. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_install_attempt_count {
   my ($self, %args) = @_;
   return $self->{'install_attempt_count'}; 	
}

## @method set_install_attempt_count ()
# Sets the given value for 'install_attempt_count' property.
# 
# @param install_attempt_count  - New value for the field.
# Number of attempts that have been made to install or upgrade the version of Tools
#     installed on this virtual machine. This  *field*  was added in vSphere API 7.0.0.
#
sub set_install_attempt_count {
   my ($self, %args) = @_;
   $self->{'install_attempt_count'} = $args{'install_attempt_count'}; 
   return;	
}

## @method get_error ()
# Gets the value of 'error' property.
#
# @retval error - The current value of the field.
# Error that happened, if any, during last attempt to upgrade or install Tools. This 
#     *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_error {
   my ($self, %args) = @_;
   return $self->{'error'}; 	
}

## @method set_error ()
# Sets the given value for 'error' property.
# 
# @param error  - New value for the field.
# Error that happened, if any, during last attempt to upgrade or install Tools. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_error {
   my ($self, %args) = @_;
   $self->{'error'} = $args{'error'}; 
   return;	
}

## @method get_version_number ()
# Gets the value of 'version_number' property.
#
# @retval version_number - The current value of the field.
# Version of VMware Tools installed on the guest operating system. This  *field*  was
#     added in vSphere API 7.0.0.
#
# Optional#
sub get_version_number {
   my ($self, %args) = @_;
   return $self->{'version_number'}; 	
}

## @method set_version_number ()
# Sets the given value for 'version_number' property.
# 
# @param version_number  - New value for the field.
# Version of VMware Tools installed on the guest operating system. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_version_number {
   my ($self, %args) = @_;
   $self->{'version_number'} = $args{'version_number'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version of VMware Tools installed on the guest operating system. This is a
#     human-readable value that should not be parsed. This  *field*  was added in vSphere
#     API 7.0.0.
#
# Optional#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version of VMware Tools installed on the guest operating system. This is a
#     human-readable value that should not be parsed. This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_upgrade_policy ()
# Gets the value of 'upgrade_policy' property.
#
# @retval upgrade_policy - The current value of the field.
# Tools upgrade policy setting for the virtual machine.  class
#     Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy . This  *field*  was added in vSphere
#     API 7.0.0.
#
# UpgradePolicy#
sub get_upgrade_policy {
   my ($self, %args) = @_;
   return $self->{'upgrade_policy'}; 	
}

## @method set_upgrade_policy ()
# Sets the given value for 'upgrade_policy' property.
# 
# @param upgrade_policy  - New value for the field.
# Tools upgrade policy setting for the virtual machine.  class
#     Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy . This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_upgrade_policy {
   my ($self, %args) = @_;
   $self->{'upgrade_policy'} = $args{'upgrade_policy'}; 
   return;	
}

## @method get_version_status ()
# Gets the value of 'version_status' property.
#
# @retval version_status - The current value of the field.
# Current version status of VMware Tools in the guest operating system, if known. This 
#     *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_version_status {
   my ($self, %args) = @_;
   return $self->{'version_status'}; 	
}

## @method set_version_status ()
# Sets the given value for 'version_status' property.
# 
# @param version_status  - New value for the field.
# Current version status of VMware Tools in the guest operating system, if known. This 
#     *field*  was added in vSphere API 7.0.0.
#
sub set_version_status {
   my ($self, %args) = @_;
   $self->{'version_status'} = $args{'version_status'}; 
   return;	
}

## @method get_install_type ()
# Gets the value of 'install_type' property.
#
# @retval install_type - The current value of the field.
# Current installation type of VMware Tools in the guest operating system. This  *field*
#      was added in vSphere API 7.0.0.
#
# Optional#
sub get_install_type {
   my ($self, %args) = @_;
   return $self->{'install_type'}; 	
}

## @method set_install_type ()
# Sets the given value for 'install_type' property.
# 
# @param install_type  - New value for the field.
# Current installation type of VMware Tools in the guest operating system. This  *field*
#      was added in vSphere API 7.0.0.
#
sub set_install_type {
   my ($self, %args) = @_;
   $self->{'install_type'} = $args{'install_type'}; 
   return;	
}

## @method get_run_state ()
# Gets the value of 'run_state' property.
#
# @retval run_state - The current value of the field.
# Current run state of VMware Tools in the guest operating system. This  *field*  was
#     added in vSphere API 7.0.0.
#
# RunState#
sub get_run_state {
   my ($self, %args) = @_;
   return $self->{'run_state'}; 	
}

## @method set_run_state ()
# Sets the given value for 'run_state' property.
# 
# @param run_state  - New value for the field.
# Current run state of VMware Tools in the guest operating system. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_run_state {
   my ($self, %args) = @_;
   $self->{'run_state'} = $args{'run_state'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Tools::UpdateSpec
#
#
# The (@name UpdateSpec}  *class*  describes the VMware Tools properties of a virtual
#     machine that can be updated. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Vm::Tools::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Tools::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{upgrade_policy} = $args{'upgrade_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Tools::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.tools.update_spec');
   $self->set_binding_field('key' => 'upgrade_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Tools::UpgradePolicy')));
   bless $self, $class;
   return $self;
}

## @method get_upgrade_policy ()
# Gets the value of 'upgrade_policy' property.
#
# @retval upgrade_policy - The current value of the field.
# Tools upgrade policy setting for the virtual machine.  class
#     Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy . This  *field*  was added in vSphere
#     API 7.0.0.
#
# Optional#
sub get_upgrade_policy {
   my ($self, %args) = @_;
   return $self->{'upgrade_policy'}; 	
}

## @method set_upgrade_policy ()
# Sets the given value for 'upgrade_policy' property.
# 
# @param upgrade_policy  - New value for the field.
# Tools upgrade policy setting for the virtual machine.  class
#     Com::Vmware::Vcenter::Vm::Tools::UpgradePolicy . This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_upgrade_policy {
   my ($self, %args) = @_;
   $self->{'upgrade_policy'} = $args{'upgrade_policy'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Tools service
#########################################################################################
