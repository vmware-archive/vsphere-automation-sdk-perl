########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Resource.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Metamodel::Resource
# The  class Com::Vmware::Vapi::Metadata::Metamodel::Resource   *interface*  provides 
#     *methods*  to retrieve information about resource types. <p>
# 
# A service is a logical grouping of operations that operate on an entity. Each entity
#     is identifier by a namespace (or resource type) and an unique identifier.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for resource.

package Com::Vmware::Vapi::Metadata::Metamodel::Resource;

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
use Com::Vmware::Vapi::Metadata::Metamodel::ResourceStub;

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
# Returns the set of resource types present across all the service elements contained in all
# the package elements.
#
# @retval 
# Set of resource types
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.resource).
# The return type will be Set of str
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Resource service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Resource service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Metamodel::Resource service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Metamodel::Resource service
#########################################################################################
