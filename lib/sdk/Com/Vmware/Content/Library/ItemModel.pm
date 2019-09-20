## @class Com::Vmware::Content::Library::ItemModel
#
#
# The  ``Com::Vmware::Content::Library::ItemModel``   *class*  represents a library item
#     that has been stored in a library. <p>
# 
# A  ``Com::Vmware::Content::Library::ItemModel``  represents a single logical unit to
#     be managed within a  class Com::Vmware::Content::LibraryModel . Items contain the
#     actual content of a library, and their placement within a library determines policies
#     that affect that content such as publishing. </p>
# 
# <p>
# 
# A library item can have a specified type, indicated with the 
#     :attr:`Com::Vmware::Content::Library::ItemModel.type`   *field* . This property is
#     associated with a Content Library Service plugin that supports specific types and
#     provides additional services. The types available in a specific Content Library
#     Service can be queried using the  class Com::Vmware::Content::Type   *interface* .
#     Items of an unknown or unspecified type are treated generically. Because subscribed
#     library catalogs are synchronized as is, subscribing to a remote Content Library
#     Service effectively gives you a library with the functionality of the remote
#     service&apos;s type adapter plugins, even if they are not installed locally. </p>
# 
# <p>
# 
# Items can be managed using the  class Com::Vmware::Content::Library::Item  
#     *interface*  and, for items in subscribed libraries, the  class
#     Com::Vmware::Content::Library::SubscribedItem   *interface* .</p>

package Com::Vmware::Content::Library::ItemModel;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::ItemModel structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{library_id} = $args{'library_id'};
   $self->{content_version} = $args{'content_version'};
   $self->{creation_time} = $args{'creation_time'};
   $self->{description} = $args{'description'};
   $self->{last_modified_time} = $args{'last_modified_time'};
   $self->{last_sync_time} = $args{'last_sync_time'};
   $self->{metadata_version} = $args{'metadata_version'};
   $self->{name} = $args{'name'};
   $self->{cached} = $args{'cached'};
   $self->{size} = $args{'size'};
   $self->{type} = $args{'type'};
   $self->{version} = $args{'version'};
   $self->{source_id} = $args{'source_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::ItemModel');
   $self->set_binding_name('name' => 'com.vmware.content.library.item_model');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'library_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'content_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'creation_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'last_modified_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'last_sync_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'metadata_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cached', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'size', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'source_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# A unique identifier for this library item.
#
# optional#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# A unique identifier for this library item.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_library_id ()
# Gets the value of 'library_id' property.
#
# @retval library_id - The current value of the field.
# The identifier of the  class Com::Vmware::Content::LibraryModel  to which this item
#     belongs.
#
# optional#
sub get_library_id {
   my ($self, %args) = @_;
   return $self->{'library_id'}; 	
}

## @method set_library_id ()
# Sets the given value for 'library_id' property.
# 
# @param library_id  - New value for the field.
# The identifier of the  class Com::Vmware::Content::LibraryModel  to which this item
#     belongs.
#
sub set_library_id {
   my ($self, %args) = @_;
   $self->{'library_id'} = $args{'library_id'}; 
   return;	
}

## @method get_content_version ()
# Gets the value of 'content_version' property.
#
# @retval content_version - The current value of the field.
# The latest version of the file content list of this library item.
#
# optional#
sub get_content_version {
   my ($self, %args) = @_;
   return $self->{'content_version'}; 	
}

## @method set_content_version ()
# Sets the given value for 'content_version' property.
# 
# @param content_version  - New value for the field.
# The latest version of the file content list of this library item.
#
sub set_content_version {
   my ($self, %args) = @_;
   $self->{'content_version'} = $args{'content_version'}; 
   return;	
}

## @method get_creation_time ()
# Gets the value of 'creation_time' property.
#
# @retval creation_time - The current value of the field.
# The date and time when this library item was created.
#
# optional#
sub get_creation_time {
   my ($self, %args) = @_;
   return $self->{'creation_time'}; 	
}

