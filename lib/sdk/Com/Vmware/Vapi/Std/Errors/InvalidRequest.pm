## @class Com::Vmware::Vapi::Std::Errors::InvalidRequest
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::InvalidRequest``   *error*  indicates that the
#     request is malformed in such a way that the server is unable to process it. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>The XML in a SOAP request is not well-formed so the server cannot parse the
#     request. </li>
# <li>The XML in a SOAP request is well-formed but does not match the structure required
#     by the SOAP specification. </li>
#  <li>A JSON-RPC request is not valid JSON. </li>
# <li>The JSON sent in a JSON-RPC request is not a valid JSON-RPC Request object. </li>
# <li>The Request object from a JSON-RPC request does not match the structure required
#     by the API infrastructure. </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>The  *parameter*  has a value that is not with the required range. The  class
#     Com::Vmware::Vapi::Std::Errors::InvalidArgument   *error*  would be used instead.
#     </li>
# <li>The name of the  *method*  specified in the request doesn&apos;t not match any
#     known  *method* . The  class Com::Vmware::Vapi::Std::Errors::NotFound   *error*  would
#     be used instead. </li>
#  </ul> <p>
# 
# Some transport protocols (for example JSON-RPC) include their own mechanism for
#     reporting these kinds of errors, and the API infrastructure for a programming language
#     may expose the errors using a language specific mechanism, so this  *error*  might not
#     be used.</p>

package Com::Vmware::Vapi::Std::Errors::InvalidRequest;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::InvalidRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::InvalidRequest');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.invalid_request');
   bless $self, $class;
   return $self;
}


1;


