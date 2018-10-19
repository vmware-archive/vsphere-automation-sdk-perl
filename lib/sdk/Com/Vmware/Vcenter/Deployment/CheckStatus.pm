## @class Com::Vmware::Vcenter::Deployment::CheckStatus
#
# The  ``Com::Vmware::Vcenter::Deployment::CheckStatus``   *enumerated type*  defines
#     the status of the checks. This  *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Vcenter::Deployment::CheckStatus::SUCCESS #
#All checks have completed successfully. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Deployment::CheckStatus::FAILED #
#A fatal error was encountered when running the sanity checks. This  *constant*  was added
# in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::CheckStatus;

use constant {
    SUCCESS =>  'SUCCESS',
    FAILED =>  'FAILED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::CheckStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.deployment.check_status',
                           'binding_class' => 'Com::Vmware::Vcenter::Deployment::CheckStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

