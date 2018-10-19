## @class Com::Vmware::Vcenter::Deployment::HistoryMigrationSpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::HistoryMigrationSpec``   *enumerated type* 
#     defines how vCenter history data will be migrated. vCenter History data includes <ul>
#  <li>Statistics</li>
#  <li>Events</li>
#  <li>Tasks</li>
#  </ul>. This  *class*  was added in vSphere API 6.7.

package Com::Vmware::Vcenter::Deployment::HistoryMigrationSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::HistoryMigrationSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{data_set} = $args{'data_set'};
   $self->{defer_import} = $args{'defer_import'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::HistoryMigrationSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.history_migration_spec');
   $self->set_binding_field('key' => 'data_set', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'HistoryMigrationOption'));
   $self->set_binding_field('key' => 'defer_import', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_data_set ()
# Gets the value of 'data_set' property.
#
# @retval data_set - The current value of the field.
# Defines what part of vCenter historical data will be migrated along with core data.
#     This  *field*  was added in vSphere API 6.7.
#
# HistoryMigrationOption#
sub get_data_set {
   my ($self, %args) = @_;
   return $self->{'data_set'}; 	
}

## @method set_data_set ()
# Sets the given value for 'data_set' property.
# 
# @param data_set  - New value for the field.
# Defines what part of vCenter historical data will be migrated along with core data.
#     This  *field*  was added in vSphere API 6.7.
#
sub set_data_set {
   my ($self, %args) = @_;
   $self->{'data_set'} = $args{'data_set'}; 
   return;	
}

## @method get_defer_import ()
# Gets the value of 'defer_import' property.
#
# @retval defer_import - The current value of the field.
# Defines how vCenter history will be migrated. If set to true, vCenter history will be
#     migrated separately after successful upgrade or migration, otherwise it will be
#     migrated along with core data during the upgrade or migration process. This  *field* 
#     was added in vSphere API 6.7.
#
# Optional#
sub get_defer_import {
   my ($self, %args) = @_;
   return $self->{'defer_import'}; 	
}

## @method set_defer_import ()
# Sets the given value for 'defer_import' property.
# 
# @param defer_import  - New value for the field.
# Defines how vCenter history will be migrated. If set to true, vCenter history will be
#     migrated separately after successful upgrade or migration, otherwise it will be
#     migrated along with core data during the upgrade or migration process. This  *field* 
#     was added in vSphere API 6.7.
#
sub set_defer_import {
   my ($self, %args) = @_;
   $self->{'defer_import'} = $args{'defer_import'}; 
   return;	
}


1;


