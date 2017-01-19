########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file TagAssociation.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Cis::Tagging::TagAssociation
# The  ``Com::Vmware::Cis::Tagging::TagAssociation``   *interface*  provides  *methods* 
#     to attach, detach, and query tags.
#

package Com::Vmware::Cis::Tagging::TagAssociation;

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
use Com::Vmware::Cis::Tagging::TagAssociationStub;

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

## @method attach ()
# Attaches the given tag to the input object. The tag needs to meet the cardinality (
# :attr:`Com::Vmware::Cis::Tagging::CategoryModel.cardinality` ) and associability (
# :attr:`Com::Vmware::Cis::Tagging::CategoryModel.associable_types` ) criteria in order to
# be eligible for attachment. If the tag is already attached to the object, then this 
# *method*  is a no-op and an error will not be thrown. To invoke this  *method* , you need
# the attach tag privilege on the tag and the read privilege on the object.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @param object_id [REQUIRED]  The identifier of the input object.
# . The value must be Com::Vmware::Vapi::Std::DynamicID.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the input tag is not eligible to be attached to this object or if the 
#     ``object_id``  is not valid.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if you do not have the privilege to attach the tag or do not have the privilege to
#     read the object.
#

sub attach {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};
   my $object_id = $args {object_id};

   $self->validate_args (method_name => 'attach',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'attach',
                         method_args => \%args);
}


## @method attach_multiple_tags_to_object ()
# Attaches the given tags to the input object. If a tag is already attached to the object,
# then the individual  *method*  is a no-op and an error will not be added to 
# :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages` . To invoke
# this  *method* , you need the read privilege on the object and the attach tag privilege on
# each tag.
#
# @param object_id [REQUIRED]  The identifier of the input object.
# . The value must be Com::Vmware::Vapi::Std::DynamicID.
#
# @param tag_ids [REQUIRED]  The identifiers of the input tags.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be Array of str.
#
# @retval 
# The outcome of the batch  *method*  and the  *list*  of error messages (
#     :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages` )
#     describing attachment failures.
# The return type will be Com::Vmware::Cis::Tagging::TagAssociation::BatchResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to read the object.
#

sub attach_multiple_tags_to_object {
   my ($self, %args) = @_;
   my $object_id = $args {object_id};
   my $tag_ids = $args {tag_ids};

   $self->validate_args (method_name => 'attach_multiple_tags_to_object',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'attach_multiple_tags_to_object',
                         method_args => \%args);
}


## @method attach_tag_to_multiple_objects ()
# Attaches the given tag to the input objects. If a tag is already attached to the object,
# then the individual  *method*  is a no-op and an error will not be added to 
# :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages` . To invoke
# this  *method* , you need the attach tag privilege on the tag and the read privilege on
# each object.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @param object_ids [REQUIRED]  The identifiers of the input objects.
# . The value must be Array of Com::Vmware::Vapi::Std::DynamicID.
#
# @retval 
# The outcome of the batch  *method*  and the  *list*  of error messages (
#     :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages` )
#     describing attachment failures.
# The return type will be Com::Vmware::Cis::Tagging::TagAssociation::BatchResult
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the attach tag privilege on the tag.
#

sub attach_tag_to_multiple_objects {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};
   my $object_ids = $args {object_ids};

   $self->validate_args (method_name => 'attach_tag_to_multiple_objects',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'attach_tag_to_multiple_objects',
                         method_args => \%args);
}


## @method detach ()
# Detaches the tag from the given object. If the tag is already removed from the object,
# then this  *method*  is a no-op and an error will not be thrown. To invoke this  *method*
# , you need the attach tag privilege on the tag and the read privilege on the object.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @param object_id [REQUIRED]  The identifier of the input object.
# . The value must be Com::Vmware::Vapi::Std::DynamicID.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if you do not have the privilege to detach the tag or do not have the privilege to
#     read the given object.
#

sub detach {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};
   my $object_id = $args {object_id};

   $self->validate_args (method_name => 'detach',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'detach',
                         method_args => \%args);
}


