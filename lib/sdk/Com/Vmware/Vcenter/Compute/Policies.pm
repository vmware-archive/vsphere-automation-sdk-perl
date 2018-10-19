########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Policies.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Compute::Policies
# The  ``Com::Vmware::Vcenter::Compute::Policies``   *interface*  provides  *methods* 
#     to manage compute policies. A compute policy defines the intended behavior for a
#     collection of vSphere objects identified by a tag. A compute policy is an instance of
#     a capability. It is created by providing a value for the creation type specified by
#     the capability. See 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::Capabilities::Info.create_spec_type` .
#     <b>Warning:</b> This  *interface*  is available as technical preview. It may be
#     changed in a future release.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the compute policy. <b>Warning:</b> This  *constant*  is available
# as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Compute::Policies;

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
use Com::Vmware::Vcenter::Compute::PoliciesStub;

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

## @method create ()
# Creates a new compute policy. <b>Warning:</b> This  *method*  is available as technical
# preview. It may be changed in a future release.
#
# Note:
# Privileges required for this operation are ComputePolicy.Manage.
#
# @param spec [REQUIRED] Specification for the new policy to be created. The new policy will be an instance of
#     the capability that has the creation type (see 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::Capabilities::Info.create_spec_type` )
#     equal to the type of the specified value (see  ``spec`` ).
# The value of this result must contain all the fields defined in
#     :class:`Com::Vmware::Vcenter::Compute::Policies::CreateSpec`.
# . The value must be DynamicStructure.
#
# @retval 
# The identifier of the newly created policy. Use this identifier to get or destroy the
#     policy.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.compute.Policy).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a policy with the same name is already present on this vCenter server.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if a parameter passed in the spec is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 100 policies are created.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``ComputePolicy.Manage`` . </li>
# </ul>
#

sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method list ()
# Returns information about the compute policies available in this vCenter server.
# <b>Warning:</b> This  *method*  is available as technical preview. It may be changed in a
# future release.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @retval 
# The list of compute policies available on this vCenter server.
# The return type will be Array of Com::Vmware::Vcenter::Compute::Policies::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Returns information about a specific compute policy. <b>Warning:</b> This  *method*  is
# available as technical preview. It may be changed in a future release.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param policy [REQUIRED] Identifier of the policy for which information should be retrieved.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.compute.Policy).
# . The value must be str.
#
# @retval 
# Detailed information about the specified compute policy. The returned value can be
#     converted to the information type of the capability that this policy is based on. See 
#     :attr:`Com::Vmware::Vcenter::Compute::Policies::Capabilities::Info.info_type` .
# The value of this parameter will contain all the fields defined in
#     :class:`Com::Vmware::Vcenter::Compute::Policies::Info`.
# The return type will be DynamicStructure
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a policy with this identifier does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $policy = $args {policy};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method delete ()
# Deletes a specific compute policy. <b>Warning:</b> This  *method*  is available as
# technical preview. It may be changed in a future release.
#
# Note:
# Privileges required for this operation are ComputePolicy.Manage.
#
# @param policy [REQUIRED] Identifier of the policy to be deleted.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.compute.Policy).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a policy with this identifier does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``ComputePolicy.Manage`` . </li>
# </ul>
#

sub delete {
   my ($self, %args) = @_;
   my $policy = $args {policy};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Compute::Policies service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Compute::Policies service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Compute::Policies service
#########################################################################################

## @class Com::Vmware::Vcenter::Compute::Policies::Summary
#
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::Summary``   *class*  contains commonly
#     used information about a compute policy. <b>Warning:</b> This  *class*  is available
#     as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Compute::Policies::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{policy} = $args{'policy'};
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};
   $self->{capability} = $args{'capability'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.compute.policies.summary');
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'capability', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier of the policy. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# ID#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier of the policy. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the policy. <b>Warning:</b> This  *field*  is available as technical preview.
#     It may be changed in a future release.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the policy. <b>Warning:</b> This  *field*  is available as technical preview.
#     It may be changed in a future release.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the policy. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the policy. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_capability ()
# Gets the value of 'capability' property.
#
# @retval capability - The current value of the field.
# Identifier of the capability this policy is based on. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
# ID#
sub get_capability {
   my ($self, %args) = @_;
   return $self->{'capability'}; 	
}

## @method set_capability ()
# Sets the given value for 'capability' property.
# 
# @param capability  - New value for the field.
# Identifier of the capability this policy is based on. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
sub set_capability {
   my ($self, %args) = @_;
   $self->{'capability'} = $args{'capability'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Compute::Policies service
#########################################################################################
