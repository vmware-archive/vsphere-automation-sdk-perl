## @class Com::Vmware::Vcenter::Ovf::ScaleOutGroup
#
#
# The  ``Com::Vmware::Vcenter::Ovf::ScaleOutGroup``   *class*  contains information
#     about a scale-out group. <p>
# 
# It allows a virtual system collection to contain a set of children that are
#     homogeneous with respect to a prototypical virtual system or virtual system
#     collection. It shall cause the deployment function to replicate the prototype a number
#     of times, thus allowing the number of instantiated virtual systems to be configured
#     dynamically at deployment time. </p>
# 
# <p>
# 
#  This is based on the ovf2:ScaleOutSection. </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::ScaleOutGroup;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::ScaleOutGroup structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{description} = $args{'description'};
   $self->{instance_count} = $args{'instance_count'};
   $self->{minimum_instance_count} = $args{'minimum_instance_count'};
   $self->{maximum_instance_count} = $args{'maximum_instance_count'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::ScaleOutGroup');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.scale_out_group');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'instance_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'minimum_instance_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'maximum_instance_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The identifier of the scale-out group.
#
# optional#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# The identifier of the scale-out group.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# The description of the scale-out group.
#
# optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# The description of the scale-out group.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_instance_count ()
# Gets the value of 'instance_count' property.
#
# @retval instance_count - The current value of the field.
# The scaling factor to use. It defines the number of replicas of the prototypical
#     virtual system or virtual system collection.
#
# optional#
sub get_instance_count {
   my ($self, %args) = @_;
   return $self->{'instance_count'}; 	
}

## @method set_instance_count ()
# Sets the given value for 'instance_count' property.
# 
# @param instance_count  - New value for the field.
# The scaling factor to use. It defines the number of replicas of the prototypical
#     virtual system or virtual system collection.
#
sub set_instance_count {
   my ($self, %args) = @_;
   $self->{'instance_count'} = $args{'instance_count'}; 
   return;	
}

## @method get_minimum_instance_count ()
# Gets the value of 'minimum_instance_count' property.
#
# @retval minimum_instance_count - The current value of the field.
# The minimum scaling factor.
#
# optional#
sub get_minimum_instance_count {
   my ($self, %args) = @_;
   return $self->{'minimum_instance_count'}; 	
}

## @method set_minimum_instance_count ()
# Sets the given value for 'minimum_instance_count' property.
# 
# @param minimum_instance_count  - New value for the field.
# The minimum scaling factor.
#
sub set_minimum_instance_count {
   my ($self, %args) = @_;
   $self->{'minimum_instance_count'} = $args{'minimum_instance_count'}; 
   return;	
}

## @method get_maximum_instance_count ()
# Gets the value of 'maximum_instance_count' property.
#
# @retval maximum_instance_count - The current value of the field.
# The maximum scaling factor.
#
# optional#
sub get_maximum_instance_count {
   my ($self, %args) = @_;
   return $self->{'maximum_instance_count'}; 	
}

## @method set_maximum_instance_count ()
# Sets the given value for 'maximum_instance_count' property.
# 
# @param maximum_instance_count  - New value for the field.
# The maximum scaling factor.
#
sub set_maximum_instance_count {
   my ($self, %args) = @_;
   $self->{'maximum_instance_count'} = $args{'maximum_instance_count'}; 
   return;	
}


1;


