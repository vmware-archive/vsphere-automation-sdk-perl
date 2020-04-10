## @class Com::Vmware::Vcenter::Namespace_management::SizingHint
#
# The  ``Com::Vmware::Vcenter::Namespace_management::SizingHint``   *enumerated type* 
#     determines the configuration of Kubernetes API server and the worker nodes. It also
#     determines the default values associated with the maximum number of pods and services.
#     Use  :func:`Com::Vmware::Vcenter::Namespace_management::ClusterSizeInfo.get`  to get
#     information associated with a 
#     ``Com::Vmware::Vcenter::Namespace_management::SizingHint`` .
#
#
#
# Constant Com::Vmware::Vcenter::Namespace_management::SizingHint::TINY #
#Cluster size of &apos;tiny&apos;.
#
# Constant Com::Vmware::Vcenter::Namespace_management::SizingHint::SMALL #
#Cluster size of &apos;small&apos;.
#
# Constant Com::Vmware::Vcenter::Namespace_management::SizingHint::MEDIUM #
#Cluster size of &apos;medium&apos;.
#
# Constant Com::Vmware::Vcenter::Namespace_management::SizingHint::LARGE #
#Cluster size of &apos;large&apos;.

package Com::Vmware::Vcenter::Namespace_management::SizingHint;

use constant {
    TINY =>  'TINY',
    SMALL =>  'SMALL',
    MEDIUM =>  'MEDIUM',
    LARGE =>  'LARGE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::SizingHint enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.namespace_management.sizing_hint',
                           'binding_class' => 'Com::Vmware::Vcenter::Namespace_management::SizingHint');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

