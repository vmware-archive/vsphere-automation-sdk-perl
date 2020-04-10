## @class Com::Vmware::Vcenter::Namespace_management::Ipv4Cidr
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::Ipv4Cidr``   *class*  contains the
#     specification for representing CIDR notation of IP range. For example, this can be
#     used to represent 256 IP addresses using 10.10.10.0/24.

package Com::Vmware::Vcenter::Namespace_management::Ipv4Cidr;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::Ipv4Cidr structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::Ipv4Cidr');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.ipv4_cidr');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The IPv4 address.
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
# The IPv4 address.
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
# The CIDR prefix.
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
# The CIDR prefix.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}


1;


