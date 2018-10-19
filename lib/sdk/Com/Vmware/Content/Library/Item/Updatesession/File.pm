########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file File.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Content::Library::Item;
#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library::Item::Updatesession::File
# The  ``Com::Vmware::Content::Library::Item::Updatesession::File``   *interface* 
#     provides  *methods*  for accessing files within an update session. <p>
# 
# After an update session is created against a library item, the 
#     ``Com::Vmware::Content::Library::Item::Updatesession::File``   *interface*  can be
#     used to make changes to the underlying library item metadata as well as the content of
#     the files. The following changes can be made: </p>
# 
# <ul>
# <li>deleting an existing file within the library item. This deletes both the metadata
#     and the content.</li>
#  <li>updating an existing file with new content.</li>
#  <li>adding a new file to the library item.</li>
#  </ul> <p>
# 
# The above changes are not applied or visible until the session is completed. See 
#     class Com::Vmware::Content::Library::Item::UpdateSession .</p>
#

package Com::Vmware::Content::Library::Item::Updatesession::File;

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
use Com::Vmware::Content::Library::Item::Updatesession::FileStub;

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

## @method validate ()
# Validates the files in the update session with the referenced identifier and ensures all
# necessary files are received. In the case where a file is missing, this  *method*  will
# return its name in the 
# :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.missing_files`
# set. The user can add the missing files and try re-validating. For other type of errors, 
# :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.invalid_files`
#  will contain the list of invalid files.
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session to validate.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @retval 
# A validation result containing missing files or invalid files and the reason why they
#     are invalid.
# The return type will be
# Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if no update session with the given identifier exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the update session is not in the 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE`  state,
#     or if some of the files that will be uploaded by the client aren&apos;t received
#     correctly.
#

sub validate {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};

   $self->validate_args (method_name => 'validate',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'validate',
                         method_args => \%args);
}


## @method add ()
# Requests file content to be changed (either created, or updated). Depending on the source
# type of the file, this  *method*  will either return an upload endpoint where the client
# can push the content, or the server will pull from the provided source endpoint. If a file
# with the same name already exists in this session, this  *method*  will be used to update
# the content of the existing file. <p>
# 
# When importing a file directly from storage, where the source endpoint is a file or
# datastore URI, you will need to have the ContentLibrary.ReadStorage privilege on the
# library item. If the file is located in the same directory as the library storage backing
# folder, the server will move the file instead of copying it, thereby allowing
# instantaneous import of files for efficient backup and restore scenarios. In all other
# cases, a copy is performed rather than a move.</p>
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session to be modified.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @param file_spec [REQUIRED] Specification for the file that needs to be added or updated. This includes whether
#     the client wants to push the content or have the server pull it.
# . The value must be Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec.
#
# @retval 
# An  class Com::Vmware::Content::Library::Item::Updatesession::File::Info   *class* 
#     containing upload links as well as server side state tracking the transfer of the
#     file.
# The return type will be Com::Vmware::Content::Library::Item::Updatesession::File::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the  ``file_spec``  is invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the update session doesn&apos;t exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the caller doesn&apos;t have ContentLibrary.ReadStorage privilege on the library
#     item of the update session and source type 
#     :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::SourceType.PULL`  is
#     requested for a file or datastore source endpoint (that is, not HTTP or HTTPs based
#     endpoint).
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the content of the library item associated with the update session has been deleted
#     from the storage backings (see null) associated with it.
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if metadata files such as manifest and certificate file are added after the OVF
#     descriptor file. This is applicable to update sessions with library item type OVF
#     only. This error was added in vSphere 6.8.0.
#

sub add {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};
   my $file_spec = $args {file_spec};

   $self->validate_args (method_name => 'add',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'add',
                         method_args => \%args);
}


## @method remove ()
# Requests a file to be removed. The file will only be effectively removed when the update
# session is completed.
#
# Note:
# Privileges required for this operation are System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @param file_name [REQUIRED]  Name of the file to be removed.
# . The value must be String.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the update session doesn&apos;t exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the file doesn&apos;t exist in the library item associated with the update session.
#

sub remove {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};
   my $file_name = $args {file_name};

   $self->validate_args (method_name => 'remove',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'remove',
                         method_args => \%args);
}


