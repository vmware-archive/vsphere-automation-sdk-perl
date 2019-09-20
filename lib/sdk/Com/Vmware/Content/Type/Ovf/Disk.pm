## @class Com::Vmware::Content::Type::Ovf::Disk
#
#
# Provide the disk information in a template VM.

package Com::Vmware::Content::Type::Ovf::Disk;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::Disk structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{disk_capacity} = $args{'disk_capacity'};
   $self->{storage_policy} = $args{'storage_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::Disk');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.disk');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'disk_capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Type::Ovf::Policy', 'type_name' => 'StoragePolicy')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the disk
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
# Name of the disk
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_disk_capacity ()
# Gets the value of 'disk_capacity' property.
#
# @retval disk_capacity - The current value of the field.
# Capacity of the disk in megabytes
#
# long#
sub get_disk_capacity {
   my ($self, %args) = @_;
   return $self->{'disk_capacity'}; 	
}

## @method set_disk_capacity ()
# Sets the given value for 'disk_capacity' property.
# 
# @param disk_capacity  - New value for the field.
# Capacity of the disk in megabytes
#
sub set_disk_capacity {
   my ($self, %args) = @_;
   $self->{'disk_capacity'} = $args{'disk_capacity'}; 
   return;	
}

## @method get_storage_policy ()
# Gets the value of 'storage_policy' property.
#
# @retval storage_policy - The current value of the field.
# Storage policy of the disk. <p>
# 
# It is a reference to the storage policy group.</p>
#
# Optional#
sub get_storage_policy {
   my ($self, %args) = @_;
   return $self->{'storage_policy'}; 	
}

## @method set_storage_policy ()
# Sets the given value for 'storage_policy' property.
# 
# @param storage_policy  - New value for the field.
# Storage policy of the disk. <p>
# 
# It is a reference to the storage policy group.</p>
#
sub set_storage_policy {
   my ($self, %args) = @_;
   $self->{'storage_policy'} = $args{'storage_policy'}; 
   return;	
}


1;


