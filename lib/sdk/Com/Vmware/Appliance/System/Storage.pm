########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Storage.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::System::Storage
# ``Com::Vmware::Appliance::System::Storage``   *interface*  provides  *methods* 
#     Appliance storage configuration
#

package Com::Vmware::Appliance::System::Storage;

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Appliance::System::StorageStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.system.storage';


## @method new ()
# Constructor to initialize the object
#
# @param api_provider - protocol connection to use with
#                      stubs created by this factory
# @param StubConfig - Stub's additional configuration
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $stub_config = $args {stub_config};
   my $api_provider = $args {api_provider};

   my $self = $class->SUPER::new('stub_config' => $stub_config,
                                 'api_provider' => $api_provider);
   bless $self, $class;
   return $self;
}

## @method list ()
# Get disk to partition mapping.
#
# @retval 
# list of mapping items
# The return type will be Array of Com::Vmware::Appliance::System::Storage::StorageMapping
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method resize ()
# Resize all partitions to 100 percent of disk size.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub resize {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'resize', method_args =>  {});
}

## @method resize_ex ()
# Resize all partitions to 100 percent of disk size. This  *method*  was added in vSphere
# API 6.7.
#
# @retval 
# List of the partitions with the size before and after resizing
# The return type will be Dictionary of String and
# Com::Vmware::Appliance::System::Storage::StorageChange
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub resize_ex {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'resize_ex', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::System::Storage service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::System::Storage service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::System::Storage service
#########################################################################################

## @class Com::Vmware::Appliance::System::Storage::StorageMapping
#
#
# The  ``Com::Vmware::Appliance::System::Storage::StorageMapping``   *class*  describes
#     the mapping between VCSA partitions and the Hard disk numbers visible in the vSphere
#     Web Client.

package Com::Vmware::Appliance::System::Storage::StorageMapping;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::System::Storage::StorageMapping structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{disk} = $args{'disk'};
   $self->{partition} = $args{'partition'};
   $self->{description} = $args{'description'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::System::Storage::StorageMapping');
   $self->set_binding_name('name' => 'com.vmware.appliance.system.storage.storage_mapping');
   $self->set_binding_field('key' => 'disk', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'partition', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_disk ()
# Gets the value of 'disk' property.
#
# @retval disk - The current value of the field.
# The disk number in the vSphere Web Client.
#
# ID#
sub get_disk {
   my ($self, %args) = @_;
   return $self->{'disk'}; 	
}

## @method set_disk ()
# Sets the given value for 'disk' property.
# 
# @param disk  - New value for the field.
# The disk number in the vSphere Web Client.
#
sub set_disk {
   my ($self, %args) = @_;
   $self->{'disk'} = $args{'disk'}; 
   return;	
}

## @method get_partition ()
# Gets the value of 'partition' property.
#
# @retval partition - The current value of the field.
# Storage partition name.
#
# String#
sub get_partition {
   my ($self, %args) = @_;
   return $self->{'partition'}; 	
}

## @method set_partition ()
# Sets the given value for 'partition' property.
# 
# @param partition  - New value for the field.
# Storage partition name.
#
sub set_partition {
   my ($self, %args) = @_;
   $self->{'partition'} = $args{'partition'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of partition. This  *field*  was added in vSphere API 6.7.
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
# Description of partition. This  *field*  was added in vSphere API 6.7.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::System::Storage::StorageChange
#
#
# The  ``Com::Vmware::Appliance::System::Storage::StorageChange``   *class*  describes
#     the changes in capasity of a storage partition. This  *class*  was added in vSphere
#     API 6.7.

package Com::Vmware::Appliance::System::Storage::StorageChange;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::System::Storage::StorageChange structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{old_size} = $args{'old_size'};
   $self->{new_size} = $args{'new_size'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::System::Storage::StorageChange');
   $self->set_binding_name('name' => 'com.vmware.appliance.system.storage.storage_change');
   $self->set_binding_field('key' => 'old_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'new_size', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_old_size ()
# Gets the value of 'old_size' property.
#
# @retval old_size - The current value of the field.
# Original size of the partition in MB. This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_old_size {
   my ($self, %args) = @_;
   return $self->{'old_size'}; 	
}

## @method set_old_size ()
# Sets the given value for 'old_size' property.
# 
# @param old_size  - New value for the field.
# Original size of the partition in MB. This  *field*  was added in vSphere API 6.7.
#
sub set_old_size {
   my ($self, %args) = @_;
   $self->{'old_size'} = $args{'old_size'}; 
   return;	
}

## @method get_new_size ()
# Gets the value of 'new_size' property.
#
# @retval new_size - The current value of the field.
# Nedw size of the partition in MB. This  *field*  was added in vSphere API 6.7.
#
# long#
sub get_new_size {
   my ($self, %args) = @_;
   return $self->{'new_size'}; 	
}

## @method set_new_size ()
# Sets the given value for 'new_size' property.
# 
# @param new_size  - New value for the field.
# Nedw size of the partition in MB. This  *field*  was added in vSphere API 6.7.
#
sub set_new_size {
   my ($self, %args) = @_;
   $self->{'new_size'} = $args{'new_size'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::System::Storage service
#########################################################################################
