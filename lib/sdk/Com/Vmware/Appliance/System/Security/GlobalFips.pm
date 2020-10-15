########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file GlobalFips.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::System::Security::GlobalFips
# The  ``Com::Vmware::Appliance::System::Security::GlobalFips``   *interface*  provides 
#     *methods*  to enable/disable appliance FIPS mode.
#

package Com::Vmware::Appliance::System::Security::GlobalFips;

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
use Com::Vmware::Appliance::System::Security::GlobalFipsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.appliance.system.security.global_fips';


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
# Get current appliance FIPS settings.
#
# @retval 
# Current FIPS settings state.
# The return type will be Com::Vmware::Appliance::System::Security::GlobalFips::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub get {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'get', method_args =>  {});
}

## @method update ()
# Enable/Disable Global FIPS mode for the appliance.
#
# @param spec [REQUIRED] 
# . The value must be Com::Vmware::Appliance::System::Security::GlobalFips::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#
sub update {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::System::Security::GlobalFips service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::System::Security::GlobalFips service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::System::Security::GlobalFips service
#########################################################################################

## @class Com::Vmware::Appliance::System::Security::GlobalFips::UpdateSpec
#
#


package Com::Vmware::Appliance::System::Security::GlobalFips::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::System::Security::GlobalFips::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{enabled} = $args{'enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::System::Security::GlobalFips::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.appliance.system.security.global_fips.update_spec');
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# FIPS setting state.
#
# Optional#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# FIPS setting state.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::System::Security::GlobalFips::Info
#
#


package Com::Vmware::Appliance::System::Security::GlobalFips::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::System::Security::GlobalFips::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{enabled} = $args{'enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::System::Security::GlobalFips::Info');
   $self->set_binding_name('name' => 'com.vmware.appliance.system.security.global_fips.info');
   $self->set_binding_field('key' => 'enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_enabled ()
# Gets the value of 'enabled' property.
#
# @retval enabled - The current value of the field.
# FIPS setting state.
#
# boolean#
sub get_enabled {
   my ($self, %args) = @_;
   return $self->{'enabled'}; 	
}

## @method set_enabled ()
# Sets the given value for 'enabled' property.
# 
# @param enabled  - New value for the field.
# FIPS setting state.
#
sub set_enabled {
   my ($self, %args) = @_;
   $self->{'enabled'} = $args{'enabled'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::System::Security::GlobalFips service
#########################################################################################
