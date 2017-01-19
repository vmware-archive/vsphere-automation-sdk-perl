########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Boot.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Boot
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot``   *interface*  provides  *methods* 
#     for configuring the settings used when booting a virtual machine.
#

package Com::Vmware::Vcenter::Vm::Hardware::Boot;

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
use Com::Vmware::Vcenter::Vm::Hardware::BootStub;

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
# Returns the boot-related settings of a virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Boot-related settings of the virtual machine.
# The return type will be Com::Vmware::Vcenter::Vm::Hardware::Boot::Info
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
# Updates the boot-related settings of a virtual machine.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for updating the boot-related settings of the virtual machine.
# . The value must be Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if one of the provided settings is not permitted; for example, specifying a negative
#     value for  ``delay`` .
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


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Boot service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Boot::Type
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Type``   *enumerated type*  defines
#     the valid firmware types for a virtual machine.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Boot::Type::BIOS #
#Basic Input/Output System (BIOS) firmware.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Boot::Type::EFI #
#Extensible Firmware Interface (EFI) firmware.

package Com::Vmware::Vcenter::Vm::Hardware::Boot::Type;

use constant {
    BIOS =>  'BIOS',
    EFI =>  'EFI',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Boot::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.boot.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol``   *enumerated type*
#     defines the valid network boot protocols supported when booting a virtual machine with
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Type.EFI`  firmware over the network.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol::IP_V4 #
#PXE or Apple NetBoot over IPv4.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol::IP_V6 #
#PXE over IPv6.

package Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol;

use constant {
    IPV4 =>  'IPV4',
    IPV6 =>  'IPV6',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.boot.network_protocol',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot::NetworkProtocol');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Boot service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Boot service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Boot::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Info``   *class*  contains
#     information about the virtual machine boot process.

package Com::Vmware::Vcenter::Vm::Hardware::Boot::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Boot::Info structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'EFI' => ['efi_legacy_boot', 'network_protocol'],
               'BIOS' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{efi_legacy_boot} = $args{'efi_legacy_boot'};
   $self->{network_protocol} = $args{'network_protocol'};
   $self->{delay} = $args{'delay'};
   $self->{retry} = $args{'retry'};
   $self->{retry_delay} = $args{'retry_delay'};
   $self->{enter_setup_mode} = $args{'enter_setup_mode'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.boot.info');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Boot::Type'));
   $self->set_binding_field('key' => 'efi_legacy_boot', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'network_protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Boot::NetworkProtocol')));
   $self->set_binding_field('key' => 'delay', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'retry', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'retry_delay', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'enter_setup_mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Firmware type used by the virtual machine.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Firmware type used by the virtual machine.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_efi_legacy_boot ()
# Gets the value of 'efi_legacy_boot' property.
#
# @retval efi_legacy_boot - The current value of the field.
# Flag indicating whether to use EFI legacy boot mode.
#
# optional#
sub get_efi_legacy_boot {
   my ($self, %args) = @_;
   return $self->{'efi_legacy_boot'}; 	
}

## @method set_efi_legacy_boot ()
# Sets the given value for 'efi_legacy_boot' property.
# 
# @param efi_legacy_boot  - New value for the field.
# Flag indicating whether to use EFI legacy boot mode.
#
sub set_efi_legacy_boot {
   my ($self, %args) = @_;
   $self->{'efi_legacy_boot'} = $args{'efi_legacy_boot'}; 
   return;	
}

## @method get_network_protocol ()
# Gets the value of 'network_protocol' property.
#
# @retval network_protocol - The current value of the field.
# Protocol to use when attempting to boot the virtual machine over the network.
#
# optional#
sub get_network_protocol {
   my ($self, %args) = @_;
   return $self->{'network_protocol'}; 	
}

## @method set_network_protocol ()
# Sets the given value for 'network_protocol' property.
# 
# @param network_protocol  - New value for the field.
# Protocol to use when attempting to boot the virtual machine over the network.
#
sub set_network_protocol {
   my ($self, %args) = @_;
   $self->{'network_protocol'} = $args{'network_protocol'}; 
   return;	
}

## @method get_delay ()
# Gets the value of 'delay' property.
#
# @retval delay - The current value of the field.
# Delay in milliseconds before beginning the firmware boot process when the virtual
#     machine is powered on. This delay may be used to provide a time window for users to
#     connect to the virtual machine console and enter BIOS setup mode.
#
# long#
sub get_delay {
   my ($self, %args) = @_;
   return $self->{'delay'}; 	
}

## @method set_delay ()
# Sets the given value for 'delay' property.
# 
# @param delay  - New value for the field.
# Delay in milliseconds before beginning the firmware boot process when the virtual
#     machine is powered on. This delay may be used to provide a time window for users to
#     connect to the virtual machine console and enter BIOS setup mode.
#
sub set_delay {
   my ($self, %args) = @_;
   $self->{'delay'} = $args{'delay'}; 
   return;	
}

## @method get_retry ()
# Gets the value of 'retry' property.
#
# @retval retry - The current value of the field.
# Flag indicating whether the virtual machine will automatically retry the boot process
#     after a failure.
#
# boolean#
sub get_retry {
   my ($self, %args) = @_;
   return $self->{'retry'}; 	
}

## @method set_retry ()
# Sets the given value for 'retry' property.
# 
# @param retry  - New value for the field.
# Flag indicating whether the virtual machine will automatically retry the boot process
#     after a failure.
#
sub set_retry {
   my ($self, %args) = @_;
   $self->{'retry'} = $args{'retry'}; 
   return;	
}

## @method get_retry_delay ()
# Gets the value of 'retry_delay' property.
#
# @retval retry_delay - The current value of the field.
# Delay in milliseconds before retrying the boot process after a failure; applicable
#     only when  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Info.retry`  is true.
#
# long#
sub get_retry_delay {
   my ($self, %args) = @_;
   return $self->{'retry_delay'}; 	
}

## @method set_retry_delay ()
# Sets the given value for 'retry_delay' property.
# 
# @param retry_delay  - New value for the field.
# Delay in milliseconds before retrying the boot process after a failure; applicable
#     only when  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Info.retry`  is true.
#
sub set_retry_delay {
   my ($self, %args) = @_;
   $self->{'retry_delay'} = $args{'retry_delay'}; 
   return;	
}

## @method get_enter_setup_mode ()
# Gets the value of 'enter_setup_mode' property.
#
# @retval enter_setup_mode - The current value of the field.
# Flag indicating whether the firmware boot process will automatically enter setup mode
#     the next time the virtual machine boots. Note that this flag will automatically be
#     reset to false once the virtual machine enters setup mode.
#
# boolean#
sub get_enter_setup_mode {
   my ($self, %args) = @_;
   return $self->{'enter_setup_mode'}; 	
}

## @method set_enter_setup_mode ()
# Sets the given value for 'enter_setup_mode' property.
# 
# @param enter_setup_mode  - New value for the field.
# Flag indicating whether the firmware boot process will automatically enter setup mode
#     the next time the virtual machine boots. Note that this flag will automatically be
#     reset to false once the virtual machine enters setup mode.
#
sub set_enter_setup_mode {
   my ($self, %args) = @_;
   $self->{'enter_setup_mode'} = $args{'enter_setup_mode'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Boot::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::CreateSpec``   *class*  describes
#     settings used when booting a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::Boot::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Boot::CreateSpec structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'EFI' => ['efi_legacy_boot', 'network_protocol'],
               'BIOS' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{efi_legacy_boot} = $args{'efi_legacy_boot'};
   $self->{network_protocol} = $args{'network_protocol'};
   $self->{delay} = $args{'delay'};
   $self->{retry} = $args{'retry'};
   $self->{retry_delay} = $args{'retry_delay'};
   $self->{enter_setup_mode} = $args{'enter_setup_mode'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.boot.create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Boot::Type')));
   $self->set_binding_field('key' => 'efi_legacy_boot', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'network_protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Boot::NetworkProtocol')));
   $self->set_binding_field('key' => 'delay', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'retry', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'retry_delay', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'enter_setup_mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Firmware type to be used by the virtual machine.
#
# Optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Firmware type to be used by the virtual machine.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_efi_legacy_boot ()
# Gets the value of 'efi_legacy_boot' property.
#
# @retval efi_legacy_boot - The current value of the field.
# Flag indicating whether to use EFI legacy boot mode.
#
# Optional#
sub get_efi_legacy_boot {
   my ($self, %args) = @_;
   return $self->{'efi_legacy_boot'}; 	
}

## @method set_efi_legacy_boot ()
# Sets the given value for 'efi_legacy_boot' property.
# 
# @param efi_legacy_boot  - New value for the field.
# Flag indicating whether to use EFI legacy boot mode.
#
sub set_efi_legacy_boot {
   my ($self, %args) = @_;
   $self->{'efi_legacy_boot'} = $args{'efi_legacy_boot'}; 
   return;	
}

## @method get_network_protocol ()
# Gets the value of 'network_protocol' property.
#
# @retval network_protocol - The current value of the field.
# Protocol to use when attempting to boot the virtual machine over the network.
#
# Optional#
sub get_network_protocol {
   my ($self, %args) = @_;
   return $self->{'network_protocol'}; 	
}

## @method set_network_protocol ()
# Sets the given value for 'network_protocol' property.
# 
# @param network_protocol  - New value for the field.
# Protocol to use when attempting to boot the virtual machine over the network.
#
sub set_network_protocol {
   my ($self, %args) = @_;
   $self->{'network_protocol'} = $args{'network_protocol'}; 
   return;	
}

## @method get_delay ()
# Gets the value of 'delay' property.
#
# @retval delay - The current value of the field.
# Delay in milliseconds before beginning the firmware boot process when the virtual
#     machine is powered on. This delay may be used to provide a time window for users to
#     connect to the virtual machine console and enter BIOS setup mode.
#
# Optional#
sub get_delay {
   my ($self, %args) = @_;
   return $self->{'delay'}; 	
}

## @method set_delay ()
# Sets the given value for 'delay' property.
# 
# @param delay  - New value for the field.
# Delay in milliseconds before beginning the firmware boot process when the virtual
#     machine is powered on. This delay may be used to provide a time window for users to
#     connect to the virtual machine console and enter BIOS setup mode.
#
sub set_delay {
   my ($self, %args) = @_;
   $self->{'delay'} = $args{'delay'}; 
   return;	
}

## @method get_retry ()
# Gets the value of 'retry' property.
#
# @retval retry - The current value of the field.
# Flag indicating whether the virtual machine should automatically retry the boot
#     process after a failure.
#
# Optional#
sub get_retry {
   my ($self, %args) = @_;
   return $self->{'retry'}; 	
}

## @method set_retry ()
# Sets the given value for 'retry' property.
# 
# @param retry  - New value for the field.
# Flag indicating whether the virtual machine should automatically retry the boot
#     process after a failure.
#
sub set_retry {
   my ($self, %args) = @_;
   $self->{'retry'} = $args{'retry'}; 
   return;	
}

## @method get_retry_delay ()
# Gets the value of 'retry_delay' property.
#
# @retval retry_delay - The current value of the field.
# Delay in milliseconds before retrying the boot process after a failure; applicable
#     only when  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Info.retry`  is true.
#
# Optional#
sub get_retry_delay {
   my ($self, %args) = @_;
   return $self->{'retry_delay'}; 	
}

## @method set_retry_delay ()
# Sets the given value for 'retry_delay' property.
# 
# @param retry_delay  - New value for the field.
# Delay in milliseconds before retrying the boot process after a failure; applicable
#     only when  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Info.retry`  is true.
#
sub set_retry_delay {
   my ($self, %args) = @_;
   $self->{'retry_delay'} = $args{'retry_delay'}; 
   return;	
}

## @method get_enter_setup_mode ()
# Gets the value of 'enter_setup_mode' property.
#
# @retval enter_setup_mode - The current value of the field.
# Flag indicating whether the firmware boot process should automatically enter setup
#     mode the next time the virtual machine boots. Note that this flag will automatically
#     be reset to false once the virtual machine enters setup mode.
#
# Optional#
sub get_enter_setup_mode {
   my ($self, %args) = @_;
   return $self->{'enter_setup_mode'}; 	
}

## @method set_enter_setup_mode ()
# Sets the given value for 'enter_setup_mode' property.
# 
# @param enter_setup_mode  - New value for the field.
# Flag indicating whether the firmware boot process should automatically enter setup
#     mode the next time the virtual machine boots. Note that this flag will automatically
#     be reset to false once the virtual machine enters setup mode.
#
sub set_enter_setup_mode {
   my ($self, %args) = @_;
   $self->{'enter_setup_mode'} = $args{'enter_setup_mode'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec``   *class*  describes the
#     updates to the settings used when booting a virtual machine.

package Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'EFI' => ['efi_legacy_boot', 'network_protocol'],
               'BIOS' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{efi_legacy_boot} = $args{'efi_legacy_boot'};
   $self->{network_protocol} = $args{'network_protocol'};
   $self->{delay} = $args{'delay'};
   $self->{retry} = $args{'retry'};
   $self->{retry_delay} = $args{'retry_delay'};
   $self->{enter_setup_mode} = $args{'enter_setup_mode'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.boot.update_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Boot::Type')));
   $self->set_binding_field('key' => 'efi_legacy_boot', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'network_protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Boot::NetworkProtocol')));
   $self->set_binding_field('key' => 'delay', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'retry', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'retry_delay', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'enter_setup_mode', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Firmware type to be used by the virtual machine.
#
# Optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Firmware type to be used by the virtual machine.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_efi_legacy_boot ()
# Gets the value of 'efi_legacy_boot' property.
#
# @retval efi_legacy_boot - The current value of the field.
# Flag indicating whether to use EFI legacy boot mode.
#
# Optional#
sub get_efi_legacy_boot {
   my ($self, %args) = @_;
   return $self->{'efi_legacy_boot'}; 	
}

## @method set_efi_legacy_boot ()
# Sets the given value for 'efi_legacy_boot' property.
# 
# @param efi_legacy_boot  - New value for the field.
# Flag indicating whether to use EFI legacy boot mode.
#
sub set_efi_legacy_boot {
   my ($self, %args) = @_;
   $self->{'efi_legacy_boot'} = $args{'efi_legacy_boot'}; 
   return;	
}

## @method get_network_protocol ()
# Gets the value of 'network_protocol' property.
#
# @retval network_protocol - The current value of the field.
# Protocol to use when attempting to boot the virtual machine over the network.
#
# Optional#
sub get_network_protocol {
   my ($self, %args) = @_;
   return $self->{'network_protocol'}; 	
}

## @method set_network_protocol ()
# Sets the given value for 'network_protocol' property.
# 
# @param network_protocol  - New value for the field.
# Protocol to use when attempting to boot the virtual machine over the network.
#
sub set_network_protocol {
   my ($self, %args) = @_;
   $self->{'network_protocol'} = $args{'network_protocol'}; 
   return;	
}

## @method get_delay ()
# Gets the value of 'delay' property.
#
# @retval delay - The current value of the field.
# Delay in milliseconds before beginning the firmware boot process when the virtual
#     machine is powered on. This delay may be used to provide a time window for users to
#     connect to the virtual machine console and enter BIOS setup mode.
#
# Optional#
sub get_delay {
   my ($self, %args) = @_;
   return $self->{'delay'}; 	
}

## @method set_delay ()
# Sets the given value for 'delay' property.
# 
# @param delay  - New value for the field.
# Delay in milliseconds before beginning the firmware boot process when the virtual
#     machine is powered on. This delay may be used to provide a time window for users to
#     connect to the virtual machine console and enter BIOS setup mode.
#
sub set_delay {
   my ($self, %args) = @_;
   $self->{'delay'} = $args{'delay'}; 
   return;	
}

## @method get_retry ()
# Gets the value of 'retry' property.
#
# @retval retry - The current value of the field.
# Flag indicating whether the virtual machine should automatically retry the boot
#     process after a failure.
#
# Optional#
sub get_retry {
   my ($self, %args) = @_;
   return $self->{'retry'}; 	
}

## @method set_retry ()
# Sets the given value for 'retry' property.
# 
# @param retry  - New value for the field.
# Flag indicating whether the virtual machine should automatically retry the boot
#     process after a failure.
#
sub set_retry {
   my ($self, %args) = @_;
   $self->{'retry'} = $args{'retry'}; 
   return;	
}

## @method get_retry_delay ()
# Gets the value of 'retry_delay' property.
#
# @retval retry_delay - The current value of the field.
# Delay in milliseconds before retrying the boot process after a failure; applicable
#     only when  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Info.retry`  is true.
#
# Optional#
sub get_retry_delay {
   my ($self, %args) = @_;
   return $self->{'retry_delay'}; 	
}

## @method set_retry_delay ()
# Sets the given value for 'retry_delay' property.
# 
# @param retry_delay  - New value for the field.
# Delay in milliseconds before retrying the boot process after a failure; applicable
#     only when  :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Info.retry`  is true.
#
sub set_retry_delay {
   my ($self, %args) = @_;
   $self->{'retry_delay'} = $args{'retry_delay'}; 
   return;	
}

## @method get_enter_setup_mode ()
# Gets the value of 'enter_setup_mode' property.
#
# @retval enter_setup_mode - The current value of the field.
# Flag indicating whether the firmware boot process should automatically enter setup
#     mode the next time the virtual machine boots. Note that this flag will automatically
#     be reset to false once the virtual machine enters setup mode.
#
# Optional#
sub get_enter_setup_mode {
   my ($self, %args) = @_;
   return $self->{'enter_setup_mode'}; 	
}

## @method set_enter_setup_mode ()
# Sets the given value for 'enter_setup_mode' property.
# 
# @param enter_setup_mode  - New value for the field.
# Flag indicating whether the firmware boot process should automatically enter setup
#     mode the next time the virtual machine boots. Note that this flag will automatically
#     be reset to false once the virtual machine enters setup mode.
#
sub set_enter_setup_mode {
   my ($self, %args) = @_;
   $self->{'enter_setup_mode'} = $args{'enter_setup_mode'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Boot service
#########################################################################################
