########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Type.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Content::Type
# The  ``Com::Vmware::Content::Type``   *interface*  exposes the  class
#     Com::Vmware::Content::Library::ItemModel  types that this Content Library Service
#     supports. <p>
# 
# A library item has an optional type which can be specified with the 
#     :attr:`Com::Vmware::Content::Library::ItemModel.type`   *field* . For items with a
#     type that is supported by a plugin, the Content Library Service may understand the
#     files which are part of the library item and can produce metadata for the item. </p>
# 
# <p>
# 
# In other cases, uploads may require a process in which one upload implies subsequent
#     uploads. For example, an Open Virtualization Format (OVF) package is composed of an
#     OVF descriptor file and the associated virtual disk files. Uploading an OVF descriptor
#     can enable the Content Library Service to understand that the complete OVF package
#     requires additional disk files, and it can set up the transfers for the disks
#     automatically by adding the file entries for the disks when the OVF descriptor is
#     uploaded. </p>
# 
# <p>
# 
# When a type is not supported by a plugin, or the type is not specified, the Content
#     Library Service can handle a library item in a default way, without adding metadata to
#     the item or guiding the upload process.</p>
#

package Com::Vmware::Content::Type;

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
use Com::Vmware::Content::TypeStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.content.type';


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
# Returns a  *list*  of  class Com::Vmware::Content::Type::Info  instances which describe
# the type support plugins in this Content Library.
#
# Note:
# Privileges required for this operation are ContentLibrary.TypeIntrospection.
#
# @retval 
# The  *list*  of  class Com::Vmware::Content::Type::Info  instances which describe the
#     type support plugins in this Content Library.
# The return type will be Array of Com::Vmware::Content::Type::Info
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``ContentLibrary.TypeIntrospection`` . </li>
# </ul>
#
sub list {
   my ($self, %args) = @_;
   return $self->invoke(method_name => 'list', method_args =>  {});
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Content::Type service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Content::Type service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Content::Type service
#########################################################################################

## @class Com::Vmware::Content::Type::Info
#
#
# The  ``Com::Vmware::Content::Type::Info``   *class*  describes support for a specific
#     type of data in an  class Com::Vmware::Content::Library::ItemModel . The 
#     ``Com::Vmware::Content::Type::Info``  can be queried through the  class
#     Com::Vmware::Content::Type   *interface* . Type support describes plugins in the
#     Content Library which can provide metadata on library items and help manage the
#     transfer process by adding dependent files when a current file is added.

package Com::Vmware::Content::Type::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Content::Type::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{description} = $args{'description'};
   $self->{name} = $args{'name'};
   $self->{type} = $args{'type'};
   $self->{vendor} = $args{'vendor'};
   $self->{version} = $args{'version'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Content::Type::Info');
   $self->set_binding_name('name' => 'com.vmware.content.type.info');
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vendor', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_description ()
# Gets the value of 'description' property.
#
# @retval description - The current value of the field.
# A description of the type support offered by the plugin.
#
# String#
sub get_description {
   my ($self, %args) = @_;
   return $self->{'description'}; 	
}

## @method set_description ()
# Sets the given value for 'description' property.
# 
# @param description  - New value for the field.
# A description of the type support offered by the plugin.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# The name of the plugin which provides the type support.
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
# The name of the plugin which provides the type support.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type which the plugin supports. <p>
# 
# To upload a library item of the type supported by the plugin, the 
#     :attr:`Com::Vmware::Content::Library::ItemModel.type`   *field*  of the item should be
#     set to this value.</p>
#
# String#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type which the plugin supports. <p>
# 
# To upload a library item of the type supported by the plugin, the 
#     :attr:`Com::Vmware::Content::Library::ItemModel.type`   *field*  of the item should be
#     set to this value.</p>
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_vendor ()
# Gets the value of 'vendor' property.
#
# @retval vendor - The current value of the field.
# The name of the vendor who created the type support plugin.
#
# String#
sub get_vendor {
   my ($self, %args) = @_;
   return $self->{'vendor'}; 	
}

## @method set_vendor ()
# Sets the given value for 'vendor' property.
# 
# @param vendor  - New value for the field.
# The name of the vendor who created the type support plugin.
#
sub set_vendor {
   my ($self, %args) = @_;
   $self->{'vendor'} = $args{'vendor'}; 
   return;	
}

## @method get_version ()
# Gets the value of 'version' property.
#
# @retval version - The current value of the field.
# The version number of the type support plugin.
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
# The version number of the type support plugin.
#
sub set_version {
   my ($self, %args) = @_;
   $self->{'version'} = $args{'version'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Content::Type service
#########################################################################################
