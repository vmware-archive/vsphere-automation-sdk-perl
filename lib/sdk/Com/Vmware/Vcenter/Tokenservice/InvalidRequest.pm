## @class Com::Vmware::Vcenter::Tokenservice::InvalidRequest
#
#
# The  ``Com::Vmware::Vcenter::Tokenservice::InvalidRequest``   *error*  indicates that 
#     class Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec  is missing a
#     required parameter, includes an unsupported parameter value (other than 
#     :attr:`Com::Vmware::Vcenter::Tokenservice::TokenExchange::ExchangeSpec.grant_type` ).
#     <b>Warning:</b> This  *class*  is available as technical preview. It may be changed in
#     a future release.

package Com::Vmware::Vcenter::Tokenservice::InvalidRequest;

#
# Base class
#
use base qw(Com::Vmware::Vcenter::Tokenservice::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Tokenservice::InvalidRequest structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Tokenservice::InvalidRequest');
   $self->set_binding_name('name' => 'com.vmware.vcenter.tokenservice.invalid_request');
   bless $self, $class;
   return $self;
}


1;


