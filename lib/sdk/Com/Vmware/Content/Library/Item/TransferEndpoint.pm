## @class Com::Vmware::Content::Library::Item::TransferEndpoint
#
#
# The  ``Com::Vmware::Content::Library::Item::TransferEndpoint``   *class*  encapsulates
#     a URI along with extra information about it.

package Com::Vmware::Content::Library::Item::TransferEndpoint;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::TransferEndpoint structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{uri} = $args{'uri'};
   $self->{ssl_certificate_thumbprint} = $args{'ssl_certificate_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::TransferEndpoint');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.transfer_endpoint');
   $self->set_binding_field('key' => 'uri', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'ssl_certificate_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_uri ()
# Gets the value of 'uri' property.
#
# @retval uri - The current value of the field.
# Transfer endpoint URI. The supported URI schemes are:  ``http`` ,  ``https`` , 
#     ``file`` , and  ``ds`` . <p>
# 
# An endpoint URI with the  ``ds``  scheme specifies the location of the file on the
#     datastore. The format of the datastore URI is: </p>
# 
# <ul>
#  <li>ds:///vmfs/volumes/uuid/path</li>
#  </ul> <p>
# 
#  Some examples of valid file URI formats are: </p>
# 
# <ul>
#  <li>file:///path</li>
#  <li>file:///C:/path</li>
#  <li>file://unc-server/path</li>
#  </ul> <p>
# 
# When the transfer endpoint is a file or datastore location, the server can import the
#     file directly from the storage backing without the overhead of streaming over
#     HTTP.</p>
#
# URI#
sub get_uri {
   my ($self, %args) = @_;
   return $self->{'uri'}; 	
}

## @method set_uri ()
# Sets the given value for 'uri' property.
# 
# @param uri  - New value for the field.
# Transfer endpoint URI. The supported URI schemes are:  ``http`` ,  ``https`` , 
#     ``file`` , and  ``ds`` . <p>
# 
# An endpoint URI with the  ``ds``  scheme specifies the location of the file on the
#     datastore. The format of the datastore URI is: </p>
# 
# <ul>
#  <li>ds:///vmfs/volumes/uuid/path</li>
#  </ul> <p>
# 
#  Some examples of valid file URI formats are: </p>
# 
# <ul>
#  <li>file:///path</li>
#  <li>file:///C:/path</li>
#  <li>file://unc-server/path</li>
#  </ul> <p>
# 
# When the transfer endpoint is a file or datastore location, the server can import the
#     file directly from the storage backing without the overhead of streaming over
#     HTTP.</p>
#
sub set_uri {
   my ($self, %args) = @_;
   $self->{'uri'} = $args{'uri'}; 
   return;	
}

## @method get_ssl_certificate_thumbprint ()
# Gets the value of 'ssl_certificate_thumbprint' property.
#
# @retval ssl_certificate_thumbprint - The current value of the field.
# Thumbprint of the expected SSL certificate for this endpoint. Only used for HTTPS
#     connections. The thumbprint is the SHA-1 hash of the DER encoding of the remote
#     endpoint&apos;s SSL certificate. If set, the remote endpoint&apos;s SSL certificate is
#     only accepted if it matches this thumbprint, and no other certificate validation is
#     performed.
#
# Optional#
sub get_ssl_certificate_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_certificate_thumbprint'}; 	
}

## @method set_ssl_certificate_thumbprint ()
# Sets the given value for 'ssl_certificate_thumbprint' property.
# 
# @param ssl_certificate_thumbprint  - New value for the field.
# Thumbprint of the expected SSL certificate for this endpoint. Only used for HTTPS
#     connections. The thumbprint is the SHA-1 hash of the DER encoding of the remote
#     endpoint&apos;s SSL certificate. If set, the remote endpoint&apos;s SSL certificate is
#     only accepted if it matches this thumbprint, and no other certificate validation is
#     performed.
#
sub set_ssl_certificate_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_certificate_thumbprint'} = $args{'ssl_certificate_thumbprint'}; 
   return;	
}


1;


