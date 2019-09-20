########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Subscriptions.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library::Subscriptions
# The  ``Com::Vmware::Content::Library::Subscriptions``   *interface*  provides 
#     *methods*  for managing the subscription information of the subscribers of a published
#     library. This  *interface*  was added in vSphere API 6.7.2.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for Subscription resource. This  *constant*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions;

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
use Com::Vmware::Content::Library::SubscriptionsStub;

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

## @method create ()
# Creates a subscription of the published library. This  *method*  was added in vSphere API
# 6.7.2.
#
# Note:
# Privileges required for this operation are ContentLibrary.AddSubscription.
#
# @param client_token [OPTIONAL] A unique token generated on the client for each creation request. The token should be
#     a universally unique identifier (UUID), for example: 
#     ``b8a2a2e3-2314-43cd-a871-6ede0f429751`` . This token can be used to guarantee
#     idempotent creation.
# If not specified, creation is not idempotent.
# . The value must be String or None.
#
# @param library [REQUIRED] Identifier of the published library.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @param spec [REQUIRED] Specification for the subscription.
# . The value must be Com::Vmware::Content::Library::Subscriptions::CreateSpec.
#
# @retval 
# Subscription identifier.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Subscriptions).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# If a subscription of the published library to the specified subscribed library already
#     exists. This is only applicable when  ``subscribedLibrary#subscribedLibrary``  is
#     specified.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  If the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  If the library specified by  ``library``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the subscribed library specified by  ``subscribedLibrary#subscribedLibrary``  does
#     not exist at the vCenter instance specified by  ``subscribedLibrary#vcenter`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# If the vCenter instance specified by  ``subscribedLibrary#vcenter``  cannot be
#     contacted or found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If  class Com::Vmware::Content::Library::Subscriptions::CreateSpec  contains invalid
#     arguments.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  If the library specified by  ``library``  is a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
#  If the library specified by  ``library``  is not a published library.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  If the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user that requested the  *method*  is not authorized to perform the  *method* .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library``  requires  ``ContentLibrary.AddSubscription`` . </li>
# </ul>
#

