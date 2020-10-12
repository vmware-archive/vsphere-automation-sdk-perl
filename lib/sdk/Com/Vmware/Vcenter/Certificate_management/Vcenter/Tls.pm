########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Tls.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls
# The  ``Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls``   *interface* 
#     provides  *methods*  to replace Tls certificate. This  *interface*  was added in
#     vSphere API 6.7.2.
#

package Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls;

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
use Com::Vmware::Vcenter::Certificate_management::Vcenter::TlsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.certificate_management.vcenter.tls';


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

## @method set ()
# Replaces the rhttpproxy TLS certificate with the specified certificate. This  *method* 
# can be used in three scenarios : <ol>
# <li> When the CSR is created and the private key is already stored, this  *method*  can
# replace the certificate. The 
# :attr:`Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.cert`  (but not 
# :attr:`Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.key`  and 
# :attr:`Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.root_cert` ) must
# be provided as input. </li>
# <li> When the certificate is signed by a third party certificate authority/VMCA and the
# root certificate of the third party certificate authority/VMCA is already one of the
# trusted roots in the trust store, this  *method*  can replace the certificate and private
# key. The  :attr:`Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.cert` 
# and  :attr:`Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.key`  (but
# not  :attr:`Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.root_cert` )
# must be provided as input. </li>
# <li> When the certificate is signed by a third party certificate authority and the root
# certificate of the third party certificate authority is not one of the trusted roots in
# the trust store, this  *method*  can replace the certificate, private key and root CA
# certificate. The 
# :attr:`Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.cert` ,
# :attr:`Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.key`  and 
# :attr:`Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.root_cert`  must
# be provided as input. </li>
# </ol> After this  *method*  completes, the services using the certificate will be
# restarted for the new certificate to take effect. <p>
# 
# The above three scenarios are only supported from vsphere 7.0 onwards.</p>
# 
# . This  *method*  was added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are CertificateManagement.Administer.
#
# @param spec [REQUIRED] The information needed to replace the TLS certificate.
# . The value must be Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the private key is not present in the VECS store.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# If the specified certificate thumbprint is the same as the existing TLS certificate
#     thumbprint.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If the system failed to replace the TLS certificate.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``CertificateManagement.Administer`` . </li>
# </ul>
#
sub set {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'set',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'set',
                         method_args => \%args);
}

## @method get ()
# Returns the rhttpproxy TLS certificate. This  *method*  was added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @retval 
# TLS certificate.
# The return type will be Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the rhttpproxy certificate is not present in VECS store.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if failed due to generic exception.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method renew ()
# Renews the TLS certificate for the given duration period. <p>
# 
# After this  *method*  completes, the services using the certificate will be restarted for
# the new certificate to take effect.</p>
# 
# . This  *method*  was added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are CertificateManagement.Administer.
#
# @param duration [OPTIONAL] The duration (in days) of the new TLS certificate. The duration should be less than or
#     equal to 730 days.
# If  *null* , the duration will be 730 days (two years).
# . The value must be Long or None.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# If the TLS certificate is not VMCA generated.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the duration period specified is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If the system failed to renew the TLS certificate.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``CertificateManagement.Administer`` . </li>
# </ul>
#
sub renew {
   my ($self, %args) = @_;
   my $duration = $args {duration};

   $self->validate_args (method_name => 'renew',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'renew',
                         method_args => \%args);
}

