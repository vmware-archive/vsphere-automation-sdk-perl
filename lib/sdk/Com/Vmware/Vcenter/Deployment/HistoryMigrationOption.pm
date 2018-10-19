## @class Com::Vmware::Vcenter::Deployment::HistoryMigrationOption
#
# The  ``Com::Vmware::Vcenter::Deployment::HistoryMigrationOption``   *enumerated type* 
#     defines the vCenter history migration option choices. This  *enumeration*  was added
#     in vSphere API 6.7.
#
#
#
# Constant Com::Vmware::Vcenter::Deployment::HistoryMigrationOption::EVENTS_TASKS #
#Only event data and task data will be migrated along with the core data. This  *constant* 
# was added in vSphere API 6.7.
#
# Constant Com::Vmware::Vcenter::Deployment::HistoryMigrationOption::ALL #
#All history data will be migrated along with the core data. This  *constant*  was added in
# vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::HistoryMigrationOption;

use constant {
    EVENTS_TASKS =>  'EVENTS_TASKS',
    ALL =>  'ALL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::HistoryMigrationOption enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.deployment.history_migration_option',
                           'binding_class' => 'Com::Vmware::Vcenter::Deployment::HistoryMigrationOption');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

