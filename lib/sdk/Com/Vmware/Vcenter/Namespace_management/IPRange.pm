## @class Com::Vmware::Vcenter::Namespace_management::IPRange
#
#
# The  ``Com::Vmware::Vcenter::Namespace_management::IPRange``   *class*  is used to
#     express a range of IP addresses. The formats supported by this structure will depend
#     on the IP addressing scheme that is being used by vSphere Namespaces. Currently,
#     vSphere Namespaces only supports IPv4. This  *class*  was added in vSphere API
#     7.0.1.0.

package Com::Vmware::Vcenter::Namespace_management::IPRange;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Namespace_management::IPRange structure
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
   $self->{count} = $args{'count'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Namespace_management::IPRange');
   $self->set_binding_name('name' => 'com.vmware.vcenter.namespace_management.IP_range');
   $self->set_binding_field('key' => 'address', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_address ()
# Gets the value of 'address' property.
#
# @retval address - The current value of the field.
# The starting address of the range. This  *field*  was added in vSphere API 7.0.1.0.
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
# The starting address of the range. This  *field*  was added in vSphere API 7.0.1.0.
#
sub set_address {
   my ($self, %args) = @_;
   $self->{'address'} = $args{'address'}; 
   return;	
}

## @method get_count ()
# Gets the value of 'count' property.
#
# @retval count - The current value of the field.
# The number of IP addresses in the range. This  *field*  was added in vSphere API
#     7.0.1.0.
#
# long#
sub get_count {
   my ($self, %args) = @_;
   return $self->{'count'}; 	
}

## @method set_count ()
# Sets the given value for 'count' property.
# 
# @param count  - New value for the field.
# The number of IP addresses in the range. This  *field*  was added in vSphere API
#     7.0.1.0.
#
sub set_count {
   my ($self, %args) = @_;
   $self->{'count'} = $args{'count'}; 
   return;	
}


1;


