## @class Com::Vmware::Vcenter::Namespaces::EndpointAddress
#
#
# An  ``Com::Vmware::Vcenter::Namespaces::EndpointAddress``  contains the data that
#     describes an Endpoint&apos;s address in Kubernetes.

package Com::Vmware::Vcenter::Namespaces::EndpointAddress;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::EndpointAddress structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{service} = $args{'service'};
   $self->{ip} = $args{'ip'};
   $self->{port} = $args{'port'};
   $self->{protocol} = $args{'protocol'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::EndpointAddress');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.endpoint_address');
   $self->set_binding_field('key' => 'service', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'ip', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'protocol', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_service ()
# Gets the value of 'service' property.
#
# @retval service - The current value of the field.
# The Kubernetes Service the Endpoint belongs to.
#
# String#
sub get_service {
   my ($self, %args) = @_;
   return $self->{'service'}; 	
}

## @method set_service ()
# Sets the given value for 'service' property.
# 
# @param service  - New value for the field.
# The Kubernetes Service the Endpoint belongs to.
#
sub set_service {
   my ($self, %args) = @_;
   $self->{'service'} = $args{'service'}; 
   return;	
}

## @method get_ip ()
# Gets the value of 'ip' property.
#
# @retval ip - The current value of the field.
# The IP address of the Endpoint.
#
# String#
sub get_ip {
   my ($self, %args) = @_;
   return $self->{'ip'}; 	
}

## @method set_ip ()
# Sets the given value for 'ip' property.
# 
# @param ip  - New value for the field.
# The IP address of the Endpoint.
#
sub set_ip {
   my ($self, %args) = @_;
   $self->{'ip'} = $args{'ip'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# The port of the Endpoint.
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
# The port of the Endpoint.
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
# The protocol used by this Endpoint.
#
# String#
sub get_protocol {
   my ($self, %args) = @_;
   return $self->{'protocol'}; 	
}

## @method set_protocol ()
# Sets the given value for 'protocol' property.
# 
# @param protocol  - New value for the field.
# The protocol used by this Endpoint.
#
sub set_protocol {
   my ($self, %args) = @_;
   $self->{'protocol'} = $args{'protocol'}; 
   return;	
}


1;


