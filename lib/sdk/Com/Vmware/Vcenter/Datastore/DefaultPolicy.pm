########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file DefaultPolicy.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Datastore::DefaultPolicy
# The  ``Com::Vmware::Vcenter::Datastore::DefaultPolicy``   *interface*  provides 
#     *methods*  related to storage policies associated with datastore object. The 
#     :func:`Com::Vmware::Vcenter::Datastore::DefaultPolicy.get`   *method*  provides
#     information about the default storage policy associated with the specific datastore.
#     This  *interface*  was added in vSphere API 6.7.
#

package Com::Vmware::Vcenter::Datastore::DefaultPolicy;

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
use Com::Vmware::Vcenter::Datastore::DefaultPolicyStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.datastore.default_policy';


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
# Returns the identifier of the current default storage policy associated with the specified
# datastore. This  *method*  was added in vSphere API 6.7.
#
# @param datastore [REQUIRED] Identifier of the datastore for which the default policy is requested.
# The value must be an identifier for the resource type getQualifiedName(Datastore).
# . The value must be str.
#
# @retval 
# Identifier of the default storage policy associated with the specified datastore.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.StoragePolicy).
# this field is  *null*  if there is no default storage policy associated with the
#     datastore.
# The return type will be str or None
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the specified datastore does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user is not authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have the required priveleges.
#
sub get {
   my ($self, %args) = @_;
   my $datastore = $args {datastore};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Datastore::DefaultPolicy service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Datastore::DefaultPolicy service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Datastore::DefaultPolicy service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Datastore::DefaultPolicy service
#########################################################################################
