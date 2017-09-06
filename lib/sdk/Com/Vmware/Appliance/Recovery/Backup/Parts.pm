########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Parts.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Appliance::Recovery::Backup::Parts
# ``Com::Vmware::Appliance::Recovery::Backup::Parts``   *interface*  provides  *methods*
#      Provides list of parts optional for the backup
#

package Com::Vmware::Appliance::Recovery::Backup::Parts;

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
use Com::Vmware::Appliance::Recovery::Backup::PartsStub;

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
# Get a list of the backup parts
#
# @retval 
# list of parts
# The return type will be Array of Com::Vmware::Appliance::Recovery::Backup::Parts::Part
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Get size of the optional part
#
# @param id [REQUIRED] part id
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.appliance.recovery.backup.parts).
# . The value must be str.
#
# @retval 
# int size
# The return type will be Long
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# Generic error
#

sub get {
   my ($self, %args) = @_;
   my $id = $args {id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Appliance::Recovery::Backup::Parts service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Appliance::Recovery::Backup::Parts service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Appliance::Recovery::Backup::Parts service
#########################################################################################

## @class Com::Vmware::Appliance::Recovery::Backup::Parts::LocalizableMessage
#
#
# ``Com::Vmware::Appliance::Recovery::Backup::Parts::LocalizableMessage``   *class* 
#     Structure representing message

package Com::Vmware::Appliance::Recovery::Backup::Parts::LocalizableMessage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Parts::LocalizableMessage structure
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
   $self->{default_message} = $args{'default_message'};
   $self->{args} = $args{'args'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Parts::LocalizableMessage');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.parts.localizable_message');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'default_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'args', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# id in message bundle
#
# String#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# id in message bundle
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_default_message ()
# Gets the value of 'default_message' property.
#
# @retval default_message - The current value of the field.
# text in english
#
# String#
sub get_default_message {
   my ($self, %args) = @_;
   return $self->{'default_message'}; 	
}

## @method set_default_message ()
# Sets the given value for 'default_message' property.
# 
# @param default_message  - New value for the field.
# text in english
#
sub set_default_message {
   my ($self, %args) = @_;
   $self->{'default_message'} = $args{'default_message'}; 
   return;	
}

## @method get_args ()
# Gets the value of 'args' property.
#
# @retval args - The current value of the field.
# nested data
#
# List#
sub get_args {
   my ($self, %args) = @_;
   return $self->{'args'}; 	
}

## @method set_args ()
# Sets the given value for 'args' property.
# 
# @param args  - New value for the field.
# nested data
#
sub set_args {
   my ($self, %args) = @_;
   $self->{'args'} = $args{'args'}; 
   return;	
}


1;


## @class Com::Vmware::Appliance::Recovery::Backup::Parts::Part
#
#
# ``Com::Vmware::Appliance::Recovery::Backup::Parts::Part``   *class*  Structure
#     representing backup restore part

package Com::Vmware::Appliance::Recovery::Backup::Parts::Part;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Appliance::Recovery::Backup::Parts::Part structure
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
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};
   $self->{selected_by_default} = $args{'selected_by_default'};
   $self->{optional} = $args{'optional'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Appliance::Recovery::Backup::Parts::Part');
   $self->set_binding_name('name' => 'com.vmware.appliance.recovery.backup.parts.part');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Parts::LocalizableMessage'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Recovery::Backup', 'type_name' => 'Parts::LocalizableMessage'));
   $self->set_binding_field('key' => 'selected_by_default', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'optional', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# part ID
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# part ID
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# part name id in message bundle
#
# LocalizableMessage#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# part name id in message bundle
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# part description id in message bundle
#
# LocalizableMessage#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# part description id in message bundle
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_selected_by_default ()
# Gets the value of 'selected_by_default' property.
#
# @retval selected_by_default - The current value of the field.
# Is part selected by default in UI
#
# boolean#
sub get_selected_by_default {
   my ($self, %args) = @_;
   return $self->{'selected_by_default'}; 	
}

## @method set_selected_by_default ()
# Sets the given value for 'selected_by_default' property.
# 
# @param selected_by_default  - New value for the field.
# Is part selected by default in UI
#
sub set_selected_by_default {
   my ($self, %args) = @_;
   $self->{'selected_by_default'} = $args{'selected_by_default'}; 
   return;	
}

## @method get_optional ()
# Gets the value of 'optional' property.
#
# @retval optional - The current value of the field.
# Estimated size of this piece
#
# boolean#
sub get_optional {
   my ($self, %args) = @_;
   return $self->{'optional'}; 	
}

## @method set_optional ()
# Sets the given value for 'optional' property.
# 
# @param optional  - New value for the field.
# Estimated size of this piece
#
sub set_optional {
   my ($self, %args) = @_;
   $self->{'optional'} = $args{'optional'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Appliance::Recovery::Backup::Parts service
#########################################################################################
