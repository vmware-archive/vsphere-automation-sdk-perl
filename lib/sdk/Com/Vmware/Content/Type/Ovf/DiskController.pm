## @class Com::Vmware::Content::Type::Ovf::DiskController
#
#
# Provide the disk controller information in a template VM.

package Com::Vmware::Content::Type::Ovf::DiskController;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Ovf::DiskController structure
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
   $self->{type} = $args{'type'};
   $self->{sub_type} = $args{'sub_type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Ovf::DiskController');
   $self->set_binding_name('name' => 'com.vmware.content.type.ovf.disk_controller');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'sub_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the disk controller
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
# Name of the disk controller
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Disk controller type: DiskControllerType.IDE.SATA.SCSI;
#
# Optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Disk controller type: DiskControllerType.IDE.SATA.SCSI;
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_sub_type ()
# Gets the value of 'sub_type' property.
#
# @retval sub_type - The current value of the field.
# Disk controller sub type: DiskControllerSubType
#
# Optional#
sub get_sub_type {
   my ($self, %args) = @_;
   return $self->{'sub_type'}; 	
}

## @method set_sub_type ()
# Sets the given value for 'sub_type' property.
# 
# @param sub_type  - New value for the field.
# Disk controller sub type: DiskControllerSubType
#
sub set_sub_type {
   my ($self, %args) = @_;
   $self->{'sub_type'} = $args{'sub_type'}; 
   return;	
}


1;


