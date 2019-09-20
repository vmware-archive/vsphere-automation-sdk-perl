## @class Com::Vmware::Content::Library::SubscriptionInfo
#
#
# The  ``Com::Vmware::Content::Library::SubscriptionInfo``   *class*  defines the
#     subscription behavior for a subscribed library.

package Com::Vmware::Content::Library::SubscriptionInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::SubscriptionInfo structure
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
   $self->{automatic_sync_enabled} = $args{'automatic_sync_enabled'};
   $self->{on_demand} = $args{'on_demand'};
   $self->{password} = $args{'password'};
   $self->{ssl_thumbprint} = $args{'ssl_thumbprint'};
   $self->{subscription_url} = $args{'subscription_url'};
   $self->{user_name} = $args{'user_name'};
   $self->{source_info} = $args{'source_info'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::SubscriptionInfo');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscription_info');
   $self->set_binding_field('key' => 'authentication_method', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'SubscriptionInfo::AuthenticationMethod')));
   $self->set_binding_field('key' => 'automatic_sync_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'on_demand', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'password', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SecretType()));
   $self->set_binding_field('key' => 'ssl_thumbprint', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'subscription_url', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'user_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'source_info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'SourceInfo')));
   bless $self, $class;
   return $self;
}

## @method get_authentication_method ()
# Gets the value of 'authentication_method' property.
#
# @retval authentication_method - The current value of the field.
# Indicate how the subscribed library should authenticate (BASIC, NONE) with the
#     published library endpoint.
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
# Indicate how the subscribed library should authenticate (BASIC, NONE) with the
#     published library endpoint.
#
sub set_authentication_method {
   my ($self, %args) = @_;
   $self->{'authentication_method'} = $args{'authentication_method'}; 
   return;	
}

## @method get_automatic_sync_enabled ()
# Gets the value of 'automatic_sync_enabled' property.
#
# @retval automatic_sync_enabled - The current value of the field.
# Whether the library should participate in automatic library synchronization. In order
#     for automatic synchronization to happen, the global 
#     :attr:`Com::Vmware::Content::ConfigurationModel.automatic_sync_enabled`  option must
#     also be true. The subscription is still active even when automatic synchronization is
#     turned off, but synchronization is only activated with an explicit call to 
#     :func:`Com::Vmware::Content::SubscribedLibrary.sync`  or 
#     :func:`Com::Vmware::Content::Library::SubscribedItem.sync` . In other words, manual
#     synchronization is still available even when automatic synchronization is disabled.
#
# optional#
sub get_automatic_sync_enabled {
   my ($self, %args) = @_;
   return $self->{'automatic_sync_enabled'}; 	
}

## @method set_automatic_sync_enabled ()
# Sets the given value for 'automatic_sync_enabled' property.
# 
# @param automatic_sync_enabled  - New value for the field.
# Whether the library should participate in automatic library synchronization. In order
#     for automatic synchronization to happen, the global 
#     :attr:`Com::Vmware::Content::ConfigurationModel.automatic_sync_enabled`  option must
#     also be true. The subscription is still active even when automatic synchronization is
#     turned off, but synchronization is only activated with an explicit call to 
#     :func:`Com::Vmware::Content::SubscribedLibrary.sync`  or 
#     :func:`Com::Vmware::Content::Library::SubscribedItem.sync` . In other words, manual
#     synchronization is still available even when automatic synchronization is disabled.
#
sub set_automatic_sync_enabled {
   my ($self, %args) = @_;
   $self->{'automatic_sync_enabled'} = $args{'automatic_sync_enabled'}; 
   return;	
}

## @method get_on_demand ()
# Gets the value of 'on_demand' property.
#
# @retval on_demand - The current value of the field.
# Indicates whether a library item&apos;s content will be synchronized only on demand.
#     <p>
# 
# If this is set to  ``true`` , then the library item&apos;s metadata will be
#     synchronized but the item&apos;s content (its files) will not be synchronized. The
#     Content Library Service will synchronize the content upon request only. This can cause
#     the first use of the content to have a noticeable delay. </p>
# 
# <p>
# 
# Items without synchronized content can be forcefully synchronized in advance using the
#     :func:`Com::Vmware::Content::Library::SubscribedItem.sync`  call with 
#     ``forceSyncContent``  set to true. Once content has been synchronized, the content can
#     removed with the  :func:`Com::Vmware::Content::Library::SubscribedItem.evict`  call.
#     </p>
# 
# <p>
# 
#  If this value is set to  ``false`` , all content will be synchronized in advance.</p>
#
# optional#
sub get_on_demand {
   my ($self, %args) = @_;
   return $self->{'on_demand'}; 	
}