## @method replace_vmca_signed ()
# Replace MACHINE SSL with VMCA signed one with the given Spec.The system will go for
# restart. <p>
# 
# After this  *method*  completes, the services using the certificate will be restarted for
# the new certificate to take effect.</p>
# 
# . This  *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are CertificateManagement.Administer.
#
# @param spec [REQUIRED] The information needed to generate VMCA signed Machine SSL
# . The value must be
# Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::ReplaceSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If the Spec given is not complete or invalid
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If the system failed to replace the machine ssl certificate
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``CertificateManagement.Administer`` . </li>
# </ul>
#
sub replace_vmca_signed {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'replace_vmca_signed',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'replace_vmca_signed',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls service
#########################################################################################

## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Info
#
#
# The  ``Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Info``   *class* 
#     contains information from a TLS certificate. This  *class*  was added in vSphere API
#     6.7.2.

package Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version} = $args{'version'};
   $self->{serial_number} = $args{'serial_number'};
   $self->{signature_algorithm} = $args{'signature_algorithm'};
   $self->{issuer_dn} = $args{'issuer_dn'};
   $self->{valid_from} = $args{'valid_from'};
   $self->{valid_to} = $args{'valid_to'};
   $self->{subject_dn} = $args{'subject_dn'};
   $self->{thumbprint} = $args{'thumbprint'};
   $self->{is_CA} = $args{'is_CA'};
   $self->{path_length_constraint} = $args{'path_length_constraint'};
   $self->{key_usage} = $args{'key_usage'};
   $self->{extended_key_usage} = $args{'extended_key_usage'};
   $self->{subject_alternative_name} = $args{'subject_alternative_name'};
   $self->{authority_information_access_uri} = $args{'authority_information_access_uri'};
   $self->{cert} = $args{'cert'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.certificate_management.vcenter.tls.info');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'serial_number', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'signature_algorithm', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'issuer_dn', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'valid_from', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'valid_to', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'subject_dn', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'is_CA', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'path_length_constraint', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'key_usage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'extended_key_usage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'subject_alternative_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'authority_information_access_uri', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cert', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Version (version number) value from the certificate. This  *field*  was added in
#     vSphere API 6.7.2.
#
# long#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Version (version number) value from the certificate. This  *field*  was added in
#     vSphere API 6.7.2.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_serial_number ()
# Gets the value of 'serial_number' property.
#
# @retval serial_number - The current value of the field.
# SerialNumber value from the certificate. This  *field*  was added in vSphere API
#     6.7.2.
#
# String#
sub get_serial_number {
   my ($self, %args) = @_;
   return $self->{'serial_number'}; 	
}

## @method set_serial_number ()
# Sets the given value for 'serial_number' property.
# 
# @param serial_number  - New value for the field.
# SerialNumber value from the certificate. This  *field*  was added in vSphere API
#     6.7.2.
#
sub set_serial_number {
   my ($self, %args) = @_;
   $self->{'serial_number'} = $args{'serial_number'}; 
   return;	
}

## @method get_signature_algorithm ()
# Gets the value of 'signature_algorithm' property.
#
# @retval signature_algorithm - The current value of the field.
# Signature algorithm name from the certificate. This  *field*  was added in vSphere API
#     6.7.2.
#
# String#
sub get_signature_algorithm {
   my ($self, %args) = @_;
   return $self->{'signature_algorithm'}; 	
}

## @method set_signature_algorithm ()
# Sets the given value for 'signature_algorithm' property.
# 
# @param signature_algorithm  - New value for the field.
# Signature algorithm name from the certificate. This  *field*  was added in vSphere API
#     6.7.2.
#
sub set_signature_algorithm {
   my ($self, %args) = @_;
   $self->{'signature_algorithm'} = $args{'signature_algorithm'}; 
   return;	
}

## @method get_issuer_dn ()
# Gets the value of 'issuer_dn' property.
#
# @retval issuer_dn - The current value of the field.
# Issuer (issuer distinguished name) value from the certificate. This  *field*  was
#     added in vSphere API 6.7.2.
#
# String#
sub get_issuer_dn {
   my ($self, %args) = @_;
   return $self->{'issuer_dn'}; 	
}

## @method set_issuer_dn ()
# Sets the given value for 'issuer_dn' property.
# 
# @param issuer_dn  - New value for the field.
# Issuer (issuer distinguished name) value from the certificate. This  *field*  was
#     added in vSphere API 6.7.2.
#
sub set_issuer_dn {
   my ($self, %args) = @_;
   $self->{'issuer_dn'} = $args{'issuer_dn'}; 
   return;	
}

## @method get_valid_from ()
# Gets the value of 'valid_from' property.
#
# @retval valid_from - The current value of the field.
# validFrom specify the start date of the certificate. This  *field*  was added in
#     vSphere API 6.7.2.
#
# DateTime#
sub get_valid_from {
   my ($self, %args) = @_;
   return $self->{'valid_from'}; 	
}

## @method set_valid_from ()
# Sets the given value for 'valid_from' property.
# 
# @param valid_from  - New value for the field.
# validFrom specify the start date of the certificate. This  *field*  was added in
#     vSphere API 6.7.2.
#
sub set_valid_from {
   my ($self, %args) = @_;
   $self->{'valid_from'} = $args{'valid_from'}; 
   return;	
}

## @method get_valid_to ()
# Gets the value of 'valid_to' property.
#
# @retval valid_to - The current value of the field.
# validTo specify the end date of the certificate. This  *field*  was added in vSphere
#     API 6.7.2.
#
# DateTime#
sub get_valid_to {
   my ($self, %args) = @_;
   return $self->{'valid_to'}; 	
}

## @method set_valid_to ()
# Sets the given value for 'valid_to' property.
# 
# @param valid_to  - New value for the field.
# validTo specify the end date of the certificate. This  *field*  was added in vSphere
#     API 6.7.2.
#
sub set_valid_to {
   my ($self, %args) = @_;
   $self->{'valid_to'} = $args{'valid_to'}; 
   return;	
}

## @method get_subject_dn ()
# Gets the value of 'subject_dn' property.
#
# @retval subject_dn - The current value of the field.
# Subject (subject distinguished name) value from the certificate. This  *field*  was
#     added in vSphere API 6.7.2.
#
# String#
sub get_subject_dn {
   my ($self, %args) = @_;
   return $self->{'subject_dn'}; 	
}

## @method set_subject_dn ()
# Sets the given value for 'subject_dn' property.
# 
# @param subject_dn  - New value for the field.
# Subject (subject distinguished name) value from the certificate. This  *field*  was
#     added in vSphere API 6.7.2.
#
sub set_subject_dn {
   my ($self, %args) = @_;
   $self->{'subject_dn'} = $args{'subject_dn'}; 
   return;	
}

## @method get_thumbprint ()
# Gets the value of 'thumbprint' property.
#
# @retval thumbprint - The current value of the field.
# Thumbprint value from the certificate. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_thumbprint {
   my ($self, %args) = @_;
   return $self->{'thumbprint'}; 	
}

