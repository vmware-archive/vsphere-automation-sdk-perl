## @class Com::Vmware::Vapi::Std::Errors::ResourceInaccessible
#
#
# The  ``Com::Vmware::Vapi::Std::Errors::ResourceInaccessible``   *error*  indicates
#     that the  *method*  could not be completed because an entity is not accessible. <p>
# 
#  Examples: </p>
# 
# <ul>
# <li>Attempt to invoke some  *method*  on a virtual machine when the virtual
#     machine&apos;s configuration file is not accessible (for example due to a storage APD
#     condition). </li>
#  </ul> <p>
# 
#  Counterexamples: </p>
# 
# <ul>
# <li>Attempt to invoke some  *method*  when the server is too busy. The  class
#     Com::Vmware::Vapi::Std::Errors::ServiceUnavailable   *error*  would be used instead.
#     </li>
# <li>Attempt to invoke some  *method*  when the server is undergoing maintenance. The 
#     class Com::Vmware::Vapi::Std::Errors::ServiceUnavailable   *error*  would be used
#     instead. </li>
# <li>Some  *method*  fails to contact VMware Tools running inside the virtual machine.
#     The  class Com::Vmware::Vapi::Std::Errors::ServiceUnavailable   *error*  would be used
#     instead. </li>
#  </ul>

package Com::Vmware::Vapi::Std::Errors::ResourceInaccessible;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Std::Errors::Error);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Std::Errors::ResourceInaccessible structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Std::Errors::ResourceInaccessible');
   $self->set_binding_name('name' => 'com.vmware.vapi.std.errors.resource_inaccessible');
   bless $self, $class;
   return $self;
}


1;


