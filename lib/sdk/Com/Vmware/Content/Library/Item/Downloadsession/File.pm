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

## @class Com::Vmware::Content::Library::Item::Downloadsession::File
# The  ``Com::Vmware::Content::Library::Item::Downloadsession::File``   *interface* 
#     provides  *methods*  for accessing files within a download session. <p>
# 
# After a download session is created against a library item, the 
#     ``Com::Vmware::Content::Library::Item::Downloadsession::File``   *interface*  can be
#     used to retrieve all downloadable content within the library item. Since the content
#     may not be available immediately in a downloadable form on the server side, the client
#     will have to prepare the file and wait for the file status to become 
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus.PREPARED`
#     . </p>
# 
# <p>
# 
#  See  class Com::Vmware::Content::Library::Item::DownloadSession .</p>
#

package Com::Vmware::Content::Library::Item::Downloadsession::File;

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
use Com::Vmware::Content::Library::Item::Downloadsession::FileStub;

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

## @method list ()
# Lists the information of all the files in the library item associated with the download
# session.
#
# @param download_session_id [REQUIRED]  Identifier of the download session.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# . The value must be str.
#
# @retval 
# The  *list*  of  class
#     Com::Vmware::Content::Library::Item::Downloadsession::File::Info  instances.
# The return type will be Array of
# Com::Vmware::Content::Library::Item::Downloadsession::File::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the download session associated with  ``download_session_id``  doesn&apos;t exist.
#

sub list {
   my ($self, %args) = @_;
   my $download_session_id = $args {download_session_id};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method prepare ()
# Requests a file to be prepared for download.
#
# @param download_session_id [REQUIRED]  Identifier of the download session.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# . The value must be str.
#
# @param file_name [REQUIRED]  Name of the file requested for download.
# . The value must be String.
#
# @param endpoint_type [OPTIONAL] Endpoint type request, one of HTTPS, DIRECT. This will determine the type of the 
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::Info.download_endpoint`
#     that is generated when the file is prepared. The 
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType.DIRECT`
#      is only available to users who have the ContentLibrary.ReadStorage privilege.
# If not specified the default is 
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType.HTTPS`
#     .
# . The value must be
# Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType or None.
#
# @retval 
# File information containing the status of the request and the download link to the
#     file.
# The return type will be Com::Vmware::Content::Library::Item::Downloadsession::File::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the download session does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if there is no file with the specified  ``file_name`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the the download session wasn&apos;t created with the ContentLibrary.ReadStorage
#     privilege and the caller requested a 
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType.DIRECT`
#      endpoint type.
#

sub prepare {
   my ($self, %args) = @_;
   my $download_session_id = $args {download_session_id};
   my $file_name = $args {file_name};
   my $endpoint_type = $args {endpoint_type};

   $self->validate_args (method_name => 'prepare',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'prepare',
                         method_args => \%args);
}


## @method get ()
# Retrieves file download information for a specific file.
#
# @param download_session_id [REQUIRED]  Identifier of the download session.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.DownloadSession).
# . The value must be str.
#
# @param file_name [REQUIRED]  Name of the file requested.
# . The value must be String.
#
# @retval 
# The  class Com::Vmware::Content::Library::Item::Downloadsession::File::Info  instance
#     containing the status of the file and its download link if available.
# The return type will be Com::Vmware::Content::Library::Item::Downloadsession::File::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the download session associated with  ``download_session_id``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if there is no file with the specified  ``file_name`` .
#

sub get {
   my ($self, %args) = @_;
   my $download_session_id = $args {download_session_id};
   my $file_name = $args {file_name};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library::Item::Downloadsession::File service
#########################################################################################

## @class Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus
#
# The  ``Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus``  
#     *enumerated type*  defines the state of the file in preparation for download.
#
#
#
# Constant Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus::UNPREPARED #
#The file hasn&apos;t been requested for preparation.
#
# Constant Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus::PREPARE_REQUESTED #
#A prepare has been requested, however the server hasn&apos;t started the preparation yet.
#
# Constant Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus::PREPARING #
#A prepare has been requested and the file is in the process of being prepared.
#
# Constant Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus::PREPARED #
#Prepare succeeded. The file is ready for download.
#
# Constant Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus::ERROR #
#Prepare failed.

package Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus;

use constant {
    UNPREPARED =>  'UNPREPARED',
    PREPARE_REQUESTED =>  'PREPARE_REQUESTED',
    PREPARING =>  'PREPARING',
    PREPARED =>  'PREPARED',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.item.downloadsession.file.prepare_status',
                           'binding_class' => 'Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType
#
# The  ``Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType``  
#     *enumerated type*  defines the types of endpoints used to download the file.
#
#
#
# Constant Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType::HTTPS #
#An https download endpoint.
#
# Constant Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType::DIRECT #
#A direct download endpoint indicating the location of the file on storage. The caller is
# responsible for retrieving the file from the storage location directly.

package Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType;

use constant {
    HTTPS =>  'HTTPS',
    DIRECT =>  'DIRECT',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.item.downloadsession.file.endpoint_type',
                           'binding_class' => 'Com::Vmware::Content::Library::Item::Downloadsession::File::EndpointType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::Item::Downloadsession::File service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::Item::Downloadsession::File service
#########################################################################################

## @class Com::Vmware::Content::Library::Item::Downloadsession::File::Info
#
#
# The  ``Com::Vmware::Content::Library::Item::Downloadsession::File::Info``   *class* 
#     defines the downloaded file.

package Com::Vmware::Content::Library::Item::Downloadsession::File::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Downloadsession::File::Info structure
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
   $self->{size} = $args{'size'};
   $self->{bytes_transferred} = $args{'bytes_transferred'};
   $self->{status} = $args{'status'};
   $self->{download_endpoint} = $args{'download_endpoint'};
   $self->{checksum_info} = $args{'checksum_info'};
   $self->{error_message} = $args{'error_message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Downloadsession::File::Info');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.downloadsession.file.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'bytes_transferred', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Downloadsession', 'type_name' => 'File::PrepareStatus'));
   $self->set_binding_field('key' => 'download_endpoint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'TransferEndpoint')));
   $self->set_binding_field('key' => 'checksum_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'File::ChecksumInfo')));
   $self->set_binding_field('key' => 'error_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
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

## @method get_bytes_transferred ()
# Gets the value of 'bytes_transferred' property.
#
# @retval bytes_transferred - The current value of the field.
# The number of bytes that have been transferred by the server so far for making this
#     file prepared for download. This value may stay at zero till the client starts
#     downloading the file.
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
# The number of bytes that have been transferred by the server so far for making this
#     file prepared for download. This value may stay at zero till the client starts
#     downloading the file.
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
# The preparation status (UNPREPARED, PREPARE_REQUESTED, PREPARING, PREPARED, ERROR) of
#     the file.
#
# PrepareStatus#
sub get_status {
   my ($self, %args) = @_;
   return $self->{'status'}; 	
}

## @method set_status ()
# Sets the given value for 'status' property.
# 
# @param status  - New value for the field.
# The preparation status (UNPREPARED, PREPARE_REQUESTED, PREPARING, PREPARED, ERROR) of
#     the file.
#
sub set_status {
   my ($self, %args) = @_;
   $self->{'status'} = $args{'status'}; 
   return;	
}

## @method get_download_endpoint ()
# Gets the value of 'download_endpoint' property.
#
# @retval download_endpoint - The current value of the field.
# Endpoint at which the file is available for download. The value is valid only when the
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::Info.status`  is 
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus.PREPARED`
#     .
#
# Optional#
sub get_download_endpoint {
   my ($self, %args) = @_;
   return $self->{'download_endpoint'}; 	
}

## @method set_download_endpoint ()
# Sets the given value for 'download_endpoint' property.
# 
# @param download_endpoint  - New value for the field.
# Endpoint at which the file is available for download. The value is valid only when the
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::Info.status`  is 
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus.PREPARED`
#     .
#
sub set_download_endpoint {
   my ($self, %args) = @_;
   $self->{'download_endpoint'} = $args{'download_endpoint'}; 
   return;	
}

## @method get_checksum_info ()
# Gets the value of 'checksum_info' property.
#
# @retval checksum_info - The current value of the field.
# The checksum information of the file. When the download is complete, you can retrieve
#     the checksum from the 
#     :func:`Com::Vmware::Content::Library::Item::Downloadsession::File.get`   *method*  to
#     verify the checksum for the downloaded file.
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
# The checksum information of the file. When the download is complete, you can retrieve
#     the checksum from the 
#     :func:`Com::Vmware::Content::Library::Item::Downloadsession::File.get`   *method*  to
#     verify the checksum for the downloaded file.
#
sub set_checksum_info {
   my ($self, %args) = @_;
   $self->{'checksum_info'} = $args{'checksum_info'}; 
   return;	
}

## @method get_error_message ()
# Gets the value of 'error_message' property.
#
# @retval error_message - The current value of the field.
# Error message for a failed preparation when the prepare status is 
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus.ERROR`
#     .
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
# Error message for a failed preparation when the prepare status is 
#     :attr:`Com::Vmware::Content::Library::Item::Downloadsession::File::PrepareStatus.ERROR`
#     .
#
sub set_error_message {
   my ($self, %args) = @_;
   $self->{'error_message'} = $args{'error_message'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Content::Library::Item::Downloadsession::File service
#########################################################################################
