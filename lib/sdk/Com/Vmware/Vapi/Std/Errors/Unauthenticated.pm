## @class Com::Vmware::Vapi::Std::Errors::Unauthenticated
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::Unauthenticated``   *error*  indicates that the
#      *method*  requires authentication and the user is not authenticated. <p>
# 
# API requests may include a security context containing user credentials. For example,
#     the user credentials could be a SAML token, a user name and password, or the session
#     identifier for a previously established session. </p>
# 
# <p>
# 
#  Examples: </p>
# 
# <ul>
#  <li>The SAML token in the request&apos;s security context has expired. </li>
# <li>The user name and password in the request&apos;s security context are invalid.
#     </li>
# <li>The session identifier in the request&apos;s security context identifies a session
#     that has expired. </li>
#  </ul> Counterexamples: <ul>
# <li> The user is authenticated but isn&apos;t authorized to perform the requested 
#     *method* . The  class Com::Vmware::Vapi::Std::Errors::Unauthorized   *error*  would be
#     used instead. </li>
#  </ul> <p>
# 
# For security reasons, the  :attr:`Com::Vmware::Vapi::Std::Errors::Error.data`  
#     *field*  in this  *error*  is  *null* , and the 
#     :attr:`Com::Vmware::Vapi::Std::Errors::Error.messages`   *field*  in this  *error* 
#     does not disclose which part of the security context is correct or incorrect. For
#     example the messages would not disclose whether a username or a password is valid or
#     invalid, but only that a combination of username and password is invalid.</p>

package Com::Vmware::Vapi::Std::Errors::Unauthenticated;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::Unauthenticated structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{challenge} = $args{'challenge'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::Unauthenticated');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.unauthenticated');
   $self->set_binding_field('key' => 'challenge', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_challenge ()
# Gets the value of 'challenge' property.
#
# @retval challenge - The current value of the field.
# Indicates the authentication challenges applicable to the target API provider. It can
#     be used by a client to discover the correct authentication scheme to use. The exact
#     syntax of the value is defined by the specific provider, the protocol and
#     authentication schemes used. <p>
# 
# For example, a provider using REST may adhere to the WWW-Authenticate HTTP header
#     specification, RFC7235, section 4.1. In this case an example challenge value may be:
#     SIGN
#     realm=&quot;27da1358-2ba4-11e9-b210-d663bd873d93&quot;,sts=&quot;http://vcenter/sso?vsphere.local&quot;,
#     Basic realm=&quot;vCenter&quot;</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
# optional#
sub get_challenge {
   my ($self, %args) = @_;
   return $self->{'challenge'}; 	
}

## @method set_challenge ()
# Sets the given value for 'challenge' property.
# 
# @param challenge  - New value for the field.
# Indicates the authentication challenges applicable to the target API provider. It can
#     be used by a client to discover the correct authentication scheme to use. The exact
#     syntax of the value is defined by the specific provider, the protocol and
#     authentication schemes used. <p>
# 
# For example, a provider using REST may adhere to the WWW-Authenticate HTTP header
#     specification, RFC7235, section 4.1. In this case an example challenge value may be:
#     SIGN
#     realm=&quot;27da1358-2ba4-11e9-b210-d663bd873d93&quot;,sts=&quot;http://vcenter/sso?vsphere.local&quot;,
#     Basic realm=&quot;vCenter&quot;</p>
# 
# . This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_challenge {
   my ($self, %args) = @_;
   $self->{'challenge'} = $args{'challenge'}; 
   return;	
}


1;


