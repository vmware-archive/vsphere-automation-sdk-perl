## @class Com::Vmware::Vcenter::Namespaces::IngressRuleValue
#
#
# An  ``Com::Vmware::Vcenter::Namespaces::IngressRuleValue``  contains the data that
#     describes an Ingress rule in Kubernetes.

package Com::Vmware::Vcenter::Namespaces::IngressRuleValue;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespaces::IngressRuleValue structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{host} = $args{'host'};
   $self->{path} = $args{'path'};
   $self->{name} = $args{'name'};
   $self->{port} = $args{'port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespaces::IngressRuleValue');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespaces.ingress_rule_value');
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'path', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'port', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# The Ingress&apos;s host.
#
# String#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# The Ingress&apos;s host.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_path ()
# Gets the value of 'path' property.
#
# @retval path - The current value of the field.
# The Ingress&apos;s path filter.
#
# String#
sub get_path {
   my ($self, %args) = @_;
   return $self->{'path'}; 	
}

## @method set_path ()
# Sets the given value for 'path' property.
# 
# @param path  - New value for the field.
# The Ingress&apos;s path filter.
#
sub set_path {
   my ($self, %args) = @_;
   $self->{'path'} = $args{'path'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The Ingress&apos;s name.
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The Ingress&apos;s name.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_port ()
# Gets the value of 'port' property.
#
# @retval port - The current value of the field.
# The Ingress&apos;s service port.
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
# The Ingress&apos;s service port.
#
sub set_port {
   my ($self, %args) = @_;
   $self->{'port'} = $args{'port'}; 
   return;	
}


1;