sub create {
   my ($self, %args) = @_;
   my $client_token = $args {client_token};
   my $library = $args {library};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method delete ()
# Deletes the specified subscription of the published library. The subscribed library
# associated with the subscription will not be deleted. This  *method*  was added in vSphere
# API 6.7.2.
#
# Note:
# Privileges required for this operation are ContentLibrary.DeleteSubscription.
#
# @param library [REQUIRED] Identifier of the published library.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @param subscription [REQUIRED] Subscription identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Subscriptions).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  If the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  If the library specified by  ``library``  is a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
#  If the library specified by  ``library``  is not a published library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  If the library specified by  ``library``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the subscription specified by  ``subscription``  does not exist for the library
#     specified by  ``library`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  If the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user that requested the  *method*  is not authorized to perform the  *method* .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library``  requires  ``ContentLibrary.DeleteSubscription`` . </li>
# </ul>
#

sub delete {
   my ($self, %args) = @_;
   my $library = $args {library};
   my $subscription = $args {subscription};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method list ()
# Lists the subscriptions of the published library. This  *method*  was added in vSphere API
# 6.7.2.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param library [REQUIRED] Identifier of the published library.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @retval 
# List of commonly used information about subscriptions of the published library.
# The return type will be Array of Com::Vmware::Content::Library::Subscriptions::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  If the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  If the library specified by  ``library``  is a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  If the library specified by  ``library``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
#  If the library specified by  ``library``  is not a published library.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  If the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user that requested the  *method*  is not authorized to perform the  *method* .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library``  requires  ``System.Read`` . </li>
# </ul>
#

sub list {
   my ($self, %args) = @_;
   my $library = $args {library};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method update ()
# Updates the specified subscription of the published library. <p>
# 
# This is an incremental update to the subscription. Except for the  class
# Com::Vmware::Content::Library::Subscriptions::UpdateSpecPlacement   *class* ,  *fields* 
# that are  *null*  in the update specification will be left unchanged. If 
# ``spec#subscribedLibraryPlacement``  is specified, all  *fields*  of the current
# subscribed library placement will be replaced by this placement.</p>
# 
# . This  *method*  was added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are ContentLibrary.UpdateSubscription.
#
# @param library [REQUIRED] Identifier of the published library.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @param subscription [REQUIRED] subscription identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Subscriptions).
# . The value must be str.
#
# @param spec [REQUIRED] Specification of the new property values to set on the subscription.
# . The value must be Com::Vmware::Content::Library::Subscriptions::UpdateSpec.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  If the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  If the library specified by  ``library``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# If the subscription specified by  ``subscription``  does not exist for the library
#     specified by  ``library`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
#  If the subscribed library cannot be contacted or found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# If  class Com::Vmware::Content::Library::Subscriptions::UpdateSpec  contains invalid
#     arguments.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  If the library specified by  ``library``  is a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
#  If the library specified by  ``library``  is not a published library.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  If the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user that requested the  *method*  is not authorized to perform the  *method* .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library``  requires  ``ContentLibrary.UpdateSubscription`` . </li>
# </ul>
#

sub update {
   my ($self, %args) = @_;
   my $library = $args {library};
   my $subscription = $args {subscription};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'update',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'update',
                         method_args => \%args);
}


## @method get ()
# Returns information about the specified subscription of the published library. This 
# *method*  was added in vSphere API 6.7.2.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param library [REQUIRED] Identifier of the published library.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.Library).
# . The value must be str.
#
# @param subscription [REQUIRED] Identifier of the subscription.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Subscriptions).
# . The value must be str.
#
# @retval 
# Information about the subscription.
# The return type will be Com::Vmware::Content::Library::Subscriptions::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  If the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  If the library specified by  ``library``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  If the  ``subscription``  is not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidElementType 
#  If the library specified by  ``library``  is a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
#  If the library specified by  ``library``  is not a published library.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  If the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# If the user that requested the  *method*  is not authorized to perform the  *method* .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *parameter*  
#     ``library``  requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $library = $args {library};
   my $subscription = $args {subscription};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library::Subscriptions service
#########################################################################################

## @class Com::Vmware::Content::Library::Subscriptions::Location
#
# The  ``Com::Vmware::Content::Library::Subscriptions::Location``   *enumerated type* 
#     defines the location of subscribed library relative to the published library. This 
#     *enumeration*  was added in vSphere API 6.7.2.
#
#
#
# Constant Com::Vmware::Content::Library::Subscriptions::Location::LOCAL #
#The subscribed library belongs to the same vCenter instance as the published library. This
#  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Content::Library::Subscriptions::Location::REMOTE #
#The subscribed library belongs to a different vCenter instance than the published library.
# This  *constant*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::Location;

use constant {
    LOCAL =>  'LOCAL',
    REMOTE =>  'REMOTE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::Location enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.subscriptions.location',
                           'binding_class' => 'Com::Vmware::Content::Library::Subscriptions::Location');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::Subscriptions service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::Subscriptions service
#########################################################################################

## @class Com::Vmware::Content::Library::Subscriptions::CreateSpecNewSubscribedLibrary
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::CreateSpecNewSubscribedLibrary`` 
#     *class*  defines the information required to create a new subscribed library. This 
#     *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::CreateSpecNewSubscribedLibrary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::CreateSpecNewSubscribedLibrary structure
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
   $self->{description} = $args{'description'};
   $self->{storage_backings} = $args{'storage_backings'};
   $self->{automatic_sync_enabled} = $args{'automatic_sync_enabled'};
   $self->{on_demand} = $args{'on_demand'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::CreateSpecNewSubscribedLibrary');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.create_spec_new_subscribed_library');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'storage_backings', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'StorageBacking')));
   $self->set_binding_field('key' => 'automatic_sync_enabled', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'on_demand', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the subscribed library. This  *field*  was added in vSphere API 6.7.2.
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
# Name of the subscribed library. This  *field*  was added in vSphere API 6.7.2.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# Description of the subscribed library. This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# Description of the subscribed library. This  *field*  was added in vSphere API 6.7.2.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_storage_backings ()
# Gets the value of 'storage_backings' property.
#
# @retval storage_backings - The current value of the field.
# The list of default storage backings for this library. <p>
# 
# The list must contain exactly one storage backing. Multiple default storage locations
#     are not currently supported but may become supported in future releases.</p>
# 
# . This  *field*  was added in vSphere API 6.7.2.
#
# List#
sub get_storage_backings {
   my ($self, %args) = @_;
   return $self->{'storage_backings'}; 	
}

## @method set_storage_backings ()
# Sets the given value for 'storage_backings' property.
# 
# @param storage_backings  - New value for the field.
# The list of default storage backings for this library. <p>
# 
# The list must contain exactly one storage backing. Multiple default storage locations
#     are not currently supported but may become supported in future releases.</p>
# 
# . This  *field*  was added in vSphere API 6.7.2.
#
sub set_storage_backings {
   my ($self, %args) = @_;
   $self->{'storage_backings'} = $args{'storage_backings'}; 
   return;	
}

## @method get_automatic_sync_enabled ()
# Gets the value of 'automatic_sync_enabled' property.
#
# @retval automatic_sync_enabled - The current value of the field.
# Specifies whether the library should participate in automatic library synchronization.
#     This  *field*  was added in vSphere API 6.7.2.
#
# boolean#
sub get_automatic_sync_enabled {
   my ($self, %args) = @_;
   return $self->{'automatic_sync_enabled'}; 	
}

## @method set_automatic_sync_enabled ()
# Sets the given value for 'automatic_sync_enabled' property.
# 
# @param automatic_sync_enabled  - New value for the field.
# Specifies whether the library should participate in automatic library synchronization.
#     This  *field*  was added in vSphere API 6.7.2.
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
# Specifies whether a library item&apos;s content will be synchronized only on demand.
#     This  *field*  was added in vSphere API 6.7.2.
#
# boolean#
sub get_on_demand {
   my ($self, %args) = @_;
   return $self->{'on_demand'}; 	
}

## @method set_on_demand ()
# Sets the given value for 'on_demand' property.
# 
# @param on_demand  - New value for the field.
# Specifies whether a library item&apos;s content will be synchronized only on demand.
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_on_demand {
   my ($self, %args) = @_;
   $self->{'on_demand'} = $args{'on_demand'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::CreateSpecVcenter
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::CreateSpecVcenter``   *class* 
#     defines information about the vCenter Server instance where the subscribed library
#     associated with the subscription exists or will be created. This  *class*  was added
#     in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::CreateSpecVcenter;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::CreateSpecVcenter structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{https_port} = $args{'https_port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::CreateSpecVcenter');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.create_spec_vcenter');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# The hostname of the subscribed library&apos;s vCenter Server. This  *field*  was added
#     in vSphere API 6.7.2.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# The hostname of the subscribed library&apos;s vCenter Server. This  *field*  was added
#     in vSphere API 6.7.2.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# The HTTPS port of the vCenter Server instance where the subscribed library exists.
#     This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_https_port {
   my ($self, %args) = @_;
   return $self->{'https_port'}; 	
}

## @method set_https_port ()
# Sets the given value for 'https_port' property.
# 
# @param https_port  - New value for the field.
# The HTTPS port of the vCenter Server instance where the subscribed library exists.
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::CreateSpecPlacement
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::CreateSpecPlacement``   *class* 
#     defines the placement information for the subscribed library&apos;s virtual machine
#     template library items. Storage location of the virtual machine template items is
#     defined by the subscribed library&apos;s storage backing. This placement information
#     needs to be compatible with the subscribed library&apos;s storage backing. The 
#     ``Com::Vmware::Content::Library::Subscriptions::CreateSpecPlacement``   *class*  is
#     only applicable for the virtual machine template library items of the subscribed
#     library. This  *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::CreateSpecPlacement;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::CreateSpecPlacement structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{folder} = $args{'folder'};
   $self->{cluster} = $args{'cluster'};
   $self->{resource_pool} = $args{'resource_pool'};
   $self->{host} = $args{'host'};
   $self->{network} = $args{'network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::CreateSpecPlacement');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.create_spec_placement');
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Virtual machine folder into which the virtual machine template should be placed. This 
#     *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_folder {
   my ($self, %args) = @_;
   return $self->{'folder'}; 	
}

## @method set_folder ()
# Sets the given value for 'folder' property.
# 
# @param folder  - New value for the field.
# Virtual machine folder into which the virtual machine template should be placed. This 
#     *field*  was added in vSphere API 6.7.2.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Cluster onto which the virtual machine template should be placed. If  ``cluster``  and
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .
#     If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Cluster onto which the virtual machine template should be placed. If  ``cluster``  and
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .
#     If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_resource_pool ()
# Gets the value of 'resource_pool' property.
#
# @retval resource_pool - The current value of the field.
# Resource pool into which the virtual machine template should be placed. If  ``host`` 
#     and  ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host``
#     . If  ``cluster``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_resource_pool {
   my ($self, %args) = @_;
   return $self->{'resource_pool'}; 	
}

