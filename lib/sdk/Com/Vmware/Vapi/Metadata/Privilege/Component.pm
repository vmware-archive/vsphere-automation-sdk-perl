########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Component.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Privilege::Component
# The  ``Com::Vmware::Vapi::Metadata::Privilege::Component``   *interface*  provides 
#     *methods*  to retrieve privilege information of a component element. <p>
# 
# A component element is said to contain privilege information if any one of package
#     elements in it contains privilege information.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for vAPI component.

package Com::Vmware::Vapi::Metadata::Privilege::Component;

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
use Com::Vmware::Vapi::Metadata::Privilege::ComponentStub;

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
# Returns the identifiers for the component elements that have privilege information.
#
# @retval 
# The list of identifiers for the component elements that have privilege information.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.component).
# The return type will be Array of str
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Retrieves privilege information about the component element corresponding to 
# ``component_id`` . <p>
# 
# The  class Com::Vmware::Vapi::Metadata::Privilege::ComponentData  contains the privilege
# information about the component element and its fingerprint. It contains information about
# all the package elements that belong to this component element.</p>
#
# @param component_id [REQUIRED] Identifier of the component element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.component).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vapi::Metadata::Privilege::ComponentData  instance that
#     corresponds to  ``component_id`` 
# The return type will be Com::Vmware::Vapi::Metadata::Privilege::ComponentData
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the component element associated with  ``component_id``  does not have any
#     privilege information.
#

sub get {
   my ($self, %args) = @_;
   my $component_id = $args {component_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method fingerprint ()
# Retrieves the fingerprint computed from the privilege metadata of the component element
# corresponding to  ``component_id`` . <p>
# 
# The fingerprint provides clients an efficient way to check if the metadata for a
# particular component has been modified on the server. The client can do this by comparing
# the result of this operation with the fingerprint returned in the result of 
# :func:`Com::Vmware::Vapi::Metadata::Privilege::Component.get` .</p>
#
# @param component_id [REQUIRED] Identifier of the component element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.component).
# . The value must be str.
#
# @retval 
# The fingerprint computed from the privilege metadata of the component.
# The return type will be String
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the component element associated with  ``component_id``  does not have any
#     privilege information.
#

sub fingerprint {
   my ($self, %args) = @_;
   my $component_id = $args {component_id};

   $self->validate_args (method_name => 'fingerprint',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'fingerprint',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Privilege::Component service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Privilege::Component service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Privilege::Component service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Privilege::Component service
#########################################################################################
