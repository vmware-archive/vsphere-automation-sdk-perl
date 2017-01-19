## @class Com::Vmware::Vapi::Std::Errors::Unauthorized
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::Unauthorized``   *error*  indicates that the
#     user is not authorized to perform the  *method* . <p>
# 
# API requests may include a security context containing user credentials. For example,
#     the user credentials could be a SAML token, a user name and password, or the session
#     identifier for a previously established session. Invoking the  *method*  may require
#     that the user identified by those credentials has particular privileges on the 
#     *method*  or on one or more resource identifiers passed to the  *method* . </p>
# 
# <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>The  *method*  requires that the user have one or more privileges on the  *method*
#     , but the user identified by the credentials in the security context does not have the
#     required privileges. </li>
# <li>The  *method*  requires that the user have one or more privileges on a resource
#     identifier passed to the  *method* , but the user identified by the credentials in the
#     security context does not have the required privileges. </li>
#  </ul> <p>
# 
#  </p>
# 
# <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>The SAML token in the request&apos;s security context has expired. A  class
#     Com::Vmware::Vapi::Std::Errors::Unauthenticated   *error*  would be used instead.
#     </li>
# <li>The user name and password in the request&apos;s security context are invalid. The
#     class Com::Vmware::Vapi::Std::Errors::Unauthenticated   *error*  would be used
#     instead. </li>
# <li>The session identifier in the request&apos;s security context identifies a session
#     that has expired. The  class Com::Vmware::Vapi::Std::Errors::Unauthenticated   *error*
#      would be used instead. </li>
#  </ul> <p>
# 
# For security reasons, the  :attr:`Com::Vmware::Vapi::Std::Errors::Error.data`  
#     *field*  in this  *error*  is  *null* , and the 
#     :attr:`Com::Vmware::Vapi::Std::Errors::Error.messages`   *field*  in this  *error* 
#     does not disclose why the user is not authorized to perform the  *method* . For
#     example the messages would not disclose which privilege the user did not have or which
#     resource identifier the user did not have the required privilege to access. The API
#     documentation should indicate what privileges are required.</p>

package Com::Vmware::Vapi::Std::Errors::Unauthorized;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::Unauthorized structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::Unauthorized');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.unauthorized');
   bless $self, $class;
   return $self;
}


1;


