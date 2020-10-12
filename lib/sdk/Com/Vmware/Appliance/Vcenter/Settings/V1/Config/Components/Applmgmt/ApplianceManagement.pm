## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceManagement
#
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceManagement``
#     *class*  This structure contains the Spec required for Appliance Management
#     configurations.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceManagement;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceManagement structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{software_update_policy} = $args{'software_update_policy'};
   $self->{backup_schedules} = $args{'backup_schedules'};
   $self->{ssh} = $args{'ssh'};
   $self->{dcui} = $args{'dcui'};
   $self->{console_cli} = $args{'console_cli'};
   $self->{shell} = $args{'shell'};
   $self->{time_zone} = $args{'time_zone'};
   $self->{time_sync} = $args{'time_sync'};
   $self->{ntp} = $args{'ntp'};
   $self->{syslog} = $args{'syslog'};
   $self->{local_accounts_policy} = $args{'local_accounts_policy'};
   $self->{root_local_account} = $args{'root_local_account'};
   $self->{smtp} = $args{'smtp'};
   $self->{network} = $args{'network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ApplianceManagement');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.appliance_management');
   $self->set_binding_field('key' => 'software_update_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'SoftwareUpdatePolicy')));
   $self->set_binding_field('key' => 'backup_schedules', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'BackupSchedule'))));
   $self->set_binding_field('key' => 'ssh', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Ssh'));
   $self->set_binding_field('key' => 'dcui', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Dcui'));
   $self->set_binding_field('key' => 'console_cli', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Consolecli'));
   $self->set_binding_field('key' => 'shell', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Shell'));
   $self->set_binding_field('key' => 'time_zone', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Timezone')));
   $self->set_binding_field('key' => 'time_sync', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Timesync')));
   $self->set_binding_field('key' => 'ntp', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Ntp')));
   $self->set_binding_field('key' => 'syslog', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'LogForwarding'))));
   $self->set_binding_field('key' => 'local_accounts_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'LocalAccountsPolicy')));
   $self->set_binding_field('key' => 'root_local_account', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'LocalAccounts')));
   $self->set_binding_field('key' => 'smtp', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'Smtp')));
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'ApplianceNetwork')));
   bless $self, $class;
   return $self;
}

## @method get_software_update_policy ()
# Gets the value of 'software_update_policy' property.
#
# @retval software_update_policy - The current value of the field.
# Policy to update vCenter.
#
# Optional#
sub get_software_update_policy {
   my ($self, %args) = @_;
   return $self->{'software_update_policy'}; 	
}

## @method set_software_update_policy ()
# Sets the given value for 'software_update_policy' property.
# 
# @param software_update_policy  - New value for the field.
# Policy to update vCenter.
#
sub set_software_update_policy {
   my ($self, %args) = @_;
   $self->{'software_update_policy'} = $args{'software_update_policy'}; 
   return;	
}

## @method get_backup_schedules ()
# Gets the value of 'backup_schedules' property.
#
# @retval backup_schedules - The current value of the field.
# Backup schedule of vCenter.
#
# Optional#
sub get_backup_schedules {
   my ($self, %args) = @_;
   return $self->{'backup_schedules'}; 	
}

## @method set_backup_schedules ()
# Sets the given value for 'backup_schedules' property.
# 
# @param backup_schedules  - New value for the field.
# Backup schedule of vCenter.
#
sub set_backup_schedules {
   my ($self, %args) = @_;
   $self->{'backup_schedules'} = $args{'backup_schedules'}; 
   return;	
}

## @method get_ssh ()
# Gets the value of 'ssh' property.
#
# @retval ssh - The current value of the field.
# Get/Set enabled state of SSH-based controlled CLI. 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Ssh``  
#     *interface*  provides  *methods* 
#
# Ssh#
sub get_ssh {
   my ($self, %args) = @_;
   return $self->{'ssh'}; 	
}

## @method set_ssh ()
# Sets the given value for 'ssh' property.
# 
# @param ssh  - New value for the field.
# Get/Set enabled state of SSH-based controlled CLI. 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Ssh``  
#     *interface*  provides  *methods* 
#
sub set_ssh {
   my ($self, %args) = @_;
   $self->{'ssh'} = $args{'ssh'}; 
   return;	
}

## @method get_dcui ()
# Gets the value of 'dcui' property.
#
# @retval dcui - The current value of the field.
# Get/Set enabled of Direct Console User Interface (DCUI TTY2). 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Dcui`` 
#      *interface*  provides  *methods* 
#
# Dcui#
sub get_dcui {
   my ($self, %args) = @_;
   return $self->{'dcui'}; 	
}

## @method set_dcui ()
# Sets the given value for 'dcui' property.
# 
# @param dcui  - New value for the field.
# Get/Set enabled of Direct Console User Interface (DCUI TTY2). 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Dcui`` 
#      *interface*  provides  *methods* 
#
sub set_dcui {
   my ($self, %args) = @_;
   $self->{'dcui'} = $args{'dcui'}; 
   return;	
}

## @method get_console_cli ()
# Gets the value of 'console_cli' property.
#
# @retval console_cli - The current value of the field.
# Get/Set enabled state of the console-based controlled CLI. 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Consolecli``
#       *interface*  provides  *methods* 
#
# Consolecli#
sub get_console_cli {
   my ($self, %args) = @_;
   return $self->{'console_cli'}; 	
}

## @method set_console_cli ()
# Sets the given value for 'console_cli' property.
# 
# @param console_cli  - New value for the field.
# Get/Set enabled state of the console-based controlled CLI. 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Consolecli``
#       *interface*  provides  *methods* 
#
sub set_console_cli {
   my ($self, %args) = @_;
   $self->{'console_cli'} = $args{'console_cli'}; 
   return;	
}

