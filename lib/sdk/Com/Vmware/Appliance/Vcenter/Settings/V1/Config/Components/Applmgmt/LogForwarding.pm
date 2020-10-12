## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding
#
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding``
#     *interface*  provides  *methods*  to manage forwarding of log messages to remote
#     logging servers.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding structure
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
   $self->{protocol} = $args{'protocol'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.log_forwarding');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt', 'type_name' => 'LogForwarding::Protocol'));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# FQDN or IP address of the logging server to which messages are forwarded.
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
# FQDN or IP address of the logging server to which messages are forwarded.
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
# The port on which the remote logging server is listening for forwarded log messages.
#
# long#
sub get_port {
   my ($self, %args) = @_;
   return $self->{'port'}; 	
}

## @method set_port ()
# Sets the given value for 'port' property.
# 
# @param port  - New value for the field.
# The port on which the remote logging server is listening for forwarded log messages.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}

## @method get_protocol ()
# Gets the value of 'protocol' property.
#
# @retval protocol - The current value of the field.
# Transport protocol used to forward log messages.
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
# Transport protocol used to forward log messages.
#
sub set_protocol {
   my ($self, %args) = @_;
   $self->{'protocol'} = $args{'protocol'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding::Protocol
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding::Protocol``
#       *enumerated type*  defines transport protocols for outbound log messages.
#
#
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding::Protocol::TLS #
#Log messages will be forwarded to the remote host by using the TLS protocol.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding::Protocol::UDP #
#Log messages will be forwarded to the remote host using the UDP protocol.
#
# Constant Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding::Protocol::TCP #
#Log messages will be forwarded to the remote host using the TCP protocol.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding::Protocol;

use constant {
    TLS =>  'TLS',
    UDP =>  'UDP',
    TCP =>  'TCP',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding::Protocol enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.log_forwarding.protocol',
                           'binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::LogForwarding::Protocol');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


