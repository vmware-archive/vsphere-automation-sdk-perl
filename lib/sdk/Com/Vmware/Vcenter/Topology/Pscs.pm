########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Pscs.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Topology::Pscs
# The  ``Com::Vmware::Vcenter::Topology::Pscs``   *interface*  provides  *methods*  to
#     decommission the external Platform Services Controller node. This  *interface*  was
#     added in vSphere API 6.7.2.
#

package Com::Vmware::Vcenter::Topology::Pscs;

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
use Com::Vmware::Vcenter::Topology::PscsStub;

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

## @method decommission ()
# Decommission the external Platform Services Controller node. This  *method*  was added in
# vSphere API 6.7.2.
#
# @param hostname [REQUIRED] FQDN or IP address of external Platform Services Controller node to be decommissioned.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.VCenter.name).
# . The value must be str.
#
# @param spec [REQUIRED] Information needed to decommission the external Platform Services Controller node.
# . The value must be Com::Vmware::Vcenter::Topology::Pscs::DecommissionSpec.
#
# @param only_precheck [OPTIONAL] Flag indicating whether only a pre-check should be performed.
# If  *null*  the full decommission will be performed.
# . The value must be Boolean or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if the appliance is in not a management node.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if passed arguments are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnverifiedPeer 
# If the SSL certificate of the foreign external Platform Services Controller node
#     cannot be validated. 
# The value of the data  *field*  of null will be a  *class*  that contains all the 
#     *fields*  defined in null.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the provided Platform Services Controller node doesn&apos;t qualify for
#     decommission due to some reasons like it has some other nodes connected to it.
#

sub decommission {
   my ($self, %args) = @_;
   my $hostname = $args {hostname};
   my $spec = $args {spec};
   my $only_precheck = $args {only_precheck};

   $self->validate_args (method_name => 'decommission',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'decommission',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Topology::Pscs service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Topology::Pscs service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Topology::Pscs service
#########################################################################################

## @class Com::Vmware::Vcenter::Topology::Pscs::DecommissionSpec
#
#
# The  ``Com::Vmware::Vcenter::Topology::Pscs::DecommissionSpec``   *class*  contains
#     information about the Platform Services Controller node to be decommissioned. This 
#     *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Vcenter::Topology::Pscs::DecommissionSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Topology::Pscs::DecommissionSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{sso_admin_username} = $args{'sso_admin_username'};
   $self->{sso_admin_password} = $args{'sso_admin_password'};
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};
   $self->{ssl_verify} = $args{'ssl_verify'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Topology::Pscs::DecommissionSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.topology.pscs.decommission_spec');
   $self->set_binding_field('key' => 'sso_admin_username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sso_admin_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_sso_admin_username ()
# Gets the value of 'sso_admin_username' property.
#
# @retval sso_admin_username - The current value of the field.
# The SSO administrator username for example &quot;administrator@vsphere.local&quot;.
#     This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_sso_admin_username {
   my ($self, %args) = @_;
   return $self->{'sso_admin_username'}; 	
}

## @method set_sso_admin_username ()
# Sets the given value for 'sso_admin_username' property.
# 
# @param sso_admin_username  - New value for the field.
# The SSO administrator username for example &quot;administrator@vsphere.local&quot;.
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_sso_admin_username {
   my ($self, %args) = @_;
   $self->{'sso_admin_username'} = $args{'sso_admin_username'}; 
   return;	
}

## @method get_sso_admin_password ()
# Gets the value of 'sso_admin_password' property.
#
# @retval sso_admin_password - The current value of the field.
# The SSO administrator account password. This  *field*  was added in vSphere API 6.7.2.
#
# Secret#
sub get_sso_admin_password {
   my ($self, %args) = @_;
   return $self->{'sso_admin_password'}; 	
}

## @method set_sso_admin_password ()
# Sets the given value for 'sso_admin_password' property.
# 
# @param sso_admin_password  - New value for the field.
# The SSO administrator account password. This  *field*  was added in vSphere API 6.7.2.
#
sub set_sso_admin_password {
   my ($self, %args) = @_;
   $self->{'sso_admin_password'} = $args{'sso_admin_password'}; 
   return;	
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# SHA1 thumbprint of the external Platform Services Controller node to be decommissioned
#     that will be used for verification. This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.
# SHA1 thumbprint of the external Platform Services Controller node to be decommissioned
#     that will be used for verification. This  *field*  was added in vSphere API 6.7.2.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}

## @method get_ssl_verify ()
# Gets the value of 'ssl_verify' property.
#
# @retval ssl_verify - The current value of the field.
# SSL verification should be enabled or disabled. This  *field*  was added in vSphere
#     API 6.7.2.
#
# Optional#
sub get_ssl_verify {
   my ($self, %args) = @_;
   return $self->{'ssl_verify'}; 	
}

## @method set_ssl_verify ()
# Sets the given value for 'ssl_verify' property.
# 
# @param ssl_verify  - New value for the field.
# SSL verification should be enabled or disabled. This  *field*  was added in vSphere
#     API 6.7.2.
#
sub set_ssl_verify {
   my ($self, %args) = @_;
   $self->{'ssl_verify'} = $args{'ssl_verify'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Topology::Pscs service
#########################################################################################
