## @class Com::Vmware::Esx::Hcl::CompatibilityStatus
#
# The  ``Com::Vmware::Esx::Hcl::CompatibilityStatus``   *enumerated type*  defines
#     compatibility status of a given server or PCI device against a specific release of
#     ESXi.
#
#
#
# Constant Com::Vmware::Esx::Hcl::CompatibilityStatus::COMPATIBLE #
#When given hardware is certified for the specified ESXi release but no validation of the
# software of this hardware is performed.
#
# Constant Com::Vmware::Esx::Hcl::CompatibilityStatus::INCOMPATIBLE #
#When given hardware is not certified for the specified ESXi release.
#
# Constant Com::Vmware::Esx::Hcl::CompatibilityStatus::UNAVAILABLE #
#When there is no information about specified hardware.
#
# Constant Com::Vmware::Esx::Hcl::CompatibilityStatus::CERTIFIED #
#When given hardware is certified for the specified ESXi release. Its software is also
# validated and it is also certified.
#
# Constant Com::Vmware::Esx::Hcl::CompatibilityStatus::NOT_CERTIFIED #
#When given hardware is certified for the specified ESXi release. Its software is also
# validated and it is not certified.

package Com::Vmware::Esx::Hcl::CompatibilityStatus;

use constant {
    COMPATIBLE =>  'COMPATIBLE',
    INCOMPATIBLE =>  'INCOMPATIBLE',
    UNAVAILABLE =>  'UNAVAILABLE',
    CERTIFIED =>  'CERTIFIED',
    NOT_CERTIFIED =>  'NOT_CERTIFIED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::CompatibilityStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.hcl.compatibility_status',
                           'binding_class' => 'Com::Vmware::Esx::Hcl::CompatibilityStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

