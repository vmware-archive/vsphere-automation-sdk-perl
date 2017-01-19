########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file File.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library::Item::File
# The  ``Com::Vmware::Content::Library::Item::File``   *interface*  can be used to query
#     for information on the files within a library item. Files are objects which are added
#     to a library item through the  class
#     Com::Vmware::Content::Library::Item::UpdateSession  and  class
#     Com::Vmware::Content::Library::Item::Updatesession::File   *interfaces* .
#

package Com::Vmware::Content::Library::Item::File;

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
use Com::Vmware::Content::Library::Item::FileStub;

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
# Retrieves the information for a single file in a library item by its name.
#
# @param library_item_id [REQUIRED]  Identifier of the library item whose file information should be returned.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param name [REQUIRED]  Name of the file in the library item whose information should be returned.
# . The value must be String.
#
# @retval 
# The  class Com::Vmware::Content::Library::Item::File::Info  object with information on
#     the specified file.
# The return type will be Com::Vmware::Content::Library::Item::File::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if  ``library_item_id``  refers to a library item that does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if  ``name``  refers to a file that does not exist in the library item.
#

sub get {
   my ($self, %args) = @_;
   my $library_item_id = $args {library_item_id};
   my $name = $args {name};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method list ()
# Lists all of the files that are stored within a given library item.
#
# @param library_item_id [REQUIRED]  Identifier of the library item whose files should be listed.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @retval 
# The  *list*  of all of the files that are stored within the given library item.
# The return type will be Array of Com::Vmware::Content::Library::Item::File::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if  ``library_item_id``  refers to a library item that does not exist.
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
# Begins enumerations for the Com::Vmware::Content::Library::Item::File service
#########################################################################################

## @class Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm
#
# The  ``Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm``   *enumerated
#     type*  defines the valid checksum algorithms.
#
#
#
# Constant Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm::SH_A1 #
#Checksum algorithm: SHA-1
#
# Constant Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm::M_D5 #
#Checksum algorithm: MD5

package Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm;

use constant {
    SHA1 =>  'SHA1',
    MD5 =>  'MD5',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.item.file.checksum_algorithm',
                           'binding_class' => 'Com::Vmware::Content::Library::Item::File::ChecksumAlgorithm');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::Item::File service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::Item::File service
#########################################################################################

## @class Com::Vmware::Content::Library::Item::File::ChecksumInfo
#
#
# Provides checksums for a  class Com::Vmware::Content::Library::Item::File::Info 
#     object.

package Com::Vmware::Content::Library::Item::File::ChecksumInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::File::ChecksumInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{algorithm} = $args{'algorithm'};
   $self->{checksum} = $args{'checksum'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::File::ChecksumInfo');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.file.checksum_info');
   $self->set_binding_field('key' => 'algorithm', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'File::ChecksumAlgorithm')));
   $self->set_binding_field('key' => 'checksum', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_algorithm ()
# Gets the value of 'algorithm' property.
#
# @retval algorithm - The current value of the field.
# The checksum algorithm (SHA1, MD5) used to calculate the checksum.
#
# Optional#
sub get_algorithm {
   my ($self, %args) = @_;
   return $self->{'algorithm'}; 	
}

## @method set_algorithm ()
# Sets the given value for 'algorithm' property.
# 
# @param algorithm  - New value for the field.
# The checksum algorithm (SHA1, MD5) used to calculate the checksum.
#
sub set_algorithm {
   my ($self, %args) = @_;
   $self->{'algorithm'} = $args{'algorithm'}; 
   return;	
}

## @method get_checksum ()
# Gets the value of 'checksum' property.
#
# @retval checksum - The current value of the field.
# The checksum value calculated with 
#     :attr:`Com::Vmware::Content::Library::Item::File::ChecksumInfo.algorithm` .
#
# String#
sub get_checksum {
   my ($self, %args) = @_;
   return $self->{'checksum'}; 	
}

## @method set_checksum ()
# Sets the given value for 'checksum' property.
# 
# @param checksum  - New value for the field.
# The checksum value calculated with 
#     :attr:`Com::Vmware::Content::Library::Item::File::ChecksumInfo.algorithm` .
#
sub set_checksum {
   my ($self, %args) = @_;
   $self->{'checksum'} = $args{'checksum'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Item::File::Info
#
#
# The  ``Com::Vmware::Content::Library::Item::File::Info``   *class*  provides
#     information about a file in Content Library Service storage. <p>
# 
# A file is an actual stored object for a library item. An item will have zero files
#     initially, but one or more can be uploaded to the item.</p>

package Com::Vmware::Content::Library::Item::File::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::File::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{checksum_info} = $args{'checksum_info'};
   $self->{name} = $args{'name'};
   $self->{size} = $args{'size'};
   $self->{cached} = $args{'cached'};
   $self->{version} = $args{'version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::File::Info');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.file.info');
   $self->set_binding_field('key' => 'checksum_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'File::ChecksumInfo')));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'cached', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
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
# Ends structures for the Com::Vmware::Content::Library::Item::File service
#########################################################################################
