## @class Com::Vmware::Content::Library::PublishInfo
#
#
# The  ``Com::Vmware::Content::Library::PublishInfo``   *class*  defines how a local
#     library is published publicly for synchronization to other libraries.

package Com::Vmware::Content::Library::PublishInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::PublishInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{authentication_method} = $args{'authentication_method'};
   $self->{published} = $args{'published'};
   $self->{publish_url} = $args{'publish_url'};
   $self->{user_name} = $args{'user_name'};
   $self->{password} = $args{'password'};
   $self->{current_password} = $args{'current_password'};
   $self->{persist_json_enabled} = $args{'persist_json_enabled'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::PublishInfo');
   $self->set_binding_name('name' => 'com.vmware.content.library.publish_info');
   $self->set_binding_field('key' => 'authentication_method', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'PublishInfo::AuthenticationMethod')));
   $self->set_binding_field('key' => 'published', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'publish_url', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'current_password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'persist_json_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_authentication_method ()
# Gets the value of 'authentication_method' property.
#
# @retval authentication_method - The current value of the field.
# Indicates how a subscribed library should authenticate (BASIC, NONE) to the published
#     library endpoint.
#
# optional#
sub get_authentication_method {
   my ($self, %args) = @_;
   return $self->{'authentication_method'}; 	
}

## @method set_authentication_method ()
# Sets the given value for 'authentication_method' property.
# 
# @param authentication_method  - New value for the field.
# Indicates how a subscribed library should authenticate (BASIC, NONE) to the published
#     library endpoint.
#
sub set_authentication_method {
   my ($self, %args) = @_;
   $self->{'authentication_method'} = $args{'authentication_method'}; 
   return;	
}

## @method get_published ()
# Gets the value of 'published' property.
#
# @retval published - The current value of the field.
# Whether the local library is published.
#
# optional#
sub get_published {
   my ($self, %args) = @_;
   return $self->{'published'}; 	
}

## @method set_published ()
# Sets the given value for 'published' property.
# 
# @param published  - New value for the field.
# Whether the local library is published.
#
sub set_published {
   my ($self, %args) = @_;
   $self->{'published'} = $args{'published'}; 
   return;	
}

## @method get_publish_url ()
# Gets the value of 'publish_url' property.
#
# @retval publish_url - The current value of the field.
# The URL to which the library metadata is published by the Content Library Service. <p>
# 
# This value can be used to set the 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.subscription_url`  property
#     when creating a subscribed library.</p>
#
# optional#
sub get_publish_url {
   my ($self, %args) = @_;
   return $self->{'publish_url'}; 	
}

## @method set_publish_url ()
# Sets the given value for 'publish_url' property.
# 
# @param publish_url  - New value for the field.
# The URL to which the library metadata is published by the Content Library Service. <p>
# 
# This value can be used to set the 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.subscription_url`  property
#     when creating a subscribed library.</p>
#
sub set_publish_url {
   my ($self, %args) = @_;
   $self->{'publish_url'} = $args{'publish_url'}; 
   return;	
}

## @method get_user_name ()
# Gets the value of 'user_name' property.
#
# @retval user_name - The current value of the field.
# The username to require for authentication.
#
# optional#
sub get_user_name {
   my ($self, %args) = @_;
   return $self->{'user_name'}; 	
}

## @method set_user_name ()
# Sets the given value for 'user_name' property.
# 
# @param user_name  - New value for the field.
# The username to require for authentication.
#
sub set_user_name {
   my ($self, %args) = @_;
   $self->{'user_name'} = $args{'user_name'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# The new password to require for authentication.
#
# optional#
sub get_password {
   my ($self, %args) = @_;
   return $self->{'password'}; 	
}

## @method set_password ()
# Sets the given value for 'password' property.
# 
# @param password  - New value for the field.
# The new password to require for authentication.
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_current_password ()
# Gets the value of 'current_password' property.
#
# @retval current_password - The current value of the field.
# The current password to verify. This  *field*  is available starting in vSphere 6.7.
#
# optional#
sub get_current_password {
   my ($self, %args) = @_;
   return $self->{'current_password'}; 	
}

## @method set_current_password ()
# Sets the given value for 'current_password' property.
# 
# @param current_password  - New value for the field.
# The current password to verify. This  *field*  is available starting in vSphere 6.7.
#
sub set_current_password {
   my ($self, %args) = @_;
   $self->{'current_password'} = $args{'current_password'}; 
   return;	
}

## @method get_persist_json_enabled ()
# Gets the value of 'persist_json_enabled' property.
#
# @retval persist_json_enabled - The current value of the field.
# Whether library and library item metadata are persisted in the storage backing as JSON
#     files. This flag only applies if the local library is published. <p>
# 
# Enabling JSON persistence allows you to synchronize a subscribed library manually
#     instead of over HTTP. You copy the local library content and metadata to another
#     storage backing manually and then create a subscribed library referencing the location
#     of the library JSON file in the 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.subscription_url` . When the
#     subscribed library&apos;s storage backing matches the subscription URL, files do not
#     need to be copied to the subscribed library. </p>
# 
# <p>
# 
# For a library backed by a datastore, the library JSON file will be stored at the path
#     contentlib-{library_id}/lib.json on the datastore. </p>
# 
# <p>
# 
# For a library backed by a remote file system, the library JSON file will be stored at
#     {library_id}/lib.json in the remote file system path.</p>
#
# optional#
sub get_persist_json_enabled {
   my ($self, %args) = @_;
   return $self->{'persist_json_enabled'}; 	
}

## @method set_persist_json_enabled ()
# Sets the given value for 'persist_json_enabled' property.
# 
# @param persist_json_enabled  - New value for the field.
# Whether library and library item metadata are persisted in the storage backing as JSON
#     files. This flag only applies if the local library is published. <p>
# 
# Enabling JSON persistence allows you to synchronize a subscribed library manually
#     instead of over HTTP. You copy the local library content and metadata to another
#     storage backing manually and then create a subscribed library referencing the location
#     of the library JSON file in the 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.subscription_url` . When the
#     subscribed library&apos;s storage backing matches the subscription URL, files do not
#     need to be copied to the subscribed library. </p>
# 
# <p>
# 
# For a library backed by a datastore, the library JSON file will be stored at the path
#     contentlib-{library_id}/lib.json on the datastore. </p>
# 
# <p>
# 
# For a library backed by a remote file system, the library JSON file will be stored at
#     {library_id}/lib.json in the remote file system path.</p>
#
sub set_persist_json_enabled {
   my ($self, %args) = @_;
   $self->{'persist_json_enabled'} = $args{'persist_json_enabled'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod
#
# The  ``Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod``  
#     *enumerated type*  indicates how a subscribed library should authenticate to the
#     published library endpoint.
#
#
#
# Constant Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod::BASIC #
#Require HTTP Basic authentication matching a specified username and password.
#
# Constant Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod::NONE #
#Require no authentication.

package Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod;

use constant {
    BASIC =>  'BASIC',
    NONE =>  'NONE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.publish_info.authentication_method',
                           'binding_class' => 'Com::Vmware::Content::Library::PublishInfo::AuthenticationMethod');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


