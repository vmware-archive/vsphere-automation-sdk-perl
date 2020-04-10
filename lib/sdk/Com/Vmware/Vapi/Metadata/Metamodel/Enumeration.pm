########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Enumeration.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Metamodel::Enumeration
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Enumeration``   *interface*  provides 
#     *methods*  to retrieve metamodel information about an enumeration element in the
#     interface definition language. <p>
# 
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Enumeration``  has a list of
#     enumeration value elements.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for enumeration.

package Com::Vmware::Vapi::Metadata::Metamodel::Enumeration;

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
use Com::Vmware::Vapi::Metadata::Metamodel::EnumerationStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vapi.metadata.metamodel.enumeration';


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
# Returns the identifiers for the enumeration elements that are contained in all the package
# elements, service elements and structure elements.
#
# @retval 
# The list of identifiers for the enumeration elements.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.enumeration).
# The return type will be Array of str
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method get ()
# Retrieves information about the enumeration element corresponding to  ``enumeration_id`` .
# <p>
# 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo  contains the metamodel
# information about the enumeration value element contained in the enumeration element.</p>
#
# @param enumeration_id [REQUIRED] Identifier of the enumeration element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.enumeration).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo  instance that
#     corresponds to  ``enumeration_id`` 
# The return type will be Com::Vmware::Vapi::Metadata::Metamodel::EnumerationInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the enumeration element associated with  ``enumeration_id``  is not contained in
#     any of the package elements, service elements and structure elements.
#
sub get {
   my ($self, %args) = @_;
   my $enumeration_id = $args {enumeration_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Enumeration service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Enumeration service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Metamodel::Enumeration service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Metamodel::Enumeration service
#########################################################################################
