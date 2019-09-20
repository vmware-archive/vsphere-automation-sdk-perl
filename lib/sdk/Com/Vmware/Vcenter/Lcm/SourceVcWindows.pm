## @class Com::Vmware::Vcenter::Lcm::SourceVcWindows
#
#
# Configuration of the source Windows VC.

package Com::Vmware::Vcenter::Lcm::SourceVcWindows;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::SourceVcWindows structure
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
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};
   $self->{ssl_verify} = $args{'ssl_verify'};
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::SourceVcWindows');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.source_vc_windows');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'ssl_verify', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# The IP address or FQDN of the source Windows vCenter server to migrate. If an FQDN is
#     provided, it must be resolvable from the machine that is running the installer.
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
# The IP address or FQDN of the source Windows vCenter server to migrate. If an FQDN is
#     provided, it must be resolvable from the machine that is running the installer.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Single Sign-On administrator user on the source Windows vCenter server. For example,
#     administrator@vsphere.local. Important: The user must be
#     administrator@your_domain_name.
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
# Single Sign-On administrator user on the source Windows vCenter server. For example,
#     administrator@vsphere.local. Important: The user must be
#     administrator@your_domain_name.
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
# The password of the Single Sign-On administrator on the source Windows vCenter server.
#
# Secret#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# The password of the Single Sign-On administrator on the source Windows vCenter server.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
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


1;


