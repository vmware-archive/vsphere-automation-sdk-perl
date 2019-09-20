## @class Com::Vmware::Content::Type::Ovf::Cpu
#
#
# Provide the CPU information in a template VM.

package Com::Vmware::Content::Type::Ovf::Cpu;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::Cpu structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{num_cpus} = $args{'num_cpus'};
   $self->{reservation} = $args{'reservation'};
   $self->{limit} = $args{'limit'};
   $self->{shares} = $args{'shares'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::Cpu');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.cpu');
   $self->set_binding_field('key' => 'num_cpus', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'reservation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'limit', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'shares', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_num_cpus ()
# Gets the value of 'num_cpus' property.
#
# @retval num_cpus - The current value of the field.
# number of CPUs
#
# long#
sub get_num_cpus {
   my ($self, %args) = @_;
   return $self->{'num_cpus'}; 	
}

## @method set_num_cpus ()
# Sets the given value for 'num_cpus' property.
# 
# @param num_cpus  - New value for the field.
# number of CPUs
#
sub set_num_cpus {
   my ($self, %args) = @_;
   $self->{'num_cpus'} = $args{'num_cpus'}; 
   return;	
}

## @method get_reservation ()
# Gets the value of 'reservation' property.
#
# @retval reservation - The current value of the field.
# reservation in MHz
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
# reservation in MHz
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
# CPU limit in MHz
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
# CPU limit in MHz
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
# CPU shares
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
# CPU shares
#
sub set_shares {
   my ($self, %args) = @_;
   $self->{'shares'} = $args{'shares'}; 
   return;	
}


1;


