## @class Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState``   *error*  indicates
#     that an attempt to change the state of a resource or service had no effect because the
#     resource or service is already in the desired state. <p>
# 
#  Examples: </p>
# 
# <ul>
#  <li>Trying to power on a virtual machine that is already powered on.</li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::AlreadyInDesiredState');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.already_in_desired_state');
   bless $self, $class;
   return $self;
}


1;


