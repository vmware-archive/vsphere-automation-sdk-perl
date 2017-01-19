## @class Com::Vmware::Vapi::Std::Errors::InvalidElementType
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::InvalidElementType``   *error*  indicates that
#     the server was unable to fulfil the request because an element of a specific type
#     cannot be a member of particular group. <p>
# 
# This  *error*  could be reported, for example, if an attempt is made to put an element
#     into the wrong type of container. </p>
# 
# <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Attempt to put a virtual machine into a folder that can only contain hosts. </li>
#  <li>Attempt to attach a SCSI virtual disk to an IDE port. </li>
#  </ul> Counterexamples: <ul>
# <li>A  *parameter*  has a value that is not of the expected type. The  class
#     Com::Vmware::Vapi::Std::Errors::InvalidArgument   *error*  would be used instead.
#     </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::InvalidElementType;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::InvalidElementType structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::InvalidElementType');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.invalid_element_type');
   bless $self, $class;
   return $self;
}


1;


