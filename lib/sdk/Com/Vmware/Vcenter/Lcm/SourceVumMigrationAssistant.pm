## @class Com::Vmware::Vcenter::Lcm::SourceVumMigrationAssistant
#
#
# Configuration of migration assistant to be deployed to the vSphere Upgrade Manager.

package Com::Vmware::Vcenter::Lcm::SourceVumMigrationAssistant;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::SourceVumMigrationAssistant structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{installer_location} = $args{'installer_location'};
   $self->{installer_location_ssl_verify} = $args{'installer_location_ssl_verify'};
   $self->{installer_location_ssl_thumbprint} = $args{'installer_location_ssl_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::SourceVumMigrationAssistant');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.source_vum_migration_assistant');
   $self->set_binding_field('key' => 'installer_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'installer_location_ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'installer_location_ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_installer_location ()
# Gets the value of 'installer_location' property.
#
# @retval installer_location - The current value of the field.
# Location of the installer of migration assistant to be uploaded to the source vSphere
#     Update Manager.
#
# Optional#
sub get_installer_location {
   my ($self, %args) = @_;
   return $self->{'installer_location'}; 	
}

## @method set_installer_location ()
# Sets the given value for 'installer_location' property.
# 
# @param installer_location  - New value for the field.
# Location of the installer of migration assistant to be uploaded to the source vSphere
#     Update Manager.
#
sub set_installer_location {
   my ($self, %args) = @_;
   $self->{'installer_location'} = $args{'installer_location'}; 
   return;	
}

## @method get_installer_location_ssl_verify ()
# Gets the value of 'installer_location_ssl_verify' property.
#
# @retval installer_location_ssl_verify - The current value of the field.
# A flag to indicate whether to verify ssl connection of the location of the installer
#     of migration assistant.
#
# Optional#
sub get_installer_location_ssl_verify {
   my ($self, %args) = @_;
   return $self->{'installer_location_ssl_verify'}; 	
}

## @method set_installer_location_ssl_verify ()
# Sets the given value for 'installer_location_ssl_verify' property.
# 
# @param installer_location_ssl_verify  - New value for the field.
# A flag to indicate whether to verify ssl connection of the location of the installer
#     of migration assistant.
#
sub set_installer_location_ssl_verify {
   my ($self, %args) = @_;
   $self->{'installer_location_ssl_verify'} = $args{'installer_location_ssl_verify'}; 
   return;	
}

## @method get_installer_location_ssl_thumbprint ()
# Gets the value of 'installer_location_ssl_thumbprint' property.
#
# @retval installer_location_ssl_thumbprint - The current value of the field.
# SSL thumbprint of the location of the installer of migration assistant.
#
# Optional#
sub get_installer_location_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'installer_location_ssl_thumbprint'}; 	
}

## @method set_installer_location_ssl_thumbprint ()
# Sets the given value for 'installer_location_ssl_thumbprint' property.
# 
# @param installer_location_ssl_thumbprint  - New value for the field.
# SSL thumbprint of the location of the installer of migration assistant.
#
sub set_installer_location_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'installer_location_ssl_thumbprint'} = $args{'installer_location_ssl_thumbprint'}; 
   return;	
}


1;


