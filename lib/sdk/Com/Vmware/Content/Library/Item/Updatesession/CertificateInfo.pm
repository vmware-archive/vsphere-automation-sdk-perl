## @class Com::Vmware::Content::Library::Item::Updatesession::CertificateInfo
#
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::CertificateInfo``   *class*
#     contains information about the public key certificate used to sign the content. This 
#     *class*  was added in vSphere API 6.7 U1.

package Com::Vmware::Content::Library::Item::Updatesession::CertificateInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::CertificateInfo structure
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
   $self->{self_signed} = $args{'self_signed'};
   $self->{x509} = $args{'x509'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::CertificateInfo');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.updatesession.certificate_info');
   $self->set_binding_field('key' => 'issuer', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subject', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'self_signed', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'x509', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_issuer ()
# Gets the value of 'issuer' property.
#
# @retval issuer - The current value of the field.
# Certificate issuer. For example: /C=US/ST=California/L=Palo Alto/O=VMware, Inc. This 
#     *field*  was added in vSphere API 6.7 U1.
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
# Certificate issuer. For example: /C=US/ST=California/L=Palo Alto/O=VMware, Inc. This 
#     *field*  was added in vSphere API 6.7 U1.
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
# Certificate subject. For example: C=US/ST=Massachusetts/L=Hopkinton/O=EMC
#     Corporation/OU=EMC Avamar/CN=EMC Corporation. This  *field*  was added in vSphere API
#     6.7 U1.
#
# String#
sub get_subject {
   my ($self, %args) = @_;
   return $self->{'subject'}; 	
}

## @method set_subject ()
# Sets the given value for 'subject' property.
# 
# @param subject  - New value for the field.
# Certificate subject. For example: C=US/ST=Massachusetts/L=Hopkinton/O=EMC
#     Corporation/OU=EMC Avamar/CN=EMC Corporation. This  *field*  was added in vSphere API
#     6.7 U1.
#
sub set_subject {
   my ($self, %args) = @_;
   $self->{'subject'} = $args{'subject'}; 
   return;	
}

## @method get_self_signed ()
# Gets the value of 'self_signed' property.
#
# @retval self_signed - The current value of the field.
# Whether the certificate is self-signed. This  *field*  was added in vSphere API 6.7
#     U1.
#
# boolean#
sub get_self_signed {
   my ($self, %args) = @_;
   return $self->{'self_signed'}; 	
}

## @method set_self_signed ()
# Sets the given value for 'self_signed' property.
# 
# @param self_signed  - New value for the field.
# Whether the certificate is self-signed. This  *field*  was added in vSphere API 6.7
#     U1.
#
sub set_self_signed {
   my ($self, %args) = @_;
   $self->{'self_signed'} = $args{'self_signed'}; 
   return;	
}

## @method get_x509 ()
# Gets the value of 'x509' property.
#
# @retval x509 - The current value of the field.
# The X509 representation of the certificate. This  *field*  was added in vSphere API
#     6.7 U1.
#
# String#
sub get_x509 {
   my ($self, %args) = @_;
   return $self->{'x509'}; 	
}

## @method set_x509 ()
# Sets the given value for 'x509' property.
# 
# @param x509  - New value for the field.
# The X509 representation of the certificate. This  *field*  was added in vSphere API
#     6.7 U1.
#
sub set_x509 {
   my ($self, %args) = @_;
   $self->{'x509'} = $args{'x509'}; 
   return;	
}


1;