## @method get_shell ()
# Gets the value of 'shell' property.
#
# @retval shell - The current value of the field.
# Get/Set enabled state of BASH. 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Shell``
#       *interface*  provides  *methods* 
#
# Shell#
sub get_shell {
   my ($self, %args) = @_;
   return $self->{'shell'}; 	
}

## @method set_shell ()
# Sets the given value for 'shell' property.
# 
# @param shell  - New value for the field.
# Get/Set enabled state of BASH. 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Shell``
#       *interface*  provides  *methods* 
#
sub set_shell {
   my ($self, %args) = @_;
   $self->{'shell'} = $args{'shell'}; 
   return;	
}

## @method get_time_zone ()
# Gets the value of 'time_zone' property.
#
# @retval time_zone - The current value of the field.
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Timezone``
#       *interface*  provides  *methods*  to get and set the appliance timezone.
#
# Optional#
sub get_time_zone {
   my ($self, %args) = @_;
   return $self->{'time_zone'}; 	
}

## @method set_time_zone ()
# Sets the given value for 'time_zone' property.
# 
# @param time_zone  - New value for the field.
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Timezone``
#       *interface*  provides  *methods*  to get and set the appliance timezone.
#
sub set_time_zone {
   my ($self, %args) = @_;
   $self->{'time_zone'} = $args{'time_zone'}; 
   return;	
}

## @method get_time_sync ()
# Gets the value of 'time_sync' property.
#
# @retval time_sync - The current value of the field.
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Timesync``
#       *interface*  provides  *methods*  Performs time synchronization configuration.
#
# Optional#
sub get_time_sync {
   my ($self, %args) = @_;
   return $self->{'time_sync'}; 	
}

## @method set_time_sync ()
# Sets the given value for 'time_sync' property.
# 
# @param time_sync  - New value for the field.
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Timesync``
#       *interface*  provides  *methods*  Performs time synchronization configuration.
#
sub set_time_sync {
   my ($self, %args) = @_;
   $self->{'time_sync'} = $args{'time_sync'}; 
   return;	
}

## @method get_ntp ()
# Gets the value of 'ntp' property.
#
# @retval ntp - The current value of the field.
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Ntp``  
#     *interface*  provides  *methods*  Gets NTP configuration status and tests connection
#     to ntp servers.
#
# Optional#
sub get_ntp {
   my ($self, %args) = @_;
   return $self->{'ntp'}; 	
}

## @method set_ntp ()
# Sets the given value for 'ntp' property.
# 
# @param ntp  - New value for the field.
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Ntp``  
#     *interface*  provides  *methods*  Gets NTP configuration status and tests connection
#     to ntp servers.
#
sub set_ntp {
   my ($self, %args) = @_;
   $self->{'ntp'} = $args{'ntp'}; 
   return;	
}

## @method get_syslog ()
# Gets the value of 'syslog' property.
#
# @retval syslog - The current value of the field.
# The  ``syslog``   *interface*  provides  *methods*  to manage forwarding of log
#     messages to remote logging servers.
#
# Optional#
sub get_syslog {
   my ($self, %args) = @_;
   return $self->{'syslog'}; 	
}

## @method set_syslog ()
# Sets the given value for 'syslog' property.
# 
# @param syslog  - New value for the field.
# The  ``syslog``   *interface*  provides  *methods*  to manage forwarding of log
#     messages to remote logging servers.
#
sub set_syslog {
   my ($self, %args) = @_;
   $self->{'syslog'} = $args{'syslog'}; 
   return;	
}

## @method get_local_accounts_policy ()
# Gets the value of 'local_accounts_policy' property.
#
# @retval local_accounts_policy - The current value of the field.
# The  ``localAccountsPolicy``   *interface*  provides  *methods*  to manage local user
#     accounts.
#
# Optional#
sub get_local_accounts_policy {
   my ($self, %args) = @_;
   return $self->{'local_accounts_policy'}; 	
}

## @method set_local_accounts_policy ()
# Sets the given value for 'local_accounts_policy' property.
# 
# @param local_accounts_policy  - New value for the field.
# The  ``localAccountsPolicy``   *interface*  provides  *methods*  to manage local user
#     accounts.
#
sub set_local_accounts_policy {
   my ($self, %args) = @_;
   $self->{'local_accounts_policy'} = $args{'local_accounts_policy'}; 
   return;	
}

## @method get_root_local_account ()
# Gets the value of 'root_local_account' property.
#
# @retval root_local_account - The current value of the field.
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccounts``
#       *interface*  provides  *methods*  to manage local user account.
#
# Optional#
sub get_root_local_account {
   my ($self, %args) = @_;
   return $self->{'root_local_account'}; 	
}

## @method set_root_local_account ()
# Sets the given value for 'root_local_account' property.
# 
# @param root_local_account  - New value for the field.
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccounts``
#       *interface*  provides  *methods*  to manage local user account.
#
sub set_root_local_account {
   my ($self, %args) = @_;
   $self->{'root_local_account'} = $args{'root_local_account'}; 
   return;	
}

## @method get_smtp ()
# Gets the value of 'smtp' property.
#
# @retval smtp - The current value of the field.
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccounts``
#       *interface*  provides  *methods*  to manage local user account.
#
# Optional#
sub get_smtp {
   my ($self, %args) = @_;
   return $self->{'smtp'}; 	
}

## @method set_smtp ()
# Sets the given value for 'smtp' property.
# 
# @param smtp  - New value for the field.
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LocalAccounts``
#       *interface*  provides  *methods*  to manage local user account.
#
sub set_smtp {
   my ($self, %args) = @_;
   $self->{'smtp'} = $args{'smtp'}; 
   return;	
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Network configurations to be applied.
#
# Optional#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# Network configurations to be applied.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}


1;


