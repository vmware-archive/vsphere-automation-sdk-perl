## @class Com::Vmware::Vapi::Std::Errors::UnverifiedPeer
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::UnverifiedPeer``   *error*  indicates that an
#     attempt to connect to an unknown or not-yet-trusted endpoint failed because the system
#     was unable to verify the identity of the endpoint. <p>
# 
# Typically the { :attr:`Com::Vmware::Vapi::Std::Errors::Error.data`   *field*  of this
#     error will contain information that can be presented to a human to allow them to
#     decide whether to trust the endpoint. If they decide to trust the endpoint, the
#     request can be resubmitted with an indication that the endpoint should be trusted.
#     </p>
# 
# <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>The client provides an IP address or URL of an endpoint the system should
#     communicate with using an SSL connection, but the endpoint&apos;s SSL certificate is
#     self-signed, expired, or otherwise not trustworthy. </li>
# <li>The client provides an IP address of a host the system should communicate with
#     using ssh, but ssh doesn&apos;t recognize the public key of the host</li>
#  </ul> <p>
# 
# </p>
# 
# . This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vapi::Std::Errors::UnverifiedPeer;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::UnverifiedPeer structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::UnverifiedPeer');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.unverified_peer');
   bless $self, $class;
   return $self;
}


1;


