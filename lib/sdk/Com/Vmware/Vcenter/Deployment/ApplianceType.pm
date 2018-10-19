## @class Com::Vmware::Vcenter::Deployment::ApplianceType
#
# The  ``Com::Vmware::Vcenter::Deployment::ApplianceType``   *enumerated type*  defines
#     the vCenter appliance types. This  *enumeration*  was added in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceType::VCSA_EMBEDDED #
#vCenter Server Appliance with an embedded Platform Services Controller. This  *constant* 
# was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceType::VCSA_EXTERNAL #
#vCenter Server Appliance with an external Platform Services Controller. This  *constant* 
# was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Deployment::ApplianceType::PSC_EXTERNAL #
#An external Platform Services Controller. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::ApplianceType;

use constant {
    VCSA_EMBEDDED =>  'VCSA_EMBEDDED',
    VCSA_EXTERNAL =>  'VCSA_EXTERNAL',
    PSC_EXTERNAL =>  'PSC_EXTERNAL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::ApplianceType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.deployment.appliance_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Deployment::ApplianceType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

