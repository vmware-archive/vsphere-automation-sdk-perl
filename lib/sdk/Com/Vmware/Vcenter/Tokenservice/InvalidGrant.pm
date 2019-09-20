## @class Com::Vmware::Vcenter::Tokenservice::InvalidGrant
#
#
# The  ``Com::Vmware::Vcenter::Tokenservice::InvalidGrant``   *error*  indicates that
#     provided authorization grant (e.g., authorization code, resource owner credentials) or
#     refresh token is invalid, expired, revoked, does not match the redirection URI used in
#     the authorization request, or was issued to another client. <b>Warning:</b> This 
#     *class*  is available as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Tokenservice::InvalidGrant;

#
# Base class
#
use base qw(Com::Vmware::Vcenter::Tokenservice::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Tokenservice::InvalidGrant structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Tokenservice::InvalidGrant');
   $self->set_binding_name('name' => 'com.vmware.vcenter.tokenservice.invalid_grant');
   bless $self, $class;
   return $self;
}


1;


