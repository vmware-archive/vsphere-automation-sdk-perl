## @class Com::Vmware::Vcenter::Vcha::CertificateInfo
#
#
# The  ``Com::Vmware::Vcenter::Vcha::CertificateInfo``   *Class*  contains information
#     about the SSL certificate for a management vCenter server. This  *class*  was added in
#     vSphere API 6.7 U1.

package Com::Vmware::Vcenter::Vcha::CertificateInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::CertificateInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::CertificateInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.certificate_info');
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# The SHA-256 thumbprint of the SSL certificate for a management vCenter server. This 
#     *field*  was added in vSphere API 6.7 U1.
#
# String#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.
# The SHA-256 thumbprint of the SSL certificate for a management vCenter server. This 
#     *field*  was added in vSphere API 6.7 U1.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}


1;


