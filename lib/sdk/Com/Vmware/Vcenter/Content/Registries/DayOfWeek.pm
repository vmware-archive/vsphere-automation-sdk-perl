## @class Com::Vmware::Vcenter::Content::Registries::DayOfWeek
#
# The  ``Com::Vmware::Vcenter::Content::Registries::DayOfWeek``   *enumerated type* 
#     describes the supported days of the week to run a specific operation for a container
#     registry.
#
#
#
# Constant Com::Vmware::Vcenter::Content::Registries::DayOfWeek::SUNDAY #
#Sunday.
#
# Constant Com::Vmware::Vcenter::Content::Registries::DayOfWeek::MONDAY #
#Monday.
#
# Constant Com::Vmware::Vcenter::Content::Registries::DayOfWeek::TUESDAY #
#Tuesday.
#
# Constant Com::Vmware::Vcenter::Content::Registries::DayOfWeek::WEDNESDAY #
#Wednesday.
#
# Constant Com::Vmware::Vcenter::Content::Registries::DayOfWeek::THURSDAY #
#Thursday.
#
# Constant Com::Vmware::Vcenter::Content::Registries::DayOfWeek::FRIDAY #
#Friday.
#
# Constant Com::Vmware::Vcenter::Content::Registries::DayOfWeek::SATURDAY #
#Saturday.

package Com::Vmware::Vcenter::Content::Registries::DayOfWeek;

use constant {
    SUNDAY =>  'SUNDAY',
    MONDAY =>  'MONDAY',
    TUESDAY =>  'TUESDAY',
    WEDNESDAY =>  'WEDNESDAY',
    THURSDAY =>  'THURSDAY',
    FRIDAY =>  'FRIDAY',
    SATURDAY =>  'SATURDAY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::DayOfWeek enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.content.registries.day_of_week',
                           'binding_class' => 'Com::Vmware::Vcenter::Content::Registries::DayOfWeek');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

