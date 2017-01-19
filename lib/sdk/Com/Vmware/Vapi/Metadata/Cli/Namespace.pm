########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Namespace.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Cli::Namespace
# The  ``Com::Vmware::Vapi::Metadata::Cli::Namespace``   *interface*  provides 
#     *methods*  to get information about command line interface (CLI) namespaces.
#

package Com::Vmware::Vapi::Metadata::Cli::Namespace;

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
use Com::Vmware::Vapi::Metadata::Cli::NamespaceStub;

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
# Returns the identifiers of all namespaces registered with the infrastructure.
#
# @retval 
# Identifiers of all the namespaces.
# The return type will be Array of Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Retreives information about a namespace including information about children of that
# namespace.
#
# @param identity [REQUIRED] Identifier of the namespace for which to retreive information.
# . The value must be Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity.
#
# @retval 
# Information about the namespace including information about child of that namespace.
# The return type will be Com::Vmware::Vapi::Metadata::Cli::Namespace::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a namespace corresponding to  ``identity``  doesn&apos;t exist.
#

sub get {
   my ($self, %args) = @_;
   my $identity = $args {identity};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method fingerprint ()
# Returns the aggregate fingerprint of all the namespace metadata from all the metadata
# sources. <p>
# 
# The fingerprint provides clients an efficient way to check if the metadata for namespaces
# has been modified on the server.</p>
#
# @retval 
# Fingerprint of all the namespace metadata present on the server.
# The return type will be String
#

sub fingerprint {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'fingerprint', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Cli::Namespace service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Cli::Namespace service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Cli::Namespace service
#########################################################################################

## @class Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity
#
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity``   *class*  uniquely
#     identifies a namespace in the CLI namespace tree.

package Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{path} = $args{'path'};
   $self->{name} = $args{'name'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::Namespace::Identity');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.cli.namespace.identity');
   $self->set_binding_field('key' => 'path', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_path ()
# Gets the value of 'path' property.
#
# @retval path - The current value of the field.
# The dot-separated path of the namespace containing the namespace in the CLI node tree.
#     For top-level namespace this will be empty.
#
# String#
sub get_path {
   my ($self, %args) = @_;
   return $self->{'path'}; 	
}

## @method set_path ()
# Sets the given value for 'path' property.
# 
# @param path  - New value for the field.
# The dot-separated path of the namespace containing the namespace in the CLI node tree.
#     For top-level namespace this will be empty.
#
sub set_path {
   my ($self, %args) = @_;
   $self->{'path'} = $args{'path'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name displayed to the user for this namespace.
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
# The name displayed to the user for this namespace.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;


## @class Com::Vmware::Vapi::Metadata::Cli::Namespace::Info
#
#
# The  ``Com::Vmware::Vapi::Metadata::Cli::Namespace::Info``   *class*  contains
#     information about a namespace. It includes the identity of the namespace, a
#     description, information children namespaces.

package Com::Vmware::Vapi::Metadata::Cli::Namespace::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vapi::Metadata::Cli::Namespace::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{identity} = $args{'identity'};
   $self->{description} = $args{'description'};
   $self->{children} = $args{'children'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vapi::Metadata::Cli::Namespace::Info');
   $self->set_binding_name('name' => 'com.vmware.vapi.metadata.cli.namespace.info');
   $self->set_binding_field('key' => 'identity', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Namespace::Identity'));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'children', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Cli', 'type_name' => 'Namespace::Identity')));
   bless $self, $class;
   return $self;
}

## @method get_identity ()
# Gets the value of 'identity' property.
#
# @retval identity - The current value of the field.
# Basic namespace identity.
#
# Identity#
sub get_identity {
   my ($self, %args) = @_;
   return $self->{'identity'}; 	
}

## @method set_identity ()
# Sets the given value for 'identity' property.
# 
# @param identity  - New value for the field.
# Basic namespace identity.
#
sub set_identity {
   my ($self, %args) = @_;
   $self->{'identity'} = $args{'identity'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# The text description displayed to the user in help output.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# The text description displayed to the user in help output.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_children ()
# Gets the value of 'children' property.
#
# @retval children - The current value of the field.
# The children of this namespace in the tree of CLI namespaces.
#
# List#
sub get_children {
   my ($self, %args) = @_;
   return $self->{'children'}; 	
}

## @method set_children ()
# Sets the given value for 'children' property.
# 
# @param children  - New value for the field.
# The children of this namespace in the tree of CLI namespaces.
#
sub set_children {
   my ($self, %args) = @_;
   $self->{'children'} = $args{'children'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Cli::Namespace service
#########################################################################################
