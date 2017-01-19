## @class Com::Vmware::Vapi::Std::Errors::OperationNotFound
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::OperationNotFound``   *error*  indicates that
#     the  *method*  specified in the request could not be found. <p>
# 
# Every API request specifies a service identifier and an operation identifier along
#     with the  *parameters* . If the API infrastructure is unable to find the requested 
#     *interface*  or  *method*  it reports this  *error* . </p>
# 
# <p>
# 
# This  *error*  can be reported by the API infrastructure for any  *method* , but it is
#     specific to the API infrastructure, and should never be reported by the implementation
#     of any  *method* . </p>
# 
# <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>A client provides an invalid service or operation identifier when invoking the 
#     *method*  using a dynamic interface (for example REST). </li>
# <li>A client invokes the  *method*  from a  *interface* , but that  *interface*  has
#     not been installed. </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>A client invokes a task scheduling  *method* , but provides an invalid service
#     identifier or operation identifier. The  class
#     Com::Vmware::Vapi::Std::Errors::NotFound   *error*  would be used instead. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::OperationNotFound;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::OperationNotFound structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::OperationNotFound');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.operation_not_found');
   bless $self, $class;
   return $self;
}


1;


