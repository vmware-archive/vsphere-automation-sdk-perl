## @class Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo
#
#
# The  ``Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo``   *class* 
#     describes the authentication information. Authentication information could be
#     specified for a package element, service elenent or an operation element. <p>
# 
# Using the authentication scheme information, a client invoking an API call from any 
#     *interface*  can figure out what kind of credentials are needed for that API call.</p>

package Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'scheme_type',
         'case_map' => {
               'SESSION_AWARE' => ['session_manager'],
               'SESSIONLESS' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{scheme_type} = $args{'scheme_type'};
   $self->{session_manager} = $args{'session_manager'};
   $self->{scheme} = $args{'scheme'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.authentication.authentication_info');
   $self->set_binding_field('key' => 'scheme_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Authentication', 'type_name' => 'AuthenticationInfo::SchemeType'));
   $self->set_binding_field('key' => 'session_manager', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'scheme', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_scheme_type ()
# Gets the value of 'scheme_type' property.
#
# @retval scheme_type - The current value of the field.
# The type of the authentication scheme.
#
# SchemeType#
sub get_scheme_type {
   my ($self, %args) = @_;
   return $self->{'scheme_type'}; 	
}

## @method set_scheme_type ()
# Sets the given value for 'scheme_type' property.
# 
# @param scheme_type  - New value for the field.
# The type of the authentication scheme.
#
sub set_scheme_type {
   my ($self, %args) = @_;
   $self->{'scheme_type'} = $args{'scheme_type'}; 
   return;	
}

## @method get_session_manager ()
# Gets the value of 'session_manager' property.
#
# @retval session_manager - The current value of the field.
# In a session aware authentication scheme, a session manager is required that supports 
#     ``create`` ,  ``delete``  and  ``keepAlive``   *methods* . The fully qualified 
#     *interface*  name of the session manager is provided in 
#     :attr:`Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo.session_manager`
#       *field* . This  *interface*  is responsible for handling sessions.
#
# optional#
sub get_session_manager {
   my ($self, %args) = @_;
   return $self->{'session_manager'}; 	
}

## @method set_session_manager ()
# Sets the given value for 'session_manager' property.
# 
# @param session_manager  - New value for the field.
# In a session aware authentication scheme, a session manager is required that supports 
#     ``create`` ,  ``delete``  and  ``keepAlive``   *methods* . The fully qualified 
#     *interface*  name of the session manager is provided in 
#     :attr:`Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo.session_manager`
#       *field* . This  *interface*  is responsible for handling sessions.
#
sub set_session_manager {
   my ($self, %args) = @_;
   $self->{'session_manager'} = $args{'session_manager'}; 
   return;	
}

## @method get_scheme ()
# Gets the value of 'scheme' property.
#
# @retval scheme - The current value of the field.
# String identifier of the authentication scheme. <p>
# 
#  Following are the supported authentication schemes by the infrastructure: </p>
# 
# <ul>
# <li>The identifier  ``com.vmware.vapi.std.security.saml_hok_token``  for SAML holder
#     of key token based authentication mechanism. </li>
# <li>The identifier  ``com.vmware.vapi.std.security.bearer_token``  for SAML bearer
#     token based authentication mechanism. </li>
# <li>The identifier  ``com.vmware.vapi.std.security.session_id``  for session based
#     authentication mechanism. </li>
# <li>The identifier  ``com.vmware.vapi.std.security.user_pass``  for username and
#     password based authentication mechanism. </li>
#  </ul>
#
# String#
sub get_scheme {
   my ($self, %args) = @_;
   return $self->{'scheme'}; 	
}

## @method set_scheme ()
# Sets the given value for 'scheme' property.
# 
# @param scheme  - New value for the field.
# String identifier of the authentication scheme. <p>
# 
#  Following are the supported authentication schemes by the infrastructure: </p>
# 
# <ul>
# <li>The identifier  ``com.vmware.vapi.std.security.saml_hok_token``  for SAML holder
#     of key token based authentication mechanism. </li>
# <li>The identifier  ``com.vmware.vapi.std.security.bearer_token``  for SAML bearer
#     token based authentication mechanism. </li>
# <li>The identifier  ``com.vmware.vapi.std.security.session_id``  for session based
#     authentication mechanism. </li>
# <li>The identifier  ``com.vmware.vapi.std.security.user_pass``  for username and
#     password based authentication mechanism. </li>
#  </ul>
#
sub set_scheme {
   my ($self, %args) = @_;
   $self->{'scheme'} = $args{'scheme'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType
#
# The  ``Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType``  
#     *enumerated type*  provides  *enumeration values*  for the set of valid authentication
#     scheme types.
#
#
#
# Constant Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType::SESSIONLESS #
#Indicates that the scheme is a session less authentication scheme, the user is
# authenticated on every  *method* . There is no explicit session establishment.
#
# Constant Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType::SESSION_AWARE #
#Indicates that the scheme is a session aware authentication scheme. It requires an
# explicit login before executing a  *method*  and logout when a session terminates. A 
# *interface*  might choose to have a session aware scheme if it wants to associate some
# state corresponding to the user until the user logs out or if it wants to mitigate the
# cost of authenticating the user on every  *method* .

package Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType;

use constant {
    SESSIONLESS =>  'SESSIONLESS',
    SESSION_AWARE =>  'SESSION_AWARE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vapi.metadata.authentication.authentication_info.scheme_type',
                           'binding_class' => 'Com::Vmware::Vapi::Metadata::Authentication::AuthenticationInfo::SchemeType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


