########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Structure.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Metamodel::Structure
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Structure``   *interface*  providers 
#     *methods*  to retrieve metamodel information about a structure element in the
#     interface definition language.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for structure.

package Com::Vmware::Vapi::Metadata::Metamodel::Structure;

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
use Com::Vmware::Vapi::Metadata::Metamodel::StructureStub;

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
# Returns the identifiers for the structure elements that are contained in all the package
# elements and service elements.
#
# @retval 
# The list of identifiers for the structure elements.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.structure).
# The return type will be Array of str
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Retrieves information about the structure element corresponding to  ``structure_id`` . <p>
# 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo  contains the metamodel
# information about the structure element. It contains information about all the field
# elements and enumeration elements contained in this structure element.</p>
#
# @param structure_id [REQUIRED] Identifier of the structure element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.structure).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo  instance that
#     corresponds to  ``structure_id`` .
# The return type will be Com::Vmware::Vapi::Metadata::Metamodel::StructureInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the structure element associated with  ``structure_id``  is not contained in any of
#     the package elements or service elements.
#

sub get {
   my ($self, %args) = @_;
   my $structure_id = $args {structure_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Structure service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Structure service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Metamodel::Structure service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Metamodel::Structure service
#########################################################################################
