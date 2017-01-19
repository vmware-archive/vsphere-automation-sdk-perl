## @class Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration``   *error* 
#     indicates that an attempt to modify the configuration of an element or a group
#     containing the element failed due to the configuraton of the element. A typical case
#     is when the  *method*  is am attempt to change the group membership of the element
#     fails, in which case a configuration change on the element may allow the group
#     membership change to succeed. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Attempt to move a host with a fault tolerant virtual machine out of a cluster
#     (i.e. make the host a standalone host). </li>
# <li>Attempt to remove a host from a DRS cluster without putting the host into
#     maintenance mode. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::InvalidElementConfiguration');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.invalid_element_configuration');
   bless $self, $class;
   return $self;
}


1;


