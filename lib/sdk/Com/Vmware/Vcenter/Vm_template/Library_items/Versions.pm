########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file Versions.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm_template::Library_items::Versions
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::Versions``   *interface* 
#     provides  *methods*  for managing the live versions of the virtual machine templates
#     contained in a library item. Live versions include the latest and previous virtual
#     machine templates that are available on disk. As new versions of virtual machine
#     templates are checked in, old versions of virtual machine templates are automatically
#     purged. Currently, at most one previous virtual machine template version is stored.
#     This  *interface*  was added in vSphere API 6.9.1.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for library item versions. This  *constant*  was added in vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm_template::Library_items::Versions;

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
use Com::Vmware::Vcenter::Vm_template::Library_items::VersionsStub;

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

## @method list ()
# Returns commonly used information about the live versions of a virtual machine template
# library item. This  *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param template_library_item [REQUIRED] Identifier of the VM template library item.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @retval 
# List of commonly used information about the library item versions.
# The return type will be Array of
# Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the library item does not contain a virtual machine template.
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
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``template_library_item``  requires  ``System.Read`` . </li>
# </ul>
#

sub list {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};

   $self->validate_args (method_name => 'list',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'list',
                         method_args => \%args);
}


## @method get ()
# Returns information about the live version of a library item containing a virtual machine
# template. This  *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param template_library_item [REQUIRED] Identifier of the VM template library item.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param version [REQUIRED] Version of the library item.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.Version).
# . The value must be str.
#
# @retval 
# Information about the specified library item version.
# The return type will be Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item or version is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the library item does not contain a virtual machine template.
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
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``template_library_item``  requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.library.item.Version``  referenced by the 
#     *parameter*   ``version``  requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};
   my $version = $args {version};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method rollback ()
# Rollbacks a library item containing a virtual machine template to a previous version. The
# virtual machine template at the specified version becomes the latest virtual machine
# template with a new version identifier. This  *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are ContentLibrary.CheckInTemplate.
#
# @param template_library_item [REQUIRED] Identifier of the VM template library item.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param version [REQUIRED] Version of the library item to rollback.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.Version).
# . The value must be str.
#
# @param spec [OPTIONAL] Specification to rollback the library item.
# This  *parameter*  is currently required. In the future, if this  *parameter*  is 
#     *null* , the system will apply suitable defaults.
# . The value must be
# Com::Vmware::Vcenter::Vm_template::Library_items::Versions::RollbackSpec or None.
#
# @retval 
# The new version of the library item.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.Version).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item or version is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the specified version is the latest version of the library item.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the library item does not contain a virtual machine template.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
#  if a virtual machine is checked out of the library item.
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
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``template_library_item``  requires  ``ContentLibrary.CheckInTemplate`` . </li>
# <li> The resource  ``com.vmware.content.library.item.Version``  referenced by the 
#     *parameter*   ``version``  requires  ``System.Read`` . </li>
# </ul>
#

sub rollback {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};
   my $version = $args {version};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'rollback',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'rollback',
                         method_args => \%args);
}


## @method delete ()
# Deletes the virtual machine template contained in the library item at the specified
# version. This  *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are ContentLibrary.DeleteLibraryItem.
#
# @param template_library_item [REQUIRED] Identifier of the VM template library item.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param version [REQUIRED] Version of the library item to delete.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.Version).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item or version is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the specified version is the latest version of the library item.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the library item does not contain a virtual machine template.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
#  if the virtual machine template&apos;s configuration state cannot be accessed.
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
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``template_library_item``  requires  ``ContentLibrary.DeleteLibraryItem`` . </li>
# <li> The resource  ``com.vmware.content.library.item.Version``  referenced by the 
#     *parameter*   ``version``  requires  ``System.Read`` . </li>
# </ul>
#

sub delete {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};
   my $version = $args {version};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm_template::Library_items::Versions service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm_template::Library_items::Versions service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm_template::Library_items::Versions service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Summary``   *class*
#     contains commonly used information about a version of a library item containing a
#     virtual machine template. This  *class*  was added in vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Summary structure
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
   $self->{vm_template} = $args{'vm_template'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.versions.summary');
   $self->set_binding_field('key' => 'version', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vm_template', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
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

## @method get_vm_template ()
# Gets the value of 'vm_template' property.
#
# @retval vm_template - The current value of the field.
# Identifier of the virtual machine template associated with the library item version.
#     This  *field*  is the managed object identifier used to identify the virtual machine
#     template in the vSphere Management (SOAP) API. This  *field*  was added in vSphere API
#     6.9.1.
#
# String#
sub get_vm_template {
   my ($self, %args) = @_;
   return $self->{'vm_template'}; 	
}

## @method set_vm_template ()
# Sets the given value for 'vm_template' property.
# 
# @param vm_template  - New value for the field.
# Identifier of the virtual machine template associated with the library item version.
#     This  *field*  is the managed object identifier used to identify the virtual machine
#     template in the vSphere Management (SOAP) API. This  *field*  was added in vSphere API
#     6.9.1.
#
sub set_vm_template {
   my ($self, %args) = @_;
   $self->{'vm_template'} = $args{'vm_template'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Info``   *class* 
#     contains information about a version of a library item containing a virtual machine
#     template. This  *class*  was added in vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm_template} = $args{'vm_template'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::Library_items::Versions::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.versions.info');
   $self->set_binding_field('key' => 'vm_template', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_vm_template ()
# Gets the value of 'vm_template' property.
#
# @retval vm_template - The current value of the field.
# Identifier of the virtual machine template associated with the library item version.
#     This  *field*  is the managed object identifier used to identify the virtual machine
#     template in the vSphere Management (SOAP) API. This  *field*  was added in vSphere API
#     6.9.1.
#
# String#
sub get_vm_template {
   my ($self, %args) = @_;
   return $self->{'vm_template'}; 	
}

## @method set_vm_template ()
# Sets the given value for 'vm_template' property.
# 
# @param vm_template  - New value for the field.
# Identifier of the virtual machine template associated with the library item version.
#     This  *field*  is the managed object identifier used to identify the virtual machine
#     template in the vSphere Management (SOAP) API. This  *field*  was added in vSphere API
#     6.9.1.
#
sub set_vm_template {
   my ($self, %args) = @_;
   $self->{'vm_template'} = $args{'vm_template'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::Library_items::Versions::RollbackSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::Versions::RollbackSpec``  
#     *class*  defines the information required to rollback a virtual machine template
#     library item to a previous version. This  *class*  was added in vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm_template::Library_items::Versions::RollbackSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::Library_items::Versions::RollbackSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{message} = $args{'message'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::Library_items::Versions::RollbackSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.versions.rollback_spec');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Message describing the reason for the rollback. This  *field*  was added in vSphere
#     API 6.9.1.
#
# String#
sub get_message {
   my ($self, %args) = @_;
   return $self->{'message'}; 	
}

## @method set_message ()
# Sets the given value for 'message' property.
# 
# @param message  - New value for the field.
# Message describing the reason for the rollback. This  *field*  was added in vSphere
#     API 6.9.1.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm_template::Library_items::Versions service
#########################################################################################
