## @class Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState``   *error*  indicates
#     that the requested  *method*  is not allowed with a resource or service in its current
#     state. This could be because the  *method*  is performing a configuration change that
#     is not allowed in the current state or because  *method*  itself is not allowed in the
#     current state. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Trying to add a virtual device that cannot be hot plugged to a running virtual
#     machine. </li>
# <li>Trying to upgrade the virtual hardware version for a suspended virtual machine.
#     </li>
# <li>Trying to power off, reset, or suspend a virtual machine that is not powered on.
#     </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>Trying to power off a virtual machine that is in the process of being powered on.
#     The  class Com::Vmware::Vapi::Std::Errors::ResourceBusy   *error*  would be used
#     instead. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.not_allowed_in_current_state');
   bless $self, $class;
   return $self;
}


1;


