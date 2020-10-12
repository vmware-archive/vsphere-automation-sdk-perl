## @class Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectorySpec
#
#
# The  ``Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectorySpec``   *class* 
#     contains information used to join the migrated vCenter Server appliance to the Active
#     Directory. This  *class*  was added in vSphere API 7.0.0.0.

package Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectorySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectorySpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{domain} = $args{'domain'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Deployment::Migrate::ActiveDirectorySpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.deployment.migrate.active_directory_spec');
   $self->set_binding_field('key' => 'domain', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_domain ()
# Gets the value of 'domain' property.
#
# @retval domain - The current value of the field.
# The domain name of the Active Directory server to which the migrated vCenter Server
#     appliance should be joined. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_domain {
   my ($self, %args) = @_;
   return $self->{'domain'}; 	
}

## @method set_domain ()
# Sets the given value for 'domain' property.
# 
# @param domain  - New value for the field.
# The domain name of the Active Directory server to which the migrated vCenter Server
#     appliance should be joined. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_domain {
   my ($self, %args) = @_;
   $self->{'domain'} = $args{'domain'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Active Directory user that has permission to join the Active Directory after the
#     vCenter Server is migrated to appliance. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# String#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Active Directory user that has permission to join the Active Directory after the
#     vCenter Server is migrated to appliance. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_username {
   my ($self, %args) = @_;
   $self->{'username'} = $args{'username'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# Active Directory user password that has permission to join the Active Directory after
#     the vCenter Server is migrated to appliance. This  *field*  was added in vSphere API
#     7.0.0.0.
#
# String#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Active Directory user password that has permission to join the Active Directory after
#     the vCenter Server is migrated to appliance. This  *field*  was added in vSphere API
#     7.0.0.0.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;


