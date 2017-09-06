## @class Com::Vmware::Content::LibraryModel
#
#
# The  class Com::Vmware::Content::LibraryModel   *class*  represents a Content Library
#     resource model. <p>
# 
# A  ``Com::Vmware::Content::LibraryModel``  is a container for a set of items which
#     represent a usable set of files. The Content Library Service allows for multiple
#     libraries to be created with separate authorization and sharing policies. </p>
# 
# <p>
# 
# Each  ``Com::Vmware::Content::LibraryModel``  is a container for a set of  class
#     Com::Vmware::Content::Library::ItemModel  instances. Each item is a logical object in
#     a library, which may have multiple files. </p>
# 
# <p>
# 
# A  ``Com::Vmware::Content::LibraryModel``  may be local or subscribed. A local library
#     has its source of truth about items within this Content Library Service. Items may be
#     added to or removed from the library. A local library may also be private or
#     published. When published, the library is exposed by a network endpoint and can be
#     used by another Content Library Service for synchronization. A private local library
#     cannot be used for synchronization. </p>
# 
# <p>
# 
# A subscribed library is a library which gets its source of truth from another library
#     that may be across a network in another Content Library Service. A subscribed library
#     may have a different name and metadata from the library to which it subscribes, but
#     the set of library items is always the same as those in the source library. Library
#     items cannot be manually added to a subscribed library -- they can only be added by
#     adding new items to the source library.</p>

