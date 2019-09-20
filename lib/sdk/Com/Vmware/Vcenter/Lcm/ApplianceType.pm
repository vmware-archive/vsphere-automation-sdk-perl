## @class Com::Vmware::Vcenter::Lcm::ApplianceType
#
# The type of appliance to be deployed.
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::ApplianceType::VCSA_EXTERNAL #
#Management node.
#
# Constant Com::Vmware::Vcenter::Lcm::ApplianceType::VCSA_EMBEDDED #
#Embedded node.
#
# Constant Com::Vmware::Vcenter::Lcm::ApplianceType::PSC #
#Infrastructure node.
#
# Constant Com::Vmware::Vcenter::Lcm::ApplianceType::VMC #
#VMC node.

package Com::Vmware::Vcenter::Lcm::ApplianceType;

use constant {
    VCSA_EXTERNAL =>  'VCSA_EXTERNAL',
    VCSA_EMBEDDED =>  'VCSA_EMBEDDED',
    PSC =>  'PSC',
    VMC =>  'VMC',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::ApplianceType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.appliance_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::ApplianceType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

