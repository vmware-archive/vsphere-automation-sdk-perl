## @class Com::Vmware::Vcenter::Vm::Hardware::ConnectionState
#
# The  ``Com::Vmware::Vcenter::Vm::Hardware::ConnectionState``   *enumerated type* 
#     defines the valid states for a removable device that is configured to be connected.
#
#
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::ConnectionState::CONNECTED #
#The device is connected and working correctly.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::ConnectionState::RECOVERABLE_ERROR #
#Device connection failed due to a recoverable error; for example, the virtual device
# backing is currently in use by another virtual machine.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::ConnectionState::UNRECOVERABLE_ERROR #
#Device connection failed due to an unrecoverable error; for example, the virtual device
# backing does not exist.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::ConnectionState::NOT_CONNECTED #
#The device is not connected.
#
# Constant Com::Vmware::Vcenter::Vm::Hardware::ConnectionState::UNKNOWN #
#The device status is unknown.

package Com::Vmware::Vcenter::Vm::Hardware::ConnectionState;

use constant {
    CONNECTED =>  'CONNECTED',
    RECOVERABLE_ERROR =>  'RECOVERABLE_ERROR',
    UNRECOVERABLE_ERROR =>  'UNRECOVERABLE_ERROR',
    NOT_CONNECTED =>  'NOT_CONNECTED',
    UNKNOWN =>  'UNKNOWN',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm::Hardware::ConnectionState enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm.hardware.connection_state',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm::Hardware::ConnectionState');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

