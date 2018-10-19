## @class Com::Vmware::Vcenter::Vcha::ConnectionSpec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::ConnectionSpec``   *class*  contains information
#     required to connect to a vCenter server. The connection to the vCenter server always
#     uses the HTTPS protocol. This  *class*  was added in vSphere API 6.7 U1.

package Com::Vmware::Vcenter::Vcha::ConnectionSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::ConnectionSpec structure
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
   $self->{port} = $args{'port'};
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::ConnectionSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.connection_spec');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# IP Address or DNS of the vCenter. This  *field*  was added in vSphere API 6.7 U1.
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
# IP Address or DNS of the vCenter. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# Port number. This  *field*  was added in vSphere API 6.7 U1.
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
# Port number. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# SHA1 hash of the server SSL certificate. This  *field*  was added in vSphere API 6.7
#     U1.
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
# SHA1 hash of the server SSL certificate. This  *field*  was added in vSphere API 6.7
#     U1.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Username to access the server. This  *field*  was added in vSphere API 6.7 U1.
#
# Optional#
sub get_username {
   my ($self, %args) = @_;
   return $self->{'username'}; 	
}

## @method set_username ()
# Sets the given value for 'username' property.
# 
# @param username  - New value for the field.
# Username to access the server. This  *field*  was added in vSphere API 6.7 U1.
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
# Password for the specified user. This  *field*  was added in vSphere API 6.7 U1.
#
# Optional#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# Password for the specified user. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}


1;


