########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Reports.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Lcm::Reports
# The  ``Report``   *interface*  provides an  *method*  to download the report generated
#     by the interop and precheck operations. To download a report, you must use the 
#     ``get``   *method* . A  ``Report.Location``   *class*  represents the location of the
#     file which has  ``Report.Token``   *class*  which represents the token ID (@name
#     String) and the expiration time of the token  ``Report.Token.expiry``   *DateTime* . 
#     ``Report.Location``   *class*  also has the URI for the file which needs to be
#     downloaded.
#

package Com::Vmware::Vcenter::Lcm::Reports;

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
use Com::Vmware::Vcenter::Lcm::ReportsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.lcm.reports';


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
# Returns the location  class Com::Vmware::Vcenter::Lcm::Reports::Location  information for
# downloading the report for the specified file name. <p>
# 
#  Retrieving a report involves two steps: </p>
# 
# <ul>
# <li>Step 1: Invoke the  :func:`Com::Vmware::Vcenter::Lcm::Reports.get`   *method*  to
# provision a token and a URI.</li>
# <li>Step 2: Make an HTTP GET request by using the URI and the token returned in step 1 to
# retrieve the report.</li>
#  </ul> <p>
# 
#  The HTTP GET request will: </p>
# 
# <ul>
# <li> Return 401 (Not Authorized) if the download URI is recognized, but the token is
# invalid, 404 if the URL is not recognized otherwise return 200 (OK)</li>
# <li> Provide the CSV contents as the output of the request. The API accepts the file name
# as input, reads the contents of that CSV file, and returns this text as the result of the
# API. </li>
#  </ul>
#
# @param report [REQUIRED] 
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.lcm.report).
# . The value must be str.
#
# @retval 

# The return type will be Com::Vmware::Vcenter::Lcm::Reports::Location
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If there is no file associated with  ``report``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# If there is some unknown internal error. The accompanying error message will give more
#     details about the failure.
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
# Begins enumerations for the Com::Vmware::Vcenter::Lcm::Reports service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Lcm::Reports service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Lcm::Reports service
#########################################################################################

## @class Com::Vmware::Vcenter::Lcm::Reports::Token
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Reports::Token``   *class*  contains information
#     about the token required in the HTTP GET request to generate the report.

package Com::Vmware::Vcenter::Lcm::Reports::Token;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Reports::Token structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Reports::Token');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.reports.token');
   $self->set_binding_field('key' => 'token', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
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
# String#
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


## @class Com::Vmware::Vcenter::Lcm::Reports::Location
#
#
# The  ``Com::Vmware::Vcenter::Lcm::Reports::Location``   *class*  contains the URI
#     location to download the report from, as well as a token required (as a header on the
#     HTTP request) to get the bundle. The validity of the token is 5 minutes as best
#     attempt. After the token expires, any attempt to call the URI with said token will
#     fail.

package Com::Vmware::Vcenter::Lcm::Reports::Location;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Lcm::Reports::Location structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{uri} = $args{'uri'};
   $self->{download_file_token} = $args{'download_file_token'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Lcm::Reports::Location');
   $self->set_binding_name('name' => 'com.vmware.vcenter.lcm.reports.location');
   $self->set_binding_field('key' => 'uri', 'value' => new Com::Vmware::Vapi::Bindings::Type::URIType());
   $self->set_binding_field('key' => 'download_file_token', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Lcm', 'type_name' => 'Reports::Token'));
   bless $self, $class;
   return $self;
}

## @method get_uri ()
# Gets the value of 'uri' property.
#
# @retval uri - The current value of the field.
# Report Download URI.
#
# URI#
sub get_uri {
   my ($self, %args) = @_;
   return $self->{'uri'}; 	
}

## @method set_uri ()
# Sets the given value for 'uri' property.
# 
# @param uri  - New value for the field.
# Report Download URI.
#
sub set_uri {
   my ($self, %args) = @_;
   $self->{'uri'} = $args{'uri'}; 
   return;	
}

## @method get_download_file_token ()
# Gets the value of 'download_file_token' property.
#
# @retval download_file_token - The current value of the field.
# Information about the token required in the HTTP GET request to retrieve the report
#
# Token#
sub get_download_file_token {
   my ($self, %args) = @_;
   return $self->{'download_file_token'}; 	
}

## @method set_download_file_token ()
# Sets the given value for 'download_file_token' property.
# 
# @param download_file_token  - New value for the field.
# Information about the token required in the HTTP GET request to retrieve the report
#
sub set_download_file_token {
   my ($self, %args) = @_;
   $self->{'download_file_token'} = $args{'download_file_token'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Lcm::Reports service
#########################################################################################