## @method set_resource_pool ()
# Sets the given value for 'resource_pool' property.
# 
# @param resource_pool  - New value for the field.
# Resource pool into which the virtual machine template should be placed. If  ``host`` 
#     and  ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host``
#     . If  ``cluster``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
sub set_resource_pool {
   my ($self, %args) = @_;
   $self->{'resource_pool'} = $args{'resource_pool'}; 
   return;	
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# Host onto which the virtual machine template should be placed. If  ``host``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host`` . If
#     ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# Host onto which the virtual machine template should be placed. If  ``host``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host`` . If
#     ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Network that backs the virtual Ethernet adapters in the virtual machine template. This
#      *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# Network that backs the virtual Ethernet adapters in the virtual machine template. This
#      *field*  was added in vSphere API 6.7.2.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary``  
#     *class*  defines the subscribed library information used to create the subscription.
#     This  *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary structure
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
         'discriminant_name' => 'target',
         'case_map' => {
               'CREATE_NEW' => ['new_subscribed_library'],
               'USE_EXISTING' => ['subscribed_library'],
            }),
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'location',
         'case_map' => {
               'REMOTE' => ['vcenter'],
               'LOCAL' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{target} = $args{'target'};
   $self->{new_subscribed_library} = $args{'new_subscribed_library'};
   $self->{subscribed_library} = $args{'subscribed_library'};
   $self->{location} = $args{'location'};
   $self->{vcenter} = $args{'vcenter'};
   $self->{placement} = $args{'placement'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.create_spec_subscribed_library');
   $self->set_binding_field('key' => 'target', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::CreateSpecSubscribedLibrary::Target'));
   $self->set_binding_field('key' => 'new_subscribed_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::CreateSpecNewSubscribedLibrary')));
   $self->set_binding_field('key' => 'subscribed_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::Location'));
   $self->set_binding_field('key' => 'vcenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::CreateSpecVcenter')));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::CreateSpecPlacement')));
   bless $self, $class;
   return $self;
}

## @method get_target ()
# Gets the value of 'target' property.
#
# @retval target - The current value of the field.
# Specifies whether the target subscribed library should be newly created or an existing
#     subscribed library should be used. This  *field*  was added in vSphere API 6.7.2.
#
# Target#
sub get_target {
   my ($self, %args) = @_;
   return $self->{'target'}; 	
}

## @method set_target ()
# Sets the given value for 'target' property.
# 
# @param target  - New value for the field.
# Specifies whether the target subscribed library should be newly created or an existing
#     subscribed library should be used. This  *field*  was added in vSphere API 6.7.2.
#
sub set_target {
   my ($self, %args) = @_;
   $self->{'target'} = $args{'target'}; 
   return;	
}

## @method get_new_subscribed_library ()
# Gets the value of 'new_subscribed_library' property.
#
# @retval new_subscribed_library - The current value of the field.
# Specification for creating a new subscribed library associated with the subscription.
#     This  *field*  was added in vSphere API 6.7.2.
#
# optional#
sub get_new_subscribed_library {
   my ($self, %args) = @_;
   return $self->{'new_subscribed_library'}; 	
}

