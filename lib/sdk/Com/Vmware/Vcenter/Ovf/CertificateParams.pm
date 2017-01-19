## @class Com::Vmware::Vcenter::Ovf::CertificateParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::CertificateParams``   *class*  contains information
#     about the public key certificate used to sign the OVF package. This  *class*  will
#     only be returned if the OVF package is signed. <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::CertificateParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::CertificateParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{issuer} = $args{'issuer'};
   $self->{subject} = $args{'subject'};
   $self->{is_valid} = $args{'is_valid'};
   $self->{is_self_signed} = $args{'is_self_signed'};
   $self->{x509} = $args{'x509'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::CertificateParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.certificate_params');
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'subject', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'is_valid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'is_self_signed', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'x509', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# Certificate issuer. For example: /C=US/ST=California/L=Palo Alto/O=VMware, Inc.
#
# optional#
sub get_issuer {
   my ($self, %args) = @_;
   return $self->{'issuer'}; 	
}

## @method set_issuer ()
# Sets the given value for 'issuer' property.
# 
# @param issuer  - New value for the field.
# Certificate issuer. For example: /C=US/ST=California/L=Palo Alto/O=VMware, Inc.
#
sub set_issuer {
   my ($self, %args) = @_;
   $self->{'issuer'} = $args{'issuer'}; 
   return;	
}

## @method get_subject ()
# Gets the value of 'subject' property.
#
# @retval subject - The current value of the field.
# Certificate subject. For example: /C=US/ST=Massachusetts/L=Hopkinton/O=EMC
#     Corporation/OU=EMC Avamar/CN=EMC Corporation.
#
# optional#
sub get_subject {
   my ($self, %args) = @_;
   return $self->{'subject'}; 	
}

## @method set_subject ()
# Sets the given value for 'subject' property.
# 
# @param subject  - New value for the field.
# Certificate subject. For example: /C=US/ST=Massachusetts/L=Hopkinton/O=EMC
#     Corporation/OU=EMC Avamar/CN=EMC Corporation.
#
sub set_subject {
   my ($self, %args) = @_;
   $self->{'subject'} = $args{'subject'}; 
   return;	
}

## @method get_is_valid ()
# Gets the value of 'is_valid' property.
#
# @retval is_valid - The current value of the field.
# Is the certificate chain validated.
#
# optional#
sub get_is_valid {
   my ($self, %args) = @_;
   return $self->{'is_valid'}; 	
}

## @method set_is_valid ()
# Sets the given value for 'is_valid' property.
# 
# @param is_valid  - New value for the field.
# Is the certificate chain validated.
#
sub set_is_valid {
   my ($self, %args) = @_;
   $self->{'is_valid'} = $args{'is_valid'}; 
   return;	
}

## @method get_is_self_signed ()
# Gets the value of 'is_self_signed' property.
#
# @retval is_self_signed - The current value of the field.
# Is the certificate self-signed.
#
# optional#
sub get_is_self_signed {
   my ($self, %args) = @_;
   return $self->{'is_self_signed'}; 	
}

## @method set_is_self_signed ()
# Sets the given value for 'is_self_signed' property.
# 
# @param is_self_signed  - New value for the field.
# Is the certificate self-signed.
#
sub set_is_self_signed {
   my ($self, %args) = @_;
   $self->{'is_self_signed'} = $args{'is_self_signed'}; 
   return;	
}

## @method get_x509 ()
# Gets the value of 'x509' property.
#
# @retval x509 - The current value of the field.
# The X509 representation of the certificate.
#
# optional#
sub get_x509 {
   my ($self, %args) = @_;
   return $self->{'x509'}; 	
}

## @method set_x509 ()
# Sets the given value for 'x509' property.
# 
# @param x509  - New value for the field.
# The X509 representation of the certificate.
#
sub set_x509 {
   my ($self, %args) = @_;
   $self->{'x509'} = $args{'x509'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
# optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


