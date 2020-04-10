########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Hardware.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware
# The  ``Com::Vmware::Vcenter::Vm::Hardware``   *interface*  provides  *methods*  for
#     configuring the virtual hardware of a virtual machine.
#

package Com::Vmware::Vcenter::Vm::Hardware;

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
use Com::Vmware::Vcenter::Vm::HardwareStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.hardware';


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
# Returns the virtual hardware settings of a virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Virtual hardware settings of the virtual machine.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
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
# Updates the virtual hardware settings of a virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the virtual hardware settings of the virtual machine.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual machine is already configured for the desired hardware version.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the requested virtual hardware version is not newer than the current version.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the requested virtual hardware version is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is busy performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
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
# Upgrades the virtual machine to a newer virtual hardware version.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param version [OPTIONAL] New virtual machine version.
# If  *null* , defaults to the most recent virtual hardware version supported by the
#     server.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Version or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered off.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the virtual machine is already configured for the desired hardware version.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``version``  is older than the current virtual hardware version.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if  ``version``  is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is busy performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#
sub upgrade {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $version = $args {version};

   $self->validate_args (method_name => 'upgrade',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'upgrade',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Version
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Version``   *enumerated type*  defines the
#     valid virtual hardware versions for a virtual machine. See
#     https://kb.vmware.com/s/article/1003746 (Virtual machine hardware versions (1003746)).
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_03 #
#Hardware version 3, first supported in ESXi 2.5.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_04 #
#Hardware version 4, first supported in ESXi 3.0.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_06 #
#Hardware version 6, first supported in WS 6.0.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_07 #
#Hardware version 7, first supported in ESXi 4.0.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_08 #
#Hardware version 8, first supported in ESXi 5.0.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_09 #
#Hardware version 9, first supported in ESXi 5.1.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_10 #
#Hardware version 10, first supported in ESXi 5.5.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_11 #
#Hardware version 11, first supported in ESXi 6.0.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_12 #
#Hardware version 12, first supported in Workstation 12.0.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_13 #
#Hardware version 13, first supported in ESXi 6.5.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_14 #
#Hardware version 14, first supported in ESXi 6.7. This  *constant*  was added in vSphere
# API 6.7.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_15 #
#Hardware version 15, first supported in ESXi 6.7.0 Update 2. This  *constant*  was added
# in vSphere API 6.7.2.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_16 #
#Hardware version 16, first supported in Workstation 15.0. This  *constant*  was added in
# vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Version::VMX_17 #
#Hardware version 17, first supported in ESX 7.0. This  *constant*  was added in vSphere
# API 7.0.0.

package Com::Vmware::Vcenter::Vm::Hardware::Version;

use constant {
    VMX_03 =>  'VMX_03',
    VMX_04 =>  'VMX_04',
    VMX_06 =>  'VMX_06',
    VMX_07 =>  'VMX_07',
    VMX_08 =>  'VMX_08',
    VMX_09 =>  'VMX_09',
    VMX_10 =>  'VMX_10',
    VMX_11 =>  'VMX_11',
    VMX_12 =>  'VMX_12',
    VMX_13 =>  'VMX_13',
    VMX_14 =>  'VMX_14',
    VMX_15 =>  'VMX_15',
    VMX_16 =>  'VMX_16',
    VMX_17 =>  'VMX_17',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Version enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.version',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Version');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy``   *enumerated type* 
#     defines the valid virtual hardware upgrade policies for a virtual machine.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy::NEVER #
#Do not upgrade the virtual machine when it is powered on.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy::AFTER_CLEAN_SHUTDOWN #
#Run scheduled upgrade when the virtual machine is powered on after a clean shutdown of the
# guest operating system.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy::ALWAYS #
#Run scheduled upgrade when the virtual machine is powered on.

package Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy;

use constant {
    NEVER =>  'NEVER',
    AFTER_CLEAN_SHUTDOWN =>  'AFTER_CLEAN_SHUTDOWN',
    ALWAYS =>  'ALWAYS',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.upgrade_policy',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus``   *enumerated type* 
#     defines the valid virtual hardware upgrade statuses for a virtual machine.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus::NONE #
#No scheduled upgrade has been attempted.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus::PENDING #
#Upgrade is scheduled but has not yet been run.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus::SUCCESS #
#The most recent scheduled upgrade was successful.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus::FAILED #
#The most recent scheduled upgrade was not successful.

package Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus;

use constant {
    NONE =>  'NONE',
    PENDING =>  'PENDING',
    SUCCESS =>  'SUCCESS',
    FAILED =>  'FAILED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.upgrade_status',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::UpgradeStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Info``   *class*  contains information
#     related to the virtual hardware of a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Info structure
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
         'discriminant_name' => 'upgrade_policy',
         'case_map' => {
               'AFTER_CLEAN_SHUTDOWN' => ['upgrade_version'],
               'ALWAYS' => ['upgrade_version'],
               'NEVER' => [],
            }),
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'upgrade_status',
         'case_map' => {
               'FAILED' => ['upgrade_error'],
               'NONE' => [],
               'PENDING' => [],
               'SUCCESS' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version} = $args{'version'};
   $self->{upgrade_policy} = $args{'upgrade_policy'};
   $self->{upgrade_version} = $args{'upgrade_version'};
   $self->{upgrade_status} = $args{'upgrade_status'};
   $self->{upgrade_error} = $args{'upgrade_error'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.info');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Hardware::Version'));
   $self->set_binding_field('key' => 'upgrade_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Hardware::UpgradePolicy'));
   $self->set_binding_field('key' => 'upgrade_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Hardware::Version')));
   $self->set_binding_field('key' => 'upgrade_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Hardware::UpgradeStatus'));
   $self->set_binding_field('key' => 'upgrade_error', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ErrorType()));
   bless $self, $class;
   return $self;
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Virtual hardware version.
#
# Version#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Virtual hardware version.
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
# Scheduled upgrade policy.
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
# Scheduled upgrade policy.
#
sub set_upgrade_policy {
   my ($self, %args) = @_;
   $self->{'upgrade_policy'} = $args{'upgrade_policy'}; 
   return;	
}

