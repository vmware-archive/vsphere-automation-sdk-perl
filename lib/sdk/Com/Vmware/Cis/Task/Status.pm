## @class Com::Vmware::Cis::Task::Status
#
# The  ``Com::Vmware::Cis::Task::Status``   *enumerated type*  defines the status values
#     that can be reported for an operation. This  *enumeration*  was added in vSphere API
#     6.7.
#
#
#
# Constant Com::Vmware::Cis::Task::Status::PENDING #
#The operation is in pending state. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Cis::Task::Status::RUNNING #
#The operation is in progress. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Cis::Task::Status::BLOCKED #
#The operation is blocked. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Cis::Task::Status::SUCCEEDED #
#The operation completed successfully. This  *constant*  was added in vSphere API 6.7.
#
# Constant Com::Vmware::Cis::Task::Status::FAILED #
#The operation failed. This  *constant*  was added in vSphere API 6.7.

package Com::Vmware::Cis::Task::Status;

use constant {
    PENDING =>  'PENDING',
    RUNNING =>  'RUNNING',
    BLOCKED =>  'BLOCKED',
    SUCCEEDED =>  'SUCCEEDED',
    FAILED =>  'FAILED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Task::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.cis.task.status',
                           'binding_class' => 'Com::Vmware::Cis::Task::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

