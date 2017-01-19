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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::Unauthenticated');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.unauthenticated');
   bless $self, $class;
   return $self;
}


1;


