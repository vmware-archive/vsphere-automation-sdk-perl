## @class Com::Vmware::Vcenter::Deployment::ApplianceSize
#
# The  ``Com::Vmware::Vcenter::Deployment::ApplianceSize``   *enumerated type*  defines
#     the vCenter Server Appliance sizes. This  *enumeration*  was added in vSphere API
#     7.0.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceSize::TINY #
#Appliance size of &apos;tiny&apos;. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceSize::SMALL #
#Appliance size of &apos;small&apos;. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceSize::MEDIUM #
#Appliance size of &apos;medium&apos;. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceSize::LARGE #
#Appliance size of &apos;large&apos;. This  *constant*  was added in vSphere API 7.0.0.0.
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceSize::XLARGE #
#Appliance size of &apos;extra large&apos;. This  *constant*  was added in vSphere API
# 7.0.0.0.

package Com::Vmware::Vcenter::Deployment::ApplianceSize;

use constant {
    TINY =>  'TINY',
    SMALL =>  'SMALL',
    MEDIUM =>  'MEDIUM',
    LARGE =>  'LARGE',
    XLARGE =>  'XLARGE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::ApplianceSize enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.deployment.appliance_size',
                           'binding_class' => 'Com::Vmware::Vcenter::Deployment::ApplianceSize');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

