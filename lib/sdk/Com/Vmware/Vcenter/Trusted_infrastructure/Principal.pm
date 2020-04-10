########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Principal.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Principal
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::Principal``   *interface* 
#     contains information about the certificates which sign the tokens used by vCenter for
#     authentication. This  *interface*  was added in vSphere API 7.0.0.
#

package Com::Vmware::Vcenter::Trusted_infrastructure::Principal;

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
use Com::Vmware::Vcenter::Trusted_infrastructure::PrincipalStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.trusted_infrastructure.principal';


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
# Returns information about the STS used by this vCenter instance. This  *method*  was added
# in vSphere API 7.0.0.
#
# Note:
# Privileges required for this operation are TrustedAdmin.ReadStsInfo.
#
# @retval 
# @{link Info} a summary containing the certificates used to sign tokens and the
#     solution user used to retrieve them.
# The return type will be Com::Vmware::Vcenter::Trusted_infrastructure::Principal::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if there is a generic error.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``TrustedAdmin.ReadStsInfo`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Principal service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Trusted_infrastructure::Principal service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Principal service
#########################################################################################

## @class Com::Vmware::Vcenter::Trusted_infrastructure::Principal::Info
#
#
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::Principal::Info``   *class* 
#     contains the information about the principal and certificates used by this vCenter to
#     retrieve tokens. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::Principal::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::Principal::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{certificates} = $args{'certificates'};
   $self->{issuer} = $args{'issuer'};
   $self->{principal} = $args{'principal'};
   $self->{name} = $args{'name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::Principal::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.principal.info');
   $self->set_binding_field('key' => 'certificates', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'X509CertChain')));
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'principal', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Trusted_infrastructure', 'type_name' => 'StsPrincipal'));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_certificates ()
# Gets the value of 'certificates' property.
#
# @retval certificates - The current value of the field.
# The certificates used by the STS to sign tokens for this vCenter. This  *field*  was
#     added in vSphere API 7.0.0.
#
# List#
sub get_certificates {
   my ($self, %args) = @_;
   return $self->{'certificates'}; 	
}

## @method set_certificates ()
# Sets the given value for 'certificates' property.
# 
# @param certificates  - New value for the field.
# The certificates used by the STS to sign tokens for this vCenter. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_certificates {
   my ($self, %args) = @_;
   $self->{'certificates'} = $args{'certificates'}; 
   return;	
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
# String#
sub get_issuer {
   my ($self, %args) = @_;
   return $self->{'issuer'}; 	
}

## @method set_issuer ()
# Sets the given value for 'issuer' property.
# 
# @param issuer  - New value for the field.
# The service which created and signed the security token. This  *field*  was added in
#     vSphere API 7.0.0.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}

## @method get_principal ()
# Gets the value of 'principal' property.
#
# @retval principal - The current value of the field.
# The principal used by this vCenter instance to retrieve tokens. Currently this is the
#     vCenter solution user. This  *field*  was added in vSphere API 7.0.0.
#
# StsPrincipal#
sub get_principal {
   my ($self, %args) = @_;
   return $self->{'principal'}; 	
}

## @method set_principal ()
# Sets the given value for 'principal' property.
# 
# @param principal  - New value for the field.
# The principal used by this vCenter instance to retrieve tokens. Currently this is the
#     vCenter solution user. This  *field*  was added in vSphere API 7.0.0.
#
sub set_principal {
   my ($self, %args) = @_;
   $self->{'principal'} = $args{'principal'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The user-friednly name of the vCenter. This  *field*  was added in vSphere API 7.0.0.
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
# The user-friednly name of the vCenter. This  *field*  was added in vSphere API 7.0.0.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Trusted_infrastructure::Principal service
#########################################################################################
