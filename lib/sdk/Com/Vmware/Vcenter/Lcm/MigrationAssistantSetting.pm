## @class Com::Vmware::Vcenter::Lcm::MigrationAssistantSetting
#
#
# Configuration of the setting of migration assistant to be uploaded and started on
#     source Windows VC.

package Com::Vmware::Vcenter::Lcm::MigrationAssistantSetting;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::MigrationAssistantSetting structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{migrated_ip} = $args{'migrated_ip'};
   $self->{https_port} = $args{'https_port'};
   $self->{export_dir} = $args{'export_dir'};
   $self->{service_account_password} = $args{'service_account_password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::MigrationAssistantSetting');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.migration_assistant_setting');
   $self->set_binding_field('key' => 'migrated_ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'export_dir', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'service_account_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   bless $self, $class;
   return $self;
}

## @method get_migrated_ip ()
# Gets the value of 'migrated_ip' property.
#
# @retval migrated_ip - The current value of the field.
# The IP address of the network adapter that will be migrated. Only required if the
#     Windows vCenter Server has multiple network adapters, making its system name resolve
#     to multiple IP addresses.
#
# Optional#
sub get_migrated_ip {
   my ($self, %args) = @_;
   return $self->{'migrated_ip'}; 	
}

## @method set_migrated_ip ()
# Sets the given value for 'migrated_ip' property.
# 
# @param migrated_ip  - New value for the field.
# The IP address of the network adapter that will be migrated. Only required if the
#     Windows vCenter Server has multiple network adapters, making its system name resolve
#     to multiple IP addresses.
#
sub set_migrated_ip {
   my ($self, %args) = @_;
   $self->{'migrated_ip'} = $args{'migrated_ip'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# Migration Assistant port number shown in the Migration Assistant console. The default
#     port is 9123
#
# Optional#
sub get_https_port {
   my ($self, %args) = @_;
   return $self->{'https_port'}; 	
}

## @method set_https_port ()
# Sets the given value for 'https_port' property.
# 
# @param https_port  - New value for the field.
# Migration Assistant port number shown in the Migration Assistant console. The default
#     port is 9123
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}

## @method get_export_dir ()
# Gets the value of 'export_dir' property.
#
# @retval export_dir - The current value of the field.
# Directory to export source configuration and data. Optional.
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
# Directory to export source configuration and data. Optional.
#
sub set_export_dir {
   my ($self, %args) = @_;
   $self->{'export_dir'} = $args{'export_dir'}; 
   return;	
}

## @method get_service_account_password ()
# Gets the value of 'service_account_password' property.
#
# @retval service_account_password - The current value of the field.
# The password of the vCenter Server service account. Required only if the vCenter
#     Server service is running under a non LocalSystem account.
#
# Optional#
sub get_service_account_password {
   my ($self, %args) = @_;
   return $self->{'service_account_password'}; 	
}

## @method set_service_account_password ()
# Sets the given value for 'service_account_password' property.
# 
# @param service_account_password  - New value for the field.
# The password of the vCenter Server service account. Required only if the vCenter
#     Server service is running under a non LocalSystem account.
#
sub set_service_account_password {
   my ($self, %args) = @_;
   $self->{'service_account_password'} = $args{'service_account_password'}; 
   return;	
}


1;


