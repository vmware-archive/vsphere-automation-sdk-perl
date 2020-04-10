########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Changes.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Library::Item::Changes
# The  ``Com::Vmware::Content::Library::Item::Changes``   *interface*  provides 
#     *methods*  to get a history of the content changes made to a library item. This 
#     *interface*  was added in vSphere API 6.9.1.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for library item versions. This  *constant*  was added in vSphere API 6.9.1.

package Com::Vmware::Content::Library::Item::Changes;

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
use Com::Vmware::Content::Library::Item::ChangesStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.content.library.item.changes';


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
# Returns commonly used information about the content changes made to a library item. This 
# *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param library_item [REQUIRED] Library item identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @retval 
# List of commonly used information about the library item changes.
# The return type will be Array of Com::Vmware::Content::Library::Item::Changes::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user that requested the  *method*  is not authorized to perform the  *method* .
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  if the system reports an error while responding to the request.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``library_item``  requires  ``System.Read`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   my $library_item = $args {library_item};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method get ()
# Returns information about a library item change. This  *method*  was added in vSphere API
# 6.9.1.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param library_item [REQUIRED] Library item identifer.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param version [REQUIRED] Library item version.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.Version).
# . The value must be str.
#
# @retval 
# Information about the specified library item change.
# The return type will be Com::Vmware::Content::Library::Item::Changes::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item or version is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user that requested the  *method*  is not authorized to perform the  *method* .
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  if the system reports an error while responding to the request.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``library_item``  requires  ``System.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $library_item = $args {library_item};
   my $version = $args {version};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Library::Item::Changes service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Library::Item::Changes service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Library::Item::Changes service
#########################################################################################

## @class Com::Vmware::Content::Library::Item::Changes::Summary
#
#
# The  ``Com::Vmware::Content::Library::Item::Changes::Summary``   *class*  contains
#     commonly used information about a library item change. This  *class*  was added in
#     vSphere API 6.9.1.

package Com::Vmware::Content::Library::Item::Changes::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Changes::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{version} = $args{'version'};
   $self->{time} = $args{'time'};
   $self->{user} = $args{'user'};
   $self->{short_message} = $args{'short_message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Changes::Summary');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.changes.summary');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'short_message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# The version of the library item. This  *field*  was added in vSphere API 6.9.1.
#
# ID#
sub get_version {
   my ($self, %args) = @_;
   return $self->{'version'}; 	
}

## @method set_version ()
# Sets the given value for 'version' property.
# 
# @param version  - New value for the field.
# The version of the library item. This  *field*  was added in vSphere API 6.9.1.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}

## @method get_time ()
# Gets the value of 'time' property.
#
# @retval time - The current value of the field.
# The date and time when the item content was changed. This  *field*  was added in
#     vSphere API 6.9.1.
#
# DateTime#
sub get_time {
   my ($self, %args) = @_;
   return $self->{'time'}; 	
}

## @method set_time ()
# Sets the given value for 'time' property.
# 
# @param time  - New value for the field.
# The date and time when the item content was changed. This  *field*  was added in
#     vSphere API 6.9.1.
#
sub set_time {
   my ($self, %args) = @_;
   $self->{'time'} = $args{'time'}; 
   return;	
}

## @method get_user ()
# Gets the value of 'user' property.
#
# @retval user - The current value of the field.
# The user who made the content change. This  *field*  was added in vSphere API 6.9.1.
#
# Optional#
sub get_user {
   my ($self, %args) = @_;
   return $self->{'user'}; 	
}

## @method set_user ()
# Sets the given value for 'user' property.
# 
# @param user  - New value for the field.
# The user who made the content change. This  *field*  was added in vSphere API 6.9.1.
#
sub set_user {
   my ($self, %args) = @_;
   $self->{'user'} = $args{'user'}; 
   return;	
}

## @method get_short_message ()
# Gets the value of 'short_message' property.
#
# @retval short_message - The current value of the field.
# The short message describing the content change. The message is truncated to the first
#     80 characters or first non-leading newline character, whichever length is shorter.
#     This  *field*  was added in vSphere API 6.9.1.
#
# Optional#
sub get_short_message {
   my ($self, %args) = @_;
   return $self->{'short_message'}; 	
}

## @method set_short_message ()
# Sets the given value for 'short_message' property.
# 
# @param short_message  - New value for the field.
# The short message describing the content change. The message is truncated to the first
#     80 characters or first non-leading newline character, whichever length is shorter.
#     This  *field*  was added in vSphere API 6.9.1.
#
sub set_short_message {
   my ($self, %args) = @_;
   $self->{'short_message'} = $args{'short_message'}; 
   return;	
}


1;


## @class Com::Vmware::Content::Library::Item::Changes::Info
#
#
# The  ``Com::Vmware::Content::Library::Item::Changes::Info``   *class*  contains
#     information about a library item change. This  *class*  was added in vSphere API
#     6.9.1.

package Com::Vmware::Content::Library::Item::Changes::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Library::Item::Changes::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{time} = $args{'time'};
   $self->{user} = $args{'user'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Library::Item::Changes::Info');
   $self->set_binding_name('name' => 'com.vmware.content.library.item.changes.info');
   $self->set_binding_field('key' => 'time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'user', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_time ()
# Gets the value of 'time' property.
#
# @retval time - The current value of the field.
# The date and time when the item content was changed. This  *field*  was added in
#     vSphere API 6.9.1.
#
# DateTime#
sub get_time {
   my ($self, %args) = @_;
   return $self->{'time'}; 	
}

## @method set_time ()
# Sets the given value for 'time' property.
# 
# @param time  - New value for the field.
# The date and time when the item content was changed. This  *field*  was added in
#     vSphere API 6.9.1.
#
sub set_time {
   my ($self, %args) = @_;
   $self->{'time'} = $args{'time'}; 
   return;	
}

## @method get_user ()
# Gets the value of 'user' property.
#
# @retval user - The current value of the field.
# The user who made the content change. This  *field*  was added in vSphere API 6.9.1.
#
# Optional#
sub get_user {
   my ($self, %args) = @_;
   return $self->{'user'}; 	
}

## @method set_user ()
# Sets the given value for 'user' property.
# 
# @param user  - New value for the field.
# The user who made the content change. This  *field*  was added in vSphere API 6.9.1.
#
sub set_user {
   my ($self, %args) = @_;
   $self->{'user'} = $args{'user'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# The full message describing the content change. This  *field*  was added in vSphere
#     API 6.9.1.
#
# Optional#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# The full message describing the content change. This  *field*  was added in vSphere
#     API 6.9.1.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Content::Library::Item::Changes service
#########################################################################################
