## @class Com::Vmware::Vcenter::Vcha::NetworkType
#
# The  ``Com::Vmware::Vcenter::Vcha::NetworkType``   *enumerated type*  defines the type
#     of a vCenter Server network. This  *enumeration*  was added in vSphere API 6.7 U1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::NetworkType::STANDARD_PORTGROUP #
#vSphere standard portgroup network. This  *constant*  was added in vSphere API 6.7 U1.
#
# Constant Com::Vmware::Vcenter::Vcha::NetworkType::DISTRIBUTED_PORTGROUP #
#Distributed virtual switch. This  *constant*  was added in vSphere API 6.7 U1.

package Com::Vmware::Vcenter::Vcha::NetworkType;

use constant {
    STANDARD_PORTGROUP =>  'STANDARD_PORTGROUP',
    DISTRIBUTED_PORTGROUP =>  'DISTRIBUTED_PORTGROUP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::NetworkType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.network_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::NetworkType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

