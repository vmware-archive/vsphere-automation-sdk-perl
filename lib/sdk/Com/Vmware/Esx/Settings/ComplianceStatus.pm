## @class Com::Vmware::Esx::Settings::ComplianceStatus
#
# The  ``Com::Vmware::Esx::Settings::ComplianceStatus``   *enumerated type*  contains
#     the possible different status of compliance with respect to target version.
#
#
#
# Constant Com::Vmware::Esx::Settings::ComplianceStatus::COMPLIANT #
#Target version is same as current version.
#
# Constant Com::Vmware::Esx::Settings::ComplianceStatus::NON_COMPLIANT #
#Target version is greater than current version.
#
# Constant Com::Vmware::Esx::Settings::ComplianceStatus::INCOMPATIBLE #
#Target state cannot be applied due to conflict or missing dependencies or the target state
# is lesser than the current version.
#
# Constant Com::Vmware::Esx::Settings::ComplianceStatus::UNAVAILABLE #
#Drift check failed due to unknown error or check hasn&apos;t happened yet and results are
# not available.

package Com::Vmware::Esx::Settings::ComplianceStatus;

use constant {
    COMPLIANT =>  'COMPLIANT',
    NON_COMPLIANT =>  'NON_COMPLIANT',
    INCOMPATIBLE =>  'INCOMPATIBLE',
    UNAVAILABLE =>  'UNAVAILABLE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::ComplianceStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.compliance_status',
                           'binding_class' => 'Com::Vmware::Esx::Settings::ComplianceStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