## @method set_thumbprint ()
# Sets the given value for 'thumbprint' property.
# 
# @param thumbprint  - New value for the field.
# Thumbprint value from the certificate. This  *field*  was added in vSphere API 6.7.2.
#
sub set_thumbprint {
   my ($self, %args) = @_;
   $self->{'thumbprint'} = $args{'thumbprint'}; 
   return;	
}

## @method get_is_CA ()
# Gets the value of 'is_CA' property.
#
# @retval is_CA - The current value of the field.
# Certificate constraints isCA from the critical BasicConstraints extension, (OID =
#     2.5.29.19). This  *field*  was added in vSphere API 6.7.2.
#
# boolean#
sub get_is_CA {
   my ($self, %args) = @_;
   return $self->{'is_CA'}; 	
}

## @method set_is_CA ()
# Sets the given value for 'is_CA' property.
# 
# @param is_CA  - New value for the field.
# Certificate constraints isCA from the critical BasicConstraints extension, (OID =
#     2.5.29.19). This  *field*  was added in vSphere API 6.7.2.
#
sub set_is_CA {
   my ($self, %args) = @_;
   $self->{'is_CA'} = $args{'is_CA'}; 
   return;	
}

## @method get_path_length_constraint ()
# Gets the value of 'path_length_constraint' property.
#
# @retval path_length_constraint - The current value of the field.
# Certificate constraints path length from the critical BasicConstraints extension, (OID
#     = 2.5.29.19). This  *field*  was added in vSphere API 6.7.2.
#
# long#
sub get_path_length_constraint {
   my ($self, %args) = @_;
   return $self->{'path_length_constraint'}; 	
}

## @method set_path_length_constraint ()
# Sets the given value for 'path_length_constraint' property.
# 
# @param path_length_constraint  - New value for the field.
# Certificate constraints path length from the critical BasicConstraints extension, (OID
#     = 2.5.29.19). This  *field*  was added in vSphere API 6.7.2.
#
sub set_path_length_constraint {
   my ($self, %args) = @_;
   $self->{'path_length_constraint'} = $args{'path_length_constraint'}; 
   return;	
}

## @method get_key_usage ()
# Gets the value of 'key_usage' property.
#
# @retval key_usage - The current value of the field.
# Collection of keyusage contained in the certificate. This  *field*  was added in
#     vSphere API 6.7.2.
#
# List#
sub get_key_usage {
   my ($self, %args) = @_;
   return $self->{'key_usage'}; 	
}

