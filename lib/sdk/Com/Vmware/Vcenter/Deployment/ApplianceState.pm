## @class Com::Vmware::Vcenter::Deployment::ApplianceState
#
# The  ``Com::Vmware::Vcenter::Deployment::ApplianceState``   *enumerated type*  defines
#     the various states the vCenter Appliance can be in. This  *enumeration*  was added in
#     vSphere API 6.7
#
#
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceState::NOT_INITIALIZED #
#The appliance is in the process of being initialized and not ready for configuration. This
#  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceState::INITIALIZED #
#The appliance is initialized and ready to be configured. This  *constant*  was added in
# vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceState::CONFIG_IN_PROGRESS #
#The appliance is in the process of being configured. This  *constant*  was added in
# vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceState::QUESTION_RAISED #
#The deployment script has raised a question and is waiting for an answer to continue with
# the appliance configuration. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceState::FAILED #
#The appliance configuration has failed. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceState::CONFIGURED #
#The appliance has been configured. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Vcenter::Deployment::ApplianceState;

use constant {
    NOT_INITIALIZED =>  'NOT_INITIALIZED',
    INITIALIZED =>  'INITIALIZED',
    CONFIG_IN_PROGRESS =>  'CONFIG_IN_PROGRESS',
    QUESTION_RAISED =>  'QUESTION_RAISED',
    FAILED =>  'FAILED',
    CONFIGURED =>  'CONFIGURED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::ApplianceState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.deployment.appliance_state',
                           'binding_class' => 'Com::Vmware::Vcenter::Deployment::ApplianceState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