## @method list ()
# Lists all files in the library item associated with the update session.
#
# Note:
# Privileges required for this operation are System.Read, System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @retval 
# The  *list*  of the files in the library item associated with the update session. This
#     *list*  may be empty if the caller has removed all the files as part of this session
#     (in which case completing the update session will result in an empty library item).
# The return type will be Array of
# Com::Vmware::Content::Library::Item::Updatesession::File::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the update session doesn&apos;t exist.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``libraryItemId``  requires  ``System.Read`` . </li>
# </ul>
#

sub list {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method get ()
# Retrieves information about a specific file in the snapshot of the library item at the
# time when the update session was created.
#
# Note:
# Privileges required for this operation are System.Read, System.Anonymous.
#
# @param update_session_id [REQUIRED]  Identifier of the update session.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.UpdateSession).
# . The value must be str.
#
# @param file_name [REQUIRED]  Name of the file.
# . The value must be String.
#
# @retval 
# Information about the file.
# The return type will be Com::Vmware::Content::Library::Item::Updatesession::File::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the update session doesn&apos;t exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the file doesn&apos;t exist in the library item associated with the update session.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``libraryItemId``  requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $update_session_id = $args {update_session_id};
   my $file_name = $args {file_name};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library::Item::Updatesession::File service
#########################################################################################

## @class Com::Vmware::Content::Library::Item::Updatesession::File::SourceType
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::File::SourceType``  
#     *enumerated type*  defines how the file content is retrieved.
#
#
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::File::SourceType::NONE #
#No source type has been requested.
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::File::SourceType::PUSH #
#The client is uploading content using HTTP(S) PUT requests.
#
# Constant Com::Vmware::Content::Library::Item::Updatesession::File::SourceType::PULL #
#The server is pulling content from a URL. The URL scheme can be  ``http`` ,  ``https`` , 
# ``file`` , or  ``ds`` .

package Com::Vmware::Content::Library::Item::Updatesession::File::SourceType;

use constant {
    NONE =>  'NONE',
    PUSH =>  'PUSH',
    PULL =>  'PULL',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::File::SourceType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.item.updatesession.file.source_type',
                           'binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::File::SourceType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::Item::Updatesession::File service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::Item::Updatesession::File service
#########################################################################################

## @class Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec
#
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec``   *class* 
#     describes the properties of the file to be uploaded.

package Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'source_type',
         'case_map' => {
               'PULL' => ['source_endpoint'],
               'NONE' => [],
               'PUSH' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{source_type} = $args{'source_type'};
   $self->{source_endpoint} = $args{'source_endpoint'};
   $self->{size} = $args{'size'};
   $self->{checksum_info} = $args{'checksum_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::File::AddSpec');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.updatesession.file.add_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'source_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Updatesession', 'type_name' => 'File::SourceType'));
   $self->set_binding_field('key' => 'source_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'TransferEndpoint')));
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'checksum_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'File::ChecksumInfo')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the file being uploaded.
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
# The name of the file being uploaded.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_source_type ()
# Gets the value of 'source_type' property.
#
# @retval source_type - The current value of the field.
# The source type (NONE, PUSH, PULL) from which the file content will be retrieved.
#
# SourceType#
sub get_source_type {
   my ($self, %args) = @_;
   return $self->{'source_type'}; 	
}

## @method set_source_type ()
# Sets the given value for 'source_type' property.
# 
# @param source_type  - New value for the field.
# The source type (NONE, PUSH, PULL) from which the file content will be retrieved.
#
sub set_source_type {
   my ($self, %args) = @_;
   $self->{'source_type'} = $args{'source_type'}; 
   return;	
}

## @method get_source_endpoint ()
# Gets the value of 'source_endpoint' property.
#
# @retval source_endpoint - The current value of the field.
# Location from which the Content Library Service will fetch the file, rather than
#     requiring a client to upload the file.
#
# optional#
sub get_source_endpoint {
   my ($self, %args) = @_;
   return $self->{'source_endpoint'}; 	
}

## @method set_source_endpoint ()
# Sets the given value for 'source_endpoint' property.
# 
# @param source_endpoint  - New value for the field.
# Location from which the Content Library Service will fetch the file, rather than
#     requiring a client to upload the file.
#
sub set_source_endpoint {
   my ($self, %args) = @_;
   $self->{'source_endpoint'} = $args{'source_endpoint'}; 
   return;	
}

## @method get_size ()
# Gets the value of 'size' property.
#
# @retval size - The current value of the field.
# The file size, in bytes.
#
# Optional#
sub get_size {
   my ($self, %args) = @_;
   return $self->{'size'}; 	
}

## @method set_size ()
# Sets the given value for 'size' property.
# 
# @param size  - New value for the field.
# The file size, in bytes.
#
sub set_size {
   my ($self, %args) = @_;
   $self->{'size'} = $args{'size'}; 
   return;	
}

## @method get_checksum_info ()
# Gets the value of 'checksum_info' property.
#
# @retval checksum_info - The current value of the field.
# The checksum of the file. If specified, the server will verify the checksum once the
#     file is received. If there is a mismatch, the upload will fail. For ova files, this
#     value should not be set.
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
# The checksum of the file. If specified, the server will verify the checksum once the
#     file is received. If there is a mismatch, the upload will fail. For ova files, this
#     value should not be set.
#
sub set_checksum_info {
   my ($self, %args) = @_;
   $self->{'checksum_info'} = $args{'checksum_info'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Item::Updatesession::File::Info
#
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::File::Info``   *class* 
#     defines the uploaded file.

package Com::Vmware::Content::Library::Item::Updatesession::File::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::File::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'source_type',
         'case_map' => {
               'PULL' => ['source_endpoint'],
               'PUSH' => ['upload_endpoint'],
               'NONE' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{source_type} = $args{'source_type'};
   $self->{size} = $args{'size'};
   $self->{checksum_info} = $args{'checksum_info'};
   $self->{source_endpoint} = $args{'source_endpoint'};
   $self->{upload_endpoint} = $args{'upload_endpoint'};
   $self->{bytes_transferred} = $args{'bytes_transferred'};
   $self->{status} = $args{'status'};
   $self->{error_message} = $args{'error_message'};
   $self->{keep_in_storage} = $args{'keep_in_storage'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::File::Info');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.updatesession.file.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'source_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Updatesession', 'type_name' => 'File::SourceType'));
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'checksum_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'File::ChecksumInfo')));
   $self->set_binding_field('key' => 'source_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'TransferEndpoint')));
   $self->set_binding_field('key' => 'upload_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'TransferEndpoint')));
   $self->set_binding_field('key' => 'bytes_transferred', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'TransferStatus'));
   $self->set_binding_field('key' => 'error_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'keep_in_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the file.
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
# The name of the file.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_source_type ()
# Gets the value of 'source_type' property.
#
# @retval source_type - The current value of the field.
# The source type (NONE, PUSH, PULL) from which the file is being retrieved. This may be
#     :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::SourceType.NONE`  if
#     the file is not being changed.
#
# SourceType#
sub get_source_type {
   my ($self, %args) = @_;
   return $self->{'source_type'}; 	
}

## @method set_source_type ()
# Sets the given value for 'source_type' property.
# 
# @param source_type  - New value for the field.
# The source type (NONE, PUSH, PULL) from which the file is being retrieved. This may be
#     :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::SourceType.NONE`  if
#     the file is not being changed.
#
sub set_source_type {
   my ($self, %args) = @_;
   $self->{'source_type'} = $args{'source_type'}; 
   return;	
}

## @method get_size ()
# Gets the value of 'size' property.
#
# @retval size - The current value of the field.
# The file size, in bytes as received by the server. This  *field*  is guaranteed to be
#     set when the server has completely received the file.
#
# Optional#
sub get_size {
   my ($self, %args) = @_;
   return $self->{'size'}; 	
}

## @method set_size ()
# Sets the given value for 'size' property.
# 
# @param size  - New value for the field.
# The file size, in bytes as received by the server. This  *field*  is guaranteed to be
#     set when the server has completely received the file.
#
sub set_size {
   my ($self, %args) = @_;
   $self->{'size'} = $args{'size'}; 
   return;	
}

## @method get_checksum_info ()
# Gets the value of 'checksum_info' property.
#
# @retval checksum_info - The current value of the field.
# The checksum information of the file received by the server.
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
# The checksum information of the file received by the server.
#
sub set_checksum_info {
   my ($self, %args) = @_;
   $self->{'checksum_info'} = $args{'checksum_info'}; 
   return;	
}

## @method get_source_endpoint ()
# Gets the value of 'source_endpoint' property.
#
# @retval source_endpoint - The current value of the field.
# A source endpoint from which to retrieve the file.
#
# optional#
sub get_source_endpoint {
   my ($self, %args) = @_;
   return $self->{'source_endpoint'}; 	
}

## @method set_source_endpoint ()
# Sets the given value for 'source_endpoint' property.
# 
# @param source_endpoint  - New value for the field.
# A source endpoint from which to retrieve the file.
#
sub set_source_endpoint {
   my ($self, %args) = @_;
   $self->{'source_endpoint'} = $args{'source_endpoint'}; 
   return;	
}

## @method get_upload_endpoint ()
# Gets the value of 'upload_endpoint' property.
#
# @retval upload_endpoint - The current value of the field.
# An upload endpoint to which the client can push the content.
#
# optional#
sub get_upload_endpoint {
   my ($self, %args) = @_;
   return $self->{'upload_endpoint'}; 	
}

## @method set_upload_endpoint ()
# Sets the given value for 'upload_endpoint' property.
# 
# @param upload_endpoint  - New value for the field.
# An upload endpoint to which the client can push the content.
#
sub set_upload_endpoint {
   my ($self, %args) = @_;
   $self->{'upload_endpoint'} = $args{'upload_endpoint'}; 
   return;	
}

## @method get_bytes_transferred ()
# Gets the value of 'bytes_transferred' property.
#
# @retval bytes_transferred - The current value of the field.
# The number of bytes of this file that have been received by the server.
#
# long#
sub get_bytes_transferred {
   my ($self, %args) = @_;
   return $self->{'bytes_transferred'}; 	
}

## @method set_bytes_transferred ()
# Sets the given value for 'bytes_transferred' property.
# 
# @param bytes_transferred  - New value for the field.
# The number of bytes of this file that have been received by the server.
#
sub set_bytes_transferred {
   my ($self, %args) = @_;
   $self->{'bytes_transferred'} = $args{'bytes_transferred'}; 
   return;	
}

## @method get_status ()
# Gets the value of 'status' property.
#
# @retval status - The current value of the field.
# The transfer status (WAITING_FOR_TRANSFER, TRANSFERRING, READY, VALIDATING, ERROR) of
#     this file.
#
# TransferStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The transfer status (WAITING_FOR_TRANSFER, TRANSFERRING, READY, VALIDATING, ERROR) of
#     this file.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_error_message ()
# Gets the value of 'error_message' property.
#
# @retval error_message - The current value of the field.
# Details about the transfer error.
#
# Optional#
sub get_error_message {
   my ($self, %args) = @_;
   return $self->{'error_message'}; 	
}

## @method set_error_message ()
# Sets the given value for 'error_message' property.
# 
# @param error_message  - New value for the field.
# Details about the transfer error.
#
sub set_error_message {
   my ($self, %args) = @_;
   $self->{'error_message'} = $args{'error_message'}; 
   return;	
}

## @method get_keep_in_storage ()
# Gets the value of 'keep_in_storage' property.
#
# @retval keep_in_storage - The current value of the field.
# Whether or not the file will be kept in storage upon update session completion. The
#     flag is true for most files, and false for metadata files such as manifest and
#     certificate file of update session with library item type OVF. Any file with 
#     :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::Info.keep_in_storage`
#     set to false will not show up in the list of files returned from 
#     :func:`Com::Vmware::Content::Library::Item::File.list`  upon update session
#     completion. This  *field*  was added in vSphere API 6.7 U1.
#
# Optional#
sub get_keep_in_storage {
   my ($self, %args) = @_;
   return $self->{'keep_in_storage'}; 	
}

## @method set_keep_in_storage ()
# Sets the given value for 'keep_in_storage' property.
# 
# @param keep_in_storage  - New value for the field.
# Whether or not the file will be kept in storage upon update session completion. The
#     flag is true for most files, and false for metadata files such as manifest and
#     certificate file of update session with library item type OVF. Any file with 
#     :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::Info.keep_in_storage`
#     set to false will not show up in the list of files returned from 
#     :func:`Com::Vmware::Content::Library::Item::File.list`  upon update session
#     completion. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_keep_in_storage {
   my ($self, %args) = @_;
   $self->{'keep_in_storage'} = $args{'keep_in_storage'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Item::Updatesession::File::ValidationError
#
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::File::ValidationError``  
#     *class*  defines the validation error of a file in the session.

package Com::Vmware::Content::Library::Item::Updatesession::File::ValidationError;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::File::ValidationError structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{error_message} = $args{'error_message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::File::ValidationError');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.updatesession.file.validation_error');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'error_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage'));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the file.
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
# The name of the file.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_error_message ()
# Gets the value of 'error_message' property.
#
# @retval error_message - The current value of the field.
# A message indicating why the file was considered invalid.
#
# LocalizableMessage#
sub get_error_message {
   my ($self, %args) = @_;
   return $self->{'error_message'}; 	
}

## @method set_error_message ()
# Sets the given value for 'error_message' property.
# 
# @param error_message  - New value for the field.
# A message indicating why the file was considered invalid.
#
sub set_error_message {
   my ($self, %args) = @_;
   $self->{'error_message'} = $args{'error_message'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult
#
#
# The  ``Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult``  
#     *class*  defines the result of validating the files in the session.

package Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{has_errors} = $args{'has_errors'};
   $self->{missing_files} = $args{'missing_files'};
   $self->{invalid_files} = $args{'invalid_files'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.updatesession.file.validation_result');
   $self->set_binding_field('key' => 'has_errors', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'missing_files', 'value' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'invalid_files', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Updatesession', 'type_name' => 'File::ValidationError')));
   bless $self, $class;
   return $self;
}

## @method get_has_errors ()
# Gets the value of 'has_errors' property.
#
# @retval has_errors - The current value of the field.
# Whether the validation was succesful or not. In case of errors, the 
#     :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.missing_files`
#     and 
#     :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.invalid_files`
#      will contain at least one entry.
#
# boolean#
sub get_has_errors {
   my ($self, %args) = @_;
   return $self->{'has_errors'}; 	
}

## @method set_has_errors ()
# Sets the given value for 'has_errors' property.
# 
# @param has_errors  - New value for the field.
# Whether the validation was succesful or not. In case of errors, the 
#     :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.missing_files`
#     and 
#     :attr:`Com::Vmware::Content::Library::Item::Updatesession::File::ValidationResult.invalid_files`
#      will contain at least one entry.
#
sub set_has_errors {
   my ($self, %args) = @_;
   $self->{'has_errors'} = $args{'has_errors'}; 
   return;	
}

## @method get_missing_files ()
# Gets the value of 'missing_files' property.
#
# @retval missing_files - The current value of the field.
# A  *set*  containing the names of the files that are required but the client
#     hasn&apos;t added.
#
# Set#
sub get_missing_files {
   my ($self, %args) = @_;
   return $self->{'missing_files'}; 	
}

## @method set_missing_files ()
# Sets the given value for 'missing_files' property.
# 
# @param missing_files  - New value for the field.
# A  *set*  containing the names of the files that are required but the client
#     hasn&apos;t added.
#
sub set_missing_files {
   my ($self, %args) = @_;
   $self->{'missing_files'} = $args{'missing_files'}; 
   return;	
}

## @method get_invalid_files ()
# Gets the value of 'invalid_files' property.
#
# @retval invalid_files - The current value of the field.
# A  *list*  containing the files that have been identified as invalid and details about
#     the error.
#
# List#
sub get_invalid_files {
   my ($self, %args) = @_;
   return $self->{'invalid_files'}; 	
}

## @method set_invalid_files ()
# Sets the given value for 'invalid_files' property.
# 
# @param invalid_files  - New value for the field.
# A  *list*  containing the files that have been identified as invalid and details about
#     the error.
#
sub set_invalid_files {
   my ($self, %args) = @_;
   $self->{'invalid_files'} = $args{'invalid_files'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Content::Library::Item::Updatesession::File service
#########################################################################################