## @method set_key_usage ()
# Sets the given value for 'key_usage' property.
# 
# @param key_usage  - New value for the field.
# Collection of keyusage contained in the certificate. This  *field*  was added in
#     vSphere API 6.7.2.
#
sub set_key_usage {
   my ($self, %args) = @_;
   $self->{'key_usage'} = $args{'key_usage'}; 
   return;	
}

## @method get_extended_key_usage ()
# Gets the value of 'extended_key_usage' property.
#
# @retval extended_key_usage - The current value of the field.
# Collection of extended keyusage that contains details for which the certificate can be
#     used for. This  *field*  was added in vSphere API 6.7.2.
#
# List#
sub get_extended_key_usage {
   my ($self, %args) = @_;
   return $self->{'extended_key_usage'}; 	
}

## @method set_extended_key_usage ()
# Sets the given value for 'extended_key_usage' property.
# 
# @param extended_key_usage  - New value for the field.
# Collection of extended keyusage that contains details for which the certificate can be
#     used for. This  *field*  was added in vSphere API 6.7.2.
#
sub set_extended_key_usage {
   my ($self, %args) = @_;
   $self->{'extended_key_usage'} = $args{'extended_key_usage'}; 
   return;	
}

## @method get_subject_alternative_name ()
# Gets the value of 'subject_alternative_name' property.
#
# @retval subject_alternative_name - The current value of the field.
# Collection of subject alternative names. This  *field*  was added in vSphere API
#     6.7.2.
#
# List#
sub get_subject_alternative_name {
   my ($self, %args) = @_;
   return $self->{'subject_alternative_name'}; 	
}

## @method set_subject_alternative_name ()
# Sets the given value for 'subject_alternative_name' property.
# 
# @param subject_alternative_name  - New value for the field.
# Collection of subject alternative names. This  *field*  was added in vSphere API
#     6.7.2.
#
sub set_subject_alternative_name {
   my ($self, %args) = @_;
   $self->{'subject_alternative_name'} = $args{'subject_alternative_name'}; 
   return;	
}

## @method get_authority_information_access_uri ()
# Gets the value of 'authority_information_access_uri' property.
#
# @retval authority_information_access_uri - The current value of the field.
# Collection of authority information access URI. This  *field*  was added in vSphere
#     API 6.7.2.
#
# List#
sub get_authority_information_access_uri {
   my ($self, %args) = @_;
   return $self->{'authority_information_access_uri'}; 	
}

## @method set_authority_information_access_uri ()
# Sets the given value for 'authority_information_access_uri' property.
# 
# @param authority_information_access_uri  - New value for the field.
# Collection of authority information access URI. This  *field*  was added in vSphere
#     API 6.7.2.
#
sub set_authority_information_access_uri {
   my ($self, %args) = @_;
   $self->{'authority_information_access_uri'} = $args{'authority_information_access_uri'}; 
   return;	
}

## @method get_cert ()
# Gets the value of 'cert' property.
#
# @retval cert - The current value of the field.
# TLS certificate in PEM format. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_cert {
   my ($self, %args) = @_;
   return $self->{'cert'}; 	
}

