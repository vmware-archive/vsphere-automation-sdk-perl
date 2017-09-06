########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Version.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::System::Version
# ``Com::Vmware::Appliance::System::Version``   *interface*  provides  *methods*  Get
#     the appliance version.
#

package Com::Vmware::Appliance::System::Version;

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
use Com::Vmware::Appliance::System::VersionStub;

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

## @method get ()
# Get the version.
#
# @retval 
# version information about the appliance
# The return type will be Com::Vmware::Appliance::System::Version::VersionStruct
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::System::Version service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::System::Version service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::System::Version service
#########################################################################################

## @class Com::Vmware::Appliance::System::Version::VersionStruct
#
#
# ``Com::Vmware::Appliance::System::Version::VersionStruct``   *class*  Structure
#     representing appliance version information.

package Com::Vmware::Appliance::System::Version::VersionStruct;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::System::Version::VersionStruct structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version} = $args{'version'};
   $self->{product} = $args{'product'};
   $self->{build} = $args{'build'};
   $self->{type} = $args{'type'};
   $self->{summary} = $args{'summary'};
   $self->{releasedate} = $args{'releasedate'};
   $self->{install_time} = $args{'install_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::System::Version::VersionStruct');
   $self->set_binding_name('name' => 'com.vmware.appliance.system.version.version_struct');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'product', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'build', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'summary', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'releasedate', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'install_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# Appliance version.
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# Appliance version.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_product ()
# Gets the value of 'product' property.
#
# @retval product - The current value of the field.
# Appliance name.
#
# String#
sub get_product {
   my ($self, %args) = @_;
   return $self->{'product'}; 	
}

## @method set_product ()
# Sets the given value for 'product' property.
# 
# @param product  - New value for the field.
# Appliance name.
#
sub set_product {
   my ($self, %args) = @_;
   $self->{'product'} = $args{'product'}; 
   return;	
}

## @method get_build ()
# Gets the value of 'build' property.
#
# @retval build - The current value of the field.
# Appliance build number.
#
# String#
sub get_build {
   my ($self, %args) = @_;
   return $self->{'build'}; 	
}

## @method set_build ()
# Sets the given value for 'build' property.
# 
# @param build  - New value for the field.
# Appliance build number.
#
sub set_build {
   my ($self, %args) = @_;
   $self->{'build'} = $args{'build'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of product. Same product can have different deployment options, which is
#     represented by type.
#
# String#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type of product. Same product can have different deployment options, which is
#     represented by type.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_summary ()
# Gets the value of 'summary' property.
#
# @retval summary - The current value of the field.
# Summary of patch (empty string, if the appliance has not been patched)
#
# String#
sub get_summary {
   my ($self, %args) = @_;
   return $self->{'summary'}; 	
}

## @method set_summary ()
# Sets the given value for 'summary' property.
# 
# @param summary  - New value for the field.
# Summary of patch (empty string, if the appliance has not been patched)
#
sub set_summary {
   my ($self, %args) = @_;
   $self->{'summary'} = $args{'summary'}; 
   return;	
}

## @method get_releasedate ()
# Gets the value of 'releasedate' property.
#
# @retval releasedate - The current value of the field.
# Release date of patch (empty string, if the appliance has not been patched)
#
# String#
sub get_releasedate {
   my ($self, %args) = @_;
   return $self->{'releasedate'}; 	
}

## @method set_releasedate ()
# Sets the given value for 'releasedate' property.
# 
# @param releasedate  - New value for the field.
# Release date of patch (empty string, if the appliance has not been patched)
#
sub set_releasedate {
   my ($self, %args) = @_;
   $self->{'releasedate'} = $args{'releasedate'}; 
   return;	
}

## @method get_install_time ()
# Gets the value of 'install_time' property.
#
# @retval install_time - The current value of the field.
# Display the date and time when this system was first installed. Value will not change
#     on subsequent updates.
#
# String#
sub get_install_time {
   my ($self, %args) = @_;
   return $self->{'install_time'}; 	
}

## @method set_install_time ()
# Sets the given value for 'install_time' property.
# 
# @param install_time  - New value for the field.
# Display the date and time when this system was first installed. Value will not change
#     on subsequent updates.
#
sub set_install_time {
   my ($self, %args) = @_;
   $self->{'install_time'} = $args{'install_time'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::System::Version service
#########################################################################################
