## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::BackupSchedule
#
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::BackupSchedule``
#     *class*  contains fields to be specified for creating a new schedule. The structure
#     includes parts, location information, encryption password and enable flag.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::BackupSchedule;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::BackupSchedule structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{parts} = $args{'parts'};
   $self->{backup_password} = $args{'backup_password'};
   $self->{location} = $args{'location'};
   $self->{location_user} = $args{'location_user'};
   $self->{location_password} = $args{'location_password'};
   $self->{enable} = $args{'enable'};
   $self->{recurrence_info} = $args{'recurrence_info'};
   $self->{retention_info} = $args{'retention_info'};
   $self->{schedule_id} = $args{'schedule_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::BackupSchedule');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.backup_schedule');
   $self->set_binding_field('key' => 'parts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'backup_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'location_user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'enable', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'recurrence_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'RecurrenceInfo')));
   $self->set_binding_field('key' => 'retention_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'RetentionInfo')));
   $self->set_binding_field('key' => 'schedule_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_parts ()
# Gets the value of 'parts' property.
#
# @retval parts - The current value of the field.
# List of optional parts to be backed up. Use the null  *method*  to get information
#     about the supported parts.
#
# Optional#
sub get_parts {
   my ($self, %args) = @_;
   return $self->{'parts'}; 	
}

## @method set_parts ()
# Sets the given value for 'parts' property.
# 
# @param parts  - New value for the field.
# List of optional parts to be backed up. Use the null  *method*  to get information
#     about the supported parts.
#
sub set_parts {
   my ($self, %args) = @_;
   $self->{'parts'} = $args{'parts'}; 
   return;	
}

## @method get_backup_password ()
# Gets the value of 'backup_password' property.
#
# @retval backup_password - The current value of the field.
# Password for a backup piece. The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space).
#
# Optional#
sub get_backup_password {
   my ($self, %args) = @_;
   return $self->{'backup_password'}; 	
}

## @method set_backup_password ()
# Sets the given value for 'backup_password' property.
# 
# @param backup_password  - New value for the field.
# Password for a backup piece. The backupPassword must adhere to the following password
#     requirements: At least 8 characters, cannot be more than 20 characters in length. At
#     least 1 uppercase letter. At least 1 lowercase letter. At least 1 numeric digit. At
#     least 1 special character (i.e. any character not in [0-9,a-z,A-Z]). Only visible
#     ASCII characters (for example, no space).
#
sub set_backup_password {
   my ($self, %args) = @_;
   $self->{'backup_password'} = $args{'backup_password'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# URL of the backup location.
#
# URI#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# URL of the backup location.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_location_user ()
# Gets the value of 'location_user' property.
#
# @retval location_user - The current value of the field.
# Username for the given location.
#
# Optional#
sub get_location_user {
   my ($self, %args) = @_;
   return $self->{'location_user'}; 	
}

## @method set_location_user ()
# Sets the given value for 'location_user' property.
# 
# @param location_user  - New value for the field.
# Username for the given location.
#
sub set_location_user {
   my ($self, %args) = @_;
   $self->{'location_user'} = $args{'location_user'}; 
   return;	
}

## @method get_location_password ()
# Gets the value of 'location_password' property.
#
# @retval location_password - The current value of the field.
# Password for the given location.
#
# Optional#
sub get_location_password {
   my ($self, %args) = @_;
   return $self->{'location_password'}; 	
}

## @method set_location_password ()
# Sets the given value for 'location_password' property.
# 
# @param location_password  - New value for the field.
# Password for the given location.
#
sub set_location_password {
   my ($self, %args) = @_;
   $self->{'location_password'} = $args{'location_password'}; 
   return;	
}

## @method get_enable ()
# Gets the value of 'enable' property.
#
# @retval enable - The current value of the field.
# Enable or disable a schedule.
#
# Optional#
sub get_enable {
   my ($self, %args) = @_;
   return $self->{'enable'}; 	
}

## @method set_enable ()
# Sets the given value for 'enable' property.
# 
# @param enable  - New value for the field.
# Enable or disable a schedule.
#
sub set_enable {
   my ($self, %args) = @_;
   $self->{'enable'} = $args{'enable'}; 
   return;	
}

## @method get_recurrence_info ()
# Gets the value of 'recurrence_info' property.
#
# @retval recurrence_info - The current value of the field.
# Recurrence information for the schedule.
#
# Optional#
sub get_recurrence_info {
   my ($self, %args) = @_;
   return $self->{'recurrence_info'}; 	
}

## @method set_recurrence_info ()
# Sets the given value for 'recurrence_info' property.
# 
# @param recurrence_info  - New value for the field.
# Recurrence information for the schedule.
#
sub set_recurrence_info {
   my ($self, %args) = @_;
   $self->{'recurrence_info'} = $args{'recurrence_info'}; 
   return;	
}

## @method get_retention_info ()
# Gets the value of 'retention_info' property.
#
# @retval retention_info - The current value of the field.
# Retention information for the schedule.
#
# Optional#
sub get_retention_info {
   my ($self, %args) = @_;
   return $self->{'retention_info'}; 	
}

## @method set_retention_info ()
# Sets the given value for 'retention_info' property.
# 
# @param retention_info  - New value for the field.
# Retention information for the schedule.
#
sub set_retention_info {
   my ($self, %args) = @_;
   $self->{'retention_info'} = $args{'retention_info'}; 
   return;	
}

## @method get_schedule_id ()
# Gets the value of 'schedule_id' property.
#
# @retval schedule_id - The current value of the field.
# Identifier of the schedule.
#
# String#
sub get_schedule_id {
   my ($self, %args) = @_;
   return $self->{'schedule_id'}; 	
}

## @method set_schedule_id ()
# Sets the given value for 'schedule_id' property.
# 
# @param schedule_id  - New value for the field.
# Identifier of the schedule.
#
sub set_schedule_id {
   my ($self, %args) = @_;
   $self->{'schedule_id'} = $args{'schedule_id'}; 
   return;	
}


1;


