########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Customization.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Guest;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Guest::Customization
# The  ``Com::Vmware::Vcenter::Vm::Guest::Customization``   *interface*  provides 
#     *methods*  to apply a customization specification to a virtual machine. This 
#     *interface*  was added in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Vm::Guest::Customization;

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
use Com::Vmware::Vcenter::Vm::Guest::CustomizationStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm.guest.customization';


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

## @method set ()
# Applies a customization specification in  ``spec``  on the virtual machine in  ``vm`` .
# This  *method*  only sets the specification settings for the virtual machine. The actual
# customization happens inside the guest when the virtual machine is powered on. If 
# ``spec``  has  *null*  values, then any pending customization settings for the virtual
# machine are cleared. If there is a pending customization for the virtual machine and 
# ``spec``  has valid content, then the existing customization setting will be overwritten
# with the new settings. This  *method*  was added in vSphere API 7.0.0.
#
# @param vm [REQUIRED] The unique identifier of the virtual machine that needs to be customized.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [REQUIRED] The customization settings to be applied to the guest operating system.
# . The value must be Com::Vmware::Vcenter::Vm::Guest::Customization::SetSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the customization settings in  ``spec``  are not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine  ``vm``  is not in a powered off state.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a customization specification is not found with the unique name in  ``spec`` .
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the virtual machine  ``vm``  is not found.
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
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Guest::Customization service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Guest::Customization service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Guest::Customization service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Guest::Customization::SetSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm::Guest::Customization::SetSpec``   *class*  contains
#     specification information that has to be applied to a virtual machine. This  *class* 
#     was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Vm::Guest::Customization::SetSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Guest::Customization::SetSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{spec} = $args{'spec'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Guest::Customization::SetSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.guest.customization.set_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'spec', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'CustomizationSpec')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the customization specification that has be retrieved from the virtual
#     center inventory and applied for the virtual machine. Either one of  ``name``  or 
#     ``spec``  or none of them should be specified. This  *field*  was added in vSphere API
#     7.0.0.
#
# Optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The name of the customization specification that has be retrieved from the virtual
#     center inventory and applied for the virtual machine. Either one of  ``name``  or 
#     ``spec``  or none of them should be specified. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_spec ()
# Gets the value of 'spec' property.
#
# @retval spec - The current value of the field.
# The customization specification that has to be applied for the virtual machine. Either
#     one of  ``name``  or  ``spec``  or none of them should be specified. This  *field* 
#     was added in vSphere API 7.0.0.
#
# Optional#
sub get_spec {
   my ($self, %args) = @_;
   return $self->{'spec'}; 	
}

## @method set_spec ()
# Sets the given value for 'spec' property.
# 
# @param spec  - New value for the field.
# The customization specification that has to be applied for the virtual machine. Either
#     one of  ``name``  or  ``spec``  or none of them should be specified. This  *field* 
#     was added in vSphere API 7.0.0.
#
sub set_spec {
   my ($self, %args) = @_;
   $self->{'spec'} = $args{'spec'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Guest::Customization service
#########################################################################################
