## @class Com::Vmware::Vcenter::Tokenservice::InvalidScope
#
#
# The  ``Com::Vmware::Vcenter::Tokenservice::InvalidScope``   *error*  indicates
#     requested scope is invalid, unknown, malformed, or exceeds the scope granted by the
#     resource owner.

package Com::Vmware::Vcenter::Tokenservice::InvalidScope;

#
# Base class
#
use base qw(Com::Vmware::Vcenter::Tokenservice::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Tokenservice::InvalidScope structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Tokenservice::InvalidScope');
   $self->set_binding_name('name' => 'com.vmware.vcenter.tokenservice.invalid_scope');
   bless $self, $class;
   return $self;
}


1;


