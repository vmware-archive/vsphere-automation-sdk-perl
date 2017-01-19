## @class Com::Vmware::Vapi::Std::Errors::InvalidArgument
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::InvalidArgument``   *error*  indicates that the
#     values received for one or more  *parameters*  are not acceptable. <p>
# 
# This  *error*  is reported by the API infrastructure, so it could occur in response to
#     the invocation of any  *method* . It may also be reported as the result of  *method*
#     -specific validation. </p>
# 
# <p>
# 
#  Examples: </p>
# 
# <ul>
#  <li>A  *parameter*  has a value that is not of the expected type. </li>
#  <li>A  *parameter*  has a value that is not in the required range. </li>
# <li>A  *parameter*  has a value that is not one of the specifically allowed strings.
#     </li>
# <li>One  *field*  of a  *class*  is the tag for a tagged union, and has a specific
#     value but another  *field*  of the  *class*  that is required to be specified when the
#     tag has that value is not specified, or another  *field*  of the  *class*  that is
#     required to be unspecified when the tag has that value is specified. </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>Trying to create a new tag in tag category when a tag with the specified name
#     already exists the tag category. The  class
#     Com::Vmware::Vapi::Std::Errors::AlreadyExists   *error*  would be used instead. </li>
# <li>Invoke the  *method*  to retrieve information about a virtual machine, passing an
#     id that does not identify an existing virtual machine. The  class
#     Com::Vmware::Vapi::Std::Errors::NotFound   *error*  would be used instead. </li>
# <li>Attempt to put a virtual machine into a folder that can only contain hosts. The 
#     class Com::Vmware::Vapi::Std::Errors::InvalidElementType   *error*  would be used
#     instead. </li>
# <li>Attempt to attach a SCSI virtual disk to an IDE port. The  class
#     Com::Vmware::Vapi::Std::Errors::InvalidElementType   *error*  would be used instead.
#     </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::InvalidArgument;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::InvalidArgument structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::InvalidArgument');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.invalid_argument');
   bless $self, $class;
   return $self;
}


1;


