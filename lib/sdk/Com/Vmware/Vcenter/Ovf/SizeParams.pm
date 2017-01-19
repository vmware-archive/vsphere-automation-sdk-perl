## @class Com::Vmware::Vcenter::Ovf::SizeParams
#
#
# The  ``Com::Vmware::Vcenter::Ovf::SizeParams``   *class*  contains estimates of the
#     download and deployment sizes. <p>
# 
# This information is based on the file references and the ovf:DiskSection in the OVF
#     descriptor. </p>
# 
# <p>
# 
# See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .</p>

package Com::Vmware::Vcenter::Ovf::SizeParams;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::SizeParams structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{approximate_download_size} = $args{'approximate_download_size'};
   $self->{approximate_flat_deployment_size} = $args{'approximate_flat_deployment_size'};
   $self->{approximate_sparse_deployment_size} = $args{'approximate_sparse_deployment_size'};
   $self->{variable_disk_size} = $args{'variable_disk_size'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::SizeParams');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.size_params');
   $self->set_binding_field('key' => 'approximate_download_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'approximate_flat_deployment_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'approximate_sparse_deployment_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'variable_disk_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_approximate_download_size ()
# Gets the value of 'approximate_download_size' property.
#
# @retval approximate_download_size - The current value of the field.
# A best guess as to the total amount of data that must be transferred to download the
#     OVF package. <p>
# 
#  This may be inaccurate due to disk compression etc.</p>
#
# optional#
sub get_approximate_download_size {
   my ($self, %args) = @_;
   return $self->{'approximate_download_size'}; 	
}

## @method set_approximate_download_size ()
# Sets the given value for 'approximate_download_size' property.
# 
# @param approximate_download_size  - New value for the field.
# A best guess as to the total amount of data that must be transferred to download the
#     OVF package. <p>
# 
#  This may be inaccurate due to disk compression etc.</p>
#
sub set_approximate_download_size {
   my ($self, %args) = @_;
   $self->{'approximate_download_size'} = $args{'approximate_download_size'}; 
   return;	
}

## @method get_approximate_flat_deployment_size ()
# Gets the value of 'approximate_flat_deployment_size' property.
#
# @retval approximate_flat_deployment_size - The current value of the field.
# A best guess as to the total amount of space required to deploy the OVF package if
#     using flat disks.
#
# optional#
sub get_approximate_flat_deployment_size {
   my ($self, %args) = @_;
   return $self->{'approximate_flat_deployment_size'}; 	
}

## @method set_approximate_flat_deployment_size ()
# Sets the given value for 'approximate_flat_deployment_size' property.
# 
# @param approximate_flat_deployment_size  - New value for the field.
# A best guess as to the total amount of space required to deploy the OVF package if
#     using flat disks.
#
sub set_approximate_flat_deployment_size {
   my ($self, %args) = @_;
   $self->{'approximate_flat_deployment_size'} = $args{'approximate_flat_deployment_size'}; 
   return;	
}

## @method get_approximate_sparse_deployment_size ()
# Gets the value of 'approximate_sparse_deployment_size' property.
#
# @retval approximate_sparse_deployment_size - The current value of the field.
# A best guess as to the total amount of space required to deploy the OVF package using
#     sparse disks.
#
# optional#
sub get_approximate_sparse_deployment_size {
   my ($self, %args) = @_;
   return $self->{'approximate_sparse_deployment_size'}; 	
}

## @method set_approximate_sparse_deployment_size ()
# Sets the given value for 'approximate_sparse_deployment_size' property.
# 
# @param approximate_sparse_deployment_size  - New value for the field.
# A best guess as to the total amount of space required to deploy the OVF package using
#     sparse disks.
#
sub set_approximate_sparse_deployment_size {
   my ($self, %args) = @_;
   $self->{'approximate_sparse_deployment_size'} = $args{'approximate_sparse_deployment_size'}; 
   return;	
}

## @method get_variable_disk_size ()
# Gets the value of 'variable_disk_size' property.
#
# @retval variable_disk_size - The current value of the field.
# Whether the OVF uses variable disk sizes. <p>
# 
# For empty disks, rather than specifying a fixed virtual disk capacity, the capacity
#     may be given using a reference to a ovf:Property element in a ovf:ProductSection
#     element in OVF package.</p>
#
# optional#
sub get_variable_disk_size {
   my ($self, %args) = @_;
   return $self->{'variable_disk_size'}; 	
}

## @method set_variable_disk_size ()
# Sets the given value for 'variable_disk_size' property.
# 
# @param variable_disk_size  - New value for the field.
# Whether the OVF uses variable disk sizes. <p>
# 
# For empty disks, rather than specifying a fixed virtual disk capacity, the capacity
#     may be given using a reference to a ovf:Property element in a ovf:ProductSection
#     element in OVF package.</p>
#
sub set_variable_disk_size {
   my ($self, %args) = @_;
   $self->{'variable_disk_size'} = $args{'variable_disk_size'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
# optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Unique identifier describing the type of the OVF parameters. The value is the name of
#     the OVF parameters  *class* .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;


