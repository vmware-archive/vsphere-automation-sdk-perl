## @class Com::Vmware::Vapi::Std::Errors::ResourceBusy
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::ResourceBusy``   *error*  indicates that the 
#     *method*  could not be completed because a resource it needs is busy. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Trying to power off a virtual machine that is in the process of being powered on.
#     </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>Trying to remove a VMFS datastore when there is a virtual machine registered on
#     any host attached to the datastore. The  class
#     Com::Vmware::Vapi::Std::Errors::ResourceInUse   *error*  would be used instead. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::ResourceBusy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::ResourceBusy structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::ResourceBusy');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.resource_busy');
   bless $self, $class;
   return $self;
}


1;


