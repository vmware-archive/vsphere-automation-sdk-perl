## @class Com::Vmware::Vapi::Std::Errors::Unsupported
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::Unsupported``   *error*  indicates that the 
#     *method*  is not supported by the  *interface* . <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Trying to hot-plug a CPU when the current configuration of the VM does not support
#     hot-plugging of CPUs. </li>
# <li>Trying to change the memory size to a value that is not within the acceptable
#     guest memory bounds supported by the virtual machine&apos;s host. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::Unsupported;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::Unsupported structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::Unsupported');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.unsupported');
   bless $self, $class;
   return $self;
}


1;


