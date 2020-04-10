########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Administrators.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Hvc::Management::Administrators
# The  ``Com::Vmware::Vcenter::Hvc::Management::Administrators``  provides  *methods* 
#     to update, delete, and list groups in the local sso group. This is limited to the
#     Hybrid Linked Mode service. Usage beyond VMware Cloud on AWS is not supported.
#     <b>Warning:</b> This  *interface*  is available as Technology Preview. These are early
#     access APIs provided to test, automate and provide feedback on the feature. Since this
#     can change based on feedback, VMware does not guarantee backwards compatibility and
#     recommends against using them in production environments. Some Technology Preview APIs
#     might only be applicable to specific environments.
#

package Com::Vmware::Vcenter::Hvc::Management::Administrators;

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
use Com::Vmware::Vcenter::Hvc::Management::AdministratorsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.hvc.management.administrators';


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

## @method add ()
# Add the local sso group with the new group. Usage beyond VMware Cloud on AWS is not
# supported. <b>Warning:</b> This  *method*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# @param group_name [REQUIRED] Name of the new group to be added. Ex - xyz@abc.com where xyz is the group name and
#     abc.com is the domain name
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user is not authorized.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
sub add {
   my ($self, %args) = @_;
   my $group_name = $args {group_name};

   $self->validate_args (method_name => 'add',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add',
                         method_args => \%args);
}

## @method remove ()
# Remove the group from the local sso group. Usage beyond VMware Cloud on AWS is not
# supported. <b>Warning:</b> This  *method*  is available as Technology Preview. These are
# early access APIs provided to test, automate and provide feedback on the feature. Since
# this can change based on feedback, VMware does not guarantee backwards compatibility and
# recommends against using them in production environments. Some Technology Preview APIs
# might only be applicable to specific environments.
#
# @param group_name [REQUIRED] Name of the group to be removed. Ex - xyz@abc.com where xyz is the group name and
#     abc.com is the domain name
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user is not authorized.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
sub remove {
   my ($self, %args) = @_;
   my $group_name = $args {group_name};

   $self->validate_args (method_name => 'remove',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'remove',
                         method_args => \%args);
}

## @method set ()
# Sets the groups in the local sso group. Usage beyond VMware Cloud on AWS is not supported.
# <b>Warning:</b> This  *method*  is available as Technology Preview. These are early access
# APIs provided to test, automate and provide feedback on the feature. Since this can change
# based on feedback, VMware does not guarantee backwards compatibility and recommends
# against using them in production environments. Some Technology Preview APIs might only be
# applicable to specific environments.
#
# @param group_names [REQUIRED] Names the groups to be in the CloudAdminGroup Ex - xyz@abc.com where xyz is the group
#     name and abc.com is the domain name
# . The value must be Set of String.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user is not authorized.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
sub set {
   my ($self, %args) = @_;
   my $group_names = $args {group_names};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method get ()
# Enumerates the set of all the groups in the local sso group. Usage beyond VMware Cloud on
# AWS is not supported. <b>Warning:</b> This  *method*  is available as Technology Preview.
# These are early access APIs provided to test, automate and provide feedback on the
# feature. Since this can change based on feedback, VMware does not guarantee backwards
# compatibility and recommends against using them in production environments. Some
# Technology Preview APIs might only be applicable to specific environments.
#
# @retval 
# The  *set*  of all the groups.
# The return type will be Set of String
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Hvc::Management::Administrators service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Hvc::Management::Administrators service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Hvc::Management::Administrators service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Hvc::Management::Administrators service
#########################################################################################
