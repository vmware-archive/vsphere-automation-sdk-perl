## @class Com::Vmware::Vcenter::Deployment::DataMigrationInfo
#
#
# The  ``Com::Vmware::Vcenter::Deployment::DataMigrationInfo``  { *class*  contains the
#     disk space requirements and time estimates for the different choices available to
#     migrate the vCenter Server data. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Deployment::DataMigrationInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::DataMigrationInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{core} = $args{'core'};
   $self->{core_events_tasks} = $args{'core_events_tasks'};
   $self->{all} = $args{'all'};
   $self->{core_events_tasks_with_deferred} = $args{'core_events_tasks_with_deferred'};
   $self->{all_with_deferred} = $args{'all_with_deferred'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::DataMigrationInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.data_migration_info');
   $self->set_binding_field('key' => 'core', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'DataMigrationEstimate'));
   $self->set_binding_field('key' => 'core_events_tasks', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'DataMigrationEstimate'));
   $self->set_binding_field('key' => 'all', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'DataMigrationEstimate'));
   $self->set_binding_field('key' => 'core_events_tasks_with_deferred', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'DataMigrationEstimate')));
   $self->set_binding_field('key' => 'all_with_deferred', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'DataMigrationEstimate')));
   bless $self, $class;
   return $self;
}

## @method get_core ()
# Gets the value of 'core' property.
#
# @retval core - The current value of the field.
# Migrate only core data and configuration from vCenter Server. Events, tasks, and stats
#     will not be migrated. This  *field*  was added in vSphere API 7.0.0.0.
#
# DataMigrationEstimate#
sub get_core {
   my ($self, %args) = @_;
   return $self->{'core'}; 	
}

## @method set_core ()
# Sets the given value for 'core' property.
# 
# @param core  - New value for the field.
# Migrate only core data and configuration from vCenter Server. Events, tasks, and stats
#     will not be migrated. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_core {
   my ($self, %args) = @_;
   $self->{'core'} = $args{'core'}; 
   return;	
}

## @method get_core_events_tasks ()
# Gets the value of 'core_events_tasks' property.
#
# @retval core_events_tasks - The current value of the field.
# Migrate core, events, and tasks from vCenter Server. Stats will not be migrated. This 
#     *field*  was added in vSphere API 7.0.0.0.
#
# DataMigrationEstimate#
sub get_core_events_tasks {
   my ($self, %args) = @_;
   return $self->{'core_events_tasks'}; 	
}

## @method set_core_events_tasks ()
# Sets the given value for 'core_events_tasks' property.
# 
# @param core_events_tasks  - New value for the field.
# Migrate core, events, and tasks from vCenter Server. Stats will not be migrated. This 
#     *field*  was added in vSphere API 7.0.0.0.
#
sub set_core_events_tasks {
   my ($self, %args) = @_;
   $self->{'core_events_tasks'} = $args{'core_events_tasks'}; 
   return;	
}

## @method get_all ()
# Gets the value of 'all' property.
#
# @retval all - The current value of the field.
# Migrate all data from vCenter Server. This  *field*  was added in vSphere API 7.0.0.0.
#
# DataMigrationEstimate#
sub get_all {
   my ($self, %args) = @_;
   return $self->{'all'}; 	
}

## @method set_all ()
# Sets the given value for 'all' property.
# 
# @param all  - New value for the field.
# Migrate all data from vCenter Server. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_all {
   my ($self, %args) = @_;
   $self->{'all'} = $args{'all'}; 
   return;	
}

## @method get_core_events_tasks_with_deferred ()
# Gets the value of 'core_events_tasks_with_deferred' property.
#
# @retval core_events_tasks_with_deferred - The current value of the field.
# Migrate core, events, and tasks from vCenter Server. Events and tasks will be migrated
#     after the upgrade. Stats will not be migrated. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# Optional#
sub get_core_events_tasks_with_deferred {
   my ($self, %args) = @_;
   return $self->{'core_events_tasks_with_deferred'}; 	
}

## @method set_core_events_tasks_with_deferred ()
# Sets the given value for 'core_events_tasks_with_deferred' property.
# 
# @param core_events_tasks_with_deferred  - New value for the field.
# Migrate core, events, and tasks from vCenter Server. Events and tasks will be migrated
#     after the upgrade. Stats will not be migrated. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_core_events_tasks_with_deferred {
   my ($self, %args) = @_;
   $self->{'core_events_tasks_with_deferred'} = $args{'core_events_tasks_with_deferred'}; 
   return;	
}

## @method get_all_with_deferred ()
# Gets the value of 'all_with_deferred' property.
#
# @retval all_with_deferred - The current value of the field.
# Migrate all data from vCenter Server. Events, tasks, and stats will be migrated after
#     the upgrade. This  *field*  was added in vSphere API 7.0.0.0.
#
# Optional#
sub get_all_with_deferred {
   my ($self, %args) = @_;
   return $self->{'all_with_deferred'}; 	
}

## @method set_all_with_deferred ()
# Sets the given value for 'all_with_deferred' property.
# 
# @param all_with_deferred  - New value for the field.
# Migrate all data from vCenter Server. Events, tasks, and stats will be migrated after
#     the upgrade. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_all_with_deferred {
   my ($self, %args) = @_;
   $self->{'all_with_deferred'} = $args{'all_with_deferred'}; 
   return;	
}


1;


