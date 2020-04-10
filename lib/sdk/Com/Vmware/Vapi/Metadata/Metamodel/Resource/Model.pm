########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Model.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model``   *interface* 
#     provides  *methods*  to retrieve information about models. <p>
# 
# A structure is used as a model if it is used for persisting data about an entity. Some
#     of the fields in the model structure are also used for creating indexes for querying.
#     </p>
# 
# <p>
# 
# One or more services can operate on the same resource type. One or more services can
#     provide the model structure for an entity of this resource type. Using 
#     ``Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model``   *interface*  you can
#     retrieve the list of all the structure elements that are model structures for a given
#     resource type.</p>
#

package Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model;

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
use Com::Vmware::Vapi::Metadata::Metamodel::Resource::ModelStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vapi.metadata.metamodel.resource.model';


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
# Returns the set of identifiers for the structure elements that are models for the resource
# type corresponding to  ``resource_id`` . <p>
# 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::Structure   *interface*  provides 
# *methods*  to retrieve more details about the structure elements corresponding to the
# identifiers returned by this  *method* .</p>
#
# @param resource_id [REQUIRED] Identifier of the resource type.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.resource).
# . The value must be str.
#
# @retval 
# The set of identifiers for the models that are associated with the resource type in 
#     ``resource_id`` .
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.structure).
# The return type will be Set of str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the resource type associated with  ``resource_id``  does not exist.
#
sub list {
   my ($self, %args) = @_;
   my $resource_id = $args {resource_id};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Metamodel::Resource::Model service
#########################################################################################
