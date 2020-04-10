########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ResourceTypes.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vstats::ResourceTypes
# The  ``Com::Vmware::Vstats::ResourceTypes``   *interface*  provides list of resource
#     types. Resource refers to any item or concept that could have measurable properties.
#     It is a prerequisite that a resource can be identified. <p>
# 
#  Example resource types are virtual machine, virtual disk etc.</p>
# 
# . <b>Warning:</b> This  *interface*  is available as Technology Preview. These are
#     early access APIs provided to test, automate and provide feedback on the feature.
#     Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for resource types. <b>Warning:</b> This  *constant*  is available as
# Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.

package Com::Vmware::Vstats::ResourceTypes;

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
use Com::Vmware::Vstats::ResourceTypesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vstats.resource_types';


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
# Returns a list of available resource types. <b>Warning:</b> This  *method*  is available
# as Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @retval 
# List of resource types.
# The return type will be Array of Com::Vmware::Vstats::ResourceTypes::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vstats::ResourceTypes service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vstats::ResourceTypes service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vstats::ResourceTypes service
#########################################################################################

## @class Com::Vmware::Vstats::ResourceTypes::Summary
#
#
# The  ``Com::Vmware::Vstats::ResourceTypes::Summary``   *class*  contains information
#     of addressable resource. <b>Warning:</b> This  *class*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::ResourceTypes::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::ResourceTypes::Summary structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::ResourceTypes::Summary');
   $self->set_binding_name('name' => 'com.vmware.vstats.resource_types.summary');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Resource type. <b>Warning:</b> This  *field*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
# ID#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Resource type. <b>Warning:</b> This  *field*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vstats::ResourceTypes service
#########################################################################################
