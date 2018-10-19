## @class Com::Vmware::Vcenter::Vcha::IpFamily
#
# The  ``Com::Vmware::Vcenter::Vcha::IpFamily``   *enumerated type*  defines the Ip
#     address family. This  *enumeration*  was added in vSphere API 6.7 U1.
#
#
#
# Constant Com::Vmware::Vcenter::Vcha::IpFamily::IP_V4 #
#IPV4 address family. This  *constant*  was added in vSphere API 6.7 U1.
#
# Constant Com::Vmware::Vcenter::Vcha::IpFamily::IP_V6 #
#IPv6 address family. This  *constant*  was added in vSphere API 6.7 U1.

package Com::Vmware::Vcenter::Vcha::IpFamily;

use constant {
    IPV4 =>  'IPV4',
    IPV6 =>  'IPV6',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::IpFamily enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vcha.ip_family',
                           'binding_class' => 'Com::Vmware::Vcenter::Vcha::IpFamily');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

