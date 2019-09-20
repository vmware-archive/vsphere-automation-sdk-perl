## @class Com::Vmware::Vcenter::Lcm::MigrationAssistant
#
#
# Configuration of the migration assistant to be uploaded and started on source Windows
#     VC.

package Com::Vmware::Vcenter::Lcm::MigrationAssistant;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::MigrationAssistant structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{source_location} = $args{'source_location'};
   $self->{settings} = $args{'settings'};
   $self->{guest_credentials} = $args{'guest_credentials'};
   $self->{migration_assistant_installer_location} = $args{'migration_assistant_installer_location'};
   $self->{migration_assistant_installer_location_ssl_verify} = $args{'migration_assistant_installer_location_ssl_verify'};
   $self->{migration_assistant_installer_location_ssl_thumbprint} = $args{'migration_assistant_installer_location_ssl_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::MigrationAssistant');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.migration_assistant');
   $self->set_binding_field('key' => 'source_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Connection'));
   $self->set_binding_field('key' => 'settings', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'MigrationAssistantSetting'));
   $self->set_binding_field('key' => 'guest_credentials', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'GuestCredential'));
   $self->set_binding_field('key' => 'migration_assistant_installer_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'migration_assistant_installer_location_ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'migration_assistant_installer_location_ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_source_location ()
# Gets the value of 'source_location' property.
#
# @retval source_location - The current value of the field.
# The configuration to connect to an ESX/VC.
#
# Connection#
sub get_source_location {
   my ($self, %args) = @_;
   return $self->{'source_location'}; 	
}

## @method set_source_location ()
# Sets the given value for 'source_location' property.
# 
# @param source_location  - New value for the field.
# The configuration to connect to an ESX/VC.
#
sub set_source_location {
   my ($self, %args) = @_;
   $self->{'source_location'} = $args{'source_location'}; 
   return;	
}

## @method get_settings ()
# Gets the value of 'settings' property.
#
# @retval settings - The current value of the field.
# Spec to automatically launch the Migration Assistant.
#
# MigrationAssistantSetting#
sub get_settings {
   my ($self, %args) = @_;
   return $self->{'settings'}; 	
}

## @method set_settings ()
# Sets the given value for 'settings' property.
# 
# @param settings  - New value for the field.
# Spec to automatically launch the Migration Assistant.
#
sub set_settings {
   my ($self, %args) = @_;
   $self->{'settings'} = $args{'settings'}; 
   return;	
}

## @method get_guest_credentials ()
# Gets the value of 'guest_credentials' property.
#
# @retval guest_credentials - The current value of the field.
# Credentials for the Windows system on which the vCenter server is running.
#
# GuestCredential#
sub get_guest_credentials {
   my ($self, %args) = @_;
   return $self->{'guest_credentials'}; 	
}

## @method set_guest_credentials ()
# Sets the given value for 'guest_credentials' property.
# 
# @param guest_credentials  - New value for the field.
# Credentials for the Windows system on which the vCenter server is running.
#
sub set_guest_credentials {
   my ($self, %args) = @_;
   $self->{'guest_credentials'} = $args{'guest_credentials'}; 
   return;	
}

## @method get_migration_assistant_installer_location ()
# Gets the value of 'migration_assistant_installer_location' property.
#
# @retval migration_assistant_installer_location - The current value of the field.
# Installer location of the migration assistant to be uploaded.
#
# Optional#
sub get_migration_assistant_installer_location {
   my ($self, %args) = @_;
   return $self->{'migration_assistant_installer_location'}; 	
}

## @method set_migration_assistant_installer_location ()
# Sets the given value for 'migration_assistant_installer_location' property.
# 
# @param migration_assistant_installer_location  - New value for the field.
# Installer location of the migration assistant to be uploaded.
#
sub set_migration_assistant_installer_location {
   my ($self, %args) = @_;
   $self->{'migration_assistant_installer_location'} = $args{'migration_assistant_installer_location'}; 
   return;	
}

## @method get_migration_assistant_installer_location_ssl_verify ()
# Gets the value of 'migration_assistant_installer_location_ssl_verify' property.
#
# @retval migration_assistant_installer_location_ssl_verify - The current value of the
#     field.
# A flag to indicate whether to verify ssl connection.
#
# Optional#
sub get_migration_assistant_installer_location_ssl_verify {
   my ($self, %args) = @_;
   return $self->{'migration_assistant_installer_location_ssl_verify'}; 	
}

## @method set_migration_assistant_installer_location_ssl_verify ()
# Sets the given value for 'migration_assistant_installer_location_ssl_verify' property.
# 
# @param migration_assistant_installer_location_ssl_verify  - New value for the field.
# A flag to indicate whether to verify ssl connection.
#
sub set_migration_assistant_installer_location_ssl_verify {
   my ($self, %args) = @_;
   $self->{'migration_assistant_installer_location_ssl_verify'} = $args{'migration_assistant_installer_location_ssl_verify'}; 
   return;	
}

## @method get_migration_assistant_installer_location_ssl_thumbprint ()
# Gets the value of 'migration_assistant_installer_location_ssl_thumbprint' property.
#
# @retval migration_assistant_installer_location_ssl_thumbprint - The current value of
#     the field.
# SSL thumbprint of the source appliance.
#
# Optional#
sub get_migration_assistant_installer_location_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'migration_assistant_installer_location_ssl_thumbprint'}; 	
}

## @method set_migration_assistant_installer_location_ssl_thumbprint ()
# Sets the given value for 'migration_assistant_installer_location_ssl_thumbprint' property.
# 
# @param migration_assistant_installer_location_ssl_thumbprint  - New value for the
#     field.
# SSL thumbprint of the source appliance.
#
sub set_migration_assistant_installer_location_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'migration_assistant_installer_location_ssl_thumbprint'} = $args{'migration_assistant_installer_location_ssl_thumbprint'}; 
   return;	
}


1;


