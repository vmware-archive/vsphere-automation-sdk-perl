## @class Com::Vmware::Vapi::Std::Errors::NotFound
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::NotFound``   *error*  indicates that a
#     specified element could not be found. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Invoke the  *method*  to retrieve information about a virtual machine, passing an
#     id that does not identify an existing virtual machine. </li>
# <li>Invoke the  *method*  to modify the configuration of a virtual nic, passing an id
#     that does not identify an existing virtual nic in the specified virtual machine.
#     </li>
# <li>Invoke the  *method*  to remove a vswitch, passing an id that does not identify an
#     existing vswitch. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::NotFound;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::NotFound structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::NotFound');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.not_found');
   bless $self, $class;
   return $self;
}


1;


