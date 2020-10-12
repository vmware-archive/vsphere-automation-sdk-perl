########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Details.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Esx::Settings::Clusters::Software::Reports;

## @class Com::Vmware::Esx::Settings::Clusters::Software::Reports::Hardware_compatibility::Details
# The  ``ComplianceStatus``   *class*  contains the possible different status of
#     compliance with respect to target version.
#

package Com::Vmware::Esx::Settings::Clusters::Software::Reports::Hardware_compatibility::Details;

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
use Com::Vmware::Esx::Settings::Clusters::Software::Reports::Hardware_compatibility::DetailsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.settings.clusters.software.reports.hardware_compatibility.details';


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

## @method get ()
# Returns the hcl validation check detailed results.
#
# Note:
# Privileges required for this operation are VcIntegrity.HardwareCompatibility.Read.
#
# @param cluster [REQUIRED] identifier of the cluster.
# The value must be an identifier for the resource type
#     getQualifiedName(ClusterComputeResource).
# . The value must be str.
#
# @retval 
# CheckResult hcl validation result.
# The return type will be
# Com::Vmware::Esx::Settings::Clusters::Software::Reports::CheckResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some other unknown internal error. The accompanying error message will
#     give more details about the failure.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no cluster associated with  ``cluster``  in the system or if desired
#     software document is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# If the service is not available.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires  ``VcIntegrity.HardwareCompatibility.Read`` .
#     </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *parameter*  
#     ``cluster``  requires  ``VcIntegrity.HardwareCompatibility.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $cluster = $args {cluster};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::Hardware_compatibility::Details service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::Hardware_compatibility::Details service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::Hardware_compatibility::Details service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Esx::Settings::Clusters::Software::Reports::Hardware_compatibility::Details service
#########################################################################################
