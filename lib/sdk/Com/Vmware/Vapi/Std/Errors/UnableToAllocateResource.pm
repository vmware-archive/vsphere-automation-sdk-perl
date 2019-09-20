## @class Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource``   *error*  indicates
#     that the  *method*  failed because it was unable to allocate or acquire a required
#     resource. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Trying to power on a virtual machine when there are not enough licenses to do so.
#     </li>
# <li>Trying to power on a virtual machine that would violate a resource usage policy.
#     </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>Trying to power off a virtual machine that is in the process of being powered on.
#     A  class Com::Vmware::Vapi::Std::Errors::ResourceBusy   *error*  would be used
#     instead. </li>
# <li>Trying to remove a VMFS datastore when the is a virtual machine registered on any
#     host attached to the datastore. The  class
#     Com::Vmware::Vapi::Std::Errors::ResourceInUse   *error*  would be used instead. </li>
# <li>Trying to add a virtual switch if the physical network adapter being bridged is
#     already in use. The  class Com::Vmware::Vapi::Std::Errors::ResourceInUse   *error* 
#     would be used instead. </li>
# <li>Attempt to invoke some  *method*  on a virtual machine when the virtual
#     machine&apos;s configuration file is not accessible (for example due to a storage APD
#     condition). The  class Com::Vmware::Vapi::Std::Errors::ResourceInaccessible   *error* 
#     would be used instead. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.unable_to_allocate_resource');
   bless $self, $class;
   return $self;
}


1;


