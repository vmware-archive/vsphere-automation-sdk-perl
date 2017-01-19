########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Package.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vapi::Metadata::Privilege::Package
# The  ``Com::Vmware::Vapi::Metadata::Privilege::Package``   *interface*  provides 
#     *methods*  to retrieve privilege information of a package element. <p>
# 
# A package element is said to contain privilege information if there is a default
#     privilege assigned to all service elements contained in the package element or if one
#     of the operation elements contained in one of the service elements in this package
#     element has privilege information.</p>
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for package.

package Com::Vmware::Vapi::Metadata::Privilege::Package;

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
use Com::Vmware::Vapi::Metadata::Privilege::PackageStub;

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
# Returns the identifiers for the package elements that have privilege information.
#
# @retval 
# The list of identifiers for the package elements that have privilege information.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.package).
# The return type will be Array of str
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method get ()
# Retrieves privilege information about the package element corresponding to  ``package_id``
# .
#
# @param package_id [REQUIRED] Identifier of the package element.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vapi.package).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Vapi::Metadata::Privilege::PackageInfo  instance that
#     corresponds to  ``package_id`` 
# The return type will be Com::Vmware::Vapi::Metadata::Privilege::PackageInfo
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the package element associated with  ``package_id``  does not have any privilege
#     information.
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
# Begins enumerations for the Com::Vmware::Vapi::Metadata::Privilege::Package service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vapi::Metadata::Privilege::Package service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vapi::Metadata::Privilege::Package service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vapi::Metadata::Privilege::Package service
#########################################################################################