## @method get_upgrade_version ()
# Gets the value of 'upgrade_version' property.
#
# @retval upgrade_version - The current value of the field.
# Target hardware version to be used on the next scheduled virtual hardware upgrade.
#
# optional#
sub get_upgrade_version {
   my ($self, %args) = @_;
   return $self->{'upgrade_version'}; 	
}

## @method set_upgrade_version ()
# Sets the given value for 'upgrade_version' property.
# 
# @param upgrade_version  - New value for the field.
# Target hardware version to be used on the next scheduled virtual hardware upgrade.
#
sub set_upgrade_version {
   my ($self, %args) = @_;
   $self->{'upgrade_version'} = $args{'upgrade_version'}; 
   return;	
}

## @method get_upgrade_status ()
# Gets the value of 'upgrade_status' property.
#
# @retval upgrade_status - The current value of the field.
# Scheduled upgrade status.
#
# UpgradeStatus#
sub get_upgrade_status {
   my ($self, %args) = @_;
   return $self->{'upgrade_status'}; 	
}

## @method set_upgrade_status ()
# Sets the given value for 'upgrade_status' property.
# 
# @param upgrade_status  - New value for the field.
# Scheduled upgrade status.
#
sub set_upgrade_status {
   my ($self, %args) = @_;
   $self->{'upgrade_status'} = $args{'upgrade_status'}; 
   return;	
}

## @method get_upgrade_error ()
# Gets the value of 'upgrade_error' property.
#
# @retval upgrade_error - The current value of the field.
# Reason for the scheduled upgrade failure.
#
# optional#
sub get_upgrade_error {
   my ($self, %args) = @_;
   return $self->{'upgrade_error'}; 	
}

## @method set_upgrade_error ()
# Sets the given value for 'upgrade_error' property.
# 
# @param upgrade_error  - New value for the field.
# Reason for the scheduled upgrade failure.
#
sub set_upgrade_error {
   my ($self, %args) = @_;
   $self->{'upgrade_error'} = $args{'upgrade_error'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec``   *class*  describes the
#     updates to virtual hardware settings of a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec structure
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
         'discriminant_name' => 'upgrade_policy',
         'case_map' => {
               'AFTER_CLEAN_SHUTDOWN' => ['upgrade_version'],
               'ALWAYS' => ['upgrade_version'],
               'NEVER' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{upgrade_policy} = $args{'upgrade_policy'};
   $self->{upgrade_version} = $args{'upgrade_version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.update_spec');
   $self->set_binding_field('key' => 'upgrade_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Hardware::UpgradePolicy')));
   $self->set_binding_field('key' => 'upgrade_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Hardware::Version')));
   bless $self, $class;
   return $self;
}

## @method get_upgrade_policy ()
# Gets the value of 'upgrade_policy' property.
#
# @retval upgrade_policy - The current value of the field.
# Scheduled upgrade policy. <p>
# 
# If set to  :attr:`Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy.NEVER` , the 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Info.upgrade_version`   *field*  will be
#     reset to  *null* .</p>
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
# Scheduled upgrade policy. <p>
# 
# If set to  :attr:`Com::Vmware::Vcenter::Vm::Hardware::UpgradePolicy.NEVER` , the 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Info.upgrade_version`   *field*  will be
#     reset to  *null* .</p>
#
sub set_upgrade_policy {
   my ($self, %args) = @_;
   $self->{'upgrade_policy'} = $args{'upgrade_policy'}; 
   return;	
}

## @method get_upgrade_version ()
# Gets the value of 'upgrade_version' property.
#
# @retval upgrade_version - The current value of the field.
# Target hardware version to be used on the next scheduled virtual hardware upgrade. <p>
# 
# If specified, this  *field*  must represent a newer virtual hardware version than the
#     current virtual hardware version reported in 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Info.version` .</p>
#
# Optional#
sub get_upgrade_version {
   my ($self, %args) = @_;
   return $self->{'upgrade_version'}; 	
}

## @method set_upgrade_version ()
# Sets the given value for 'upgrade_version' property.
# 
# @param upgrade_version  - New value for the field.
# Target hardware version to be used on the next scheduled virtual hardware upgrade. <p>
# 
# If specified, this  *field*  must represent a newer virtual hardware version than the
#     current virtual hardware version reported in 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Info.version` .</p>
#
sub set_upgrade_version {
   my ($self, %args) = @_;
   $self->{'upgrade_version'} = $args{'upgrade_version'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware service
#########################################################################################
