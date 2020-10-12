########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ActiveDirectory.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Vcenter::Deployment;

## @class Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory
# The  ``Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory``   *interface* 
#     provides  *methods*  to check if the migrated vCenter Server appliance can join to the
#     given domain using the provided credentials. This  *interface*  was added in vSphere
#     API 7.0.0.0.
#

package Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory;

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
use Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectoryStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.deployment.migrate.active_directory';


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

## @method check ()
# Checks whether the provided Active Directory user has permission to join the migrated
# vCenter Server appliance to the domain. This  *method*  was added in vSphere API 7.0.0.0.
#
# @param spec [REQUIRED] Information to connect to Active Directory.
# . The value must be Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory::CheckSpec.
#
# @retval 
# Information about the success or failure of the checks that were performed.
# The return type will be Com::Vmware::Vcenter::Deployment::CheckInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed arguments are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the appliance is not in INITIALIZED state.
#
sub check {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory service
#########################################################################################

## @class Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory::CheckSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory::CheckSpec``  
#     *class*  contains information used to join the migrated vCenter Server appliance to
#     the Active Directory. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory::CheckSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory::CheckSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{dns_servers} = $args{'dns_servers'};
   $self->{domain} = $args{'domain'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory::CheckSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.migrate.active_directory.check_spec');
   $self->set_binding_field('key' => 'dns_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_dns_servers ()
# Gets the value of 'dns_servers' property.
#
# @retval dns_servers - The current value of the field.
# IP addresses of the DNS servers of the Active Directory server. This  *field*  was
#     added in vSphere API 7.0.0.0.
#
# List#
sub get_dns_servers {
   my ($self, %args) = @_;
   return $self->{'dns_servers'}; 	
}

## @method set_dns_servers ()
# Sets the given value for 'dns_servers' property.
# 
# @param dns_servers  - New value for the field.
# IP addresses of the DNS servers of the Active Directory server. This  *field*  was
#     added in vSphere API 7.0.0.0.
#
sub set_dns_servers {
   my ($self, %args) = @_;
   $self->{'dns_servers'} = $args{'dns_servers'}; 
   return;	
}

## @method get_domain ()
# Gets the value of 'domain' property.
#
# @retval domain - The current value of the field.
# The domain name of the Active Directory server to which the migrated vCenter Server
#     appliance should be joined. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_domain {
   my ($self, %args) = @_;
   return $self->{'domain'}; 	
}

## @method set_domain ()
# Sets the given value for 'domain' property.
# 
# @param domain  - New value for the field.
# The domain name of the Active Directory server to which the migrated vCenter Server
#     appliance should be joined. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_domain {
   my ($self, %args) = @_;
   $self->{'domain'} = $args{'domain'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Active Directory user that has permission to join the Active Directory after the
#     vCenter Server is migrated to appliance. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Active Directory user that has permission to join the Active Directory after the
#     vCenter Server is migrated to appliance. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Active Directory user password that has permission to join the Active Directory after
#     the vCenter Server is migrated to appliance. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# String#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Active Directory user password that has permission to join the Active Directory after
#     the vCenter Server is migrated to appliance. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectory service
#########################################################################################