## @method set_creation_time ()
# Sets the given value for 'creation_time' property.
# 
# @param creation_time  - New value for the field.
# The date and time when this library item was created.
#
sub set_creation_time {
   my ($self, %args) = @_;
   $self->{'creation_time'} = $args{'creation_time'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# A human-readable description for this library item.
#
# optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# A human-readable description for this library item.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_last_modified_time ()
# Gets the value of 'last_modified_time' property.
#
# @retval last_modified_time - The current value of the field.
# The date and time when the metadata for this library item was last changed. <p>
# 
# This  *field*  is affected by changes to the properties or file content of this item.
#     It is not modified by changes to the tags of the item, or by changes to the library
#     which owns this item.</p>
#
# optional#
sub get_last_modified_time {
   my ($self, %args) = @_;
   return $self->{'last_modified_time'}; 	
}

## @method set_last_modified_time ()
# Sets the given value for 'last_modified_time' property.
# 
# @param last_modified_time  - New value for the field.
# The date and time when the metadata for this library item was last changed. <p>
# 
# This  *field*  is affected by changes to the properties or file content of this item.
#     It is not modified by changes to the tags of the item, or by changes to the library
#     which owns this item.</p>
#
sub set_last_modified_time {
   my ($self, %args) = @_;
   $self->{'last_modified_time'} = $args{'last_modified_time'}; 
   return;	
}

## @method get_last_sync_time ()
# Gets the value of 'last_sync_time' property.
#
# @retval last_sync_time - The current value of the field.
# The date and time when this library item was last synchronized. <p>
# 
# This  *field*  is updated every time a synchronization is triggered on the library
#     item, including when a synchronization is triggered on the library to which this item
#     belongs. The value is  *null*  for a library item that belongs to a local library.</p>
#
# optional#
sub get_last_sync_time {
   my ($self, %args) = @_;
   return $self->{'last_sync_time'}; 	
}

## @method set_last_sync_time ()
# Sets the given value for 'last_sync_time' property.
# 
# @param last_sync_time  - New value for the field.
# The date and time when this library item was last synchronized. <p>
# 
# This  *field*  is updated every time a synchronization is triggered on the library
#     item, including when a synchronization is triggered on the library to which this item
#     belongs. The value is  *null*  for a library item that belongs to a local library.</p>
#
sub set_last_sync_time {
   my ($self, %args) = @_;
   $self->{'last_sync_time'} = $args{'last_sync_time'}; 
   return;	
}

## @method get_metadata_version ()
# Gets the value of 'metadata_version' property.
#
# @retval metadata_version - The current value of the field.
# A version number for the metadata of this library item. <p>
# 
# This value is incremented with each change to the metadata of this item. Changes to
#     name, description, and so on will increment this value. The value is not incremented
#     by changes to the content or tags of the item or the library which owns it.</p>
#
# optional#
sub get_metadata_version {
   my ($self, %args) = @_;
   return $self->{'metadata_version'}; 	
}

## @method set_metadata_version ()
# Sets the given value for 'metadata_version' property.
# 
# @param metadata_version  - New value for the field.
# A version number for the metadata of this library item. <p>
# 
# This value is incremented with each change to the metadata of this item. Changes to
#     name, description, and so on will increment this value. The value is not incremented
#     by changes to the content or tags of the item or the library which owns it.</p>
#
sub set_metadata_version {
   my ($self, %args) = @_;
   $self->{'metadata_version'} = $args{'metadata_version'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# A human-readable name for this library item. <p>
# 
# The name may not be  *null*  or an empty string. The name does not have to be unique,
#     even within the same library.</p>
#
# optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# A human-readable name for this library item. <p>
# 
# The name may not be  *null*  or an empty string. The name does not have to be unique,
#     even within the same library.</p>
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_cached ()
# Gets the value of 'cached' property.
#
# @retval cached - The current value of the field.
# The status that indicates whether the library item is on disk or not. The library item
#     is cached when all its files are on disk.
#
# optional#
sub get_cached {
   my ($self, %args) = @_;
   return $self->{'cached'}; 	
}

## @method set_cached ()
# Sets the given value for 'cached' property.
# 
# @param cached  - New value for the field.
# The status that indicates whether the library item is on disk or not. The library item
#     is cached when all its files are on disk.
#
sub set_cached {
   my ($self, %args) = @_;
   $self->{'cached'} = $args{'cached'}; 
   return;	
}

## @method get_size ()
# Gets the value of 'size' property.
#
# @retval size - The current value of the field.
# The library item size, in bytes. The size is the sum of the size used on the storage
#     backing for all the files in the item. When the library item is not cached, the size
#     is 0.
#
# optional#
sub get_size {
   my ($self, %args) = @_;
   return $self->{'size'}; 	
}

## @method set_size ()
# Sets the given value for 'size' property.
# 
# @param size  - New value for the field.
# The library item size, in bytes. The size is the sum of the size used on the storage
#     backing for all the files in the item. When the library item is not cached, the size
#     is 0.
#
sub set_size {
   my ($self, %args) = @_;
   $self->{'size'} = $args{'size'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# An optional type identifier which indicates the type adapter plugin to use. <p>
# 
# This  *field*  may be set to a non-empty string value that corresponds to an
#     identifier supported by a type adapter plugin present in the Content Library Service.
#     A type adapter plugin, if present for the specified type, can provide additional
#     information and services around the item content. A type adapter can guide the upload
#     process by creating file entries that are in need of being uploaded to complete an
#     item. </p>
# 
# <p>
# 
# The types and plugins supported by the Content Library Service can be queried using
#     the  class Com::Vmware::Content::Type   *interface* .</p>
#
# optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# An optional type identifier which indicates the type adapter plugin to use. <p>
# 
# This  *field*  may be set to a non-empty string value that corresponds to an
#     identifier supported by a type adapter plugin present in the Content Library Service.
#     A type adapter plugin, if present for the specified type, can provide additional
#     information and services around the item content. A type adapter can guide the upload
#     process by creating file entries that are in need of being uploaded to complete an
#     item. </p>
# 
# <p>
# 
# The types and plugins supported by the Content Library Service can be queried using
#     the  class Com::Vmware::Content::Type   *interface* .</p>
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# A version number that is updated on metadata changes. This value is used to validate
#     update requests to provide optimistic concurrency of changes. <p>
# 
# This value represents a number that is incremented every time library item properties,
#     such as name or description, are changed. It is not incremented by changes to the file
#     content of the library item, including adding or removing files. It is also not
#     affected by tagging the library item.</p>
#
# optional#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# A version number that is updated on metadata changes. This value is used to validate
#     update requests to provide optimistic concurrency of changes. <p>
# 
# This value represents a number that is incremented every time library item properties,
#     such as name or description, are changed. It is not incremented by changes to the file
#     content of the library item, including adding or removing files. It is also not
#     affected by tagging the library item.</p>
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_source_id ()
# Gets the value of 'source_id' property.
#
# @retval source_id - The current value of the field.
# The identifier of the  class Com::Vmware::Content::Library::ItemModel  to which this
#     item is synchronized to if the item belongs to a subscribed library. The value is 
#     *null*  for a library item that belongs to a local library.
#
# optional#
sub get_source_id {
   my ($self, %args) = @_;
   return $self->{'source_id'}; 	
}

## @method set_source_id ()
# Sets the given value for 'source_id' property.
# 
# @param source_id  - New value for the field.
# The identifier of the  class Com::Vmware::Content::Library::ItemModel  to which this
#     item is synchronized to if the item belongs to a subscribed library. The value is 
#     *null*  for a library item that belongs to a local library.
#
sub set_source_id {
   my ($self, %args) = @_;
   $self->{'source_id'} = $args{'source_id'}; 
   return;	
}


1;


