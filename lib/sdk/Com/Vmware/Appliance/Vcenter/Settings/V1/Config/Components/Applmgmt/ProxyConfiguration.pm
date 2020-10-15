## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration
#
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration``
#       *class*  defines proxy configuration.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{protocol} = $args{'protocol'};
   $self->{server} = $args{'server'};
   $self->{port} = $args{'port'};
   $self->{username} = $args{'username'};
   $self->{password} = $args{'password'};
   $self->{enabled} = $args{'enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.proxy_configuration');
   $self->set_binding_field('key' => 'protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'ProxyConfiguration::Protocol'));
   $self->set_binding_field('key' => 'server', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'username', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_protocol ()
# Gets the value of 'protocol' property.
#
# @retval protocol - The current value of the field.
# The protocol for which proxy should be set.
#
# Protocol#
sub get_protocol {
   my ($self, %args) = @_;
   return $self->{'protocol'}; 	
}

## @method set_protocol ()
# Sets the given value for 'protocol' property.
# 
# @param protocol  - New value for the field.
# The protocol for which proxy should be set.
#
sub set_protocol {
   my ($self, %args) = @_;
   $self->{'protocol'} = $args{'protocol'}; 
   return;	
}

## @method get_server ()
# Gets the value of 'server' property.
#
# @retval server - The current value of the field.
# URL of the proxy server
#
# String#
sub get_server {
   my ($self, %args) = @_;
   return $self->{'server'}; 	
}

## @method set_server ()
# Sets the given value for 'server' property.
# 
# @param server  - New value for the field.
# URL of the proxy server
#
sub set_server {
   my ($self, %args) = @_;
   $self->{'server'} = $args{'server'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# Port to connect to the proxy server. In a &apos;get&apos; call, indicates the port
#     connected to the proxy server. In a &apos;set&apos; call, specifies the port to
#     connect to the proxy server. A value of -1 indicates the default port.
#
# Long#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# Port to connect to the proxy server. In a &apos;get&apos; call, indicates the port
#     connected to the proxy server. In a &apos;set&apos; call, specifies the port to
#     connect to the proxy server. A value of -1 indicates the default port.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_username ()
# Gets the value of 'username' property.
#
# @retval username - The current value of the field.
# Username for proxy server.
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
# Username for proxy server.
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
# Password for proxy server.
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
# Password for proxy server.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# In the result of the  ``#get``  and  ``#list``   *methods*  this  *field*  indicates
#     whether proxying is enabled for a particular protocol. In the input to the  ``test`` 
#     and  ``set``   *methods*  this  *field*  specifies whether proxying should be enabled
#     for a particular protocol.
#
# boolean#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# In the result of the  ``#get``  and  ``#list``   *methods*  this  *field*  indicates
#     whether proxying is enabled for a particular protocol. In the input to the  ``test`` 
#     and  ``set``   *methods*  this  *field*  specifies whether proxying should be enabled
#     for a particular protocol.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration::Protocol
#
# ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration::Protocol``
#       *enumerated type*  defines the protocols for which proxying is supported.
#
#
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration::Protocol::HTTP #
#Proxy configuration for http.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration::Protocol::HTTPS #
#Proxy configuration for https.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration::Protocol::FTP #
#Proxy configuration for ftp.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration::Protocol;

use constant {
    HTTP =>  'HTTP',
    HTTPS =>  'HTTPS',
    FTP =>  'FTP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration::Protocol enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.proxy_configuration.protocol',
                           'binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::ProxyConfiguration::Protocol');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


