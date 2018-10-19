## @class Com::Vmware::Content::Library::Item::UpdateSessionModel
#
#
# The  ``Com::Vmware::Content::Library::Item::UpdateSessionModel``   *class*  provides
#     information on an active  class Com::Vmware::Content::Library::Item::UpdateSession 
#     resource.

package Com::Vmware::Content::Library::Item::UpdateSessionModel;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::UpdateSessionModel structure
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
         'discriminant_name' => 'state',
         'case_map' => {
               'ACTIVE' => ['preview_info'],
               'DONE' => [],
               'ERROR' => [],
               'CANCELED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{id} = $args{'id'};
   $self->{library_item_id} = $args{'library_item_id'};
   $self->{library_item_content_version} = $args{'library_item_content_version'};
   $self->{error_message} = $args{'error_message'};
   $self->{client_progress} = $args{'client_progress'};
   $self->{state} = $args{'state'};
   $self->{expiration_time} = $args{'expiration_time'};
   $self->{preview_info} = $args{'preview_info'};
   $self->{warning_behavior} = $args{'warning_behavior'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::UpdateSessionModel');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.update_session_model');
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'library_item_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'library_item_content_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'error_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   $self->set_binding_field('key' => 'client_progress', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'state', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'UpdateSessionModel::State')));
   $self->set_binding_field('key' => 'expiration_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'preview_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Updatesession', 'type_name' => 'PreviewInfo')));
   $self->set_binding_field('key' => 'warning_behavior', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item::Updatesession', 'type_name' => 'WarningBehavior'))));
   bless $self, $class;
   return $self;
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# The identifier of this update session.
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
# The identifier of this update session.
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
# The identifier of the library item to which content will be uploaded or removed.
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
# The identifier of the library item to which content will be uploaded or removed.
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
# The content version of the library item whose content is being modified. This value is
#     the  :attr:`Com::Vmware::Content::Library::ItemModel.content_version`  at the time
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
# The content version of the library item whose content is being modified. This value is
#     the  :attr:`Com::Vmware::Content::Library::ItemModel.content_version`  at the time
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
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ERROR`  status
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
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ERROR`  status
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
# The progress that has been made with the upload. This property is to be updated by the
#     client during the upload process to indicate the progress of its work in completing
#     the upload. The initial progress is 0 until updated by the client. The maximum value
#     is 100, which indicates that the update is complete.
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
# The progress that has been made with the upload. This property is to be updated by the
#     client during the upload process to indicate the progress of its work in completing
#     the upload. The initial progress is 0 until updated by the client. The maximum value
#     is 100, which indicates that the update is complete.
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
# The current state (ACTIVE, DONE, ERROR, CANCELED) of the update session. This  *field*
#      was added in vSphere API 6.7 U1.
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
# The current state (ACTIVE, DONE, ERROR, CANCELED) of the update session. This  *field*
#      was added in vSphere API 6.7 U1.
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
#     to expire earlier than this time.
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
#     to expire earlier than this time.
#
sub set_expiration_time {
   my ($self, %args) = @_;
   $self->{'expiration_time'} = $args{'expiration_time'}; 
   return;	
}

## @method get_preview_info ()
# Gets the value of 'preview_info' property.
#
# @retval preview_info - The current value of the field.
# A preview of the files currently being uploaded in the session. This property will be
#     set only when the session is in the 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE` . This 
#     *field*  was added in vSphere API 6.7 U1.
#
# optional#
sub get_preview_info {
   my ($self, %args) = @_;
   return $self->{'preview_info'}; 	
}

## @method set_preview_info ()
# Sets the given value for 'preview_info' property.
# 
# @param preview_info  - New value for the field.
# A preview of the files currently being uploaded in the session. This property will be
#     set only when the session is in the 
#     :attr:`Com::Vmware::Content::Library::Item::UpdateSessionModel::State.ACTIVE` . This 
#     *field*  was added in vSphere API 6.7 U1.
#
sub set_preview_info {
   my ($self, %args) = @_;
   $self->{'preview_info'} = $args{'preview_info'}; 
   return;	
}

## @method get_warning_behavior ()
# Gets the value of 'warning_behavior' property.
#
# @retval warning_behavior - The current value of the field.
# Indicates the update session behavior if warnings are raised in the session preview.
#     Any warning which is raised by session preview but not ignored by the client will, by
#     default, fail the update session. This  *field*  was added in vSphere API 6.7 U1.
#
# optional#
sub get_warning_behavior {
   my ($self, %args) = @_;
   return $self->{'warning_behavior'}; 	
}

## @method set_warning_behavior ()
# Sets the given value for 'warning_behavior' property.
# 
# @param warning_behavior  - New value for the field.
# Indicates the update session behavior if warnings are raised in the session preview.
#     Any warning which is raised by session preview but not ignored by the client will, by
#     default, fail the update session. This  *field*  was added in vSphere API 6.7 U1.
#
sub set_warning_behavior {
   my ($self, %args) = @_;
   $self->{'warning_behavior'} = $args{'warning_behavior'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Item::UpdateSessionModel::State
#
# The state of an update session.
#
#
#
# Constant Com::Vmware::Content::Library::Item::UpdateSessionModel::State::ACTIVE #
#The session is currently active. This is the initial state when the session is created.
# Files may be uploaded by the client or pulled by the Content Library Service at this
# stage.
#
# Constant Com::Vmware::Content::Library::Item::UpdateSessionModel::State::DONE #
#The session is done and all its effects are now visible.
#
# Constant Com::Vmware::Content::Library::Item::UpdateSessionModel::State::ERROR #
#There was an error during the session.
#
# Constant Com::Vmware::Content::Library::Item::UpdateSessionModel::State::CANCELED #
#The session has been canceled.

package Com::Vmware::Content::Library::Item::UpdateSessionModel::State;

use constant {
    ACTIVE =>  'ACTIVE',
    DONE =>  'DONE',
    ERROR =>  'ERROR',
    CANCELED =>  'CANCELED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::UpdateSessionModel::State enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.item.update_session_model.state',
                           'binding_class' => 'Com::Vmware::Content::Library::Item::UpdateSessionModel::State');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


