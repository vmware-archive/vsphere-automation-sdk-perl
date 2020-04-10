########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Device.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Hardware::Boot::Device
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device``   *interface*  provides 
#     *methods*  for configuring the device order used when booting a virtual machine. <p>
# 
# The boot order may be specified using a mixture of device classes and device
#     instances, chosen from among the following: </p>
# 
# <ul>
# <li> :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.CDROM` : Boot from
#     a virtual CD-ROM drive; the device instance(s) will be chosen by the BIOS
#     subsystem.</li>
# <li> :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.FLOPPY` : Boot from
#     a virtual floppy drive; the device instance(s) will be chosen by the BIOS
#     subsystem.</li>
# <li> :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.DISK` : Boot from a
#     virtual disk device; the device instance is specified explicitly in 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry.disks`  list, and
#     multiple instances may be specified in the list.</li>
# <li> :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.ETHERNET` : Boot
#     from a virtual Ethernet adapter; the device instance is specified explicitly as 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry.nic` , and multiple
#     adapters may be specified in the boot order list.</li>
#  </ul>
#

package Com::Vmware::Vcenter::Vm::Hardware::Boot::Device;

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
use Com::Vmware::Vcenter::Vm::Hardware::Boot::DeviceStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.hardware.boot.device';


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
# Returns an ordered list of boot devices for the virtual machine. If the  *list*  is empty,
# the virtual machine uses a default boot sequence.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Ordered list of configured boot devices.
# The return type will be Array of Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry
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

## @method set ()
# Sets the virtual devices that will be used to boot the virtual machine. The virtual
# machine will check the devices in order, attempting to boot from each, until the virtual
# machine boots successfully. If the  *list*  is empty, the virtual machine will use a
# default boot sequence. There should be no more than one instance of  class
# Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry  for a given device type except 
# :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.ETHERNET`  in the  *list* .
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param devices [REQUIRED] Ordered list of boot devices.
# . The value must be Array of Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found, or if any of the specified virtual devices is not
#     found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if a any of the CDROM, DISK, ETHERNET, FLOPPY values appears in more than one 
#     ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry``  with the exception of 
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type.ETHERNET` , which may
#     appear multiple times if the virtual machine has been configured with multiple
#     Ethernet adapters.
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
sub set {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $devices = $args {devices};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Boot::Device service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type``   *enumerated type* 
#     defines the valid device types that may be used as bootable devices.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::CDROM #
#Virtual CD-ROM device.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::DISK #
#Virtual disk device.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::ETHERNET #
#Virtual Ethernet adapter.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type::FLOPPY #
#Virtual floppy drive.

package Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type;

use constant {
    CDROM =>  'CDROM',
    DISK =>  'DISK',
    ETHERNET =>  'ETHERNET',
    FLOPPY =>  'FLOPPY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.boot.device.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Hardware::Boot::Device service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Hardware::Boot::Device service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec
#
#
# The  *class*   ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec`` 
#     specifies a list of bootable virtual device classes. When a VM is being created and a 
#     *list*  of  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec``  is
#     specified, the boot order of the specific device instances are not specified in this 
#     *class* . The boot order of the specific device instance will be the order in which
#     the Ethernet and Disk devices appear in the  ``nics``  and  ``disks``  respectively.

package Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::EntryCreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.boot.device.entry_create_spec');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot', 'type_name' => 'Device::Type'));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Virtual Boot device type.
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
# Virtual Boot device type.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry
#
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry``   *class*  specifies
#     a bootable virtual device class or specific bootable virtual device(s).

package Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry structure
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
               'ETHERNET' => ['nic'],
               'DISK' => ['disks'],
               'CDROM' => [],
               'FLOPPY' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{nic} = $args{'nic'};
   $self->{disks} = $args{'disks'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot::Device::Entry');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.hardware.boot.device.entry');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot', 'type_name' => 'Device::Type'));
   $self->set_binding_field('key' => 'nic', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Virtual device type.
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
# Virtual device type.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_nic ()
# Gets the value of 'nic' property.
#
# @retval nic - The current value of the field.
# Virtual Ethernet device. Ethernet device to use as boot device for this entry.
#
# optional#
sub get_nic {
   my ($self, %args) = @_;
   return $self->{'nic'}; 	
}

## @method set_nic ()
# Sets the given value for 'nic' property.
# 
# @param nic  - New value for the field.
# Virtual Ethernet device. Ethernet device to use as boot device for this entry.
#
sub set_nic {
   my ($self, %args) = @_;
   $self->{'nic'} = $args{'nic'}; 
   return;	
}

## @method get_disks ()
# Gets the value of 'disks' property.
#
# @retval disks - The current value of the field.
# Virtual disk device. List of virtual disks in boot order.
#
# optional#
sub get_disks {
   my ($self, %args) = @_;
   return $self->{'disks'}; 	
}

## @method set_disks ()
# Sets the given value for 'disks' property.
# 
# @param disks  - New value for the field.
# Virtual disk device. List of virtual disks in boot order.
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Hardware::Boot::Device service
#########################################################################################
