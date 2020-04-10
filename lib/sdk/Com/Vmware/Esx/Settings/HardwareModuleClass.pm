## @class Com::Vmware::Esx::Settings::HardwareModuleClass
#
# The  ``Com::Vmware::Esx::Settings::HardwareModuleClass``   *class*  contains the
#     module&apos;s source information.
#
#
#
# Constant Com::Vmware::Esx::Settings::HardwareModuleClass::SYSTEM_BIOS #
#System BIOS
#
# Constant Com::Vmware::Esx::Settings::HardwareModuleClass::PCI_DEVICE #
#PCI device
#
# Constant Com::Vmware::Esx::Settings::HardwareModuleClass::OTHER #
#Other (non-PCI) hardware

package Com::Vmware::Esx::Settings::HardwareModuleClass;

use constant {
    SYSTEM_BIOS =>  'SYSTEM_BIOS',
    PCI_DEVICE =>  'PCI_DEVICE',
    OTHER =>  'OTHER',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::HardwareModuleClass enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.hardware_module_class',
                           'binding_class' => 'Com::Vmware::Esx::Settings::HardwareModuleClass');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