## @method set_cert ()
# Sets the given value for 'cert' property.
# 
# @param cert  - New value for the field.
# TLS certificate in PEM format. This  *field*  was added in vSphere API 6.7.2.
#
sub set_cert {
   my ($self, %args) = @_;
   $self->{'cert'} = $args{'cert'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec
#
#
# The  ``Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec``   *class* 
#     contains information for a Certificate and Private Key. This  *class*  was added in
#     vSphere API 6.7.2.

package Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cert} = $args{'cert'};
   $self->{key} = $args{'key'};
   $self->{root_cert} = $args{'root_cert'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::Spec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.certificate_management.vcenter.tls.spec');
   $self->set_binding_field('key' => 'cert', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'key', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'root_cert', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_cert ()
# Gets the value of 'cert' property.
#
# @retval cert - The current value of the field.
# Certificate string in PEM format. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_cert {
   my ($self, %args) = @_;
   return $self->{'cert'}; 	
}

## @method set_cert ()
# Sets the given value for 'cert' property.
# 
# @param cert  - New value for the field.
# Certificate string in PEM format. This  *field*  was added in vSphere API 6.7.2.
#
sub set_cert {
   my ($self, %args) = @_;
   $self->{'cert'} = $args{'cert'}; 
   return;	
}

## @method get_key ()
# Gets the value of 'key' property.
#
# @retval key - The current value of the field.
# Private key string in PEM format. This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_key {
   my ($self, %args) = @_;
   return $self->{'key'}; 	
}

## @method set_key ()
# Sets the given value for 'key' property.
# 
# @param key  - New value for the field.
# Private key string in PEM format. This  *field*  was added in vSphere API 6.7.2.
#
sub set_key {
   my ($self, %args) = @_;
   $self->{'key'} = $args{'key'}; 
   return;	
}

## @method get_root_cert ()
# Gets the value of 'root_cert' property.
#
# @retval root_cert - The current value of the field.
# Third party Root CA certificate in PEM format. This  *field*  was added in vSphere API
#     6.9.1.
#
# Optional#
sub get_root_cert {
   my ($self, %args) = @_;
   return $self->{'root_cert'}; 	
}

## @method set_root_cert ()
# Sets the given value for 'root_cert' property.
# 
# @param root_cert  - New value for the field.
# Third party Root CA certificate in PEM format. This  *field*  was added in vSphere API
#     6.9.1.
#
sub set_root_cert {
   my ($self, %args) = @_;
   $self->{'root_cert'} = $args{'root_cert'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::ReplaceSpec
#
#
# The  ``Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::ReplaceSpec``  
#     *class*  contains information to generate a Private Key , CSR and hence VMCA signed
#     machine SSL. This  *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::ReplaceSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::ReplaceSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls::ReplaceSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.certificate_management.vcenter.tls.replace_spec');
   $self->set_binding_field('key' => 'key_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'common_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'organization', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'organization_unit', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'locality', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'state_or_province', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'country', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'email_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subject_alt_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_key_size ()
# Gets the value of 'key_size' property.
#
# @retval key_size - The current value of the field.
# The size of the key to be used for public and private key generation. This  *field* 
#     was added in vSphere API 6.7.2.
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
#     was added in vSphere API 6.7.2.
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
#     added in vSphere API 6.7.2.
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
#     added in vSphere API 6.7.2.
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
#     6.7.2.
#
# String#
sub get_organization {
   my ($self, %args) = @_;
   return $self->{'organization'}; 	
}

## @method set_organization ()
# Sets the given value for 'organization' property.
# 
# @param organization  - New value for the field.
# Organization field in certificate subject. This  *field*  was added in vSphere API
#     6.7.2.
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
#     API 6.7.2.
#
# String#
sub get_organization_unit {
   my ($self, %args) = @_;
   return $self->{'organization_unit'}; 	
}

## @method set_organization_unit ()
# Sets the given value for 'organization_unit' property.
# 
# @param organization_unit  - New value for the field.
# Organization unit field in certificate subject. This  *field*  was added in vSphere
#     API 6.7.2.
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
# Locality field in certificate subject. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_locality {
   my ($self, %args) = @_;
   return $self->{'locality'}; 	
}

## @method set_locality ()
# Sets the given value for 'locality' property.
# 
# @param locality  - New value for the field.
# Locality field in certificate subject. This  *field*  was added in vSphere API 6.7.2.
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
# State field in certificate subject. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_state_or_province {
   my ($self, %args) = @_;
   return $self->{'state_or_province'}; 	
}

## @method set_state_or_province ()
# Sets the given value for 'state_or_province' property.
# 
# @param state_or_province  - New value for the field.
# State field in certificate subject. This  *field*  was added in vSphere API 6.7.2.
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
# Country field in certificate subject. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_country {
   my ($self, %args) = @_;
   return $self->{'country'}; 	
}

## @method set_country ()
# Sets the given value for 'country' property.
# 
# @param country  - New value for the field.
# Country field in certificate subject. This  *field*  was added in vSphere API 6.7.2.
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
# Email field in Certificate extensions. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_email_address {
   my ($self, %args) = @_;
   return $self->{'email_address'}; 	
}

## @method set_email_address ()
# Sets the given value for 'email_address' property.
# 
# @param email_address  - New value for the field.
# Email field in Certificate extensions. This  *field*  was added in vSphere API 6.7.2.
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
#     vSphere API 6.7.2.
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
#     vSphere API 6.7.2.
#
sub set_subject_alt_name {
   my ($self, %args) = @_;
   $self->{'subject_alt_name'} = $args{'subject_alt_name'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Certificate_management::Vcenter::Tls service
#########################################################################################
