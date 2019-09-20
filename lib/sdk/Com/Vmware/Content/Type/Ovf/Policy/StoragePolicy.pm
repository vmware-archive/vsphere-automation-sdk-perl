## @class Com::Vmware::Content::Type::Ovf::Policy::StoragePolicy
#
#
# Provide information of the membership of a particular storage policy group. <p>
# 
# It is valid for disk, virtual machine or virtual machine collection.</p>

package Com::Vmware::Content::Type::Ovf::Policy::StoragePolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::Policy::StoragePolicy structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{group_id} = $args{'group_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::Policy::StoragePolicy');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.policy.storage_policy');
   $self->set_binding_field('key' => 'group_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_group_id ()
# Gets the value of 'group_id' property.
#
# @retval group_id - The current value of the field.
# Id reference of the particular storage policy group.
#
# String#
sub get_group_id {
   my ($self, %args) = @_;
   return $self->{'group_id'}; 	
}

## @method set_group_id ()
# Sets the given value for 'group_id' property.
# 
# @param group_id  - New value for the field.
# Id reference of the particular storage policy group.
#
sub set_group_id {
   my ($self, %args) = @_;
   $self->{'group_id'} = $args{'group_id'}; 
   return;	
}


1;


