## @class Com::Vmware::Content::Library::Item::DownloadSessionModel
#
#
# The  ``Com::Vmware::Content::Library::Item::DownloadSessionModel``   *class*  provides
#     information on an active  class Com::Vmware::Content::Library::Item::DownloadSession 
#     resource.

package Com::Vmware::Content::Library::Item::DownloadSessionModel;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::DownloadSessionModel structure
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
   $self->{library_item_id} = $args{'library_item_id'};
   $self->{library_item_content_version} = $args{'library_item_content_version'};
   $self->{error_message} = $args{'error_message'};
   $self->{client_progress} = $args{'client_progress'};
   $self->{state} = $args{'state'};
   $self->{expiration_time} = $args{'expiration_time'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::DownloadSessionModel');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.download_session_model');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'library_item_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'library_item_content_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'error_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'client_progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'DownloadSessionModel::State')));
   $self->set_binding_field('key' => 'expiration_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The identifier of this download session.
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
# The identifier of this download session.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}

## @method get_library_item_id ()
# Gets the value of 'library_item_id' property.
#
# @retval library_item_id - The current value of the field.
# The identifier of the library item whose content is being downloaded.
#
# optional#
sub get_library_item_id {
   my ($self, %args) = @_;
   return $self->{'library_item_id'}; 	
}

## @method set_library_item_id ()
# Sets the given value for 'library_item_id' property.
# 
# @param library_item_id  - New value for the field.
# The identifier of the library item whose content is being downloaded.
#
sub set_library_item_id {
   my ($self, %args) = @_;
   $self->{'library_item_id'} = $args{'library_item_id'}; 
   return;	
}

## @method get_library_item_content_version ()
# Gets the value of 'library_item_content_version' property.
#
# @retval library_item_content_version - The current value of the field.
# The content version of the library item whose content is being downloaded. This value
#     is the  :attr:`Com::Vmware::Content::Library::ItemModel.content_version`  at the time
#     when the session is created for the library item.
#
# optional#
sub get_library_item_content_version {
   my ($self, %args) = @_;
   return $self->{'library_item_content_version'}; 	
}

## @method set_library_item_content_version ()
# Sets the given value for 'library_item_content_version' property.
# 
# @param library_item_content_version  - New value for the field.
# The content version of the library item whose content is being downloaded. This value
#     is the  :attr:`Com::Vmware::Content::Library::ItemModel.content_version`  at the time
#     when the session is created for the library item.
#
sub set_library_item_content_version {
   my ($self, %args) = @_;
   $self->{'library_item_content_version'} = $args{'library_item_content_version'}; 
   return;	
}

## @method get_error_message ()
# Gets the value of 'error_message' property.
#
# @retval error_message - The current value of the field.
# If the session is in the 
#     :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ERROR`  status
#     this property will have more details about the error.
#
# optional#
sub get_error_message {
   my ($self, %args) = @_;
   return $self->{'error_message'}; 	
}

## @method set_error_message ()
# Sets the given value for 'error_message' property.
# 
# @param error_message  - New value for the field.
# If the session is in the 
#     :attr:`Com::Vmware::Content::Library::Item::DownloadSessionModel::State.ERROR`  status
#     this property will have more details about the error.
#
sub set_error_message {
   my ($self, %args) = @_;
   $self->{'error_message'} = $args{'error_message'}; 
   return;	
}

## @method get_client_progress ()
# Gets the value of 'client_progress' property.
#
# @retval client_progress - The current value of the field.
# The progress that has been made with the download. This property is to be updated by
#     the client during the download process to indicate the progress of its work in
#     completing the download. The initial progress is 0 until updated by the client. The
#     maximum value is 100, which indicates that the download is complete.
#
# optional#
sub get_client_progress {
   my ($self, %args) = @_;
   return $self->{'client_progress'}; 	
}

## @method set_client_progress ()
# Sets the given value for 'client_progress' property.
# 
# @param client_progress  - New value for the field.
# The progress that has been made with the download. This property is to be updated by
#     the client during the download process to indicate the progress of its work in
#     completing the download. The initial progress is 0 until updated by the client. The
#     maximum value is 100, which indicates that the download is complete.
#
sub set_client_progress {
   my ($self, %args) = @_;
   $self->{'client_progress'} = $args{'client_progress'}; 
   return;	
}

## @method get_state ()
# Gets the value of 'state' property.
#
# @retval state - The current value of the field.
# The current state (ACTIVE, CANCELED, ERROR) of the download session.
#
# optional#
sub get_state {
   my ($self, %args) = @_;
   return $self->{'state'}; 	
}

## @method set_state ()
# Sets the given value for 'state' property.
# 
# @param state  - New value for the field.
# The current state (ACTIVE, CANCELED, ERROR) of the download session.
#
sub set_state {
   my ($self, %args) = @_;
   $self->{'state'} = $args{'state'}; 
   return;	
}

## @method get_expiration_time ()
# Gets the value of 'expiration_time' property.
#
# @retval expiration_time - The current value of the field.
# Indicates the time after which the session will expire. The session is guaranteed not
#     to expire before this time.
#
# optional#
sub get_expiration_time {
   my ($self, %args) = @_;
   return $self->{'expiration_time'}; 	
}

## @method set_expiration_time ()
# Sets the given value for 'expiration_time' property.
# 
# @param expiration_time  - New value for the field.
# Indicates the time after which the session will expire. The session is guaranteed not
#     to expire before this time.
#
sub set_expiration_time {
   my ($self, %args) = @_;
   $self->{'expiration_time'} = $args{'expiration_time'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Item::DownloadSessionModel::State
#
# The state of the download session.
#
#
#
# Constant Com::Vmware::Content::Library::Item::DownloadSessionModel::State::ACTIVE #
#The session is active. Individual files may be in the process of being transferred and may
# become ready for download at different times.
#
# Constant Com::Vmware::Content::Library::Item::DownloadSessionModel::State::CANCELED #
#The session has been canceled. On-going downloads may fail. The session will stay in this
# state until it is either deleted by the user or automatically cleaned up by the Content
# Library Service.
#
# Constant Com::Vmware::Content::Library::Item::DownloadSessionModel::State::ERROR #
#Indicates there was an error during the session lifecycle.

package Com::Vmware::Content::Library::Item::DownloadSessionModel::State;

use constant {
    ACTIVE =>  'ACTIVE',
    CANCELED =>  'CANCELED',
    ERROR =>  'ERROR',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::DownloadSessionModel::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.item.download_session_model.state',
                           'binding_class' => 'Com::Vmware::Content::Library::Item::DownloadSessionModel::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