## @method detach_multiple_tags_from_object ()
# Detaches the given tags from the input object. If a tag is already removed from the
# object, then the individual  *method*  is a no-op and an error will not be added to 
# :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages` . To invoke
# this  *method* , you need the read privilege on the object and the attach tag privilege
# each tag.
#
# @param object_id [REQUIRED]  The identifier of the input object.
# . The value must be Com::Vmware::Vapi::Std::DynamicID.
#
# @param tag_ids [REQUIRED]  The identifiers of the input tags.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be Array of str.
#
# @retval 
# The outcome of the batch  *method*  and the  *list*  of error messages (
#     :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages` )
#     describing detachment failures.
# The return type will be Com::Vmware::Cis::Tagging::TagAssociation::BatchResult
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to read the object.
#

sub detach_multiple_tags_from_object {
   my ($self, %args) = @_;
   my $object_id = $args {object_id};
   my $tag_ids = $args {tag_ids};

   $self->validate_args (method_name => 'detach_multiple_tags_from_object',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'detach_multiple_tags_from_object',
                         method_args => \%args);
}


## @method detach_tag_from_multiple_objects ()
# Detaches the given tag from the input objects. If a tag is already removed from the
# object, then the individual  *method*  is a no-op and an error will not be added to 
# :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages` . To invoke
# this  *method* , you need the attach tag privilege on the tag and the read privilege on
# each object.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @param object_ids [REQUIRED]  The identifiers of the input objects.
# . The value must be Array of Com::Vmware::Vapi::Std::DynamicID.
#
# @retval 
# The outcome of the batch  *method*  and the  *list*  of error messages (
#     :attr:`Com::Vmware::Cis::Tagging::TagAssociation::BatchResult.error_messages` )
#     describing detachment failures.
# The return type will be Com::Vmware::Cis::Tagging::TagAssociation::BatchResult
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given tag does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the attach tag privilege on the tag.
#

sub detach_tag_from_multiple_objects {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};
   my $object_ids = $args {object_ids};

   $self->validate_args (method_name => 'detach_tag_from_multiple_objects',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'detach_tag_from_multiple_objects',
                         method_args => \%args);
}


## @method list_attached_objects ()
# Fetches the  *list*  of attached objects for the given tag. To invoke this  *method* , you
# need the read privilege on the input tag. Only those objects for which you have the read
# privilege will be returned.
#
# @param tag_id [REQUIRED]  The identifier of the input tag.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be str.
#
# @retval 
# The  *list*  of attached object identifiers.
# The return type will be Array of Com::Vmware::Vapi::Std::DynamicID
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the tag for the given  ``tag_id``  does not exist in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to read the tag.
#

sub list_attached_objects {
   my ($self, %args) = @_;
   my $tag_id = $args {tag_id};

   $self->validate_args (method_name => 'list_attached_objects',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list_attached_objects',
                         method_args => \%args);
}


## @method list_attached_objects_on_tags ()
# Fetches the  *list*  of  class Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects 
# describing the input tag identifiers and the objects they are attached to. To invoke this 
# *method* , you need the read privilege on each input tag. The 
# :attr:`Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects.object_ids`  will only
# contain those objects for which you have the read privilege.
#
# @param tag_ids [REQUIRED]  The identifiers of the input tags.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# . The value must be Array of str.
#
# @retval 
# The  *list*  of the tag identifiers to all object identifiers that each tag is
#     attached to.
# The return type will be Array of Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects
#

sub list_attached_objects_on_tags {
   my ($self, %args) = @_;
   my $tag_ids = $args {tag_ids};

   $self->validate_args (method_name => 'list_attached_objects_on_tags',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list_attached_objects_on_tags',
                         method_args => \%args);
}


## @method list_attached_tags ()
# Fetches the  *list*  of tags attached to the given object. To invoke this  *method* , you
# need the read privilege on the input object. The  *list*  will only contain those tags for
# which you have the read privileges.
#
# @param object_id [REQUIRED]  The identifier of the input object.
# . The value must be Com::Vmware::Vapi::Std::DynamicID.
#
# @retval 
# The  *list*  of all tag identifiers that correspond to the tags attached to the given
#     object.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to read the object.
#