## @method set_new_subscribed_library ()
# Sets the given value for 'new_subscribed_library' property.
# 
# @param new_subscribed_library  - New value for the field.
# Specification for creating a new subscribed library associated with the subscription.
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_new_subscribed_library {
   my ($self, %args) = @_;
   $self->{'new_subscribed_library'} = $args{'new_subscribed_library'}; 
   return;	
}

## @method get_subscribed_library ()
# Gets the value of 'subscribed_library' property.
#
# @retval subscribed_library - The current value of the field.
# Identifier of the existing subscribed library to associate with the subscription. Only
#     the subscribed libraries for which 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.subscription_url`  property is
#     set to the  :attr:`Com::Vmware::Content::Library::PublishInfo.publish_url`  of the
#     published library can be associated with the subscription. This  *field*  was added in
#     vSphere API 6.7.2.
#
# optional#
sub get_subscribed_library {
   my ($self, %args) = @_;
   return $self->{'subscribed_library'}; 	
}

## @method set_subscribed_library ()
# Sets the given value for 'subscribed_library' property.
# 
# @param subscribed_library  - New value for the field.
# Identifier of the existing subscribed library to associate with the subscription. Only
#     the subscribed libraries for which 
#     :attr:`Com::Vmware::Content::Library::SubscriptionInfo.subscription_url`  property is
#     set to the  :attr:`Com::Vmware::Content::Library::PublishInfo.publish_url`  of the
#     published library can be associated with the subscription. This  *field*  was added in
#     vSphere API 6.7.2.
#
sub set_subscribed_library {
   my ($self, %args) = @_;
   $self->{'subscribed_library'} = $args{'subscribed_library'}; 
   return;	
}

## @method get_location ()
# Gets the value of 'location' property.
#
# @retval location - The current value of the field.
# Location of the subscribed library relative to the published library. This  *field* 
#     was added in vSphere API 6.7.2.
#
# Location#
sub get_location {
   my ($self, %args) = @_;
   return $self->{'location'}; 	
}

## @method set_location ()
# Sets the given value for 'location' property.
# 
# @param location  - New value for the field.
# Location of the subscribed library relative to the published library. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_location {
   my ($self, %args) = @_;
   $self->{'location'} = $args{'location'}; 
   return;	
}

## @method get_vcenter ()
# Gets the value of 'vcenter' property.
#
# @retval vcenter - The current value of the field.
# Specification for the subscribed library&apos;s vCenter Server instance. This  *field*
#      was added in vSphere API 6.7.2.
#
# optional#
sub get_vcenter {
   my ($self, %args) = @_;
   return $self->{'vcenter'}; 	
}

## @method set_vcenter ()
# Sets the given value for 'vcenter' property.
# 
# @param vcenter  - New value for the field.
# Specification for the subscribed library&apos;s vCenter Server instance. This  *field*
#      was added in vSphere API 6.7.2.
#
sub set_vcenter {
   my ($self, %args) = @_;
   $self->{'vcenter'} = $args{'vcenter'}; 
   return;	
}

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Placement specification for the virtual machine template library items on the
#     subscribed library. This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_placement {
   my ($self, %args) = @_;
   return $self->{'placement'}; 	
}

## @method set_placement ()
# Sets the given value for 'placement' property.
# 
# @param placement  - New value for the field.
# Placement specification for the virtual machine template library items on the
#     subscribed library. This  *field*  was added in vSphere API 6.7.2.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary::Target
#
# The 
#     ``Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary::Target`` 
#     *enumerated type*  defines the options related to the target subscribed library which
#     will be associated with the subscription. This  *enumeration*  was added in vSphere
#     API 6.7.2.
#
#
#
# Constant Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary::Target::CREATE_NEW #
#Create a new subscribed library. This  *constant*  was added in vSphere API 6.7.2.
#
# Constant Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary::Target::USE_EXISTING #
#Use the specified existing subscribed library. This  *constant*  was added in vSphere API
# 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary::Target;

use constant {
    CREATE_NEW =>  'CREATE_NEW',
    USE_EXISTING =>  'USE_EXISTING',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary::Target enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.content.library.subscriptions.create_spec_subscribed_library.target',
                           'binding_class' => 'Com::Vmware::Content::Library::Subscriptions::CreateSpecSubscribedLibrary::Target');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Content::Library::Subscriptions::CreateSpec
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::CreateSpec``   *class*  defines
#     the information required to create a new subscription of the published library. This 
#     *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{subscribed_library} = $args{'subscribed_library'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.create_spec');
   $self->set_binding_field('key' => 'subscribed_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::CreateSpecSubscribedLibrary'));
   bless $self, $class;
   return $self;
}

## @method get_subscribed_library ()
# Gets the value of 'subscribed_library' property.
#
# @retval subscribed_library - The current value of the field.
# Specification for the subscribed library to be associated with the subscription. This 
#     *field*  was added in vSphere API 6.7.2.
#
# CreateSpecSubscribedLibrary#
sub get_subscribed_library {
   my ($self, %args) = @_;
   return $self->{'subscribed_library'}; 	
}