package Com::Vmware::Content::LibraryModel;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::LibraryModel structure
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
   $self->{creation_time} = $args{'creation_time'};
   $self->{description} = $args{'description'};
   $self->{last_modified_time} = $args{'last_modified_time'};
   $self->{last_sync_time} = $args{'last_sync_time'};
   $self->{name} = $args{'name'};
   $self->{storage_backings} = $args{'storage_backings'};
   $self->{type} = $args{'type'};
   $self->{optimization_info} = $args{'optimization_info'};
   $self->{version} = $args{'version'};
   $self->{publish_info} = $args{'publish_info'};
   $self->{subscription_info} = $args{'subscription_info'};
   $self->{server_guid} = $args{'server_guid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::LibraryModel');
   $self->set_binding_name('name' => 'com.vmware.content.library_model');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'creation_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'last_modified_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'last_sync_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'storage_backings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'StorageBacking'))));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content', 'type_name' => 'LibraryModel::LibraryType')));
   $self->set_binding_field('key' => 'optimization_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'OptimizationInfo')));
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'publish_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'PublishInfo')));
   $self->set_binding_field('key' => 'subscription_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'SubscriptionInfo')));
   $self->set_binding_field('key' => 'server_guid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# An identifier which uniquely identifies this  ``Com::Vmware::Content::LibraryModel`` .
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
# An identifier which uniquely identifies this  ``Com::Vmware::Content::LibraryModel`` .
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_creation_time ()
# Gets the value of 'creation_time' property.
#
# @retval creation_time - The current value of the field.
# The date and time when this library was created.
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
# The date and time when this library was created.
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
# A human-readable description for this library.
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
# A human-readable description for this library.
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
# The date and time when this library was last updated. <p>
# 
# This  *field*  is updated automatically when the library properties are changed. This 
#     *field*  is not affected by adding, removing, or modifying a library item or its
#     content within the library. Tagging the library or syncing the subscribed library does
#     not alter this  *field* .</p>
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
# The date and time when this library was last updated. <p>
# 
# This  *field*  is updated automatically when the library properties are changed. This 
#     *field*  is not affected by adding, removing, or modifying a library item or its
#     content within the library. Tagging the library or syncing the subscribed library does
#     not alter this  *field* .</p>
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
# The date and time when this library was last synchronized. <p>
# 
# This  *field*  applies only to subscribed libraries. It is updated every time a
#     synchronization is triggered on the library. The value is  *null*  for a local
#     library.</p>
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
# The date and time when this library was last synchronized. <p>
# 
# This  *field*  applies only to subscribed libraries. It is updated every time a
#     synchronization is triggered on the library. The value is  *null*  for a local
#     library.</p>
#
sub set_last_sync_time {
   my ($self, %args) = @_;
   $self->{'last_sync_time'} = $args{'last_sync_time'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the library. <p>
# 
# A Library is identified by a human-readable name. Library names cannot be undefined or
#     an empty string. Names do not have to be unique.</p>
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
# The name of the library. <p>
# 
# A Library is identified by a human-readable name. Library names cannot be undefined or
#     an empty string. Names do not have to be unique.</p>
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_storage_backings ()
# Gets the value of 'storage_backings' property.
#
# @retval storage_backings - The current value of the field.
# The list of storage backings which are available for this library. <p>
# 
# A  class Com::Vmware::Content::Library::StorageBacking  defines a storage location
#     which can be used to store files for the library items in this library. Multiple
#     storage locations are not currently supported but may become supported in future
#     releases.</p>
#
# optional#
sub get_storage_backings {
   my ($self, %args) = @_;
   return $self->{'storage_backings'}; 	
}

## @method set_storage_backings ()
# Sets the given value for 'storage_backings' property.
# 
# @param storage_backings  - New value for the field.
# The list of storage backings which are available for this library. <p>
# 
# A  class Com::Vmware::Content::Library::StorageBacking  defines a storage location
#     which can be used to store files for the library items in this library. Multiple
#     storage locations are not currently supported but may become supported in future
#     releases.</p>
#
sub set_storage_backings {
   my ($self, %args) = @_;
   $self->{'storage_backings'} = $args{'storage_backings'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type (LOCAL, SUBSCRIBED) of this library. <p>
# 
# This value can be used to determine what additional services and information can be
#     available for this library.</p>
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
# The type (LOCAL, SUBSCRIBED) of this library. <p>
# 
# This value can be used to determine what additional services and information can be
#     available for this library.</p>
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_optimization_info ()
# Gets the value of 'optimization_info' property.
#
# @retval optimization_info - The current value of the field.
# Defines various optimizations and optimization parameters applied to this library.
#
# optional#
sub get_optimization_info {
   my ($self, %args) = @_;
   return $self->{'optimization_info'}; 	
}

## @method set_optimization_info ()
# Sets the given value for 'optimization_info' property.
# 
# @param optimization_info  - New value for the field.
# Defines various optimizations and optimization parameters applied to this library.
#
sub set_optimization_info {
   my ($self, %args) = @_;
   $self->{'optimization_info'} = $args{'optimization_info'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# A version number which is updated on metadata changes. This value allows clients to
#     detect concurrent updates and prevent accidental clobbering of data. <p>
# 
# This value represents a number which is incremented every time library properties,
#     such as name or description, are changed. It is not incremented by changes to a
#     library item within the library, including adding or removing items. It is also not
#     affected by tagging the library.</p>
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
# A version number which is updated on metadata changes. This value allows clients to
#     detect concurrent updates and prevent accidental clobbering of data. <p>
# 
# This value represents a number which is incremented every time library properties,
#     such as name or description, are changed. It is not incremented by changes to a
#     library item within the library, including adding or removing items. It is also not
#     affected by tagging the library.</p>
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_publish_info ()
# Gets the value of 'publish_info' property.
#
# @retval publish_info - The current value of the field.
# Defines how this library is published so that it can be subscribed to by a remote
#     subscribed library. <p>
# 
# The  class Com::Vmware::Content::Library::PublishInfo  defines where and how the
#     metadata for this local library is accessible. A local library is only published
#     publically if  :attr:`Com::Vmware::Content::Library::PublishInfo.published`  is 
#     ``true`` .</p>
#
# optional#
sub get_publish_info {
   my ($self, %args) = @_;
   return $self->{'publish_info'}; 	
}

## @method set_publish_info ()
# Sets the given value for 'publish_info' property.
# 
# @param publish_info  - New value for the field.
# Defines how this library is published so that it can be subscribed to by a remote
#     subscribed library. <p>
# 
# The  class Com::Vmware::Content::Library::PublishInfo  defines where and how the
#     metadata for this local library is accessible. A local library is only published
#     publically if  :attr:`Com::Vmware::Content::Library::PublishInfo.published`  is 
#     ``true`` .</p>
#
sub set_publish_info {
   my ($self, %args) = @_;
   $self->{'publish_info'} = $args{'publish_info'}; 
   return;	
}

## @method get_subscription_info ()
# Gets the value of 'subscription_info' property.
#
# @retval subscription_info - The current value of the field.
# Defines the subscription behavior for this Library. <p>
# 
# The  class Com::Vmware::Content::Library::SubscriptionInfo  defines how this
#     subscribed library synchronizes to a remote source. Setting the value will determine
#     the remote source to which the library synchronizes, and how. Changing the
#     subscription will result in synchronizing to a new source. If the new source differs
#     from the old one, the old library items and data will be lost. Setting 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.automatic_sync_enabled`  to
#     false will halt subscription but will not remove existing cached data.</p>
#
# optional#
sub get_subscription_info {
   my ($self, %args) = @_;
   return $self->{'subscription_info'}; 	
}

## @method set_subscription_info ()
# Sets the given value for 'subscription_info' property.
# 
# @param subscription_info  - New value for the field.
# Defines the subscription behavior for this Library. <p>
# 
# The  class Com::Vmware::Content::Library::SubscriptionInfo  defines how this
#     subscribed library synchronizes to a remote source. Setting the value will determine
#     the remote source to which the library synchronizes, and how. Changing the
#     subscription will result in synchronizing to a new source. If the new source differs
#     from the old one, the old library items and data will be lost. Setting 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.automatic_sync_enabled`  to
#     false will halt subscription but will not remove existing cached data.</p>
#
sub set_subscription_info {
   my ($self, %args) = @_;
   $self->{'subscription_info'} = $args{'subscription_info'}; 
   return;	
}

## @method get_server_guid ()
# Gets the value of 'server_guid' property.
#
# @retval server_guid - The current value of the field.
# The unique identifier of the vCenter server where the library exists.
#
# optional#
sub get_server_guid {
   my ($self, %args) = @_;
   return $self->{'server_guid'}; 	
}

## @method set_server_guid ()
# Sets the given value for 'server_guid' property.
# 
# @param server_guid  - New value for the field.
# The unique identifier of the vCenter server where the library exists.
#
sub set_server_guid {
   my ($self, %args) = @_;
   $self->{'server_guid'} = $args{'server_guid'}; 
   return;	
}


1;


## @class Com::Vmware::Content::LibraryModel::LibraryType
#
# The  ``Com::Vmware::Content::LibraryModel::LibraryType``   *enumerated type*  defines
#     the type of a  class Com::Vmware::Content::LibraryModel . <p>
# 
# The type of a library can be used to determine which additional services can be
#     performed with a library.</p>
#
#
#
# Constant Com::Vmware::Content::LibraryModel::LibraryType::LOCAL #
#The library contents are defined and stored by the local Content Library Service
# installation. <p>
# 
# A local library can be retrieved and managed via the  class
# Com::Vmware::Content::LocalLibrary .</p>
#
# Constant Com::Vmware::Content::LibraryModel::LibraryType::SUBSCRIBED #
#The library synchronizes its items and content from another published library. <p>
# 
# A subscribed library can be retrieved and managed via the  class
# Com::Vmware::Content::SubscribedLibrary .</p>

package Com::Vmware::Content::LibraryModel::LibraryType;

use constant {
    LOCAL =>  'LOCAL',
    SUBSCRIBED =>  'SUBSCRIBED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::LibraryModel::LibraryType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library_model.library_type',
                           'binding_class' => 'Com::Vmware::Content::LibraryModel::LibraryType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


