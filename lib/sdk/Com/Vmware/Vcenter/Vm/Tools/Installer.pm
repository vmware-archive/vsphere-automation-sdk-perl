########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Installer.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Tools::Installer
# The  ``Com::Vmware::Vcenter::Vm::Tools::Installer``  (@term service} provides 
#     *methods*  to install VMware Tools in the guest operating system. This  *interface* 
#     was added in vSphere API 7.0.0.0.
#

package Com::Vmware::Vcenter::Vm::Tools::Installer;

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
use Com::Vmware::Vcenter::Vm::Tools::InstallerStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.tools.installer';


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
# Get information about the VMware Tools installer. This  *method*  was added in vSphere API
# 7.0.0.0.
#
# @param vm [REQUIRED] Identifier of the virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# information about the VMware Tools installer.
# The return type will be Com::Vmware::Vcenter::Vm::Tools::Installer::Info
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

## @method connect ()
# Connects the VMware Tools CD installer as a CD-ROM for the guest operating system. On
# Windows guest operating systems with autorun, this should cause the installer to initiate
# the Tools installation which will need user input to complete. On other (non-Windows)
# guest operating systems this will make the Tools installation available, and a a user will
# need to do guest-specific actions. On Linux, this includes opening an archive and running
# the installer. To monitor the status of the Tools install, clients should check the 
# ``versionStatus``  and  ``runState``  from  :func:`Com::Vmware::Vcenter::Vm::Tools.get` .
# This  *method*  was added in vSphere API 7.0.0.0.
#
# @param vm [REQUIRED] Virtual machine ID
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered on.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState 
# if the VMware Tools CD is already connected.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the Tools installation fails in the guest operating system.
#
sub connect {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'connect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'connect',
                         method_args => \%args);
}

## @method disconnect ()
# Disconnect the VMware Tools installer CD image. This  *method*  was added in vSphere API
# 7.0.0.0.
#
# @param vm [REQUIRED] Virtual machine ID
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is not powered on.
#
sub disconnect {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'disconnect',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'disconnect',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Tools::Installer service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Tools::Installer service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Tools::Installer service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Tools::Installer::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Tools::Installer::Info``   *class*  contains
#     information about the VMWare Tools installer. This  *class*  was added in vSphere API
#     7.0.0.0.

package Com::Vmware::Vcenter::Vm::Tools::Installer::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Tools::Installer::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{is_connected} = $args{'is_connected'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Tools::Installer::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.tools.installer.info');
   $self->set_binding_field('key' => 'is_connected', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_is_connected ()
# Gets the value of 'is_connected' property.
#
# @retval is_connected - The current value of the field.
# Flag indicating whether the VMware Tools installer is mounted as a CD-ROM. This 
#     *field*  was added in vSphere API 7.0.0.0.
#
# boolean#
sub get_is_connected {
   my ($self, %args) = @_;
   return $self->{'is_connected'}; 	
}

## @method set_is_connected ()
# Sets the given value for 'is_connected' property.
# 
# @param is_connected  - New value for the field.
# Flag indicating whether the VMware Tools installer is mounted as a CD-ROM. This 
#     *field*  was added in vSphere API 7.0.0.0.
#
sub set_is_connected {
   my ($self, %args) = @_;
   $self->{'is_connected'} = $args{'is_connected'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Tools::Installer service
#########################################################################################
