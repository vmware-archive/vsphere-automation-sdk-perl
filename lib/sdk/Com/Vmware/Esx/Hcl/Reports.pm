########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Reports.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Esx::Hcl::Reports
# This  *interface*  provides  *methods*  to download information generated from the
#     hardware compatibility feature residing on the vCenter Appliance.
#

package Com::Vmware::Esx::Hcl::Reports;

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
use Com::Vmware::Esx::Hcl::ReportsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.esx.hcl.reports';


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
# Returns the location  class Com::Vmware::Esx::Hcl::Reports::Location  information for
# downloading a compatibility report.
#
# Note:
# Privileges required for this operation are VcIntegrity.HardwareCompatibility.Read.
#
# @param report [REQUIRED] identifier of hardware compatiblity report to be downloaded.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.esx.hcl.resources.CompatibilityReport).
# . The value must be str.
#
# @retval 
# ``Com::Vmware::Esx::Hcl::Reports::Location``   *class*  which includes the URI to
#     file, short lived token and expiry of the token in the  class
#     Com::Vmware::Esx::Hcl::Reports::Location  object.
# The return type will be Com::Vmware::Esx::Hcl::Reports::Location
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no report for the given id.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the caller is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the vCenter this API is executed on is not part of the Customer Experience
#     Improvement Program (CEIP).
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown error. The accompanying error message will give more details
#     about the failure.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li>  *Method*  execution requires  ``VcIntegrity.HardwareCompatibility.Read`` .
#     </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $report = $args {report};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Esx::Hcl::Reports service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Esx::Hcl::Reports service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Esx::Hcl::Reports service
#########################################################################################

## @class Com::Vmware::Esx::Hcl::Reports::Token
#
#
# The  ``Com::Vmware::Esx::Hcl::Reports::Token``   *class*  contains information about
#     the token required to be passed in the HTTP header in the HTTP GET request to generate
#     the report.

package Com::Vmware::Esx::Hcl::Reports::Token;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Reports::Token structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{token} = $args{'token'};
   $self->{expiry} = $args{'expiry'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Reports::Token');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.reports.token');
   $self->set_binding_field('key' => 'token', 'value' => new Com::Vmware::Vapi::Bindings::Type::SecretType());
   $self->set_binding_field('key' => 'expiry', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   bless $self, $class;
   return $self;
}

## @method get_token ()
# Gets the value of 'token' property.
#
# @retval token - The current value of the field.
# A one-time, short-lived token required in the HTTP header of the request to the url.
#     This token needs to be passed in as a header with the name &quot;session-id&quot;.
#
# Secret#
sub get_token {
   my ($self, %args) = @_;
   return $self->{'token'}; 	
}

## @method set_token ()
# Sets the given value for 'token' property.
# 
# @param token  - New value for the field.
# A one-time, short-lived token required in the HTTP header of the request to the url.
#     This token needs to be passed in as a header with the name &quot;session-id&quot;.
#
sub set_token {
   my ($self, %args) = @_;
   $self->{'token'} = $args{'token'}; 
   return;	
}

## @method get_expiry ()
# Gets the value of 'expiry' property.
#
# @retval expiry - The current value of the field.
# Expiry time of the token
#
# DateTime#
sub get_expiry {
   my ($self, %args) = @_;
   return $self->{'expiry'}; 	
}

## @method set_expiry ()
# Sets the given value for 'expiry' property.
# 
# @param expiry  - New value for the field.
# Expiry time of the token
#
sub set_expiry {
   my ($self, %args) = @_;
   $self->{'expiry'} = $args{'expiry'}; 
   return;	
}


1;


## @class Com::Vmware::Esx::Hcl::Reports::Location
#
#
# The  ``Com::Vmware::Esx::Hcl::Reports::Location``   *class*  contains the URI location
#     to download generated compatibility report, as well as a token required (as a header
#     on the HTTP GET request) to get the report. The validity of the token is 5 minutes.
#     After the token expires, any attempt to call the URI with said token will fail.

package Com::Vmware::Esx::Hcl::Reports::Location;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Reports::Location structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{url} = $args{'url'};
   $self->{report_token} = $args{'report_token'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Reports::Location');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.reports.location');
   $self->set_binding_field('key' => 'url', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'report_token', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Reports::Token'));
   bless $self, $class;
   return $self;
}

## @method get_url ()
# Gets the value of 'url' property.
#
# @retval url - The current value of the field.
# Compatibility report download URL.
#
# URI#
sub get_url {
   my ($self, %args) = @_;
   return $self->{'url'}; 	
}

## @method set_url ()
# Sets the given value for 'url' property.
# 
# @param url  - New value for the field.
# Compatibility report download URL.
#
sub set_url {
   my ($self, %args) = @_;
   $self->{'url'} = $args{'url'}; 
   return;	
}

## @method get_report_token ()
# Gets the value of 'report_token' property.
#
# @retval report_token - The current value of the field.
# Information about the token required in the HTTP GET request to download the
#     compatibility report.
#
# Token#
sub get_report_token {
   my ($self, %args) = @_;
   return $self->{'report_token'}; 	
}

## @method set_report_token ()
# Sets the given value for 'report_token' property.
# 
# @param report_token  - New value for the field.
# Information about the token required in the HTTP GET request to download the
#     compatibility report.
#
sub set_report_token {
   my ($self, %args) = @_;
   $self->{'report_token'} = $args{'report_token'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Esx::Hcl::Reports service
#########################################################################################
