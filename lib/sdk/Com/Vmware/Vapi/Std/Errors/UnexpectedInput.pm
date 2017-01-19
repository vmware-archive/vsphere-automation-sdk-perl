## @class Com::Vmware::Vapi::Std::Errors::UnexpectedInput
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::UnexpectedInput``   *error*  indicates that the
#     request contained a  *parameter*  or  *field*  whose name is not known by the server.
#     <p>
# 
# Every  *method*  expects  *parameters*  with known names. Some of those  *parameters* 
#     may be (or contain)  *classes* , and the  *method*  expects those  *classes*  to
#     contain  *fields*  with known names. If the  *method*  receives  *parameters*  or 
#     *fields*  with names that is does not expect, this  *error*  may be reported. </p>
# 
# <p>
# 
# This  *error*  can be reported by the API infrastructure for any  *method* , but it is
#     specific to the API infrastructure, and should never be reported by the implementation
#     of any  *method* . </p>
# 
# <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>A client using stubs generated from the interface specification for version2 of a 
#     *interface*  invokes the  *method*  passing one or more  *parameters*  that were added
#     in version2, but they are communicating with a server that only supports version1 of
#     the  *interface* . </li>
# <li>A client provides an unexpected  *parameter*  or  *field*  name when invoking the 
#     *method*  using a dynamic interface (for example REST). </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::UnexpectedInput;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::UnexpectedInput structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::UnexpectedInput');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.unexpected_input');
   bless $self, $class;
   return $self;
}


1;


