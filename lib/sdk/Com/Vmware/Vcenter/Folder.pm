########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Folder.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Folder
# The  *Folder*   *interface*  provides  *methods*  for manipulating a vCenter Server
#     folder.
#
#
# Constant String::RESOURCE_TYPE #
#The resource type for the vCenter folder

package Com::Vmware::Vcenter::Folder;

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
use Com::Vmware::Vcenter::FolderStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.folder';


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
# Returns information about at most 1000 visible (subject to permission checks) folders in
# vCenter matching the  class Com::Vmware::Vcenter::Folder::FilterSpec .
#
# @param filter [OPTIONAL] Specification of matching folders for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::Folder::FilterSpec  with all  *fields*   *null*  which means all
#     folders match the filter.
# . The value must be Com::Vmware::Vcenter::Folder::FilterSpec or None.
#
# @retval 
# Commonly used information about the folders matching the  class
#     Com::Vmware::Vcenter::Folder::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::Folder::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::Folder::FilterSpec.type`   *field*  contains a
#     value that is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 1000 folders match the  class Com::Vmware::Vcenter::Folder::FilterSpec .
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#
sub list {
   my ($self, %args) = @_;
   my $filter = $args {filter};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Folder service
#########################################################################################

## @class Com::Vmware::Vcenter::Folder::Type
#
# The  ``Com::Vmware::Vcenter::Folder::Type``   *enumerated type*  defines the type of a
#     vCenter Server folder. The type of a folder determines what what kinds of children can
#     be contained in the folder.
#
#
#
# Constant Com::Vmware::Vcenter::Folder::Type::DATACENTER #
#A folder that can contain datacenters.
#
# Constant Com::Vmware::Vcenter::Folder::Type::DATASTORE #
#A folder that can contain datastores.
#
# Constant Com::Vmware::Vcenter::Folder::Type::HOST #
#A folder that can contain compute resources (hosts and clusters).
#
# Constant Com::Vmware::Vcenter::Folder::Type::NETWORK #
#A folder that can contain networkds.
#
# Constant Com::Vmware::Vcenter::Folder::Type::VIRTUAL_MACHINE #
#A folder that can contain virtual machines.

package Com::Vmware::Vcenter::Folder::Type;

use constant {
    DATACENTER =>  'DATACENTER',
    DATASTORE =>  'DATASTORE',
    HOST =>  'HOST',
    NETWORK =>  'NETWORK',
    VIRTUAL_MACHINE =>  'VIRTUAL_MACHINE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Folder::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.folder.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Folder::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Folder service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Folder service
#########################################################################################

## @class Com::Vmware::Vcenter::Folder::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::Folder::FilterSpec``   *class*  contains  *fields*  used
#     to filter the results when listing folders (see 
#     :func:`Com::Vmware::Vcenter::Folder.list` ). If multiple  *fields*  are specified,
#     only folders matching all of the  *fields*  match the filter.

package Com::Vmware::Vcenter::Folder::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Folder::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{folders} = $args{'folders'};
   $self->{names} = $args{'names'};
   $self->{type} = $args{'type'};
   $self->{parent_folders} = $args{'parent_folders'};
   $self->{datacenters} = $args{'datacenters'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Folder::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.folder.filter_spec');
   $self->set_binding_field('key' => 'folders', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Folder::Type')));
   $self->set_binding_field('key' => 'parent_folders', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'datacenters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   bless $self, $class;
   return $self;
}

## @method get_folders ()
# Gets the value of 'folders' property.
#
# @retval folders - The current value of the field.
# Identifiers of folders that can match the filter.
#
# Optional#
sub get_folders {
   my ($self, %args) = @_;
   return $self->{'folders'}; 	
}

## @method set_folders ()
# Sets the given value for 'folders' property.
# 
# @param folders  - New value for the field.
# Identifiers of folders that can match the filter.
#
sub set_folders {
   my ($self, %args) = @_;
   $self->{'folders'} = $args{'folders'}; 
   return;	
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that folders must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Folder::Summary.name` ).
#
# Optional#
sub get_names {
   my ($self, %args) = @_;
   return $self->{'names'}; 	
}

## @method set_names ()
# Sets the given value for 'names' property.
# 
# @param names  - New value for the field.
# Names that folders must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Folder::Summary.name` ).
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type that folders must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Folder::Summary.type` ).
#
# Optional#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type that folders must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Folder::Summary.type` ).
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_parent_folders ()
# Gets the value of 'parent_folders' property.
#
# @retval parent_folders - The current value of the field.
# Folders that must contain the folder for the folder to match the filter.
#
# Optional#
sub get_parent_folders {
   my ($self, %args) = @_;
   return $self->{'parent_folders'}; 	
}

## @method set_parent_folders ()
# Sets the given value for 'parent_folders' property.
# 
# @param parent_folders  - New value for the field.
# Folders that must contain the folder for the folder to match the filter.
#
sub set_parent_folders {
   my ($self, %args) = @_;
   $self->{'parent_folders'} = $args{'parent_folders'}; 
   return;	
}

## @method get_datacenters ()
# Gets the value of 'datacenters' property.
#
# @retval datacenters - The current value of the field.
# Datacenters that must contain the folder for the folder to match the filter.
#
# Optional#
sub get_datacenters {
   my ($self, %args) = @_;
   return $self->{'datacenters'}; 	
}

## @method set_datacenters ()
# Sets the given value for 'datacenters' property.
# 
# @param datacenters  - New value for the field.
# Datacenters that must contain the folder for the folder to match the filter.
#
sub set_datacenters {
   my ($self, %args) = @_;
   $self->{'datacenters'} = $args{'datacenters'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Folder::Summary
#
#
# The  ``Com::Vmware::Vcenter::Folder::Summary``   *class*  contains commonly used
#     information about a folder.

package Com::Vmware::Vcenter::Folder::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Folder::Summary structure
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
   $self->{name} = $args{'name'};
   $self->{type} = $args{'type'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Folder::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.folder.summary');
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'Folder::Type'));
   bless $self, $class;
   return $self;
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Identifier of the folder.
#
# ID#
sub get_folder {
   my ($self, %args) = @_;
   return $self->{'folder'}; 	
}

## @method set_folder ()
# Sets the given value for 'folder' property.
# 
# @param folder  - New value for the field.
# Identifier of the folder.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the vCenter Server folder.
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
# Name of the vCenter Server folder.
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
# Type (DATACENTER, DATASTORE, HOST, NETWORK, VIRTUAL_MACHINE) of the vCenter Server
#     folder.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# Type (DATACENTER, DATASTORE, HOST, NETWORK, VIRTUAL_MACHINE) of the vCenter Server
#     folder.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Folder service
#########################################################################################
