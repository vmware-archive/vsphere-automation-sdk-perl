########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Storage.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Content::Library;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library::Item::Storage
# ``Com::Vmware::Content::Library::Item::Storage``  is a resource that represents a
#     specific instance of a file stored on a storage backing. Unlike  class
#     Com::Vmware::Content::Library::Item::File , which is abstract, storage represents
#     concrete files on the various storage backings. A file is only represented once in 
#     class Com::Vmware::Content::Library::Item::File , but will be represented multiple
#     times (once for each storage backing) in 
#     ``Com::Vmware::Content::Library::Item::Storage`` . The 
#     ``Com::Vmware::Content::Library::Item::Storage``   *interface*  provides information
#     on the storage backing and the specific location of the file in that backing to
#     privileged users who want direct access to the file on the storage medium.
#

package Com::Vmware::Content::Library::Item::Storage;

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
use Com::Vmware::Content::Library::Item::StorageStub;

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

## @method get ()
# Retrieves the storage information for a specific file in a library item.
#
# Note:
# Privileges required for this operation are ContentLibrary.ReadStorage.
#
# @param library_item_id [REQUIRED]  Identifier of the library item whose storage information should be retrieved.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param file_name [REQUIRED]  Name of the file for which the storage information should be listed.
# . The value must be String.
#
# @retval 
# The  *list*  of all the storage items for the given file within the given library
#     item.
# The return type will be Array of Com::Vmware::Content::Library::Item::Storage::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the specified library item does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the specified file does not exist in the given library item.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``library_item_id``  requires  ``ContentLibrary.ReadStorage`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};
   my $file_name = $args {file_name};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Lists all storage items for a given library item.
#
# Note:
# Privileges required for this operation are ContentLibrary.ReadStorage.
#
# @param library_item_id [REQUIRED]  Identifier of the library item whose storage information should be listed.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @retval 
# The  *list*  of all storage items for a given library item.
# The return type will be Array of Com::Vmware::Content::Library::Item::Storage::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the specified library item does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``library_item_id``  requires  ``ContentLibrary.ReadStorage`` . </li>
# </ul>
#

sub list {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library::Item::Storage service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::Item::Storage service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::Item::Storage service
#########################################################################################

## @class Com::Vmware::Content::Library::Item::Storage::Info
#
#
# The  ``Com::Vmware::Content::Library::Item::Storage::Info``   *class*  is the expanded
#     form of  class Com::Vmware::Content::Library::Item::File::Info  that includes details
#     about the storage backing for a file in a library item.

package Com::Vmware::Content::Library::Item::Storage::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Storage::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{storage_backing} = $args{'storage_backing'};
   $self->{storage_uris} = $args{'storage_uris'};
   $self->{checksum_info} = $args{'checksum_info'};
   $self->{name} = $args{'name'};
   $self->{size} = $args{'size'};
   $self->{cached} = $args{'cached'};
   $self->{version} = $args{'version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Storage::Info');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.storage.info');
   $self->set_binding_field('key' => 'storage_backing', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'StorageBacking'));
   $self->set_binding_field('key' => 'storage_uris', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'checksum_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'File::ChecksumInfo')));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'cached', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_storage_backing ()
# Gets the value of 'storage_backing' property.
#
# @retval storage_backing - The current value of the field.
# The storage backing on which this object resides. This might not be the same as the
#     default storage backing associated with the library.
#
# StorageBacking#
sub get_storage_backing {
   my ($self, %args) = @_;
   return $self->{'storage_backing'}; 	
}

## @method set_storage_backing ()
# Sets the given value for 'storage_backing' property.
# 
# @param storage_backing  - New value for the field.
# The storage backing on which this object resides. This might not be the same as the
#     default storage backing associated with the library.
#
sub set_storage_backing {
   my ($self, %args) = @_;
   $self->{'storage_backing'} = $args{'storage_backing'}; 
   return;	
}

## @method get_storage_uris ()
# Gets the value of 'storage_uris' property.
#
# @retval storage_uris - The current value of the field.
# URIs that identify the file on the storage backing. <p>
# 
# These URIs may be specific to the backing and may need interpretation by the client. A
#     client that understands a URI scheme in this list may use that URI to directly access
#     the file on the storage backing. This can provide high-performance support for file
#     manipulation.</p>
#
# List#
sub get_storage_uris {
   my ($self, %args) = @_;
   return $self->{'storage_uris'}; 	
}

## @method set_storage_uris ()
# Sets the given value for 'storage_uris' property.
# 
# @param storage_uris  - New value for the field.
# URIs that identify the file on the storage backing. <p>
# 
# These URIs may be specific to the backing and may need interpretation by the client. A
#     client that understands a URI scheme in this list may use that URI to directly access
#     the file on the storage backing. This can provide high-performance support for file
#     manipulation.</p>
#
sub set_storage_uris {
   my ($self, %args) = @_;
   $self->{'storage_uris'} = $args{'storage_uris'}; 
   return;	
}

## @method get_checksum_info ()
# Gets the value of 'checksum_info' property.
#
# @retval checksum_info - The current value of the field.
# A checksum for validating the content of the file. <p>
# 
#  This value can be used to verify that a transfer was completed without errors.</p>
#
# Optional#
sub get_checksum_info {
   my ($self, %args) = @_;
   return $self->{'checksum_info'}; 	
}

## @method set_checksum_info ()
# Sets the given value for 'checksum_info' property.
# 
# @param checksum_info  - New value for the field.
# A checksum for validating the content of the file. <p>
# 
#  This value can be used to verify that a transfer was completed without errors.</p>
#
sub set_checksum_info {
   my ($self, %args) = @_;
   $self->{'checksum_info'} = $args{'checksum_info'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the file. <p>
# 
# This value will be unique within the library item for each file. It cannot be an empty
#     string.</p>
#
# String#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# The name of the file. <p>
# 
# This value will be unique within the library item for each file. It cannot be an empty
#     string.</p>
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_size ()
# Gets the value of 'size' property.
#
# @retval size - The current value of the field.
# The file size, in bytes. The file size is the storage used and not the uploaded or
#     provisioned size. For example, when uploading a disk to a datastore, the amount of
#     storage that the disk consumes may be different from the disk file size. When the file
#     is not cached, the size is 0.
#
# long#
sub get_size {
   my ($self, %args) = @_;
   return $self->{'size'}; 	
}

## @method set_size ()
# Sets the given value for 'size' property.
# 
# @param size  - New value for the field.
# The file size, in bytes. The file size is the storage used and not the uploaded or
#     provisioned size. For example, when uploading a disk to a datastore, the amount of
#     storage that the disk consumes may be different from the disk file size. When the file
#     is not cached, the size is 0.
#
sub set_size {
   my ($self, %args) = @_;
   $self->{'size'} = $args{'size'}; 
   return;	
}

## @method get_cached ()
# Gets the value of 'cached' property.
#
# @retval cached - The current value of the field.
# Indicates whether the file is on disk or not.
#
# boolean#
sub get_cached {
   my ($self, %args) = @_;
   return $self->{'cached'}; 	
}

## @method set_cached ()
# Sets the given value for 'cached' property.
# 
# @param cached  - New value for the field.
# Indicates whether the file is on disk or not.
#
sub set_cached {
   my ($self, %args) = @_;
   $self->{'cached'} = $args{'cached'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# The version of this file; incremented when a new copy of the file is uploaded.
#
# String#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# The version of this file; incremented when a new copy of the file is uploaded.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Content::Library::Item::Storage service
#########################################################################################
