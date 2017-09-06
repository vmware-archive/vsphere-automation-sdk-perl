########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file SubscribedLibrary.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;
#use Com::Vmware::Content::Library;

## @class Com::Vmware::Content::SubscribedLibrary

#

package Com::Vmware::Content::SubscribedLibrary;

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
use Com::Vmware::Content::SubscribedLibraryStub;

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

## @method create ()
# Creates a new subscribed library. <p>
# 
# Once created, the subscribed library will be empty. If the 
# :attr:`Com::Vmware::Content::LibraryModel.subscription_info`  property is set, the Content
# Library Service will attempt to synchronize to the remote source. This is an asynchronous
# operation so the content of the published library may not immediately appear.</p>
#
# @param client_token [OPTIONAL] Unique token generated on the client for each creation request. The token should be a
#     universally unique identifier (UUID), for example: 
#     ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee
#     idempotent creation.
# If not specified creation is not idempotent.
# . The value must be String or None.
#
# @param create_spec [REQUIRED]  Specification for the new subscribed library.
# . The value must be Com::Vmware::Content::LibraryModel.
#
# @retval 
# Identifier of the newly created subscribed library.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the  ``create_spec``  is not valid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the  ``client_token``  does not conform to the UUID format.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
#  if using multiple storage backings.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
#  if subscribing to a published library which cannot be accessed.
#

