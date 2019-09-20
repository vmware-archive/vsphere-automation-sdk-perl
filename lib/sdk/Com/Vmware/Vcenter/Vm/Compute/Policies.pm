########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Policies.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Compute::Policies;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm::Compute::Policies
# The  ``Com::Vmware::Vcenter::Vm::Compute::Policies``   *interface*  provides 
#     *methods*  to query the status of policies on virtual machines. <b>Warning:</b> This 
#     *interface*  is available as technical preview. It may be changed in a future release.
#

package Com::Vmware::Vcenter::Vm::Compute::Policies;

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
use Com::Vmware::Vcenter::Vm::Compute::PoliciesStub;

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
# Returns information about the compliance of a virtual machine with a compute policy.
# <b>Warning:</b> This  *method*  is available as technical preview. It may be changed in a
# future release.
#
# @param vm [REQUIRED] Identifier of the virtual machine to query the status for.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param policy [REQUIRED] Identifier of the policy to query the status for.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.compute.Resources.COMPUTE_POLICY).
# . The value must be str.
#
# @retval 
# Information about the compliance of the specified virtual machine with the specified
#     compute policy.
# The return type will be Com::Vmware::Vcenter::Vm::Compute::Policies::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a virtual machine with the given identifier does not exist, or if a policy with the
#     given identifier does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#

sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};
   my $policy = $args {policy};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm::Compute::Policies service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm::Compute::Policies service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm::Compute::Policies service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm::Compute::Policies::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm::Compute::Policies::Info``   *class*  contains
#     information about the compliance of a virtual machine with a compute policy.
#     <b>Warning:</b> This  *class*  is available as technical preview. It may be changed in
#     a future release.

package Com::Vmware::Vcenter::Vm::Compute::Policies::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Compute::Policies::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm::Compute::Policies::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm.compute.policies.info');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Compute::Policies', 'type_name' => 'ObjectCompliance'));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# The compliance status of the policy on a specified object.<b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# ObjectCompliance#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The compliance status of the policy on a specified object.<b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm::Compute::Policies service
#########################################################################################
