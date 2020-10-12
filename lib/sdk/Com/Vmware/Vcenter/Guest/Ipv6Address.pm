## @class Com::Vmware::Vcenter::Guest::Ipv6Address
#
#
# The  ``Com::Vmware::Vcenter::Guest::Ipv6Address``   *class*  specifies the the
#     settings for a Static IPv6 configuration. This  *class*  was added in vSphere API
#     7.0.0.0.

package Com::Vmware::Vcenter::Guest::Ipv6Address;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::Ipv6Address structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{ip_address} = $args{'ip_address'};
   $self->{prefix} = $args{'prefix'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::Ipv6Address');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.ipv6_address');
   $self->set_binding_field('key' => 'ip_address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_ip_address ()
# Gets the value of 'ip_address' property.
#
# @retval ip_address - The current value of the field.
# Static IPv6 Address. This  *field*  was added in vSphere API 7.0.0.0.
#
# String#
sub get_ip_address {
   my ($self, %args) = @_;
   return $self->{'ip_address'}; 	
}

## @method set_ip_address ()
# Sets the given value for 'ip_address' property.
# 
# @param ip_address  - New value for the field.
# Static IPv6 Address. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_ip_address {
   my ($self, %args) = @_;
   $self->{'ip_address'} = $args{'ip_address'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# The CIDR prefix for the interface. This  *field*  was added in vSphere API 7.0.0.0.
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
# The CIDR prefix for the interface. This  *field*  was added in vSphere API 7.0.0.0.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}


1;


