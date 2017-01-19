## @class Com::Vmware::Vapi::Std::Errors::ServiceUnavailable
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::ServiceUnavailable``   *error*  indicates that
#     the  *interface*  is unavailable. <p>
# 
#  Examples: </p>
# 
# <ul>
#  <li>Attempt to invoke a  *method*  when the server is too busy. </li>
#  <li>Attempt to invoke a  *method*  when the server is undergoing maintenance. </li>
# <li>An  *method*  fails to contact VMware Tools running inside the virtual machine.
#     </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>A client provides an invalid service or operation identifier when invoking the 
#     *method*  using a dynamic interface (for example REST). The  class
#     Com::Vmware::Vapi::Std::Errors::OperationNotFound   *error*  would be used instead.
#     </li>
# <li>A client invokes the  *method*  from the  *interface* , but that  *interface*  has
#     not been installed. The  class Com::Vmware::Vapi::Std::Errors::OperationNotFound  
#     *error*  would be used instead. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::ServiceUnavailable;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::ServiceUnavailable structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::ServiceUnavailable');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.service_unavailable');
   bless $self, $class;
   return $self;
}


1;