sub create {
   my ($self, %args) = @_;
   my $client_token = $args {client_token};
   my $create_spec = $args {create_spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method delete ()
# Deletes the specified subscribed library. <p>
# 
# Deleting a subscribed library will remove the entry immediately and begin an asynchronous
# task to remove all cached content for the library. If the asynchronous task fails, file
# content may remain on the storage backing. This content will require manual removal.</p>
#
# @param library_id [REQUIRED]  Identifier of the subscribed library to delete.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  if the library referenced by  ``library_id``  is not a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library referenced by  ``library_id``  does not exist.
#

sub delete {
   my ($self, %args) = @_;
   my $library_id = $args {library_id};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method evict ()
# Evicts the cached content of an on-demand subscribed library. <p>
# 
# This  *method*  allows the cached content of a subscribed library to be removed to free up
# storage capacity. This  *method*  will only work when a subscribed library is synchronized
# on-demand.</p>
#
# @param library_id [REQUIRED]  Identifier of the subscribed library whose content should be evicted.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library specified by  ``library_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  if the library specified by  ``library_id``  is not a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
#  if the library specified by  ``library_id``  does not synchronize on-demand.
#

sub evict {
   my ($self, %args) = @_;
   my $library_id = $args {library_id};

   $self->validate_args (method_name => 'evict',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'evict',
                         method_args => \%args);
}


## @method get ()
# Returns a given subscribed library.
#
# @param library_id [REQUIRED]  Identifier of the subscribed library to return.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Content::LibraryModel  instance that corresponds to 
#     ``library_id`` .
# The return type will be Com::Vmware::Content::LibraryModel
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library associated with  ``library_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  if the library associated with  ``library_id``  is not a subscribed library.
#

sub get {
   my ($self, %args) = @_;
   my $library_id = $args {library_id};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Returns the identifiers of all subscribed libraries in the Content Library.
#
# @retval 
# The  *list*  of identifiers of all subscribed libraries in the Content Library.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# The return type will be Array of str
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method sync ()
# Forces the synchronization of the subscribed library. <p>
# 
# Synchronizing a subscribed library forcefully with this  *method*  will perform the same
# synchronization behavior as would run periodically for the library. The 
# :attr:`Com::Vmware::Content::Library::SubscriptionInfo.on_demand`  setting is respected.
# Calling this  *method*  on a library that is already in the process of synchronizing will
# have no effect.</p>
#
# @param library_id [REQUIRED]  Identifier of the subscribed library to synchronize.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library specified by  ``library_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  if the library specified by  ``library_id``  is not a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if some parameter in the subscribed library subscription info is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
#  if the published library cannot be contacted or found.
#

sub sync {
   my ($self, %args) = @_;
   my $library_id = $args {library_id};

   $self->validate_args (method_name => 'sync',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'sync',
                         method_args => \%args);
}


## @method update ()
# Updates the properties of a subscribed library. <p>
# 
# This is an incremental update to the subscribed library.  *Fields*  that are  *null*  in
# the update specification will be left unchanged.</p>
#
# @param library_id [REQUIRED]  Identifier of the subscribed library to update.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @param update_spec [REQUIRED]  Specification of the new property values to set on the subscribed library.
# . The value must be Com::Vmware::Content::LibraryModel.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library specified by  ``library_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  if the library specified by  ``library_id``  is not a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the  ``update_spec``  is not valid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Content::LibraryModel.version`  of  ``update_spec``  is
#     not equal to the current version of the library.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the subscription info is being updated but the published library cannot be
#     contacted or found.
#

sub update {
   my ($self, %args) = @_;
   my $library_id = $args {library_id};
   my $update_spec = $args {update_spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method probe ()
# Probes remote library subscription information, including URL, SSL certificate and
# password. The resulting  class Com::Vmware::Content::SubscribedLibrary::ProbeResult  
# *class*  describes whether or not the subscription configuration is successful.
#
# @param subscription_info [REQUIRED]  The subscription info to be probed.
# . The value must be Com::Vmware::Content::Library::SubscriptionInfo.
#
# @retval 
# The subscription info probe result.
# The return type will be Com::Vmware::Content::SubscribedLibrary::ProbeResult
#

sub probe {
   my ($self, %args) = @_;
   my $subscription_info = $args {subscription_info};

   $self->validate_args (method_name => 'probe',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'probe',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::SubscribedLibrary service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::SubscribedLibrary service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::SubscribedLibrary service
#########################################################################################

## @class Com::Vmware::Content::SubscribedLibrary::ProbeResult
#
#
# The  ``Com::Vmware::Content::SubscribedLibrary::ProbeResult``   *class*  defines the
#     subscription information probe result. This describes whether using a given
#     subscription URL is successful or if there are access problems, such as SSL errors.

package Com::Vmware::Content::SubscribedLibrary::ProbeResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::SubscribedLibrary::ProbeResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{status} = $args{'status'};
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};
   $self->{error_messages} = $args{'error_messages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::SubscribedLibrary::ProbeResult');
   $self->set_binding_name('name' => 'com.vmware.content.subscribed_library.probe_result');
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content', 'type_name' => 'SubscribedLibrary::ProbeResult::Status'));
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'error_messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# The status of probe result. This will be one of SUCCESS, INVALID_URL, TIMED_OUT,
#     HOST_NOT_FOUND, RESOURCE_NOT_FOUND, INVALID_CREDENTIALS, CERTIFICATE_ERROR,
#     UNKNOWN_ERROR.
#
# Status#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The status of probe result. This will be one of SUCCESS, INVALID_URL, TIMED_OUT,
#     HOST_NOT_FOUND, RESOURCE_NOT_FOUND, INVALID_CREDENTIALS, CERTIFICATE_ERROR,
#     UNKNOWN_ERROR.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# The SSL thumbprint for the remote endpoint.
#
# Optional#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.
# The SSL thumbprint for the remote endpoint.
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}

## @method get_error_messages ()
# Gets the value of 'error_messages' property.
#
# @retval error_messages - The current value of the field.
# If the probe result is in an error status, this  *field*  will contain the detailed
#     error messages.
#
# List#
sub get_error_messages {
   my ($self, %args) = @_;
   return $self->{'error_messages'}; 	
}

## @method set_error_messages ()
# Sets the given value for 'error_messages' property.
# 
# @param error_messages  - New value for the field.
# If the probe result is in an error status, this  *field*  will contain the detailed
#     error messages.
#
sub set_error_messages {
   my ($self, %args) = @_;
   $self->{'error_messages'} = $args{'error_messages'}; 
   return;	
}


1;


## @class Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status
#
# The  ``Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status``   *enumerated
#     type*  defines the error status constants for the probe result.
#
#
#
# Constant Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status::SUCCESS #
#Indicates that the probe was successful.
#
# Constant Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status::INVALID_URL #
#Indicates that the supplied URL was not valid.
#
# Constant Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status::TIMED_OUT #
#Indicates that the probe timed out while attempting to connect to the URL.
#
# Constant Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status::HOST_NOT_FOUND #
#Indicates that the host in the URL could not be found.
#
# Constant Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status::RESOURCE_NOT_FOUND #
#Indicates that the given resource at the URL was not found.
#
# Constant Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status::INVALID_CREDENTIALS #
#Indicates that the connection was rejected due to invalid credentials.
#
# Constant Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status::CERTIFICATE_ERROR #
#Indicates that the provided server certificate thumbprint in 
# :attr:`Com::Vmware::Content::Library::SubscriptionInfo.ssl_thumbprint`  is invalid. In
# this case, the returned null should be set in 
# :attr:`Com::Vmware::Content::Library::SubscriptionInfo.ssl_thumbprint` .
#
# Constant Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status::UNKNOWN_ERROR #
#Indicates an unspecified error different from the other error cases defined in  class
# Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status .

package Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status;

use constant {
    SUCCESS =>  'SUCCESS',
    INVALID_URL =>  'INVALID_URL',
    TIMED_OUT =>  'TIMED_OUT',
    HOST_NOT_FOUND =>  'HOST_NOT_FOUND',
    RESOURCE_NOT_FOUND =>  'RESOURCE_NOT_FOUND',
    INVALID_CREDENTIALS =>  'INVALID_CREDENTIALS',
    CERTIFICATE_ERROR =>  'CERTIFICATE_ERROR',
    UNKNOWN_ERROR =>  'UNKNOWN_ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.subscribed_library.probe_result.status',
                           'binding_class' => 'Com::Vmware::Content::SubscribedLibrary::ProbeResult::Status');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;



#########################################################################################
# Ends structures for the Com::Vmware::Content::SubscribedLibrary service
#########################################################################################
