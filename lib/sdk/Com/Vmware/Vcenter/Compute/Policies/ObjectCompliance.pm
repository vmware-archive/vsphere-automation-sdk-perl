## @class Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance``   *enumerated type*
#     defines the compliance states a policy can be in on a particular object.
#     <b>Warning:</b> This  *enumeration*  is available as technical preview. It may be
#     changed in a future release.
#
#
#
# Constant Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance::NOT_APPLICABLE #
#The object is in a state for which the policy does not apply. <b>Warning:</b> This 
# *constant*  is available as technical preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance::COMPLIANT #
#The policy is in compliance on the object. <b>Warning:</b> This  *constant*  is available
# as technical preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance::NOT_COMPLIANT #
#The policy is not in compliance on the object. <b>Warning:</b> This  *constant*  is
# available as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance;

use constant {
    NOT_APPLICABLE =>  'NOT_APPLICABLE',
    COMPLIANT =>  'COMPLIANT',
    NOT_COMPLIANT =>  'NOT_COMPLIANT',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.compute.policies.object_compliance',
                           'binding_class' => 'Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

