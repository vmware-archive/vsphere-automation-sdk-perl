########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Projects.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Content::Registries::Harbor::Projects
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::Projects``   *interface* 
#     provides  *methods*  for managing the lifecycle of Harbor project that stores and
#     distributes container repositories and images.
#

package Com::Vmware::Vcenter::Content::Registries::Harbor::Projects;

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
use Com::Vmware::Vcenter::Content::Registries::Harbor::ProjectsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.content.registries.harbor.projects';


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
# Creates a project in a Harbor registry using the supplied specification. In vSphere 7.0, a
# Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a
# namespace is created, a project with same name as the namespace is created in the Harbor
# registry, so this  *method*  should not be called.
#
# @param registry [REQUIRED] Identifier of the Registry.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry).
# . The value must be str.
#
# @param spec [REQUIRED] Information used to create the Harbor project.
# . The value must be
# Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::CreateSpec.
#
# @retval 
# Identifier of the newly created Harbor project.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry.Harbor.Project).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``spec``  contains any error.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if Harbor registry is being deleted.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if a registry specified by  ``registry``  could not be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a project with the same name already exists in the registry. In vSphere 7.0, the
#     existing project could have been created automatically when a namespace with the same
#     name is created.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have ContentLibrary.ManageRegistryProject privilege.
#
sub create {
   my ($self, %args) = @_;
   my $registry = $args {registry};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

## @method delete ()
# Deletes the specified project from Harbor registry. Repositories and images in the project
# will be removed upon project deletion. Storage space of deleted images in the project will
# be reclaimed through next scheduled Harbor registry garbage collection. In vSphere 7.0, a
# Harbor registry is deployed in a vSphere cluster with vSphere namespaces enabled. When a
# namespace is deleted, a project with same name as the namespace is deleted from the Harbor
# registry, so this  *method*  should not be called.
#
# @param registry [REQUIRED] Identifier of the registry.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry).
# . The value must be str.
#
# @param project [REQUIRED] Identifier of the Harbor project.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry.Harbor.Project).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if Harbor registry is being deleted.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``registry``  or  ``project``  cannot be found. In vSphere 7.0, the existing
#     project could have been deleted automatically when a namespace with the same name is
#     deleted.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have ContentLibrary.ManageRegistryProject privilege.
#
sub delete {
   my ($self, %args) = @_;
   my $registry = $args {registry};
   my $project = $args {project};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

## @method get ()
# Returns detailed information about the specified Harbor project.
#
# @param registry [REQUIRED] Identifier of the registry.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry).
# . The value must be str.
#
# @param project [REQUIRED] Identifier of the Harbor project.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry.Harbor.Project).
# . The value must be str.
#
# @retval 
# Detailed information about the specified Harbor project.
# The return type will be Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``registry``  or  ``project``  cannot be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub get {
   my ($self, %args) = @_;
   my $registry = $args {registry};
   my $project = $args {project};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method list ()
# Returns basic information of all projects in a Harbor registry.
#
# @param registry [REQUIRED] Identifier of the registry.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry).
# . The value must be str.
#
# @retval 
# The list of summary information of all Harbor projects.
# The return type will be Array of
# Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``registry``  cannot be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have System.Read privilege.
#
sub list {
   my ($self, %args) = @_;
   my $registry = $args {registry};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}

## @method purge ()
# Remove all repositories, images and members in the project. Storage space of deleted
# images in the project will be reclaimed through next scheduled Harbor registry garbage
# collection.
#
# @param registry [REQUIRED] Registry identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry).
# . The value must be str.
#
# @param project [REQUIRED] Identifier of the Harbor project.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.vcenter.content.Registry.Harbor.Project).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if  ``registry``  or  ``project``  cannot be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if Harbor registry is being deleted or the project is not in 
#     :attr:`Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus.READY`
#      status.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user does not have ContentLibrary.ManageRegistryProject privilege.
#
sub purge {
   my ($self, %args) = @_;
   my $registry = $args {registry};
   my $project = $args {project};

   $self->validate_args (method_name => 'purge',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'purge',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Content::Registries::Harbor::Projects service
#########################################################################################

## @class Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Scope
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Scope``  
#     *enumerated type*  in a project defines access levels of the project.
#
#
#
# Constant Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Scope::PUBLIC #
#A Harbor project can be accessed by everyone.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Scope::PRIVATE #
#A Harbor project can only be accessed by assigned users.

package Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Scope;

use constant {
    PUBLIC =>  'PUBLIC',
    PRIVATE =>  'PRIVATE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Scope enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.content.registries.harbor.projects.scope',
                           'binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Scope');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;
## @class Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus``  
#     *enumerated type*  describes the status of reaching the desired configuration state
#     for the Harbor project.
#
#
#
# Constant Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus::PENDING #
#Harbor project is being created or the configuration is being applied to the project.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus::REMOVING #
#The configuration is being removed and Harbor project is being deleted.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus::ERROR #
#Failed to create Harbor project or apply the configuration to the project, user
# intervention needed.
#
# Constant Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus::READY #
#Harbor project is created or configured correctly.

package Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus;

use constant {
    PENDING =>  'PENDING',
    REMOVING =>  'REMOVING',
    ERROR =>  'ERROR',
    READY =>  'READY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.content.registries.harbor.projects.config_status',
                           'binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::ConfigStatus');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Content::Registries::Harbor::Projects service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Content::Registries::Harbor::Projects service
#########################################################################################

## @class Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::CreateSpec``  
#     *class*  defines the information required to create a Harbor project.

package Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::CreateSpec structure
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
   $self->{scope} = $args{'scope'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.harbor.projects.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'scope', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries::Harbor', 'type_name' => 'Projects::Scope'));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the Harbor project. Should be between 2-63 characters long alphanumeric string
#     and may contain the following characters: a-z,0-9, and &apos;-&apos;. Must be starting
#     with characters or numbers, with the &apos;-&apos; character allowed anywhere except
#     the first or last character.
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
# Name of the Harbor project. Should be between 2-63 characters long alphanumeric string
#     and may contain the following characters: a-z,0-9, and &apos;-&apos;. Must be starting
#     with characters or numbers, with the &apos;-&apos; character allowed anywhere except
#     the first or last character.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_scope ()
# Gets the value of 'scope' property.
#
# @retval scope - The current value of the field.
# Access type of a Harbor project.
#
# Scope#
sub get_scope {
   my ($self, %args) = @_;
   return $self->{'scope'}; 	
}

## @method set_scope ()
# Sets the given value for 'scope' property.
# 
# @param scope  - New value for the field.
# Access type of a Harbor project.
#
sub set_scope {
   my ($self, %args) = @_;
   $self->{'scope'} = $args{'scope'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Summary
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Summary``  
#     *class*  contains basic information about a Harbor project.

package Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{project} = $args{'project'};
   $self->{name} = $args{'name'};
   $self->{scope} = $args{'scope'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.harbor.projects.summary');
   $self->set_binding_field('key' => 'project', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'scope', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries::Harbor', 'type_name' => 'Projects::Scope'));
   bless $self, $class;
   return $self;
}

## @method get_project ()
# Gets the value of 'project' property.
#
# @retval project - The current value of the field.
# Identifier of the harbor project.
#
# ID#
sub get_project {
   my ($self, %args) = @_;
   return $self->{'project'}; 	
}

## @method set_project ()
# Sets the given value for 'project' property.
# 
# @param project  - New value for the field.
# Identifier of the harbor project.
#
sub set_project {
   my ($self, %args) = @_;
   $self->{'project'} = $args{'project'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the Harbor project. Should be between 2-63 characters long alphanumeric string
#     and may contain the following characters: a-z,0-9, and &apos;-&apos;. Must be starting
#     with characters or numbers, with the &apos;-&apos; character allowed anywhere except
#     the first or last character.
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
# Name of the Harbor project. Should be between 2-63 characters long alphanumeric string
#     and may contain the following characters: a-z,0-9, and &apos;-&apos;. Must be starting
#     with characters or numbers, with the &apos;-&apos; character allowed anywhere except
#     the first or last character.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_scope ()
# Gets the value of 'scope' property.
#
# @retval scope - The current value of the field.
# Access type of a Harbor project.
#
# Scope#
sub get_scope {
   my ($self, %args) = @_;
   return $self->{'scope'}; 	
}

## @method set_scope ()
# Sets the given value for 'scope' property.
# 
# @param scope  - New value for the field.
# Access type of a Harbor project.
#
sub set_scope {
   my ($self, %args) = @_;
   $self->{'scope'} = $args{'scope'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Info
#
#
# The  ``Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Info``   *class* 
#     contains detailed information about a Harbor project.

package Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Info structure
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
         'discriminant_name' => 'config_status',
         'case_map' => {
               'READY' => ['update_time', 'access_url'],
               'ERROR' => ['message'],
               'PENDING' => [],
               'REMOVING' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{name} = $args{'name'};
   $self->{config_status} = $args{'config_status'};
   $self->{scope} = $args{'scope'};
   $self->{creation_time} = $args{'creation_time'};
   $self->{update_time} = $args{'update_time'};
   $self->{access_url} = $args{'access_url'};
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Content::Registries::Harbor::Projects::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.content.registries.harbor.projects.info');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'config_status', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries::Harbor', 'type_name' => 'Projects::ConfigStatus'));
   $self->set_binding_field('key' => 'scope', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Content::Registries::Harbor', 'type_name' => 'Projects::Scope'));
   $self->set_binding_field('key' => 'creation_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'update_time', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType()));
   $self->set_binding_field('key' => 'access_url', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::URIType()));
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'LocalizableMessage')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the Harbor project. Should be between 2-63 characters long alphanumeric string
#     and may contain the following characters: a-z,0-9, and &apos;-&apos;. Must be starting
#     with characters or numbers, with the &apos;-&apos; character allowed anywhere except
#     the first or last character.
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
# Name of the Harbor project. Should be between 2-63 characters long alphanumeric string
#     and may contain the following characters: a-z,0-9, and &apos;-&apos;. Must be starting
#     with characters or numbers, with the &apos;-&apos; character allowed anywhere except
#     the first or last character.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_config_status ()
# Gets the value of 'config_status' property.
#
# @retval config_status - The current value of the field.
# The status of the Harbor project.
#
# ConfigStatus#
sub get_config_status {
   my ($self, %args) = @_;
   return $self->{'config_status'}; 	
}

## @method set_config_status ()
# Sets the given value for 'config_status' property.
# 
# @param config_status  - New value for the field.
# The status of the Harbor project.
#
sub set_config_status {
   my ($self, %args) = @_;
   $self->{'config_status'} = $args{'config_status'}; 
   return;	
}

## @method get_scope ()
# Gets the value of 'scope' property.
#
# @retval scope - The current value of the field.
# The access type of a Harbor project.
#
# Scope#
sub get_scope {
   my ($self, %args) = @_;
   return $self->{'scope'}; 	
}

## @method set_scope ()
# Sets the given value for 'scope' property.
# 
# @param scope  - New value for the field.
# The access type of a Harbor project.
#
sub set_scope {
   my ($self, %args) = @_;
   $self->{'scope'} = $args{'scope'}; 
   return;	
}

## @method get_creation_time ()
# Gets the value of 'creation_time' property.
#
# @retval creation_time - The current value of the field.
# The date and time when the harbor project creation API was triggered and project
#     identifier generated.
#
# DateTime#
sub get_creation_time {
   my ($self, %args) = @_;
   return $self->{'creation_time'}; 	
}

## @method set_creation_time ()
# Sets the given value for 'creation_time' property.
# 
# @param creation_time  - New value for the field.
# The date and time when the harbor project creation API was triggered and project
#     identifier generated.
#
sub set_creation_time {
   my ($self, %args) = @_;
   $self->{'creation_time'} = $args{'creation_time'}; 
   return;	
}

## @method get_update_time ()
# Gets the value of 'update_time' property.
#
# @retval update_time - The current value of the field.
# The date and time when the harbor project purge API was triggered. In case no purge
#     was triggered,  ``updateTime``  is same as  ``creationTime`` .
#
# optional#
sub get_update_time {
   my ($self, %args) = @_;
   return $self->{'update_time'}; 	
}

## @method set_update_time ()
# Sets the given value for 'update_time' property.
# 
# @param update_time  - New value for the field.
# The date and time when the harbor project purge API was triggered. In case no purge
#     was triggered,  ``updateTime``  is same as  ``creationTime`` .
#
sub set_update_time {
   my ($self, %args) = @_;
   $self->{'update_time'} = $args{'update_time'}; 
   return;	
}

## @method get_access_url ()
# Gets the value of 'access_url' property.
#
# @retval access_url - The current value of the field.
# URL to access the harbor project through docker client.
#
# optional#
sub get_access_url {
   my ($self, %args) = @_;
   return $self->{'access_url'}; 	
}

## @method set_access_url ()
# Sets the given value for 'access_url' property.
# 
# @param access_url  - New value for the field.
# URL to access the harbor project through docker client.
#
sub set_access_url {
   my ($self, %args) = @_;
   $self->{'access_url'} = $args{'access_url'}; 
   return;	
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Details about the ERROR project status.
#
# optional#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# Details about the ERROR project status.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Content::Registries::Harbor::Projects service
#########################################################################################
