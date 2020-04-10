## @class Com::Vmware::Vcenter::Content::Registries::Recurrence
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Recurrence``   *enumerated type* 
#     defines the supported values for how often to run a specific operation for a container
#     registry.
#
#
#
# Constant Com::Vmware::Vcenter::Content::Registries::Recurrence::NONE #
#No operation is scheduled.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Recurrence::DAILY #
#An operation occurs on a daily basis.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Recurrence::WEEKLY #
#An operation occurs on a weekly basis.

package Com::Vmware::Vcenter::Content::Registries::Recurrence;

use constant {
    NONE =>  'NONE',
    DAILY =>  'DAILY',
    WEEKLY =>  'WEEKLY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Recurrence enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.content.registries.recurrence',
                           'binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Recurrence');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

