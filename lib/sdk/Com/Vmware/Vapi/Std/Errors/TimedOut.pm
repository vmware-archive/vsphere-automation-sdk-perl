## @class Com::Vmware::Vapi::Std::Errors::TimedOut
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::TimedOut``   *error*  indicates that the 
#     *method*  did not complete within the allowed amount of time. The allowed amount of
#     time might be: <ul>
#  <li>provided by the client as an input  *parameter* . </li>
# <li>a fixed limit of the  *interface*  implementation that is a documented part of the
#     contract of the  *interface* . </li>
#  <li>a configurable limit used by the implementation of the  *interface* . </li>
#  <li>a dynamic limit computed by the implementation of the  *interface* . </li>
# </ul> The  *method*  may or may not complete after the 
#     ``Com::Vmware::Vapi::Std::Errors::TimedOut``   *error*  was reported. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>The  *method*  was unable to complete within the timeout duration specified by a 
#     *parameter*  of the  *method* . </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>A server implementation that puts requests into a queue before dispatching them
#     might delete a request from the queue if it doesn&apos;t get dispatched within
#     <i>n</i> minutes. The  class Com::Vmware::Vapi::Std::Errors::ServiceUnavailable  
#     *error*  would be used instead. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::TimedOut;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::TimedOut structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::TimedOut');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.timed_out');
   bless $self, $class;
   return $self;
}


1;


