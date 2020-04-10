## @class Com::Vmware::Vcenter::Trusted_infrastructure::X509CertChain
#
#
# The  ``Com::Vmware::Vcenter::Trusted_infrastructure::X509CertChain``   *class* 
#     contains x509 certificate chain. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Trusted_infrastructure::X509CertChain;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Trusted_infrastructure::X509CertChain structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{cert_chain} = $args{'cert_chain'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Trusted_infrastructure::X509CertChain');
   $self->set_binding_name('name' => 'com.vmware.vcenter.trusted_infrastructure.x509_cert_chain');
   $self->set_binding_field('key' => 'cert_chain', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_cert_chain ()
# Gets the value of 'cert_chain' property.
#
# @retval cert_chain - The current value of the field.
# Certificate chain in base64 format. This  *field*  was added in vSphere API 7.0.0.
#
# List#
sub get_cert_chain {
   my ($self, %args) = @_;
   return $self->{'cert_chain'}; 	
}

## @method set_cert_chain ()
# Sets the given value for 'cert_chain' property.
# 
# @param cert_chain  - New value for the field.
# Certificate chain in base64 format. This  *field*  was added in vSphere API 7.0.0.
#
sub set_cert_chain {
   my ($self, %args) = @_;
   $self->{'cert_chain'} = $args{'cert_chain'}; 
   return;	
}


1;