## @method set_subscribed_library ()
# Sets the given value for 'subscribed_library' property.
# 
# @param subscribed_library  - New value for the field.
# Specification for the subscribed library to be associated with the subscription. This 
#     *field*  was added in vSphere API 6.7.2.
#
sub set_subscribed_library {
   my ($self, %args) = @_;
   $self->{'subscribed_library'} = $args{'subscribed_library'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::Summary
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::Summary``   *class*  contains
#     commonly used information about the subscription. This  *class*  was added in vSphere
#     API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{subscription} = $args{'subscription'};
   $self->{subscribed_library} = $args{'subscribed_library'};
   $self->{subscribed_library_name} = $args{'subscribed_library_name'};
   $self->{subscribed_library_vcenter_hostname} = $args{'subscribed_library_vcenter_hostname'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::Summary');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.summary');
   $self->set_binding_field('key' => 'subscription', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subscribed_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subscribed_library_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subscribed_library_vcenter_hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_subscription ()
# Gets the value of 'subscription' property.
#
# @retval subscription - The current value of the field.
# Identifier of the subscription. This  *field*  was added in vSphere API 6.7.2.
#
# ID#
sub get_subscription {
   my ($self, %args) = @_;
   return $self->{'subscription'}; 	
}

## @method set_subscription ()
# Sets the given value for 'subscription' property.
# 
# @param subscription  - New value for the field.
# Identifier of the subscription. This  *field*  was added in vSphere API 6.7.2.
#
sub set_subscription {
   my ($self, %args) = @_;
   $self->{'subscription'} = $args{'subscription'}; 
   return;	
}

## @method get_subscribed_library ()
# Gets the value of 'subscribed_library' property.
#
# @retval subscribed_library - The current value of the field.
# Identifier of the subscribed library. This  *field*  was added in vSphere API 6.7.2.
#
# ID#
sub get_subscribed_library {
   my ($self, %args) = @_;
   return $self->{'subscribed_library'}; 	
}

## @method set_subscribed_library ()
# Sets the given value for 'subscribed_library' property.
# 
# @param subscribed_library  - New value for the field.
# Identifier of the subscribed library. This  *field*  was added in vSphere API 6.7.2.
#
sub set_subscribed_library {
   my ($self, %args) = @_;
   $self->{'subscribed_library'} = $args{'subscribed_library'}; 
   return;	
}

## @method get_subscribed_library_name ()
# Gets the value of 'subscribed_library_name' property.
#
# @retval subscribed_library_name - The current value of the field.
# Name of the subscribed library. This  *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_subscribed_library_name {
   my ($self, %args) = @_;
   return $self->{'subscribed_library_name'}; 	
}

## @method set_subscribed_library_name ()
# Sets the given value for 'subscribed_library_name' property.
# 
# @param subscribed_library_name  - New value for the field.
# Name of the subscribed library. This  *field*  was added in vSphere API 6.7.2.
#
sub set_subscribed_library_name {
   my ($self, %args) = @_;
   $self->{'subscribed_library_name'} = $args{'subscribed_library_name'}; 
   return;	
}

## @method get_subscribed_library_vcenter_hostname ()
# Gets the value of 'subscribed_library_vcenter_hostname' property.
#
# @retval subscribed_library_vcenter_hostname - The current value of the field.
# Hostname of the vCenter instance where the subscribed library exists. This  *field* 
#     was added in vSphere API 6.7.2.
#
# Optional#
sub get_subscribed_library_vcenter_hostname {
   my ($self, %args) = @_;
   return $self->{'subscribed_library_vcenter_hostname'}; 	
}

## @method set_subscribed_library_vcenter_hostname ()
# Sets the given value for 'subscribed_library_vcenter_hostname' property.
# 
# @param subscribed_library_vcenter_hostname  - New value for the field.
# Hostname of the vCenter instance where the subscribed library exists. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_subscribed_library_vcenter_hostname {
   my ($self, %args) = @_;
   $self->{'subscribed_library_vcenter_hostname'} = $args{'subscribed_library_vcenter_hostname'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::UpdateSpecVcenter
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::UpdateSpecVcenter``   *class* 
#     defines information about the vCenter Server instance where the subscribed library
#     associated with the subscription exists. The 
#     ``Com::Vmware::Content::Library::Subscriptions::UpdateSpecVcenter``   *class*  is only
#     applicable to subscribed library which exists on remote vCenter Server instance. This 
#     *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::UpdateSpecVcenter;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::UpdateSpecVcenter structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{https_port} = $args{'https_port'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::UpdateSpecVcenter');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.update_spec_vcenter');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# The hostname of the subscribed library&apos;s vCenter Server. This  *field*  was added
#     in vSphere API 6.7.2.
#
# Optional#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# The hostname of the subscribed library&apos;s vCenter Server. This  *field*  was added
#     in vSphere API 6.7.2.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# The HTTPS port of the vCenter Server instance where the subscribed library exists.
#     This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_https_port {
   my ($self, %args) = @_;
   return $self->{'https_port'}; 	
}

## @method set_https_port ()
# Sets the given value for 'https_port' property.
# 
# @param https_port  - New value for the field.
# The HTTPS port of the vCenter Server instance where the subscribed library exists.
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::UpdateSpecPlacement
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::UpdateSpecPlacement``   *class* 
#     defines the placement information for the subscribed library&apos;s virtual machine
#     template library items. Storage location of the virtual machine template items is
#     defined by the subscribed library&apos;s storage backing. This placement information
#     needs to be compatible with the subscribed library&apos;s storage backing. The 
#     ``Com::Vmware::Content::Library::Subscriptions::UpdateSpecPlacement``   *class*  is
#     only applicable for the newly published virtual machine template library items of the
#     subscribed library. Existing items will not be moved. This  *class*  was added in
#     vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::UpdateSpecPlacement;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::UpdateSpecPlacement structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{folder} = $args{'folder'};
   $self->{cluster} = $args{'cluster'};
   $self->{resource_pool} = $args{'resource_pool'};
   $self->{host} = $args{'host'};
   $self->{network} = $args{'network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::UpdateSpecPlacement');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.update_spec_placement');
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Virtual machine folder into which the virtual machine template should be placed. This 
#     *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_folder {
   my ($self, %args) = @_;
   return $self->{'folder'}; 	
}

## @method set_folder ()
# Sets the given value for 'folder' property.
# 
# @param folder  - New value for the field.
# Virtual machine folder into which the virtual machine template should be placed. This 
#     *field*  was added in vSphere API 6.7.2.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Cluster onto which the virtual machine template should be placed. If  ``cluster``  and
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .
#     If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . If  ``resourcePool``  or  ``host``  is specified, it is recommended that
#     this  *field*  be  *null* . This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Cluster onto which the virtual machine template should be placed. If  ``cluster``  and
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .
#     If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . If  ``resourcePool``  or  ``host``  is specified, it is recommended that
#     this  *field*  be  *null* . This  *field*  was added in vSphere API 6.7.2.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_resource_pool ()
# Gets the value of 'resource_pool' property.
#
# @retval resource_pool - The current value of the field.
# Resource pool into which the virtual machine template should be placed. This  *field* 
#     was added in vSphere API 6.7.2.
#
# Optional#
sub get_resource_pool {
   my ($self, %args) = @_;
   return $self->{'resource_pool'}; 	
}

## @method set_resource_pool ()
# Sets the given value for 'resource_pool' property.
# 
# @param resource_pool  - New value for the field.
# Resource pool into which the virtual machine template should be placed. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_resource_pool {
   my ($self, %args) = @_;
   $self->{'resource_pool'} = $args{'resource_pool'}; 
   return;	
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# Host onto which the virtual machine template should be placed. If  ``host``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host`` . If
#     ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# Host onto which the virtual machine template should be placed. If  ``host``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host`` . If
#     ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Network that backs the virtual Ethernet adapters in the virtual machine template. This
#      *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# Network that backs the virtual Ethernet adapters in the virtual machine template. This
#      *field*  was added in vSphere API 6.7.2.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::UpdateSpec
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::UpdateSpec``   *class*  defines
#     information required to update the subscription. This  *class*  was added in vSphere
#     API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::UpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::UpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{subscribed_library_vcenter} = $args{'subscribed_library_vcenter'};
   $self->{subscribed_library_placement} = $args{'subscribed_library_placement'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::UpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.update_spec');
   $self->set_binding_field('key' => 'subscribed_library_vcenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::UpdateSpecVcenter')));
   $self->set_binding_field('key' => 'subscribed_library_placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::UpdateSpecPlacement')));
   bless $self, $class;
   return $self;
}

