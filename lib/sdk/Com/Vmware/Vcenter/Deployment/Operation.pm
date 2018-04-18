## @class Com::Vmware::Vcenter::Deployment::Operation
#
# The  ``Com::Vmware::Vcenter::Deployment::Operation``   *enumerated type*  defines the
#     supported vCenter appliance deployment operations. This  *enumeration*  was added in
#     vSphere API 6.7
#
#
#
# Constant Com::Vmware::Vcenter::Deployment::Operation::INSTALL #
#The appliance installation is in progress. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Deployment::Operation::UPGRADE #
#The appliance upgrade is in progress. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Deployment::Operation::MIGRATE #
#The appliance migration is in progress. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Deployment::Operation::RESTORE #
#The appliance restoration is in progress. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Deployment::Operation::ROLLBACK #
#The appliance is being rolled back to an unconfigured state. This  *constant*  was added
# in vSphere API 6.7

package Com::Vmware::Vcenter::Deployment::Operation;

use constant {
    INSTALL =>  'INSTALL',
    UPGRADE =>  'UPGRADE',
    MIGRATE =>  'MIGRATE',
    RESTORE =>  'RESTORE',
    ROLLBACK =>  'ROLLBACK',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Operation enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.deployment.operation',
                           'binding_class' => 'Com::Vmware::Vcenter::Deployment::Operation');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