## @method set_on_demand ()
# Sets the given value for 'on_demand' property.
# 
# @param on_demand  - New value for the field.
# Indicates whether a library item&apos;s content will be synchronized only on demand.
#     <p>
# 
# If this is set to  ``true`` , then the library item&apos;s metadata will be
#     synchronized but the item&apos;s content (its files) will not be synchronized. The
#     Content Library Service will synchronize the content upon request only. This can cause
#     the first use of the content to have a noticeable delay. </p>
# 
# <p>
# 
# Items without synchronized content can be forcefully synchronized in advance using the
#     :func:`Com::Vmware::Content::Library::SubscribedItem.sync`  call with 
#     ``forceSyncContent``  set to true. Once content has been synchronized, the content can
#     removed with the  :func:`Com::Vmware::Content::Library::SubscribedItem.evict`  call.
#     </p>
# 
# <p>
# 
#  If this value is set to  ``false`` , all content will be synchronized in advance.</p>
#
sub set_on_demand {
   my ($self, %args) = @_;
   $self->{'on_demand'} = $args{'on_demand'}; 
   return;	
}

## @method get_password ()
# Gets the value of 'password' property.
#
# @retval password - The current value of the field.
# The password to use when authenticating. <p>
# 
# The password must be set when using a password-based authentication method; empty
#     strings are not allowed.</p>
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
# The password to use when authenticating. <p>
# 
# The password must be set when using a password-based authentication method; empty
#     strings are not allowed.</p>
#
sub set_password {
   my ($self, %args) = @_;
   $self->{'password'} = $args{'password'}; 
   return;	
}

## @method get_ssl_thumbprint ()
# Gets the value of 'ssl_thumbprint' property.
#
# @retval ssl_thumbprint - The current value of the field.
# An optional SHA-1 hash of the SSL certificate for the remote endpoint. <p>
# 
# If this value is defined the SSL certificate will be verified by comparing it to the
#     SSL thumbprint. The SSL certificate must verify against the thumbprint. When
#     specified, the standard certificate chain validation behavior is not used. The
#     certificate chain is validated normally if this value is  *null* .</p>
#
# optional#
sub get_ssl_thumbprint {
   my ($self, %args) = @_;
   return $self->{'ssl_thumbprint'}; 	
}

## @method set_ssl_thumbprint ()
# Sets the given value for 'ssl_thumbprint' property.
# 
# @param ssl_thumbprint  - New value for the field.
# An optional SHA-1 hash of the SSL certificate for the remote endpoint. <p>
# 
# If this value is defined the SSL certificate will be verified by comparing it to the
#     SSL thumbprint. The SSL certificate must verify against the thumbprint. When
#     specified, the standard certificate chain validation behavior is not used. The
#     certificate chain is validated normally if this value is  *null* .</p>
#
sub set_ssl_thumbprint {
   my ($self, %args) = @_;
   $self->{'ssl_thumbprint'} = $args{'ssl_thumbprint'}; 
   return;	
}

## @method get_subscription_url ()
# Gets the value of 'subscription_url' property.
#
# @retval subscription_url - The current value of the field.
# The URL of the endpoint where the metadata for the remotely published library is being
#     served. <p>
# 
# This URL can be the  :attr:`Com::Vmware::Content::Library::PublishInfo.publish_url` 
#     of the published library (for example, https://server/path/lib.json). </p>
# 
# <p>
# 
# If the source content comes from a published library with 
#     :attr:`Com::Vmware::Content::Library::PublishInfo.persist_json_enabled` , the
#     subscription URL can be a URL pointing to the library JSON file on a datastore or
#     remote file system. The supported formats are: </p>
# 
# <p>
# 
#  vSphere 6.5 </p>
# 
# <ul>
#  <li>ds:///vmfs/volumes/{uuid}/mylibrary/lib.json (for datastore)</li>
# <li>nfs://server/path/mylibrary/lib.json (for NFSv3 server on vCenter Server
#     Appliance)</li>
# <li>nfs://server/path/mylibrary/lib.json?version=4 (for NFSv4 server on vCenter Server
#     Appliance) </li>
#  <li>smb://server/path/mylibrary/lib.json (for SMB server)</li>
#  </ul> <p>
# 
#  vSphere 6.0 </p>
# 
# <ul>
# <li>file://server/mylibrary/lib.json (for UNC server on vCenter Server for
#     Windows)</li>
#  <li>file:///path/mylibrary/lib.json (for local file system)</li>
#  </ul> <p>
# 
# When you specify a DS subscription URL, the datastore must be on the same vCenter
#     Server as the subscribed library. When you specify an NFS or SMB subscription URL, the
#     :attr:`Com::Vmware::Content::Library::StorageBacking.storage_uri`  of the subscribed
#     library must be on the same remote file server and should share a common parent path
#     with the subscription URL.</p>
#
# optional#
sub get_subscription_url {
   my ($self, %args) = @_;
   return $self->{'subscription_url'}; 	
}

