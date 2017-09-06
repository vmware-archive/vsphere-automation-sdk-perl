########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Storage.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

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
# Get disk to partition mapping
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
# Resize all partitions to 100 percent of disk size
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub resize {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'resize', method_args =>  {});
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
# ``Com::Vmware::Appliance::System::Storage::StorageMapping``   *class*  FIXME: no
#     docstring

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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::System::Storage::StorageMapping');
   $self->set_binding_name('name' => 'com.vmware.appliance.system.storage.storage_mapping');
   $self->set_binding_field('key' => 'disk', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'partition', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_disk ()
# Gets the value of 'disk' property.
#
# @retval disk - The current value of the field.
# NGC disk ID
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
# NGC disk ID
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
# Storage partition name
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
# Storage partition name
#
sub set_partition {
   my ($self, %args) = @_;
   $self->{'partition'} = $args{'partition'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::System::Storage service
#########################################################################################
