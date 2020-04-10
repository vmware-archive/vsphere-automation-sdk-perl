########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Policy.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Local_accounts::Policy
# The  ``Com::Vmware::Appliance::Local_accounts::Policy``   *interface*  provides 
#     *methods*  to manage local user accounts. This  *interface*  was added in vSphere API
#     6.7.
#

package Com::Vmware::Appliance::Local_accounts::Policy;

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
use Com::Vmware::Appliance::Local_accounts::PolicyStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.local_accounts.policy';


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
# Get the global password policy. This  *method*  was added in vSphere API 6.7.
#
# @retval 
# Global password policy
# The return type will be Com::Vmware::Appliance::Local_accounts::Policy::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method set ()
# Set the global password policy. This  *method*  was added in vSphere API 6.7.
#
# @param policy [REQUIRED] Global password policy
# . The value must be Com::Vmware::Appliance::Local_accounts::Policy::Info.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed policy values are &lt; -1 or &gt; 99999
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub set {
   my ($self, %args) = @_;
   my $policy = $args {policy};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Local_accounts::Policy service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Local_accounts::Policy service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Local_accounts::Policy service
#########################################################################################

## @class Com::Vmware::Appliance::Local_accounts::Policy::Info
#
#
# The  ``Com::Vmware::Appliance::Local_accounts::Policy::Info``   *class*  defines the
#     global password policy. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Appliance::Local_accounts::Policy::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Local_accounts::Policy::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{max_days} = $args{'max_days'};
   $self->{min_days} = $args{'min_days'};
   $self->{warn_days} = $args{'warn_days'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Local_accounts::Policy::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.local_accounts.policy.info');
   $self->set_binding_field('key' => 'max_days', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'min_days', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'warn_days', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_max_days ()
# Gets the value of 'max_days' property.
#
# @retval max_days - The current value of the field.
# Maximum number of days a password may be used. If the password is older than this, a
#     password change will be forced. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_max_days {
   my ($self, %args) = @_;
   return $self->{'max_days'}; 	
}

## @method set_max_days ()
# Sets the given value for 'max_days' property.
# 
# @param max_days  - New value for the field.
# Maximum number of days a password may be used. If the password is older than this, a
#     password change will be forced. This  *field*  was added in vSphere API 6.7.
#
sub set_max_days {
   my ($self, %args) = @_;
   $self->{'max_days'} = $args{'max_days'}; 
   return;	
}

## @method get_min_days ()
# Gets the value of 'min_days' property.
#
# @retval min_days - The current value of the field.
# Minimum number of days allowed between password changes. Any password changes
#     attempted sooner than this will be rejected. This  *field*  was added in vSphere API
#     6.7.
#
# Optional#
sub get_min_days {
   my ($self, %args) = @_;
   return $self->{'min_days'}; 	
}

## @method set_min_days ()
# Sets the given value for 'min_days' property.
# 
# @param min_days  - New value for the field.
# Minimum number of days allowed between password changes. Any password changes
#     attempted sooner than this will be rejected. This  *field*  was added in vSphere API
#     6.7.
#
sub set_min_days {
   my ($self, %args) = @_;
   $self->{'min_days'} = $args{'min_days'}; 
   return;	
}

## @method get_warn_days ()
# Gets the value of 'warn_days' property.
#
# @retval warn_days - The current value of the field.
# Number of days warning given before a password expires. A zero means warning is given
#     only upon the day of expiration. This  *field*  was added in vSphere API 6.7.
#
# Optional#
sub get_warn_days {
   my ($self, %args) = @_;
   return $self->{'warn_days'}; 	
}

## @method set_warn_days ()
# Sets the given value for 'warn_days' property.
# 
# @param warn_days  - New value for the field.
# Number of days warning given before a password expires. A zero means warning is given
#     only upon the day of expiration. This  *field*  was added in vSphere API 6.7.
#
sub set_warn_days {
   my ($self, %args) = @_;
   $self->{'warn_days'} = $args{'warn_days'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Local_accounts::Policy service
#########################################################################################
