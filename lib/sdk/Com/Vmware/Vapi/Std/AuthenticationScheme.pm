## @class Com::Vmware::Vapi::Std::AuthenticationScheme
#
#
#
# Constant String::NO_AUTHENTICATION #
#Indicates that the request doesn&apos;t need any authentication.
#
# Constant String::SAML_BEARER_TOKEN #
#Indicates that the security context in a request is using a SAML bearer token based
# authentication scheme. <p>
# 
# In this scheme, the following pieces of information has to be passed in the
# SecurityContext structure in the execution context of the request: </p>
# 
# <ul>
#  <li>The scheme identifier: com.vmware.vapi.std.security.saml_bearer_token</li>
#  <li>The token itself</li>
#  </ul> <p>
# 
#  Sample security context in JSON format that matches the specification:  ``{
# 'schemeId': 'com.vmware.vapi.std.security.saml_bearer_token',
# 'token': 'the token itself'
# }``  vAPI runtime provide convenient factory methods that take SAML bearer token and to
# create the security context that conforms to the above mentioned format.</p>
#
# Constant String::SAML_HOK_TOKEN #
#Indicates that the security context in a request is using a SAML holder-of-key token based
# authentication scheme. <p>
# 
# In this scheme, the following pieces of information has to be passed in the
# SecurityContext structure in the execution context of the request: </p>
# 
# <ul>
#  <li>The scheme identifier: com.vmware.vapi.std.security.saml_hok_token</li>
# <li>Signature of the request: This includes - algorithm used for signing the request, SAML
# holder of key token and signature digest </li>
# <li>Request timestamp: This includes the  ``created``  and  ``expires``  timestamp of the
# request. The timestamp should match the following format - YYYY-MM-DDThh:mm:ss.sssZ (e.g.
# 1878-03-03T19:20:30.451Z). </li>
# </ul> <p>
# 
#  Sample security context in JSON format that matches the specification:  ``{
# 'schemeId': 'com.vmware.vapi.std.security.saml_hok_token',
# 'signature': {
# 'alg': 'RS256',
# 'samlToken': ...,
# 'value': ...,`` , &apos;timestamp&apos;: { &apos;created&apos;:
# &apos;2012-10-26T12:24:18.941Z&apos;, &apos;expires&apos;:
# &apos;2012-10-26T12:44:18.941Z&apos;, } } } vAPI runtime provide convenient factory
# methods that take SAML holder of key token and private key to create the security context
# that conforms to the above mentioned format.</p>
#
# Constant String::SESSION_ID #
#Indicates that the security context in a request is using a session identifier based
# authentication scheme. <p>
# 
# In this scheme, the following pieces of information has to be passed in the
# SecurityContext structure in the execution context of the request: </p>
# 
# <ul>
#  <li>The scheme identifier - com.vmware.vapi.std.security.session_id</li>
# <li>Valid session identifier - This is usually returned by a login method of a session
# manager interface for a particular vAPI service of this authentication scheme</li>
#  </ul> Sample security context in JSON format that matches the specification:  ``{
# 'schemeId': 'com.vmware.vapi.std.security.session_id',
# 'sessionId': ....,
# }``  vAPI runtime provides convenient factory methods that take session identifier as
# input parameter and create a security context that conforms to the above format.
#
# Constant String::USER_PASSWORD #
#Indicates that the security context in a request is using username/password based
# authentication scheme. <p>
# 
# In this scheme, the following pieces of information has to be passed in the
# SecurityContext structure in the execution context of the request: </p>
# 
# <ul>
#  <li>The scheme identifier - com.vmware.vapi.std.security.user_pass</li>
#  <li>Username</li>
#  <li>Password</li>
#  </ul> <p>
# 
#  Sample security context in JSON format that matches the specification:  ``{
# 'schemeId': 'com.vmware.vapi.std.security.user_pass',
# 'userName': ....,
# 'password': ...
# }``  
# vAPI runtime provides convenient factory methods that take username and password as input
# parameters and create a security context that conforms to the above format.</p>
#
# Constant String::OAUTH_ACCESS_TOKEN #
#Indicates that the security context in a request is using OAuth2 based authentication
# scheme. <p>
# 
# In this scheme, the following pieces of information has to be passed in the
# SecurityContext structure in the execution context of the request: </p>
# 
# <ul>
#  <li>The scheme identifier - com.vmware.vapi.std.security.oauth</li>
# <li>Valid OAuth2 access token - This is usually acquired by OAuth2 Authorization Server
# after successful authentication of the end user.</li>
#  </ul> <p>
# 
#  Sample security context in JSON format that matches the specification:  ``{
# 'schemeId': 'com.vmware.vapi.std.security.oauth',
# 'accesstoken': ....
# }``  
# vAPI runtime provides convenient factory methods that takes OAuth2 access token as input
# parameter and creates a security context that conforms to the above format.</p>
# The  class Com::Vmware::Vapi::Std::AuthenticationScheme  class defines constants for
#     authentication scheme identifiers for authentication mechanisms present in the vAPI
#     infrastructure shipped by VMware. <p>
# 
# A third party extension can define and implements it&apos;s own authentication
#     mechanism and define a constant in a different IDL file.</p>

package Com::Vmware::Vapi::Std::AuthenticationScheme;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::AuthenticationScheme structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::AuthenticationScheme');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.authentication_scheme');
   bless $self, $class;
   return $self;
}


1;


