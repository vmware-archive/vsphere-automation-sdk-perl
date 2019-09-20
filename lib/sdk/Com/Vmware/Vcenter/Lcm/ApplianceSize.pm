## @class Com::Vmware::Vcenter::Lcm::ApplianceSize
#
# The size of appliance to be deployed.
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::ApplianceSize::TINY #
#Appliance size of &apos;tiny&apos;, Default vCPUs: 2, Memory: 8GB, VM: 100, Hosts: 10
#
# Constant Com::Vmware::Vcenter::Lcm::ApplianceSize::SMALL #
#Appliance size of &apos;small&apos;, Default vCPUs: 4, Memory: 16GB, VM: 1000, Hosts: 100
#
# Constant Com::Vmware::Vcenter::Lcm::ApplianceSize::MEDIUM #
#Appliance size of &apos;medium&apos;, Default vCPUs: 8, Memory: 24GB, VM: 4000, Hosts: 400
#
# Constant Com::Vmware::Vcenter::Lcm::ApplianceSize::LARGE #
#Appliance size of &apos;large&apos;, Default vCPUs: 16, Memory: 32GB, VM: 10000, Hosts:
# 1000
#
# Constant Com::Vmware::Vcenter::Lcm::ApplianceSize::XLARGE #
#Appliance size of &apos;extra large&apos;, Default vCPUs: 24, Memory: 48GB, VM: 35000,
# Hosts: 2000

package Com::Vmware::Vcenter::Lcm::ApplianceSize;

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
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::ApplianceSize enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.appliance_size',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::ApplianceSize');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

