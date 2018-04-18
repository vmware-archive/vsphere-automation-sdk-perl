########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LocalLibrary.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::LocalLibrary
# The  ``Com::Vmware::Content::LocalLibrary``   *interface*  manages local libraries.
#     <p>
# 
# The  ``Com::Vmware::Content::LocalLibrary``   *interface*  provides support for
#     creating and maintaining local library instances. A local library may also use the 
#     class Com::Vmware::Content::Library   *interface*  to manage general library
#     functionality.</p>
#

package Com::Vmware::Content::LocalLibrary;

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
use Com::Vmware::Content::LocalLibraryStub;

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
# Creates a new local library.
#
# Note:
# Privileges required for this operation are ContentLibrary.CreateLocalLibrary.
#
# @param client_token [OPTIONAL] A unique token generated on the client for each creation request. The token should be
#     a universally unique identifier (UUID), for example: 
#     ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee
#     idempotent creation.
# If not specified creation is not idempotent.
# . The value must be String or None.
#
# @param create_spec [REQUIRED]  Specification for the new local library.
# . The value must be Com::Vmware::Content::LibraryModel.
#
# @retval 
# Identifier of the newly created  class Com::Vmware::Content::LibraryModel .
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
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``ContentLibrary.CreateLocalLibrary`` . </li>
# </ul>
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
# Deletes the specified local library. <p>
# 
# Deleting a local library will remove the entry immediately and begin an asynchronous task
# to remove all cached content for the library. If the asynchronous task fails, file content
# may remain on the storage backing. This content will require manual removal.</p>
#
# Note:
# Privileges required for this operation are ContentLibrary.DeleteLocalLibrary.
#
# @param library_id [REQUIRED]  Identifier of the local library to delete.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  if the library specified by  ``library_id``  is not a local library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library specified by  ``library_id``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library_id``  requires  ``ContentLibrary.DeleteLocalLibrary`` . </li>
# </ul>
#

sub delete {
   my ($self, %args) = @_;
   my $library_id = $args {library_id};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method get ()
# Returns a given local library.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param library_id [REQUIRED]  Identifier of the local library to return.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @retval 
# The  class Com::Vmware::Content::LibraryModel  instance associated with 
#     ``library_id`` .
# The return type will be Com::Vmware::Content::LibraryModel
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library specified by  ``library_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  if the library specified by  ``library_id``  is not a local library.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library_id``  requires  ``System.Read`` . </li>
# </ul>
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
# Returns the identifiers of all local libraries in the Content Library.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @retval 
# The  *list*  of identifiers of all local libraries in the Content Library.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# The return type will be Array of str
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# </ul>
#

sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}


## @method update ()
# Updates the properties of a local library. <p>
# 
# This is an incremental update to the local library.  *Fields*  that are  *null*  in the
# update specification will be left unchanged.</p>
#
# Note:
# Privileges required for this operation are ContentLibrary.UpdateLocalLibrary.
#
# @param library_id [REQUIRED]  Identifier of the local library to update.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @param update_spec [REQUIRED]  Specification of the new property values to set on the local library.
# . The value must be Com::Vmware::Content::LibraryModel.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library specified by  ``library_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the library specified by  ``library_id``  is a published library with JSON
#     persistence enabled (see 
#     :attr:`Com::Vmware::Content::Library::PublishInfo.persist_json_enabled` ) and the
#     content of the library has been deleted from the storage backings (see 
#     :attr:`Com::Vmware::Content::LibraryModel.storage_backings` ) associated with it.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  if the library specified by  ``library_id``  is not a local library.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the  ``update_spec``  is not valid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Content::Library::PublishInfo.current_password`  in the 
#     ``update_spec``  does not match the existing password of the published library.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the  :attr:`Com::Vmware::Content::LibraryModel.version`  of  ``update_spec``  is 
#     *null*  and the library is being concurrently updated by another user.
#
# @throw Com::Vmware::Vapi::Std::Errors::ConcurrentChange 
# if the  :attr:`Com::Vmware::Content::LibraryModel.version`  of  ``update_spec``  is
#     not equal to the current version of the library.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library_id``  requires  ``ContentLibrary.UpdateLocalLibrary`` . </li>
# </ul>
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


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::LocalLibrary service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::LocalLibrary service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::LocalLibrary service
#########################################################################################


#########################################################################################
# Ends structures for the Com::Vmware::Content::LocalLibrary service
#########################################################################################