## @method get_subscribed_library_vcenter ()
# Gets the value of 'subscribed_library_vcenter' property.
#
# @retval subscribed_library_vcenter - The current value of the field.
# Specification for the subscribed library&apos;s vCenter Server instance. This  *field*
#      was added in vSphere API 6.7.2.
#
# Optional#
sub get_subscribed_library_vcenter {
   my ($self, %args) = @_;
   return $self->{'subscribed_library_vcenter'}; 	
}

## @method set_subscribed_library_vcenter ()
# Sets the given value for 'subscribed_library_vcenter' property.
# 
# @param subscribed_library_vcenter  - New value for the field.
# Specification for the subscribed library&apos;s vCenter Server instance. This  *field*
#      was added in vSphere API 6.7.2.
#
sub set_subscribed_library_vcenter {
   my ($self, %args) = @_;
   $self->{'subscribed_library_vcenter'} = $args{'subscribed_library_vcenter'}; 
   return;	
}

## @method get_subscribed_library_placement ()
# Gets the value of 'subscribed_library_placement' property.
#
# @retval subscribed_library_placement - The current value of the field.
# Placement specification for the virtual machine template items of the subscribed
#     library. Updating this information will only affect new or updated items, existing
#     items will not be moved. The entire placement configuration of the subscribed library
#     will replaced by the new specification. This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_subscribed_library_placement {
   my ($self, %args) = @_;
   return $self->{'subscribed_library_placement'}; 	
}

