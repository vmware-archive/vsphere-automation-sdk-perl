########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Sync.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Hvc::Links::Sync
# The  ``Com::Vmware::Vcenter::Hvc::Links::Sync``   *interface*  provides  *methods*  to
#     create a sync session, get information on Sync. Usage beyond VMware Cloud on AWS is
#     not supported. <b>Warning:</b> This  *interface*  is available as Technology Preview.
#     These are early access APIs provided to test, automate and provide feedback on the
#     feature. Since this can change based on feedback, VMware does not guarantee backwards
#     compatibility and recommends against using them in production environments. Some
#     Technology Preview APIs might only be applicable to specific environments.
#

package Com::Vmware::Vcenter::Hvc::Links::Sync;

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
use Com::Vmware::Vcenter::Hvc::Links::SyncStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.hvc.links.sync';


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

## @method reset ()
# Resets the sync state between the linked domains by initiating a fresh sync for all
# providers. If an existing sync is in progress this cancels the sync. Usage beyond VMware
# Cloud on AWS is not supported. <b>Warning:</b> This  *method*  is available as Technology
# Preview. These are early access APIs provided to test, automate and provide feedback on
# the feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# @param link [REQUIRED] Unique identifier of the link.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.hvc.Links).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the link Identifier associated with  ``link``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user is not authorized to perform this operation.
#
sub reset {
   my ($self, %args) = @_;
   my $link = $args {link};

   $self->validate_args (method_name => 'reset',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'reset',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Hvc::Links::Sync service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Hvc::Links::Sync service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Hvc::Links::Sync service
#########################################################################################

## @class Com::Vmware::Vcenter::Hvc::Links::Sync::Credentials
#
#
# The  ``Com::Vmware::Vcenter::Hvc::Links::Sync::Credentials``   *interface*  specifies
#     user credentials to make a successful connection to remote endpoint. <b>Warning:</b>
#     This  *class*  is available as Technology Preview. These are early access APIs
#     provided to test, automate and provide feedback on the feature. Since this can change
#     based on feedback, VMware does not guarantee backwards compatibility and recommends
#     against using them in production environments. Some Technology Preview APIs might only
#     be applicable to specific environments.

package Com::Vmware::Vcenter::Hvc::Links::Sync::Credentials;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Hvc::Links::Sync::Credentials structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{user_name} = $args{'user_name'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Hvc::Links::Sync::Credentials');
   $self->set_binding_name('name' => 'com.vmware.vcenter.hvc.links.sync.credentials');
   $self->set_binding_field('key' => 'user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   bless $self, $class;
   return $self;
}

## @method get_user_name ()
# Gets the value of 'user_name' property.
#
# @retval user_name - The current value of the field.
# Name of the user to authenticate. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
# String#
sub get_user_name {
   my ($self, %args) = @_;
   return $self->{'user_name'}; 	
}

## @method set_user_name ()
# Sets the given value for 'user_name' property.
# 
# @param user_name  - New value for the field.
# Name of the user to authenticate. <b>Warning:</b> This  *field*  is available as
#     Technology Preview. These are early access APIs provided to test, automate and provide
#     feedback on the feature. Since this can change based on feedback, VMware does not
#     guarantee backwards compatibility and recommends against using them in production
#     environments. Some Technology Preview APIs might only be applicable to specific
#     environments.
#
sub set_user_name {
   my ($self, %args) = @_;
   $self->{'user_name'} = $args{'user_name'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Password for the user. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Password for the user. <b>Warning:</b> This  *field*  is available as Technology
#     Preview. These are early access APIs provided to test, automate and provide feedback
#     on the feature. Since this can change based on feedback, VMware does not guarantee
#     backwards compatibility and recommends against using them in production environments.
#     Some Technology Preview APIs might only be applicable to specific environments.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Hvc::Links::Sync service
#########################################################################################
