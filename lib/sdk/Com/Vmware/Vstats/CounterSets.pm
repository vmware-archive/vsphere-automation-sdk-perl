########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CounterSets.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vstats::CounterSets
# The  ``Com::Vmware::Vstats::CounterSets``   *interface*  provides  *methods*  for
#     accessing groupings of counters. Counter-sets allow consumers to use groups of
#     counters. The counters may relate to different resource types. When an  class
#     Com::Vmware::Vstats::AcqSpecs  record refers to a counter-set, only the relevant
#     counters apply. <b>Warning:</b> This  *interface*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for counter sets. <b>Warning:</b> This  *constant*  is available as
# Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.

package Com::Vmware::Vstats::CounterSets;

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
use Com::Vmware::Vstats::CounterSetsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vstats.counter_sets';


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
# Returns information about all the counter sets. <b>Warning:</b> This  *method*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @retval 
# List of counter sets.
# The return type will be Array of Com::Vmware::Vstats::CounterSets::Info
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

## @method get ()
# Returns information about a specific counter set. <b>Warning:</b> This  *method*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# @param counter_set [REQUIRED] identifier of the counter set to retrieve.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vstats.model.CounterSet).
# . The value must be str.
#
# @retval 
# Information about the desired CounterSet.
# The return type will be Com::Vmware::Vstats::CounterSets::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``counter_set``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the requested counter set could not be located.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have sufficient privileges.
#
sub get {
   my ($self, %args) = @_;
   my $counter_set = $args {counter_set};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vstats::CounterSets service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vstats::CounterSets service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vstats::CounterSets service
#########################################################################################

## @class Com::Vmware::Vstats::CounterSets::Info
#
#
# The  ``Com::Vmware::Vstats::CounterSets::Info``   *class*  contains information about
#     a set of counters. <b>Warning:</b> This  *class*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.

package Com::Vmware::Vstats::CounterSets::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vstats::CounterSets::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{counters} = $args{'counters'};
   $self->{user_info} = $args{'user_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vstats::CounterSets::Info');
   $self->set_binding_name('name' => 'com.vmware.vstats.counter_sets.info');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'counters', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'CidMid')));
   $self->set_binding_field('key' => 'user_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vstats', 'type_name' => 'UserInfo')));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Counter set identifier. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# String#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# Counter set identifier. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_counters ()
# Gets the value of 'counters' property.
#
# @retval counters - The current value of the field.
# List of Counter CidMids. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# List#
sub get_counters {
   my ($self, %args) = @_;
   return $self->{'counters'}; 	
}

## @method set_counters ()
# Sets the given value for 'counters' property.
# 
# @param counters  - New value for the field.
# List of Counter CidMids. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_counters {
   my ($self, %args) = @_;
   $self->{'counters'} = $args{'counters'}; 
   return;	
}

## @method get_user_info ()
# Gets the value of 'user_info' property.
#
# @retval user_info - The current value of the field.
# Human legible localizable conter set description. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
# Optional#
sub get_user_info {
   my ($self, %args) = @_;
   return $self->{'user_info'}; 	
}

## @method set_user_info ()
# Sets the given value for 'user_info' property.
# 
# @param user_info  - New value for the field.
# Human legible localizable conter set description. <b>Warning:</b> This  *field*  is
#     available as Technology Preview. These are early access APIs provided to test,
#     automate and provide feedback on the feature. Since this can change based on feedback,
#     VMware does not guarantee backwards compatibility and recommends against using them in
#     production environments. Some Technology Preview APIs might only be applicable to
#     specific environments.
#
sub set_user_info {
   my ($self, %args) = @_;
   $self->{'user_info'} = $args{'user_info'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vstats::CounterSets service
#########################################################################################