sub list_attached_tags {
   my ($self, %args) = @_;
   my $object_id = $args {object_id};

   $self->validate_args (method_name => 'list_attached_tags',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list_attached_tags',
                         method_args => \%args);
}


## @method list_attached_tags_on_objects ()
# Fetches the  *list*  of  class Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags 
# describing the input object identifiers and the tags attached to each object. To invoke
# this  *method* , you need the read privilege on each input object. The 
# :attr:`Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags.tag_ids`  will only contain
# those tags for which you have the read privilege.
#
# @param object_ids [REQUIRED]  The identifiers of the input objects.
# . The value must be Array of Com::Vmware::Vapi::Std::DynamicID.
#
# @retval 
# The  *list*  of the object identifiers to all tag identifiers that are attached to
#     that object.
# The return type will be Array of Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags
#

sub list_attached_tags_on_objects {
   my ($self, %args) = @_;
   my $object_ids = $args {object_ids};

   $self->validate_args (method_name => 'list_attached_tags_on_objects',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list_attached_tags_on_objects',
                         method_args => \%args);
}


## @method list_attachable_tags ()
# Fetches the  *list*  of attachable tags for the given object, omitting the tags that have
# already been attached. Criteria for attachability is calculated based on tagging
# cardinality ( :attr:`Com::Vmware::Cis::Tagging::CategoryModel.cardinality` ) and
# associability ( :attr:`Com::Vmware::Cis::Tagging::CategoryModel.associable_types` )
# constructs. To invoke this  *method* , you need the read privilege on the input object.
# The  *list*  will only contain those tags for which you have read privileges.
#
# @param object_id [REQUIRED]  The identifier of the input object.
# . The value must be Com::Vmware::Vapi::Std::DynamicID.
#
# @retval 
# The  *list*  of tag identifiers that are eligible to be attached to the given object.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.cis.tagging.Tag).
# The return type will be Array of str
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have the privilege to read the object.
#

