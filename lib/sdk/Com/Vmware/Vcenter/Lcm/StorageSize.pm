## @class Com::Vmware::Vcenter::Lcm::StorageSize
#
# The storage size of the appliance to be deployed.
#
#
#
# Constant Com::Vmware::Vcenter::Lcm::StorageSize::LARGE #
#Large storage
#
# Constant Com::Vmware::Vcenter::Lcm::StorageSize::XLARGE #
#Extra large storage
#
# Constant Com::Vmware::Vcenter::Lcm::StorageSize::REGULAR #
#Regular storage

package Com::Vmware::Vcenter::Lcm::StorageSize;

use constant {
    LARGE =>  'LARGE',
    XLARGE =>  'XLARGE',
    REGULAR =>  'REGULAR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::StorageSize enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.lcm.storage_size',
                           'binding_class' => 'Com::Vmware::Vcenter::Lcm::StorageSize');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