## @method set_subscribed_library_placement ()
# Sets the given value for 'subscribed_library_placement' property.
# 
# @param subscribed_library_placement  - New value for the field.
# Placement specification for the virtual machine template items of the subscribed
#     library. Updating this information will only affect new or updated items, existing
#     items will not be moved. The entire placement configuration of the subscribed library
#     will replaced by the new specification. This  *field*  was added in vSphere API 6.7.2.
#
sub set_subscribed_library_placement {
   my ($self, %args) = @_;
   $self->{'subscribed_library_placement'} = $args{'subscribed_library_placement'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::VcenterInfo
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::VcenterInfo``   *class*  contains
#     information about the vCenter Server instance where the subscribed library associated
#     with the subscription exists. This  *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::VcenterInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::VcenterInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{hostname} = $args{'hostname'};
   $self->{https_port} = $args{'https_port'};
   $self->{server_guid} = $args{'server_guid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::VcenterInfo');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.vcenter_info');
   $self->set_binding_field('key' => 'hostname', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'https_port', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'server_guid', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_hostname ()
# Gets the value of 'hostname' property.
#
# @retval hostname - The current value of the field.
# Hostname of the vCenter Server instance where the subscribed library exists. This 
#     *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_hostname {
   my ($self, %args) = @_;
   return $self->{'hostname'}; 	
}

## @method set_hostname ()
# Sets the given value for 'hostname' property.
# 
# @param hostname  - New value for the field.
# Hostname of the vCenter Server instance where the subscribed library exists. This 
#     *field*  was added in vSphere API 6.7.2.
#
sub set_hostname {
   my ($self, %args) = @_;
   $self->{'hostname'} = $args{'hostname'}; 
   return;	
}

## @method get_https_port ()
# Gets the value of 'https_port' property.
#
# @retval https_port - The current value of the field.
# The HTTPS port of the vCenter Server instance where the subscribed library exists.
#     This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_https_port {
   my ($self, %args) = @_;
   return $self->{'https_port'}; 	
}

## @method set_https_port ()
# Sets the given value for 'https_port' property.
# 
# @param https_port  - New value for the field.
# The HTTPS port of the vCenter Server instance where the subscribed library exists.
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_https_port {
   my ($self, %args) = @_;
   $self->{'https_port'} = $args{'https_port'}; 
   return;	
}

## @method get_server_guid ()
# Gets the value of 'server_guid' property.
#
# @retval server_guid - The current value of the field.
# The unique identifier of the vCenter Server where the subscribed library exists. This 
#     *field*  was added in vSphere API 6.7.2.
#
# String#
sub get_server_guid {
   my ($self, %args) = @_;
   return $self->{'server_guid'}; 	
}

## @method set_server_guid ()
# Sets the given value for 'server_guid' property.
# 
# @param server_guid  - New value for the field.
# The unique identifier of the vCenter Server where the subscribed library exists. This 
#     *field*  was added in vSphere API 6.7.2.
#
sub set_server_guid {
   my ($self, %args) = @_;
   $self->{'server_guid'} = $args{'server_guid'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::PlacementInfo
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::PlacementInfo``   *class* 
#     contains the placement information for the subscribed library&apos;s virtual machine
#     template library items. The 
#     ``Com::Vmware::Content::Library::Subscriptions::PlacementInfo``   *class*  is only
#     applicable for the virtual machine template library items of the subscribed library.
#     This  *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::PlacementInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::PlacementInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{folder} = $args{'folder'};
   $self->{cluster} = $args{'cluster'};
   $self->{resource_pool} = $args{'resource_pool'};
   $self->{host} = $args{'host'};
   $self->{network} = $args{'network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::PlacementInfo');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.placement_info');
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Virtual machine folder into which the virtual machine template should be placed. This 
#     *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_folder {
   my ($self, %args) = @_;
   return $self->{'folder'}; 	
}

## @method set_folder ()
# Sets the given value for 'folder' property.
# 
# @param folder  - New value for the field.
# Virtual machine folder into which the virtual machine template should be placed. This 
#     *field*  was added in vSphere API 6.7.2.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Cluster onto which the virtual machine template should be placed. This  *field*  was
#     added in vSphere API 6.7.2.
#
# Optional#
sub get_cluster {
   my ($self, %args) = @_;
   return $self->{'cluster'}; 	
}

## @method set_cluster ()
# Sets the given value for 'cluster' property.
# 
# @param cluster  - New value for the field.
# Cluster onto which the virtual machine template should be placed. This  *field*  was
#     added in vSphere API 6.7.2.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_resource_pool ()
# Gets the value of 'resource_pool' property.
#
# @retval resource_pool - The current value of the field.
# Resource pool into which the virtual machine template should be placed. This  *field* 
#     was added in vSphere API 6.7.2.
#
# Optional#
sub get_resource_pool {
   my ($self, %args) = @_;
   return $self->{'resource_pool'}; 	
}

## @method set_resource_pool ()
# Sets the given value for 'resource_pool' property.
# 
# @param resource_pool  - New value for the field.
# Resource pool into which the virtual machine template should be placed. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_resource_pool {
   my ($self, %args) = @_;
   $self->{'resource_pool'} = $args{'resource_pool'}; 
   return;	
}

## @method get_host ()
# Gets the value of 'host' property.
#
# @retval host - The current value of the field.
# Host onto which the virtual machine template should be placed. If  ``host``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host`` . If
#     ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_host {
   my ($self, %args) = @_;
   return $self->{'host'}; 	
}

## @method set_host ()
# Sets the given value for 'host' property.
# 
# @param host  - New value for the field.
# Host onto which the virtual machine template should be placed. If  ``host``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host`` . If
#     ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.7.2.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Network that backs the virtual Ethernet adapters in the virtual machine template. This
#      *field*  was added in vSphere API 6.7.2.
#
# Optional#
sub get_network {
   my ($self, %args) = @_;
   return $self->{'network'}; 	
}

## @method set_network ()
# Sets the given value for 'network' property.
# 
# @param network  - New value for the field.
# Network that backs the virtual Ethernet adapters in the virtual machine template. This
#      *field*  was added in vSphere API 6.7.2.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Subscriptions::Info
#
#
# The  ``Com::Vmware::Content::Library::Subscriptions::Info``   *class*  contains
#     information about the subscription. This  *class*  was added in vSphere API 6.7.2.