sub list_attachable_tags {
   my ($self, %args) = @_;
   my $object_id = $args {object_id};

   $self->validate_args (method_name => 'list_attachable_tags',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list_attachable_tags',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Cis::Tagging::TagAssociation service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Cis::Tagging::TagAssociation service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Cis::Tagging::TagAssociation service
#########################################################################################

## @class Com::Vmware::Cis::Tagging::TagAssociation::BatchResult
#
#
# The  ``Com::Vmware::Cis::Tagging::TagAssociation::BatchResult``   *class*  describes
#     the result of performing the same  *method*  on several tags or objects in a single
#     invocation.

package Com::Vmware::Cis::Tagging::TagAssociation::BatchResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::TagAssociation::BatchResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{success} = $args{'success'};
   $self->{error_messages} = $args{'error_messages'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tagging::TagAssociation::BatchResult');
   $self->set_binding_name('name' => 'com.vmware.cis.tagging.tag_association.batch_result');
   $self->set_binding_field('key' => 'success', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'error_messages', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_success ()
# Gets the value of 'success' property.
#
# @retval success - The current value of the field.
# This is true if the batch  *method*  completed without any errors. Otherwise it is
#     false and all or some  *methods*  have failed.
#
# boolean#
sub get_success {
   my ($self, %args) = @_;
   return $self->{'success'}; 	
}

## @method set_success ()
# Sets the given value for 'success' property.
# 
# @param success  - New value for the field.
# This is true if the batch  *method*  completed without any errors. Otherwise it is
#     false and all or some  *methods*  have failed.
#
sub set_success {
   my ($self, %args) = @_;
   $self->{'success'} = $args{'success'}; 
   return;	
}

## @method get_error_messages ()
# Gets the value of 'error_messages' property.
#
# @retval error_messages - The current value of the field.
# The  *list*  of error messages.
#
# List#
sub get_error_messages {
   my ($self, %args) = @_;
   return $self->{'error_messages'}; 	
}

## @method set_error_messages ()
# Sets the given value for 'error_messages' property.
# 
# @param error_messages  - New value for the field.
# The  *list*  of error messages.
#
sub set_error_messages {
   my ($self, %args) = @_;
   $self->{'error_messages'} = $args{'error_messages'}; 
   return;	
}


1;


## @class Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects
#
#
# The  ``Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects``   *class*  describes
#     a tag and its related objects. Use the 
#     :func:`Com::Vmware::Cis::Tagging::TagAssociation.list_attached_objects_on_tags`  
#     *method*  to retrieve a  *list*  with each element containing a tag and the objects to
#     which it is attached.

package Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{tag_id} = $args{'tag_id'};
   $self->{object_ids} = $args{'object_ids'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tagging::TagAssociation::TagToObjects');
   $self->set_binding_name('name' => 'com.vmware.cis.tagging.tag_association.tag_to_objects');
   $self->set_binding_field('key' => 'tag_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'object_ids', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID')));
   bless $self, $class;
   return $self;
}

## @method get_tag_id ()
# Gets the value of 'tag_id' property.
#
# @retval tag_id - The current value of the field.
# The identifier of the tag.
#
# ID#
sub get_tag_id {
   my ($self, %args) = @_;
   return $self->{'tag_id'}; 	
}

## @method set_tag_id ()
# Sets the given value for 'tag_id' property.
# 
# @param tag_id  - New value for the field.
# The identifier of the tag.
#
sub set_tag_id {
   my ($self, %args) = @_;
   $self->{'tag_id'} = $args{'tag_id'}; 
   return;	
}

## @method get_object_ids ()
# Gets the value of 'object_ids' property.
#
# @retval object_ids - The current value of the field.
# The identifiers of the related objects.
#
# List#
sub get_object_ids {
   my ($self, %args) = @_;
   return $self->{'object_ids'}; 	
}

## @method set_object_ids ()
# Sets the given value for 'object_ids' property.
# 
# @param object_ids  - New value for the field.
# The identifiers of the related objects.
#
sub set_object_ids {
   my ($self, %args) = @_;
   $self->{'object_ids'} = $args{'object_ids'}; 
   return;	
}


1;


## @class Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags
#
#
# The  ``Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags``   *class*  describes
#     an object and its related tags. Use the 
#     :func:`Com::Vmware::Cis::Tagging::TagAssociation.list_attached_tags_on_objects`  
#     *method*  to retrieve a  *list*  with each element containing an object and the tags
#     attached to it.

package Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{object_id} = $args{'object_id'};
   $self->{tag_ids} = $args{'tag_ids'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Cis::Tagging::TagAssociation::ObjectToTags');
   $self->set_binding_name('name' => 'com.vmware.cis.tagging.tag_association.object_to_tags');
   $self->set_binding_field('key' => 'object_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID'));
   $self->set_binding_field('key' => 'tag_ids', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_object_id ()
# Gets the value of 'object_id' property.
#
# @retval object_id - The current value of the field.
# The identifier of the object.
#
# DynamicID#
sub get_object_id {
   my ($self, %args) = @_;
   return $self->{'object_id'}; 	
}

## @method set_object_id ()
# Sets the given value for 'object_id' property.
# 
# @param object_id  - New value for the field.
# The identifier of the object.
#
sub set_object_id {
   my ($self, %args) = @_;
   $self->{'object_id'} = $args{'object_id'}; 
   return;	
}

## @method get_tag_ids ()
# Gets the value of 'tag_ids' property.
#
# @retval tag_ids - The current value of the field.
# The identifiers of the related tags.
#
# List#
sub get_tag_ids {
   my ($self, %args) = @_;
   return $self->{'tag_ids'}; 	
}

## @method set_tag_ids ()
# Sets the given value for 'tag_ids' property.
# 
# @param tag_ids  - New value for the field.
# The identifiers of the related tags.
#
sub set_tag_ids {
   my ($self, %args) = @_;
   $self->{'tag_ids'} = $args{'tag_ids'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Cis::Tagging::TagAssociation service
#########################################################################################
