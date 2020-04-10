## @class Com::Vmware::Esx::Settings::ComplianceImpact
#
# The  ``Com::Vmware::Esx::Settings::ComplianceImpact``   *enumerated type*  contains
#     information about the impact of applying the target state in case of non compliance.
#
#
#
# Constant Com::Vmware::Esx::Settings::ComplianceImpact::NO_IMPACT #
#Host has no impact.
#
# Constant Com::Vmware::Esx::Settings::ComplianceImpact::MAINTENANCE_MODE_REQUIRED #
#Host requires maintenance mode to reach this target state.
#
# Constant Com::Vmware::Esx::Settings::ComplianceImpact::REBOOT_REQUIRED #
#Host requires reboot to reach this target state.
#
# Constant Com::Vmware::Esx::Settings::ComplianceImpact::UNKNOWN #
#Impact is unknown.

package Com::Vmware::Esx::Settings::ComplianceImpact;

use constant {
    NO_IMPACT =>  'NO_IMPACT',
    MAINTENANCE_MODE_REQUIRED =>  'MAINTENANCE_MODE_REQUIRED',
    REBOOT_REQUIRED =>  'REBOOT_REQUIRED',
    UNKNOWN =>  'UNKNOWN',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::ComplianceImpact enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.esx.settings.compliance_impact',
                           'binding_class' => 'Com::Vmware::Esx::Settings::ComplianceImpact');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

