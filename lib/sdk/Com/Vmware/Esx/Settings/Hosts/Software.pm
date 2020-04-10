########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Software.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Esx::Settings;

## @class Com::Vmware::Esx::Settings::Hosts::Software
# The  ``Com::Vmware::Esx::Settings::Hosts::Software``   *interface*  provides 
#     *methods*  to manage desired software specification of a standalone ESX host.
#

package Com::Vmware::Esx::Settings::Hosts::Software;

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
use Com::Vmware::Esx::Settings::Hosts::SoftwareStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.hosts.software';

#
# Identifiers of the task operations
#
our $_VAPI_OPERATION_IDS = ();
$_VAPI_OPERATION_IDS->{'scan_task'} = 'scan$task';

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

## @method scan_task ()
# Scans the host against the host&apos;s desired state.. The result of this operation can be
# queried by calling the cis/tasks/{task-id} where the task-id is the response of this
# operation.
#
# @param host [REQUIRED] Identifier of the host.
# The value must be an identifier for the resource type getQualifiedName(HostSystem).
# . The value must be str.
#
# @retval 
# Compliance result of the host.
# The return type will be string
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is unknown internal error. The accompanying error message will give more
#     details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no host associated with  ``host``  in the system or if desired software
#     document is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# If the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# If the host is not a standlone host, but instead part of a cluster.
#
sub scan_task {
   my ($self, %args) = @_;
   my $host = $args {host};

   $self->validate_args (method_name => 'scan$task',
                         method_args => \%args);

   return $self->invoke (method_name => 'scan$task',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Hosts::Software service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Hosts::Software service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Hosts::Software service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Hosts::Software service
#########################################################################################
