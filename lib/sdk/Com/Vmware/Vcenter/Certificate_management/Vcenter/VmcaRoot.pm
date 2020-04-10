########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file VmcaRoot.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot
# The  ``Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot``   *interface*
#     provides  *methods*  to replace VMware Certificate Authority (VMCA) root certificate.
#     This  *interface*  was added in vSphere API 6.9.1.
#

package Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot;

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
use Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRootStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.certificate_management.vcenter.vmca_root';


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
# Replace Root Certificate with VMCA signed one using the given Spec. <p>
# 
# After this  *method*  completes, the services using the certificate will be restarted for
# the new certificate to take effect.</p>
# 
# . This  *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are CertificateManagement.Administer.
#
# @param spec [OPTIONAL] The information needed to generate VMCA signed Root Certificate.
# Default values will be set for all null parameters.
# . The value must be
# Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot::CreateSpec or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If the system failed to renew the TLS certificate.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``CertificateManagement.Administer`` . </li>
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

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot service
#########################################################################################

## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot::CreateSpec`` 
#     contains information. to generate a Private Key and CSR. This  *class*  was added in
#     vSphere API 6.9.1.

package Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{key_size} = $args{'key_size'};
   $self->{common_name} = $args{'common_name'};
   $self->{organization} = $args{'organization'};
   $self->{organization_unit} = $args{'organization_unit'};
   $self->{locality} = $args{'locality'};
   $self->{state_or_province} = $args{'state_or_province'};
   $self->{country} = $args{'country'};
   $self->{email_address} = $args{'email_address'};
   $self->{subject_alt_name} = $args{'subject_alt_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.certificate_management.vcenter.vmca_root.create_spec');
   $self->set_binding_field('key' => 'key_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'common_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'organization', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'organization_unit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'locality', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'state_or_province', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'country', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'email_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'subject_alt_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_key_size ()
# Gets the value of 'key_size' property.
#
# @retval key_size - The current value of the field.
# The size of the key to be used for public and private key generation. This  *field* 
#     was added in vSphere API 6.9.1.
#
# Optional#
sub get_key_size {
   my ($self, %args) = @_;
   return $self->{'key_size'}; 	
}

## @method set_key_size ()
# Sets the given value for 'key_size' property.
# 
# @param key_size  - New value for the field.
# The size of the key to be used for public and private key generation. This  *field* 
#     was added in vSphere API 6.9.1.
#
sub set_key_size {
   my ($self, %args) = @_;
   $self->{'key_size'} = $args{'key_size'}; 
   return;	
}

## @method get_common_name ()
# Gets the value of 'common_name' property.
#
# @retval common_name - The current value of the field.
# The common name of the host for which certificate is generated. This  *field*  was
#     added in vSphere API 6.9.1.
#
# Optional#
sub get_common_name {
   my ($self, %args) = @_;
   return $self->{'common_name'}; 	
}

## @method set_common_name ()
# Sets the given value for 'common_name' property.
# 
# @param common_name  - New value for the field.
# The common name of the host for which certificate is generated. This  *field*  was
#     added in vSphere API 6.9.1.
#
sub set_common_name {
   my ($self, %args) = @_;
   $self->{'common_name'} = $args{'common_name'}; 
   return;	
}

## @method get_organization ()
# Gets the value of 'organization' property.
#
# @retval organization - The current value of the field.
# Organization field in certificate subject. This  *field*  was added in vSphere API
#     6.9.1.
#
# Optional#
sub get_organization {
   my ($self, %args) = @_;
   return $self->{'organization'}; 	
}

## @method set_organization ()
# Sets the given value for 'organization' property.
# 
# @param organization  - New value for the field.
# Organization field in certificate subject. This  *field*  was added in vSphere API
#     6.9.1.
#
sub set_organization {
   my ($self, %args) = @_;
   $self->{'organization'} = $args{'organization'}; 
   return;	
}

## @method get_organization_unit ()
# Gets the value of 'organization_unit' property.
#
# @retval organization_unit - The current value of the field.
# Organization unit field in certificate subject. This  *field*  was added in vSphere
#     API 6.9.1.
#
# Optional#
sub get_organization_unit {
   my ($self, %args) = @_;
   return $self->{'organization_unit'}; 	
}

## @method set_organization_unit ()
# Sets the given value for 'organization_unit' property.
# 
# @param organization_unit  - New value for the field.
# Organization unit field in certificate subject. This  *field*  was added in vSphere
#     API 6.9.1.
#
sub set_organization_unit {
   my ($self, %args) = @_;
   $self->{'organization_unit'} = $args{'organization_unit'}; 
   return;	
}

## @method get_locality ()
# Gets the value of 'locality' property.
#
# @retval locality - The current value of the field.
# Locality field in certificate subject. This  *field*  was added in vSphere API 6.9.1.
#
# Optional#
sub get_locality {
   my ($self, %args) = @_;
   return $self->{'locality'}; 	
}

## @method set_locality ()
# Sets the given value for 'locality' property.
# 
# @param locality  - New value for the field.
# Locality field in certificate subject. This  *field*  was added in vSphere API 6.9.1.
#
sub set_locality {
   my ($self, %args) = @_;
   $self->{'locality'} = $args{'locality'}; 
   return;	
}

## @method get_state_or_province ()
# Gets the value of 'state_or_province' property.
#
# @retval state_or_province - The current value of the field.
# State field in certificate subject. This  *field*  was added in vSphere API 6.9.1.
#
# Optional#
sub get_state_or_province {
   my ($self, %args) = @_;
   return $self->{'state_or_province'}; 	
}

## @method set_state_or_province ()
# Sets the given value for 'state_or_province' property.
# 
# @param state_or_province  - New value for the field.
# State field in certificate subject. This  *field*  was added in vSphere API 6.9.1.
#
sub set_state_or_province {
   my ($self, %args) = @_;
   $self->{'state_or_province'} = $args{'state_or_province'}; 
   return;	
}

## @method get_country ()
# Gets the value of 'country' property.
#
# @retval country - The current value of the field.
# Country field in certificate subject. This  *field*  was added in vSphere API 6.9.1.
#
# Optional#
sub get_country {
   my ($self, %args) = @_;
   return $self->{'country'}; 	
}

## @method set_country ()
# Sets the given value for 'country' property.
# 
# @param country  - New value for the field.
# Country field in certificate subject. This  *field*  was added in vSphere API 6.9.1.
#
sub set_country {
   my ($self, %args) = @_;
   $self->{'country'} = $args{'country'}; 
   return;	
}

## @method get_email_address ()
# Gets the value of 'email_address' property.
#
# @retval email_address - The current value of the field.
# Email field in Certificate extensions. This  *field*  was added in vSphere API 6.9.1.
#
# Optional#
sub get_email_address {
   my ($self, %args) = @_;
   return $self->{'email_address'}; 	
}

## @method set_email_address ()
# Sets the given value for 'email_address' property.
# 
# @param email_address  - New value for the field.
# Email field in Certificate extensions. This  *field*  was added in vSphere API 6.9.1.
#
sub set_email_address {
   my ($self, %args) = @_;
   $self->{'email_address'} = $args{'email_address'}; 
   return;	
}

## @method get_subject_alt_name ()
# Gets the value of 'subject_alt_name' property.
#
# @retval subject_alt_name - The current value of the field.
# SubjectAltName is list of Dns Names and Ip addresses. This  *field*  was added in
#     vSphere API 6.9.1.
#
# Optional#
sub get_subject_alt_name {
   my ($self, %args) = @_;
   return $self->{'subject_alt_name'}; 	
}

## @method set_subject_alt_name ()
# Sets the given value for 'subject_alt_name' property.
# 
# @param subject_alt_name  - New value for the field.
# SubjectAltName is list of Dns Names and Ip addresses. This  *field*  was added in
#     vSphere API 6.9.1.
#
sub set_subject_alt_name {
   my ($self, %args) = @_;
   $self->{'subject_alt_name'} = $args{'subject_alt_name'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Certificate_management::Vcenter::VmcaRoot service
#########################################################################################
