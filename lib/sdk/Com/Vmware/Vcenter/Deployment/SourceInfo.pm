## @class Com::Vmware::Vcenter::Deployment::SourceInfo
#
#
# The  ``Com::Vmware::Vcenter::Deployment::SourceInfo``  { *class*  contains the
#     information about the source vCenter Server and the database migration options. This 
#     *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Deployment::SourceInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::SourceInfo structure
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
   $self->{version} = $args{'version'};
   $self->{deployment_type} = $args{'deployment_type'};
   $self->{deployment_size} = $args{'deployment_size'};
   $self->{sso_domain_name} = $args{'sso_domain_name'};
   $self->{active_directory_domain} = $args{'active_directory_domain'};
   $self->{dns_servers} = $args{'dns_servers'};
   $self->{data_migration_info} = $args{'data_migration_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::SourceInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.source_info');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'deployment_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'ApplianceType'));
   $self->set_binding_field('key' => 'deployment_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'ApplianceSize'));
   $self->set_binding_field('key' => 'sso_domain_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'active_directory_domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'dns_servers', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'data_migration_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Deployment', 'type_name' => 'DataMigrationInfo')));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# The IP address or DNS resolvable name of the source vCenter Server. This  *field*  was
#     added in vSphere API 7.0.0.
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
# The IP address or DNS resolvable name of the source vCenter Server. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Source vCenter Server version. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Source vCenter Server version. This  *field*  was added in vSphere API 7.0.0.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_deployment_type ()
# Gets the value of 'deployment_type' property.
#
# @retval deployment_type - The current value of the field.
# Deployment type of the source vCenter Server. This  *field*  was added in vSphere API
#     7.0.0.
#
# ApplianceType#
sub get_deployment_type {
   my ($self, %args) = @_;
   return $self->{'deployment_type'}; 	
}

## @method set_deployment_type ()
# Sets the given value for 'deployment_type' property.
# 
# @param deployment_type  - New value for the field.
# Deployment type of the source vCenter Server. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_deployment_type {
   my ($self, %args) = @_;
   $self->{'deployment_type'} = $args{'deployment_type'}; 
   return;	
}

## @method get_deployment_size ()
# Gets the value of 'deployment_size' property.
#
# @retval deployment_size - The current value of the field.
# Deployment size of the source vCenter Server. This  *field*  was added in vSphere API
#     7.0.0.
#
# ApplianceSize#
sub get_deployment_size {
   my ($self, %args) = @_;
   return $self->{'deployment_size'}; 	
}

## @method set_deployment_size ()
# Sets the given value for 'deployment_size' property.
# 
# @param deployment_size  - New value for the field.
# Deployment size of the source vCenter Server. This  *field*  was added in vSphere API
#     7.0.0.
#
sub set_deployment_size {
   my ($self, %args) = @_;
   $self->{'deployment_size'} = $args{'deployment_size'}; 
   return;	
}

## @method get_sso_domain_name ()
# Gets the value of 'sso_domain_name' property.
#
# @retval sso_domain_name - The current value of the field.
# The SSO domain name of the source vCenter Server. This  *field*  was added in vSphere
#     API 7.0.0.
#
# String#
sub get_sso_domain_name {
   my ($self, %args) = @_;
   return $self->{'sso_domain_name'}; 	
}

## @method set_sso_domain_name ()
# Sets the given value for 'sso_domain_name' property.
# 
# @param sso_domain_name  - New value for the field.
# The SSO domain name of the source vCenter Server. This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_sso_domain_name {
   my ($self, %args) = @_;
   $self->{'sso_domain_name'} = $args{'sso_domain_name'}; 
   return;	
}

## @method get_active_directory_domain ()
# Gets the value of 'active_directory_domain' property.
#
# @retval active_directory_domain - The current value of the field.
# The domain name of the Active Directory server to which the source vCenter Server is
#     joined. This  *field*  was added in vSphere API 7.0.0.
#
# String#
sub get_active_directory_domain {
   my ($self, %args) = @_;
   return $self->{'active_directory_domain'}; 	
}

## @method set_active_directory_domain ()
# Sets the given value for 'active_directory_domain' property.
# 
# @param active_directory_domain  - New value for the field.
# The domain name of the Active Directory server to which the source vCenter Server is
#     joined. This  *field*  was added in vSphere API 7.0.0.
#
sub set_active_directory_domain {
   my ($self, %args) = @_;
   $self->{'active_directory_domain'} = $args{'active_directory_domain'}; 
   return;	
}

## @method get_dns_servers ()
# Gets the value of 'dns_servers' property.
#
# @retval dns_servers - The current value of the field.
# IP addresses of the DNS servers of the Active Directory server. This  *field*  was
#     added in vSphere API 7.0.0.
#
# List#
sub get_dns_servers {
   my ($self, %args) = @_;
   return $self->{'dns_servers'}; 	
}

## @method set_dns_servers ()
# Sets the given value for 'dns_servers' property.
# 
# @param dns_servers  - New value for the field.
# IP addresses of the DNS servers of the Active Directory server. This  *field*  was
#     added in vSphere API 7.0.0.
#
sub set_dns_servers {
   my ($self, %args) = @_;
   $self->{'dns_servers'} = $args{'dns_servers'}; 
   return;	
}

## @method get_data_migration_info ()
# Gets the value of 'data_migration_info' property.
#
# @retval data_migration_info - The current value of the field.
# Contains all the available migrate options, estimated export and import time and the
#     space required to migrate the data. This  *field*  was added in vSphere API 7.0.0.
#
# Optional#
sub get_data_migration_info {
   my ($self, %args) = @_;
   return $self->{'data_migration_info'}; 	
}

## @method set_data_migration_info ()
# Sets the given value for 'data_migration_info' property.
# 
# @param data_migration_info  - New value for the field.
# Contains all the available migrate options, estimated export and import time and the
#     space required to migrate the data. This  *field*  was added in vSphere API 7.0.0.
#
sub set_data_migration_info {
   my ($self, %args) = @_;
   $self->{'data_migration_info'} = $args{'data_migration_info'}; 
   return;	
}


1;


