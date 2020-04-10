## @class Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance
#
# The  ``Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance``   *enumerated type*
#     defines the compliance states a policy can be in on a particular object in VMware
#     Cloud on AWS. Usage beyond VMware Cloud on AWS is not supported. <b>Warning:</b> This 
#     *enumeration*  is available as Technology Preview. These are early access APIs
#     provided to test, automate and provide feedback on the feature. Since this can change
#     based on feedback, VMware does not guarantee backwards compatibility and recommends
#     against using them in production environments. Some Technology Preview APIs might only
#     be applicable to specific environments.
#
#
#
# Constant Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance::NOT_APPLICABLE #
#The object is in a state for which the policy does not apply. <b>Warning:</b> This 
# *constant*  is available as Technology Preview. These are early access APIs provided to
# test, automate and provide feedback on the feature. Since this can change based on
# feedback, VMware does not guarantee backwards compatibility and recommends against using
# them in production environments. Some Technology Preview APIs might only be applicable to
# specific environments.
#
# Constant Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance::COMPLIANT #
#The policy is in compliance on the object. <b>Warning:</b> This  *constant*  is available
# as Technology Preview. These are early access APIs provided to test, automate and provide
# feedback on the feature. Since this can change based on feedback, VMware does not
# guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.
#
# Constant Com::Vmware::Vcenter::Compute::Policies::ObjectCompliance::NOT_COMPLIANT #
#The policy is not in compliance on the object. <b>Warning:</b> This  *constant*  is
# available as Technology Preview. These are early access APIs provided to test, automate
# and provide feedback on the feature. Since this can change based on feedback, VMware does
# not guarantee backwards compatibility and recommends against using them in production
# environments. Some Technology Preview APIs might only be applicable to specific
# environments.

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

