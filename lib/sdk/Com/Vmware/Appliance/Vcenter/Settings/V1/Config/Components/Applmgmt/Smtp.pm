## @class Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Smtp
#
#
# The 
#     ``Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Smtp`` 
#      *interface*  provides  *methods*  to manage send mail configuration.

package Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Smtp;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Smtp structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{mail_server} = $args{'mail_server'};
   $self->{relay_port} = $args{'relay_port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Vcenter::Settings::V1::Config::Components::Applmgmt::Smtp');
   $self->set_binding_name('name' => 'com.vmware.appliance.vcenter.settings.v1.config.components.applmgmt.smtp');
   $self->set_binding_field('key' => 'mail_server', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'relay_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_mail_server ()
# Gets the value of 'mail_server' property.
#
# @retval mail_server - The current value of the field.
# Mail server IP address.
#
# Optional#
sub get_mail_server {
   my ($self, %args) = @_;
   return $self->{'mail_server'}; 	
}

## @method set_mail_server ()
# Sets the given value for 'mail_server' property.
# 
# @param mail_server  - New value for the field.
# Mail server IP address.
#
sub set_mail_server {
   my ($self, %args) = @_;
   $self->{'mail_server'} = $args{'mail_server'}; 
   return;	
}

## @method get_relay_port ()
# Gets the value of 'relay_port' property.
#
# @retval relay_port - The current value of the field.
# Relay port number.
#
# Optional#
sub get_relay_port {
   my ($self, %args) = @_;
   return $self->{'relay_port'}; 	
}

## @method set_relay_port ()
# Sets the given value for 'relay_port' property.
# 
# @param relay_port  - New value for the field.
# Relay port number.
#
sub set_relay_port {
   my ($self, %args) = @_;
   $self->{'relay_port'} = $args{'relay_port'}; 
   return;	
}


1;


