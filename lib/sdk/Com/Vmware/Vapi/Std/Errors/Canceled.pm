## @class Com::Vmware::Vapi::Std::Errors::Canceled
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::Canceled``   *error*  indicates that the 
#     *method*  canceled itself in response to an explicit request to do so.  *Methods* 
#     being &quot;canceled&quot; for other reasons (for example the client connection was
#     closed, a time out occured, or due to excessive resource consumption) should not
#     report this  *error* . <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>A user is monitoring the progress of the  *method*  in a GUI and sees that it is
#     likely to take longer than he is willing to wait and clicks the cancel button. </li>
# <li>A user invokes the  *method*  using a command-line tool and decides that she
#     didn&apos;t really want to invoke that  *method* , and presses CTRL-c. </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>The client&apos;s connection to the server was closed. Reporting an  *error*  is
#     pointless since the client will not receive the error response because the connection
#     has been closed. </li>
# <li>The request is taking longer than some amount of time. The  class
#     Com::Vmware::Vapi::Std::Errors::TimedOut   *error*  would be reported if the time was
#     specified as part of the input or is documented in the API contract. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::Canceled;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::Canceled structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::Canceled');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.canceled');
   bless $self, $class;
   return $self;
}


1;


