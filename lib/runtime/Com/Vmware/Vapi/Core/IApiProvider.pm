########################################################################
# Copyright (C) 2013 VMware, Inc.
########################################################################
## @file IApiProvider.pm
# The file implements IApiProvider perl module.
#
# @copy 2013, VMware Inc.
#

#
# @class IApiProvider
# Provides interface and method introspection and invocation operations for use by API clients. 
#
# @par Assumptions:
# None.
#
# @par Dependencies:
# None
package Com::Vmware::Vapi::Core::IApiProvider;

#
# Core Perl modules
#
use strict;
use warnings;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Util::Logger
  qw(log_info log_error log_verbose log_warning log_framework log_dumper);

#
# @method new
# Constructor
#
# @param
# None.
#
# @return
# Blessed object
#
sub new {
   my $class = shift;
   my $self  = {};
   bless( $self, $class );
   return ($self);
}

#
# @method get_definition
# Get Definition
#
# @return
# Returns the definition for this API provider.
#
# @par Side Effects:
# None
#
sub get_definition {
   my ($self) = shift;
   return;
}

#
# @method get_interface_identifiers
# Get InterfaceIdentifiers
#
# @return
# Returns the set of interface identifiers supported by this provider.
#
# @par Side Effects:
# None
#
sub get_interface_identifiers {
   my ($self) = shift;
   return;
}

#
# @method get_method_identifiers
# Get MethodIdentifiers
#
# @return
# Returns the set of method identifiers supported by this provider.
#
# @par Side Effects:
# None
#
sub get_method_identifiers {
   my ($self) = shift;
   return;
}

#
# @method get_interface
# Get Interface
#
# @return
# Returns interface definition for a given interface identifier.
#
# @par Side Effects:
# None
#
sub get_interface {
   my ($self) = shift;
   return;
}

#
# @method get_interfaces
# Get Interfaces
#
# @return
# Returns a set of interface definitions for a given set of interface identifiers.
#
# @par Side Effects:
# None
#
sub get_interfaces {
   my ($self) = shift;
   return;
}

#
# @method get_method
# Get Method
#
# @return
# Returns method definitions for a given method identifier or null if no such method is available.
#
# @par Side Effects:
# None
#
sub get_method {
   my ($self) = shift;
   return;
}

#
# @method get_methods
# Get Methods
#
# @return
# Returns a set of method definitions for a given set of method identifiers. 
# null element or identifiers for unknown methods in the input 
# set are ignored. Thus the returned set may have less elements than the input one. The result may be empty, but never null/undef
#
# @par Side Effects:
# None
#
sub get_methods {
   my ($self) = shift;
   return;
}

#
# @method invoke_method
# invokeMethod
#
# @return
# Invokes the specified method using the provided input and execution context.
#
# @par Side Effects:
# None
#
sub invoke_method {
   my ($self) = shift;
   return;
}

1;
