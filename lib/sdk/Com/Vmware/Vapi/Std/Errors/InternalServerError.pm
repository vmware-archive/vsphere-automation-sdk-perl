## @class Com::Vmware::Vapi::Std::Errors::InternalServerError
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::InternalServerError``   *error*  indicates that
#     the server encounters an unexpected condition that prevented it from fulfilling the
#     request. <p>
# 
# This  *error*  is reported by the API infrastructure, so it could occur in response to
#     the invocation of any  *method* . </p>
# 
# <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>The  *method*  returns a value whose type doesn&apos;t match the type type the 
#     *method*  says it should return.</li>
# <li>The  *method*  reports an  *error*  that is not included in the list of  *errors* 
#     the  *method*  says that it can report.</li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::InternalServerError;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::InternalServerError structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::InternalServerError');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.internal_server_error');
   bless $self, $class;
   return $self;
}


1;


