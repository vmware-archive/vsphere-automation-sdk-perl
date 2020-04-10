########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Package.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Metamodel::Package
# The  ``Com::Vmware::Vapi::Metadata::Metamodel::Package``   *interface*  provides 
#     *methods*  to retrieve metamodel information about a package element in the interface
#     definition language. <p>
# 
# A package is a logical grouping of services, structures and enumerations. A package
#     element describes the package. It contains the service elements, structure elements
#     and enumeration elements that are grouped together.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for package.

package Com::Vmware::Vapi::Metadata::Metamodel::Package;

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
use Com::Vmware::Vapi::Metadata::Metamodel::PackageStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vapi.metadata.metamodel.package';


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
# Returns the identifiers for the packages elements that are contained in all the registered
# component elements.
#
# @retval 
# The list of identifiers for the package elements that are contained in all the
#     registered component elements.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.package).
# The return type will be Array of str
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

## @method get ()
# Retrieves information about the package element corresponding to  ``package_id`` .
#
# @param package_id [REQUIRED] Identifier of the package element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.package).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo  instance that
#     corresponds to  ``package_id`` .
# The return type will be Com::Vmware::Vapi::Metadata::Metamodel::PackageInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the package element associated with  ``package_id``  does not exist.
#
sub get {
   my ($self, %args) = @_;
   my $package_id = $args {package_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Package service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Metamodel::Package service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Metamodel::Package service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Metamodel::Package service
#########################################################################################
