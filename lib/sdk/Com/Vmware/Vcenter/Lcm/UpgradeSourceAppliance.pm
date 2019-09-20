## @class Com::Vmware::Vcenter::Lcm::UpgradeSourceAppliance
#
#
# Configuration of the source appliance to be upgraded/migrated.

package Com::Vmware::Vcenter::Lcm::UpgradeSourceAppliance;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::UpgradeSourceAppliance structure
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
   $self->{sso_admin_username} = $args{'sso_admin_username'};
   $self->{sso_admin_password} = $args{'sso_admin_password'};
   $self->{root_password} = $args{'root_password'};
   $self->{https_port} = $args{'https_port'};
   $self->{ssl_verify} = $args{'ssl_verify'};
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};
   $self->{export_dir} = $args{'export_dir'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::UpgradeSourceAppliance');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.upgrade_source_appliance');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sso_admin_username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'sso_admin_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'root_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'export_dir', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# The IP address or fully qualified domain name (FQDN) of the vCenter Server instance.
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
# The IP address or fully qualified domain name (FQDN) of the vCenter Server instance.
#     If an FQDN is provided, it has to be resolvable from the machine that is running the
#     installer.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_sso_admin_username ()
# Gets the value of 'sso_admin_username' property.
#
# @retval sso_admin_username - The current value of the field.
# vCenter Single Sign-On administrator user name of the source appliance.
#
# String#
sub get_sso_admin_username {
   my ($self, %args) = @_;
   return $self->{'sso_admin_username'}; 	
}

## @method set_sso_admin_username ()
# Sets the given value for 'sso_admin_username' property.
# 
# @param sso_admin_username  - New value for the field.
# vCenter Single Sign-On administrator user name of the source appliance.
#
sub set_sso_admin_username {
   my ($self, %args) = @_;
   $self->{'sso_admin_username'} = $args{'sso_admin_username'}; 
   return;	
}

## @method get_sso_admin_password ()
# Gets the value of 'sso_admin_password' property.
#
# @retval sso_admin_password - The current value of the field.
# vCenter Single Sign-On administrator password of the source appliance.
#
# Secret#
sub get_sso_admin_password {
   my ($self, %args) = @_;
   return $self->{'sso_admin_password'}; 	
}

## @method set_sso_admin_password ()
# Sets the given value for 'sso_admin_password' property.
# 
# @param sso_admin_password  - New value for the field.
# vCenter Single Sign-On administrator password of the source appliance.
#
sub set_sso_admin_password {
   my ($self, %args) = @_;
   $self->{'sso_admin_password'} = $args{'sso_admin_password'}; 
   return;	
}

## @method get_root_password ()
# Gets the value of 'root_password' property.
#
# @retval root_password - The current value of the field.
# Password of the operating system root user of the appliance.
#
# Secret#
sub get_root_password {
   my ($self, %args) = @_;
   return $self->{'root_password'}; 	
}

## @method set_root_password ()
# Sets the given value for 'root_password' property.
# 
# @param root_password  - New value for the field.
# Password of the operating system root user of the appliance.
#
sub set_root_password {
   my ($self, %args) = @_;
   $self->{'root_password'} = $args{'root_password'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# The HTTPS port number to connect to the source appliance.
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
# The HTTPS port number to connect to the source appliance.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}

## @method get_ssl_verify ()
# Gets the value of 'ssl_verify' property.
#
# @retval ssl_verify - The current value of the field.

#
# Optional#
sub get_ssl_verify {
   my ($self, %args) = @_;
   return $self->{'ssl_verify'}; 	
}

## @method set_ssl_verify ()
# Sets the given value for 'ssl_verify' property.
# 
# @param ssl_verify  - New value for the field.

#
sub set_ssl_verify {
   my ($self, %args) = @_;
   $self->{'ssl_verify'} = $args{'ssl_verify'}; 
   return;	
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.

#
# Optional#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.

#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}

## @method get_export_dir ()
# Gets the value of 'export_dir' property.
#
# @retval export_dir - The current value of the field.
# Export directory of the source appliance.
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
# Export directory of the source appliance.
#
sub set_export_dir {
   my ($self, %args) = @_;
   $self->{'export_dir'} = $args{'export_dir'}; 
   return;	
}


1;


