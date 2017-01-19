## @class Com::Vmware::Vcenter::Ovf::DiskProvisioningType
#
# The  ``Com::Vmware::Vcenter::Ovf::DiskProvisioningType``   *enumerated type*  defines
#     the virtual disk provisioning types that can be set for a disk on the target platform.
#
#
#
# Constant Com::Vmware::Vcenter::Ovf::DiskProvisioningType::THIN #
#A thin provisioned virtual disk has space allocated and zeroed on demand as the space is
# used.
#
# Constant Com::Vmware::Vcenter::Ovf::DiskProvisioningType::THICK #
#A thick provisioned virtual disk has all space allocated at creation time and the space is
# zeroed on demand as the space is used.
#
# Constant Com::Vmware::Vcenter::Ovf::DiskProvisioningType::EAGER_ZEROED_THICK #
#An eager zeroed thick provisioned virtual disk has all space allocated and wiped clean of
# any previous contents on the physical media at creation time. <p>
# 
# Disks specified as eager zeroed thick may take longer time to create than disks specified
# with the other disk provisioning types.</p>

package Com::Vmware::Vcenter::Ovf::DiskProvisioningType;

use constant {
    thin =>  'thin',
    thick =>  'thick',
    eagerZeroedThick =>  'eagerZeroedThick',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::DiskProvisioningType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.ovf.disk_provisioning_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Ovf::DiskProvisioningType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

