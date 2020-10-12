########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Capabilities.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Compute::Policies::Capabilities
# The  ``Com::Vmware::Vcenter::Compute::Policies::Capabilities``   *interface*  provides
#     *methods*  to manage compute policy capabilities in VMware Cloud on AWS. Usage beyond
#     VMware Cloud on AWS is not supported. The description of the capability provides
#     information about the intent of a policy based on this capability. A capability
#     provides a type to create a policy (see 
#     :func:`Com::Vmware::Vcenter::Compute::Policies.create` ). A capability also provides a
#     type that describes the information returned when retrieving information about a
#     policy (see  :func:`Com::Vmware::Vcenter::Compute::Policies.get` ). <b>Warning:</b>
#     This  *interface*  is available as Technology Preview. These are early access APIs
#     provided to test, automate and provide feedback on the feature. Since this can change
#     based on feedback, VMware does not guarantee backwards compatibility and recommends
#     against using them in production environments. Some Technology Preview APIs might only
#     be applicable to specific environments.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the compute policy capability. <b>Warning:</b> This  *constant*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.

package Com::Vmware::Vcenter::Compute::Policies::Capabilities;

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
use Com::Vmware::Vcenter::Compute::Policies::CapabilitiesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.compute.policies.capabilities';


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

## @method list ()
# Returns information about the compute policy capabilities available in this vCenter server
# in VMware Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. <b>Warning:</b>
# This  *method*  is available as Technology Preview. These are early access APIs provided
# to test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @retval 
# The list of compute policy capabilities available on this vCenter server.
# The return type will be Array of
# Com::Vmware::Vcenter::Compute::Policies::Capabilities::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges, or when used beyond VMware
#     Cloud on AWS.
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
# Returns information about a specific compute policy capability in VMware Cloud on AWS.
# Usage beyond VMware Cloud on AWS is not supported. <b>Warning:</b> This  *method*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param capability [REQUIRED] Identifier of the capability for which information should be retrieved.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.compute.policies.Capability).
# . The value must be str.
#
# @retval 
# Detailed information about the capability.
# The return type will be Com::Vmware::Vcenter::Compute::Policies::Capabilities::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a capability with this identifier does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges, or when used beyond VMware
#     Cloud on AWS.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $capability = $args {capability};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Compute::Policies::Capabilities service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Compute::Policies::Capabilities service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Compute::Policies::Capabilities service
#########################################################################################

## @class Com::Vmware::Vcenter::Compute::Policies::Capabilities::Summary
#
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::Capabilities::Summary``   *class* 
#     contains commonly used information about a compute policy capability. <b>Warning:</b>
#     This  *class*  is available as Technology Preview. These are early access APIs
#     provided to test, automate and provide feedback on the feature. Since this can change
#     based on feedback, VMware does not guarantee backwards compatibility and recommends
#     against using them in production environments. Some Technology Preview APIs might only
#     be applicable to specific environments.

package Com::Vmware::Vcenter::Compute::Policies::Capabilities::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::Capabilities::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{capability} = $args{'capability'};
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::Capabilities::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.compute.policies.capabilities.summary');
   $self->set_binding_field('key' => 'capability', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_capability ()
# Gets the value of 'capability' property.
#
# @retval capability - The current value of the field.
# Identifier of the capability. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
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
# Identifier of the capability. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_capability {
   my ($self, %args) = @_;
   $self->{'capability'} = $args{'capability'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the capability. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
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
# Name of the capability. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
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
# Description of the capability. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
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
# Description of the capability. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Compute::Policies::Capabilities::Info
#
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::Capabilities::Info``   *class* 
#     contains information about a compute policy capability. <b>Warning:</b> This  *class* 
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.

package Com::Vmware::Vcenter::Compute::Policies::Capabilities::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::Capabilities::Info structure
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
   $self->{description} = $args{'description'};
   $self->{create_spec_type} = $args{'create_spec_type'};
   $self->{info_type} = $args{'info_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::Capabilities::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.compute.policies.capabilities.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'create_spec_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'info_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the capability. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
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
# Name of the capability. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
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
# Description of the capability. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
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
# Description of the capability. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_create_spec_type ()
# Gets the value of 'create_spec_type' property.
#
# @retval create_spec_type - The current value of the field.
# Identifier of the  *class*  used to create a policy based on this capability. See 
#     :func:`Com::Vmware::Vcenter::Compute::Policies.create` . <b>Warning:</b> This  *field*
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# ID#
sub get_create_spec_type {
   my ($self, %args) = @_;
   return $self->{'create_spec_type'}; 	
}

## @method set_create_spec_type ()
# Sets the given value for 'create_spec_type' property.
# 
# @param create_spec_type  - New value for the field.
# Identifier of the  *class*  used to create a policy based on this capability. See 
#     :func:`Com::Vmware::Vcenter::Compute::Policies.create` . <b>Warning:</b> This  *field*
#     is available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_create_spec_type {
   my ($self, %args) = @_;
   $self->{'create_spec_type'} = $args{'create_spec_type'}; 
   return;	
}

## @method get_info_type ()
# Gets the value of 'info_type' property.
#
# @retval info_type - The current value of the field.
# Identifier of the  *class*  returned when retrieving information about a policy based
#     on this capability. See  :func:`Com::Vmware::Vcenter::Compute::Policies.get` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
# ID#
sub get_info_type {
   my ($self, %args) = @_;
   return $self->{'info_type'}; 	
}

## @method set_info_type ()
# Sets the given value for 'info_type' property.
# 
# @param info_type  - New value for the field.
# Identifier of the  *class*  returned when retrieving information about a policy based
#     on this capability. See  :func:`Com::Vmware::Vcenter::Compute::Policies.get` .
#     <b>Warning:</b> This  *field*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#
sub set_info_type {
   my ($self, %args) = @_;
   $self->{'info_type'} = $args{'info_type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Compute::Policies::Capabilities service
#########################################################################################