package Com::Vmware::Content::Library::Subscriptions::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Subscriptions::Info structure
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
         'discriminant_name' => 'subscribed_library_location',
         'case_map' => {
               'REMOTE' => ['subscribed_library_vcenter'],
               'LOCAL' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{subscribed_library} = $args{'subscribed_library'};
   $self->{subscribed_library_name} = $args{'subscribed_library_name'};
   $self->{subscribed_library_location} = $args{'subscribed_library_location'};
   $self->{subscribed_library_vcenter} = $args{'subscribed_library_vcenter'};
   $self->{subscribed_library_placement} = $args{'subscribed_library_placement'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Subscriptions::Info');
   $self->set_binding_name('name' => 'com.vmware.content.library.subscriptions.info');
   $self->set_binding_field('key' => 'subscribed_library', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subscribed_library_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'subscribed_library_location', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::Location'));
   $self->set_binding_field('key' => 'subscribed_library_vcenter', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::VcenterInfo')));
   $self->set_binding_field('key' => 'subscribed_library_placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library', 'type_name' => 'Subscriptions::PlacementInfo'));
   bless $self, $class;
   return $self;
}

## @method get_subscribed_library ()
# Gets the value of 'subscribed_library' property.
#
# @retval subscribed_library - The current value of the field.
# Identifier of the subscribed library associated with the subscription. This  *field* 
#     was added in vSphere API 6.7.2.
#
# ID#
sub get_subscribed_library {
   my ($self, %args) = @_;
   return $self->{'subscribed_library'}; 	
}

## @method set_subscribed_library ()
# Sets the given value for 'subscribed_library' property.
# 
# @param subscribed_library  - New value for the field.
# Identifier of the subscribed library associated with the subscription. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_subscribed_library {
   my ($self, %args) = @_;
   $self->{'subscribed_library'} = $args{'subscribed_library'}; 
   return;	
}

## @method get_subscribed_library_name ()
# Gets the value of 'subscribed_library_name' property.
#
# @retval subscribed_library_name - The current value of the field.
# Name of the subscribed library associated with the subscription. This  *field*  was
#     added in vSphere API 6.7.2.
#
# String#
sub get_subscribed_library_name {
   my ($self, %args) = @_;
   return $self->{'subscribed_library_name'}; 	
}

## @method set_subscribed_library_name ()
# Sets the given value for 'subscribed_library_name' property.
# 
# @param subscribed_library_name  - New value for the field.
# Name of the subscribed library associated with the subscription. This  *field*  was
#     added in vSphere API 6.7.2.
#
sub set_subscribed_library_name {
   my ($self, %args) = @_;
   $self->{'subscribed_library_name'} = $args{'subscribed_library_name'}; 
   return;	
}

## @method get_subscribed_library_location ()
# Gets the value of 'subscribed_library_location' property.
#
# @retval subscribed_library_location - The current value of the field.
# Location of the subscribed library relative to the published library. This  *field* 
#     was added in vSphere API 6.7.2.
#
# Location#
sub get_subscribed_library_location {
   my ($self, %args) = @_;
   return $self->{'subscribed_library_location'}; 	
}

## @method set_subscribed_library_location ()
# Sets the given value for 'subscribed_library_location' property.
# 
# @param subscribed_library_location  - New value for the field.
# Location of the subscribed library relative to the published library. This  *field* 
#     was added in vSphere API 6.7.2.
#
sub set_subscribed_library_location {
   my ($self, %args) = @_;
   $self->{'subscribed_library_location'} = $args{'subscribed_library_location'}; 
   return;	
}

## @method get_subscribed_library_vcenter ()
# Gets the value of 'subscribed_library_vcenter' property.
#
# @retval subscribed_library_vcenter - The current value of the field.
# Information about the vCenter Server instance where the subscribed library exists.
#     This  *field*  was added in vSphere API 6.7.2.
#
# optional#
sub get_subscribed_library_vcenter {
   my ($self, %args) = @_;
   return $self->{'subscribed_library_vcenter'}; 	
}

## @method set_subscribed_library_vcenter ()
# Sets the given value for 'subscribed_library_vcenter' property.
# 
# @param subscribed_library_vcenter  - New value for the field.
# Information about the vCenter Server instance where the subscribed library exists.
#     This  *field*  was added in vSphere API 6.7.2.
#
sub set_subscribed_library_vcenter {
   my ($self, %args) = @_;
   $self->{'subscribed_library_vcenter'} = $args{'subscribed_library_vcenter'}; 
   return;	
}

## @method get_subscribed_library_placement ()
# Gets the value of 'subscribed_library_placement' property.
#
# @retval subscribed_library_placement - The current value of the field.
# Placement information about the subscribed library&apos;s virtual machine template
#     items. This  *field*  was added in vSphere API 6.7.2.
#
# PlacementInfo#
sub get_subscribed_library_placement {
   my ($self, %args) = @_;
   return $self->{'subscribed_library_placement'}; 	
}

## @method set_subscribed_library_placement ()
# Sets the given value for 'subscribed_library_placement' property.
# 
# @param subscribed_library_placement  - New value for the field.
# Placement information about the subscribed library&apos;s virtual machine template
#     items. This  *field*  was added in vSphere API 6.7.2.
#
sub set_subscribed_library_placement {
   my ($self, %args) = @_;
   $self->{'subscribed_library_placement'} = $args{'subscribed_library_placement'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Content::Library::Subscriptions service
#########################################################################################
