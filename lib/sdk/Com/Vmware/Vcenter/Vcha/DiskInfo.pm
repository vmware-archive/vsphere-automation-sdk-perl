## @class Com::Vmware::Vcenter::Vcha::DiskInfo
#
#
# The  ``Com::Vmware::Vcenter::Vcha::DiskInfo``   *class*  contains information to
#     describe the storage configuration of a vCenter virtual machine. This  *class*  was
#     added in vSphere API 6.7 U1.

package Com::Vmware::Vcenter::Vcha::DiskInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vcha::DiskInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore} = $args{'datastore'};
   $self->{datastore_name} = $args{'datastore_name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vcha::DiskInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vcha.disk_info');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'datastore_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# The identifier of the datastore to put all the virtual disks on. This  *field*  was
#     added in vSphere API 6.7 U1.
#
# ID#
sub get_datastore {
   my ($self, %args) = @_;
   return $self->{'datastore'}; 	
}

## @method set_datastore ()
# Sets the given value for 'datastore' property.
# 
# @param datastore  - New value for the field.
# The identifier of the datastore to put all the virtual disks on. This  *field*  was
#     added in vSphere API 6.7 U1.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}

## @method get_datastore_name ()
# Gets the value of 'datastore_name' property.
#
# @retval datastore_name - The current value of the field.
# The name of the datastore. This  *field*  was added in vSphere API 6.7 U1.
#
# String#
sub get_datastore_name {
   my ($self, %args) = @_;
   return $self->{'datastore_name'}; 	
}

## @method set_datastore_name ()
# Sets the given value for 'datastore_name' property.
# 
# @param datastore_name  - New value for the field.
# The name of the datastore. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_datastore_name {
   my ($self, %args) = @_;
   $self->{'datastore_name'} = $args{'datastore_name'}; 
   return;	
}


1;


