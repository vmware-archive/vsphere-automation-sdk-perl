## @class Com::Vmware::Content::Type::Ovf::Memory
#
#
# Provide the memory information in a template VM.

package Com::Vmware::Content::Type::Ovf::Memory;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::Memory structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{size} = $args{'size'};
   $self->{reservation} = $args{'reservation'};
   $self->{limit} = $args{'limit'};
   $self->{shares} = $args{'shares'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::Memory');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.memory');
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'reservation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'shares', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_size ()
# Gets the value of 'size' property.
#
# @retval size - The current value of the field.
# memory size in MB
#
# long#
sub get_size {
   my ($self, %args) = @_;
   return $self->{'size'}; 	
}

## @method set_size ()
# Sets the given value for 'size' property.
# 
# @param size  - New value for the field.
# memory size in MB
#
sub set_size {
   my ($self, %args) = @_;
   $self->{'size'} = $args{'size'}; 
   return;	
}

## @method get_reservation ()
# Gets the value of 'reservation' property.
#
# @retval reservation - The current value of the field.
# memory reservation in MB
#
# Optional#
sub get_reservation {
   my ($self, %args) = @_;
   return $self->{'reservation'}; 	
}

## @method set_reservation ()
# Sets the given value for 'reservation' property.
# 
# @param reservation  - New value for the field.
# memory reservation in MB
#
sub set_reservation {
   my ($self, %args) = @_;
   $self->{'reservation'} = $args{'reservation'}; 
   return;	
}

## @method get_limit ()
# Gets the value of 'limit' property.
#
# @retval limit - The current value of the field.
# memory limit in MB
#
# Optional#
sub get_limit {
   my ($self, %args) = @_;
   return $self->{'limit'}; 	
}

## @method set_limit ()
# Sets the given value for 'limit' property.
# 
# @param limit  - New value for the field.
# memory limit in MB
#
sub set_limit {
   my ($self, %args) = @_;
   $self->{'limit'} = $args{'limit'}; 
   return;	
}

## @method get_shares ()
# Gets the value of 'shares' property.
#
# @retval shares - The current value of the field.
# memory shares
#
# Optional#
sub get_shares {
   my ($self, %args) = @_;
   return $self->{'shares'}; 	
}

## @method set_shares ()
# Sets the given value for 'shares' property.
# 
# @param shares  - New value for the field.
# memory shares
#
sub set_shares {
   my ($self, %args) = @_;
   $self->{'shares'} = $args{'shares'}; 
   return;	
}


1;


