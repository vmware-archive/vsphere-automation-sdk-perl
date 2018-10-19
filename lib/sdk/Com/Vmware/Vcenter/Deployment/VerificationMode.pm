## @class Com::Vmware::Vcenter::Deployment::VerificationMode
#
# The  ``Com::Vmware::Vcenter::Deployment::VerificationMode``   *enumerated type* 
#     defines the verification modes for SSL certificates or SSH connections. This 
#     *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Vcenter::Deployment::VerificationMode::NONE #
#No verification will be performed. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Deployment::VerificationMode::THUMBPRINT #
#Passed thumbprint will be used for verification. This  *constant*  was added in vSphere
# API 6.7.

package Com::Vmware::Vcenter::Deployment::VerificationMode;

use constant {
    NONE =>  'NONE',
    THUMBPRINT =>  'THUMBPRINT',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::VerificationMode enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.deployment.verification_mode',
                           'binding_class' => 'Com::Vmware::Vcenter::Deployment::VerificationMode');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

