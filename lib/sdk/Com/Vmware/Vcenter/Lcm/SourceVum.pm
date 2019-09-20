## @class Com::Vmware::Vcenter::Lcm::SourceVum
#
#
# Configuration of the source VUM.

package Com::Vmware::Vcenter::Lcm::SourceVum;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::SourceVum structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{os_username} = $args{'os_username'};
   $self->{os_password} = $args{'os_password'};
   $self->{export_dir} = $args{'export_dir'};
   $self->{port} = $args{'port'};
   $self->{start_migration_assistant} = $args{'start_migration_assistant'};
   $self->{existing_migration_assistant} = $args{'existing_migration_assistant'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::SourceVum');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.source_vum');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'os_username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'os_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'export_dir', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'start_migration_assistant', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'SourceVumMigrationAssistant')));
   $self->set_binding_field('key' => 'existing_migration_assistant', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'ExistingMigrationAssistant')));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# IP address or fully qualified domain name (FQDN) of the vSphere Update Manager host.
#     If an FQDN is provided, it has to be resolvable from the machine that is running the
#     installer.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# IP address or fully qualified domain name (FQDN) of the vSphere Update Manager host.
#     If an FQDN is provided, it has to be resolvable from the machine that is running the
#     installer.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_os_username ()
# Gets the value of 'os_username' property.
#
# @retval os_username - The current value of the field.
# Administrator username for the source vSphere Update Manager Windows operating system.
#
# String#
sub get_os_username {
   my ($self, %args) = @_;
   return $self->{'os_username'}; 	
}

## @method set_os_username ()
# Sets the given value for 'os_username' property.
# 
# @param os_username  - New value for the field.
# Administrator username for the source vSphere Update Manager Windows operating system.
#
sub set_os_username {
   my ($self, %args) = @_;
   $self->{'os_username'} = $args{'os_username'}; 
   return;	
}

## @method get_os_password ()
# Gets the value of 'os_password' property.
#
# @retval os_password - The current value of the field.
# Administrator user password for the source vSphere Update Manager Windows operating
#     system.
#
# Secret#
sub get_os_password {
   my ($self, %args) = @_;
   return $self->{'os_password'}; 	
}

## @method set_os_password ()
# Sets the given value for 'os_password' property.
# 
# @param os_password  - New value for the field.
# Administrator user password for the source vSphere Update Manager Windows operating
#     system.
#
sub set_os_password {
   my ($self, %args) = @_;
   $self->{'os_password'} = $args{'os_password'}; 
   return;	
}

## @method get_export_dir ()
# Gets the value of 'export_dir' property.
#
# @retval export_dir - The current value of the field.
# Directory to export source configuration and data.
#
# Optional#
sub get_export_dir {
   my ($self, %args) = @_;
   return $self->{'export_dir'}; 	
}

## @method set_export_dir ()
# Sets the given value for 'export_dir' property.
# 
# @param export_dir  - New value for the field.
# Directory to export source configuration and data.
#
sub set_export_dir {
   my ($self, %args) = @_;
   $self->{'export_dir'} = $args{'export_dir'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# The port of the source vum.
#
# Optional#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# The port of the source vum.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_start_migration_assistant ()
# Gets the value of 'start_migration_assistant' property.
#
# @retval start_migration_assistant - The current value of the field.
# Configuration of migration assistant to be deployed to the vSphere Upgrade Manager.
#
# Optional#
sub get_start_migration_assistant {
   my ($self, %args) = @_;
   return $self->{'start_migration_assistant'}; 	
}

## @method set_start_migration_assistant ()
# Sets the given value for 'start_migration_assistant' property.
# 
# @param start_migration_assistant  - New value for the field.
# Configuration of migration assistant to be deployed to the vSphere Upgrade Manager.
#
sub set_start_migration_assistant {
   my ($self, %args) = @_;
   $self->{'start_migration_assistant'} = $args{'start_migration_assistant'}; 
   return;	
}

## @method get_existing_migration_assistant ()
# Gets the value of 'existing_migration_assistant' property.
#
# @retval existing_migration_assistant - The current value of the field.
# Configuration of migration assistant that are already running on the vSphere Upgrade
#     Manager.
#
# Optional#
sub get_existing_migration_assistant {
   my ($self, %args) = @_;
   return $self->{'existing_migration_assistant'}; 	
}

## @method set_existing_migration_assistant ()
# Sets the given value for 'existing_migration_assistant' property.
# 
# @param existing_migration_assistant  - New value for the field.
# Configuration of migration assistant that are already running on the vSphere Upgrade
#     Manager.
#
sub set_existing_migration_assistant {
   my ($self, %args) = @_;
   $self->{'existing_migration_assistant'} = $args{'existing_migration_assistant'}; 
   return;	
}


1;


