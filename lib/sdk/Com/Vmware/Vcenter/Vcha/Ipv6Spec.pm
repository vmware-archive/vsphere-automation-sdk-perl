## @class Com::Vmware::Vcenter::Vcha::Ipv6Spec
#
#
# The  ``Com::Vmware::Vcenter::Vcha::Ipv6Spec``   *class*  contains IPV6 information
#     used to configure a network interface. This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::Vcha::Ipv6Spec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::Ipv6Spec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{address} = $args{'address'};
   $self->{prefix} = $args{'prefix'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::Ipv6Spec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.ipv6_spec');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# IPv6 address to be used to configure the interface. This  *field*  was added in
#     vSphere API 6.7.1.
#
# String#
sub get_address {
   my ($self, %args) = @_;
   return $self->{'address'}; 	
}

## @method set_address ()
# Sets the given value for 'address' property.
# 
# @param address  - New value for the field.
# IPv6 address to be used to configure the interface. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# The CIDR prefix for the interface. This  *field*  was added in vSphere API 6.7.1.
#
# long#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# The CIDR prefix for the interface. This  *field*  was added in vSphere API 6.7.1.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}


1;


