## @class Com::Vmware::Vcenter::Vm::GuestOSFamily
#
# The  ``Com::Vmware::Vcenter::Vm::GuestOSFamily``   *enumerated type*  defines the
#     valid guest operating system family types reported by a virtual machine. This 
#     *enumeration*  was added in vSphere API 6.7
#
#
#
# Constant Com::Vmware::Vcenter::Vm::GuestOSFamily::WINDOWS #
#Windows operating system. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Vm::GuestOSFamily::LINUX #
#Linux operating system. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Vm::GuestOSFamily::NETWARE #
#Novell Netware. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Vm::GuestOSFamily::SOLARIS #
#Solaris operating system. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Vm::GuestOSFamily::DARWIN #
#Mac OS operating system. This  *constant*  was added in vSphere API 6.7
#
# Constant Com::Vmware::Vcenter::Vm::GuestOSFamily::OTHER #
#Other operating systems. This  *constant*  was added in vSphere API 6.7

package Com::Vmware::Vcenter::Vm::GuestOSFamily;

use constant {
    WINDOWS =>  'WINDOWS',
    LINUX =>  'LINUX',
    NETWARE =>  'NETWARE',
    SOLARIS =>  'SOLARIS',
    DARWIN =>  'DARWIN',
    OTHER =>  'OTHER',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::GuestOSFamily enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.guest_OS_family',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::GuestOSFamily');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

