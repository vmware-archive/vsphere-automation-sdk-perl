## @class Com::Vmware::Vapi::Std::Errors::ResourceInUse
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::ResourceInUse``   *error*  indicates that the 
#     *method*  could not be completed because a resource is in use. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Trying to remove a VMFS datastore when the is a virtual machine registered on any
#     host attached to the datastore. </li>
# <li>Trying to add a virtual switch if the physical network adapter being bridged is
#     already in use. </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>Trying to power off a virtual machine that is in the process of being powered on.
#     The  class Com::Vmware::Vapi::Std::Errors::ResourceBusy   *error*  would be used
#     instead. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::ResourceInUse;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::ResourceInUse structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::ResourceInUse');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.resource_in_use');
   bless $self, $class;
   return $self;
}


1;