## @method set_subscription_url ()
# Sets the given value for 'subscription_url' property.
# 
# @param subscription_url  - New value for the field.
# The URL of the endpoint where the metadata for the remotely published library is being
#     served. <p>
# 
# This URL can be the  :attr:`Com::Vmware::Content::Library::PublishInfo.publish_url` 
#     of the published library (for example, https://server/path/lib.json). </p>
# 
# <p>
# 
# If the source content comes from a published library with 
#     :attr:`Com::Vmware::Content::Library::PublishInfo.persist_json_enabled` , the
#     subscription URL can be a URL pointing to the library JSON file on a datastore or
#     remote file system. The supported formats are: </p>
# 
# <p>
# 
#  vSphere 6.5 </p>
# 
# <ul>
#  <li>ds:///vmfs/volumes/{uuid}/mylibrary/lib.json (for datastore)</li>
# <li>nfs://server/path/mylibrary/lib.json (for NFSv3 server on vCenter Server
#     Appliance)</li>
# <li>nfs://server/path/mylibrary/lib.json?version=4 (for NFSv4 server on vCenter Server
#     Appliance) </li>
#  <li>smb://server/path/mylibrary/lib.json (for SMB server)</li>
#  </ul> <p>
# 
#  vSphere 6.0 </p>
# 
# <ul>
# <li>file://server/mylibrary/lib.json (for UNC server on vCenter Server for
#     Windows)</li>
#  <li>file:///path/mylibrary/lib.json (for local file system)</li>
#  </ul> <p>
# 
# When you specify a DS subscription URL, the datastore must be on the same vCenter
#     Server as the subscribed library. When you specify an NFS or SMB subscription URL, the
#     :attr:`Com::Vmware::Content::Library::StorageBacking.storage_uri`  of the subscribed
#     library must be on the same remote file server and should share a common parent path
#     with the subscription URL.</p>
#
sub set_subscription_url {
   my ($self, %args) = @_;
   $self->{'subscription_url'} = $args{'subscription_url'}; 
   return;	
}

## @method get_user_name ()
# Gets the value of 'user_name' property.
#
# @retval user_name - The current value of the field.
# The username to use when authenticating. <p>
# 
# The username must be set when using a password-based authentication method. Empty
#     strings are allowed for usernames.</p>
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
# The username to use when authenticating. <p>
# 
# The username must be set when using a password-based authentication method. Empty
#     strings are allowed for usernames.</p>
#
sub set_user_name {
   my ($self, %args) = @_;
   $self->{'user_name'} = $args{'user_name'}; 
   return;	
}

## @method get_source_info ()
# Gets the value of 'source_info' property.
#
# @retval source_info - The current value of the field.
# Information about the source published library. This  *field*  will be set for a
#     subscribed library which is associated with a subscription of the published library.
#     This  *field*  was added in vSphere API 6.7.2.
#
# optional#
sub get_source_info {
   my ($self, %args) = @_;
   return $self->{'source_info'}; 	
}

## @method set_source_info ()
# Sets the given value for 'source_info' property.
# 
# @param source_info  - New value for the field.
# Information about the source published library. This  *field*  will be set for a
#     subscribed library which is associated with a subscription of the published library.
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_source_info {
   my ($self, %args) = @_;
   $self->{'source_info'} = $args{'source_info'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod
#
# Indicate how the subscribed library should authenticate with the published library
#     endpoint.
#
#
#
# Constant Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod::BASIC #
#Require HTTP Basic authentication matching a specified username and password.
#
# Constant Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod::NONE #
#Require no authentication.

package Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod;

use constant {
    BASIC =>  'BASIC',
    NONE =>  'NONE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.subscription_info.authentication_method',
                           'binding_class' => 'Com::Vmware::Content::Library::SubscriptionInfo::AuthenticationMethod');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


