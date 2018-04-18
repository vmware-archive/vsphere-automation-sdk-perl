########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LibraryItems.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Vm;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm_template::LibraryItems
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems``   *interface*  provides 
#     *methods*  to deploy virtual machines from library items containing virtual machine
#     templates, as well as  *methods*  to create library items containing virtual machine
#     templates. The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems``   *interface* 
#     also provides an operation to retrieve information about the template contained in the
#     library item. <b>Warning:</b> This  *interface*  is available as technical preview. It
#     may be changed in a future release.
#

package Com::Vmware::Vcenter::Vm_template::LibraryItems;

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
use Com::Vmware::Vcenter::Vm_template::LibraryItemsStub;

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
# Creates a library item in content library from a virtual machine. This  *method*  creates
# a library item in content library whose content is a virtual machine template created from
# the source virtual machine, using the supplied create specification. The virtual machine
# template is stored in a newly created library item. <b>Warning:</b> This  *method*  is
# available as technical preview. It may be changed in a future release.
#
# Note:
# Privileges required for this operation are System.Read, ContentLibrary.AddLibraryItem.
#
# @param spec [REQUIRED]  information used to create the library item from the source virtual machine.
# . The value must be Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec.
#
# @retval 
# Identifier of the newly created library item.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if an entity with the name specified by 
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec.name`  already
#     exists in the folder specified by 
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec.folder` .
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  class Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec  contains
#     invalid arguments.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the operation cannot be performed because of the source virtual machine&apos;s
#     current state.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the source virtual machine specified by 
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec.source_vm`  does
#     not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the library specified by 
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec.library`  does not
#     exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
#  if there was an error accessing a file from the source virtual machine.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInUse 
#  if the source virtual machine is busy.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
#  if any of the services involved in the  *method*  are unavailable.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if any of the resources needed to create the virtual machine template could not be
#     allocated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user that requested the  *method*  is not authorized to perform the  *method* .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec.library`  requires 
#     ``ContentLibrary.AddLibraryItem`` . </li>
# <li> The resource  ``VirtualMachine``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec.source_vm` 
#     requires  ``System.Read`` . </li>
# <li> The resource  ``Datastore``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStorage.datastore`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.spbm.StorageProfile``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy.policy`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``Datastore``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStorage.datastore`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.spbm.StorageProfile``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy.policy`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.vcenter.vm.hardware.Disk``  referenced by the  *map* 
#     key of  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec.disk_storage_overrides`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``Folder``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec.folder` 
#     requires  ``System.Read`` . </li>
# <li> The resource  ``ResourcePool``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec.resource_pool`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``HostSystem``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec.host` 
#     requires  ``System.Read`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec.cluster` 
#     requires  ``System.Read`` . </li>
# </ul>
#

sub create {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}


## @method deploy ()
# Deploys a virtual machine as a copy of the source virtual machine template contained in
# the library item specified by  ``template_library_item`` . It uses the deployment
# specification in  ``spec`` . If 
# :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec.powered_on`  and/or 
# :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec.guest_customization` 
# are specified, the server triggers the power on and/or guest customization operations,
# which are executed asynchronously. <b>Warning:</b> This  *method*  is available as
# technical preview. It may be changed in a future release.
#
# Note:
# Privileges required for this operation are System.Read, VirtualMachine.Provisioning.DeployTemplate.
#
# @param template_library_item [REQUIRED] identifier of the content library item containing the source virtual machine template
#     to be deployed.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param spec [REQUIRED]  specification of how the virtual machine should be deployed.
# . The value must be Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec.
#
# @retval 
# Identifier of the deployed virtual machine.
# The value will be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a virtual machine with the name specified by 
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec.name`  already
#     exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if  ``spec``  contains invalid arguments.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if either a specified host or a specified datastore is in an invalid state for the
#     deployment, such as maintenance mode.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item specified by  ``template_library_item``  cannot be found.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if any resource specified by a  *field*  of the  class
#     Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec   *class* , specified by 
#     ``spec``  cannot be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if there was an error accessing the source virtual machine template contained in the
#     library item specified by  ``template_library_item`` .
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
#  if there an error accessing any of the resources specified in the  ``spec`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
#  if any of the services involved in the  *method*  are unavailable.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
#  if there was an error in allocating any of the resources required by the  *method* .
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user that requested the  *method*  is not authorized to perform the  *method* .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#     ``template_library_item``  requires  ``VirtualMachine.Provisioning.DeployTemplate`` .
#     </li>
# <li> The resource  ``Datastore``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStorage.datastore`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.spbm.StorageProfile``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy.policy`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``Datastore``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStorage.datastore`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.spbm.StorageProfile``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy.policy`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.vcenter.vm.hardware.Disk``  referenced by the  *map* 
#     key of  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec.disk_storage_overrides`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``Folder``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeployPlacementSpec.folder` 
#     requires  ``System.Read`` . </li>
# <li> The resource  ``ResourcePool``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeployPlacementSpec.resource_pool`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``HostSystem``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeployPlacementSpec.host` 
#     requires  ``System.Read`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::DeployPlacementSpec.cluster` 
#     requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.vcenter.vm.hardware.Ethernet``  referenced by the 
#     *map*  key of  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::HardwareCustomizationSpec.nics`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``Network``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetUpdateSpec.network` 
#     requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.vcenter.vm.hardware.Disk``  referenced by the  *field*
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::HardwareCustomizationSpec.disks_to_remove`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.vcenter.vm.hardware.Disk``  referenced by the  *map* 
#     key of  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::LibraryItems::HardwareCustomizationSpec.disks_to_update`
#      requires  ``System.Read`` . </li>
# </ul>
#

sub deploy {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'deploy',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'deploy',
                         method_args => \%args);
}


## @method get ()
# Returns information about a virtual machine template contained in the library item
# specified by  ``template_library_item`` . <b>Warning:</b> This  *method*  is available as
# technical preview. It may be changed in a future release.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param template_library_item [REQUIRED]  identifier of the library item containing the virtual machine template.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @retval 
# Information about the virtual machine template item contained in the library item.
# If  *null* , the library item specified by  ``template_library_item``  does not
#     contain a virtual machine template.
# The return type will be Com::Vmware::Vcenter::Vm_template::LibraryItems::Info or None
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
#  if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item could not be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
#  if the virtual machine template&apos;s configuration state cannot be accessed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
#  if any of the services involved in the  *method*  are unavailable.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
#  if the user that requested the  *method*  cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user that requested the  *method*  is not authorized to perform the  *method* .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``template_library_item``  requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm_template::LibraryItems service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm_template::LibraryItems service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm_template::LibraryItems service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec``   *class* 
#     defines the information required to create a library item containing a virtual machine
#     template. <b>Warning:</b> This  *class*  is available as technical preview. It may be
#     changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{source_vm} = $args{'source_vm'};
   $self->{name} = $args{'name'};
   $self->{description} = $args{'description'};
   $self->{library} = $args{'library'};
   $self->{vm_home_storage} = $args{'vm_home_storage'};
   $self->{disk_storage} = $args{'disk_storage'};
   $self->{disk_storage_overrides} = $args{'disk_storage_overrides'};
   $self->{placement} = $args{'placement'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.create_spec');
   $self->set_binding_field('key' => 'source_vm', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'library', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'vm_home_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CreateSpecVmHomeStorage')));
   $self->set_binding_field('key' => 'disk_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CreateSpecDiskStorage')));
   $self->set_binding_field('key' => 'disk_storage_overrides', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CreateSpecDiskStorage')})))));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CreatePlacementSpec')));
   bless $self, $class;
   return $self;
}

## @method get_source_vm ()
# Gets the value of 'source_vm' property.
#
# @retval source_vm - The current value of the field.
# Identifier of the source virtual machine to create the library item from.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# ID#
sub get_source_vm {
   my ($self, %args) = @_;
   return $self->{'source_vm'}; 	
}

## @method set_source_vm ()
# Sets the given value for 'source_vm' property.
# 
# @param source_vm  - New value for the field.
# Identifier of the source virtual machine to create the library item from.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_source_vm {
   my ($self, %args) = @_;
   $self->{'source_vm'} = $args{'source_vm'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the library item. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the library item. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
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
# Description of the library item. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# Description of the library item. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_library ()
# Gets the value of 'library' property.
#
# @retval library - The current value of the field.
# Identifier of the library in which the new library item should be created.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# ID#
sub get_library {
   my ($self, %args) = @_;
   return $self->{'library'}; 	
}

## @method set_library ()
# Sets the given value for 'library' property.
# 
# @param library  - New value for the field.
# Identifier of the library in which the new library item should be created.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_library {
   my ($self, %args) = @_;
   $self->{'library'} = $args{'library'}; 
   return;	
}

## @method get_vm_home_storage ()
# Gets the value of 'vm_home_storage' property.
#
# @retval vm_home_storage - The current value of the field.
# Storage location for the virtual machine template&apos;s configuration and log files.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_vm_home_storage {
   my ($self, %args) = @_;
   return $self->{'vm_home_storage'}; 	
}

## @method set_vm_home_storage ()
# Sets the given value for 'vm_home_storage' property.
# 
# @param vm_home_storage  - New value for the field.
# Storage location for the virtual machine template&apos;s configuration and log files.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_vm_home_storage {
   my ($self, %args) = @_;
   $self->{'vm_home_storage'} = $args{'vm_home_storage'}; 
   return;	
}

## @method get_disk_storage ()
# Gets the value of 'disk_storage' property.
#
# @retval disk_storage - The current value of the field.
# Storage specification for the virtual machine template&apos;s disks. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
# Optional#
sub get_disk_storage {
   my ($self, %args) = @_;
   return $self->{'disk_storage'}; 	
}

## @method set_disk_storage ()
# Sets the given value for 'disk_storage' property.
# 
# @param disk_storage  - New value for the field.
# Storage specification for the virtual machine template&apos;s disks. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
sub set_disk_storage {
   my ($self, %args) = @_;
   $self->{'disk_storage'} = $args{'disk_storage'}; 
   return;	
}

## @method get_disk_storage_overrides ()
# Gets the value of 'disk_storage_overrides' property.
#
# @retval disk_storage_overrides - The current value of the field.
# Storage specification for individual disks in the virtual machine template. This is
#     specified as a mapping between disk identifiers in the source virtual machine and
#     their respective storage specifications. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
# Optional#
sub get_disk_storage_overrides {
   my ($self, %args) = @_;
   return $self->{'disk_storage_overrides'}; 	
}

## @method set_disk_storage_overrides ()
# Sets the given value for 'disk_storage_overrides' property.
# 
# @param disk_storage_overrides  - New value for the field.
# Storage specification for individual disks in the virtual machine template. This is
#     specified as a mapping between disk identifiers in the source virtual machine and
#     their respective storage specifications. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
sub set_disk_storage_overrides {
   my ($self, %args) = @_;
   $self->{'disk_storage_overrides'} = $args{'disk_storage_overrides'}; 
   return;	
}

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Information used to place the virtual machine template. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
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
# Information used to place the virtual machine template. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec``  
#     *class*  contains information used to place a virtual machine template onto resources
#     within the vCenter inventory. <b>Warning:</b> This  *class*  is available as technical
#     preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec structure
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
   $self->{resource_pool} = $args{'resource_pool'};
   $self->{host} = $args{'host'};
   $self->{cluster} = $args{'cluster'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CreatePlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.create_placement_spec');
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Virtual machine folder into which the virtual machine template should be placed.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
# Virtual machine folder into which the virtual machine template should be placed.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}

## @method get_resource_pool ()
# Gets the value of 'resource_pool' property.
#
# @retval resource_pool - The current value of the field.
# Resource pool into which the virtual machine template should be placed.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
# Resource pool into which the virtual machine template should be placed.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
#     ``cluster`` . <b>Warning:</b> This  *field*  is available as technical preview. It may
#     be changed in a future release.
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
#     ``cluster`` . <b>Warning:</b> This  *field*  is available as technical preview. It may
#     be changed in a future release.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Cluster onto which the virtual machine template should be placed. If  ``cluster``  and
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .
#     If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . <b>Warning:</b> This  *field*  is available as technical preview. It may
#     be changed in a future release.
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
#     ``cluster`` . <b>Warning:</b> This  *field*  is available as technical preview. It may
#     be changed in a future release.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy
#
#
# The 
#     ``Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy``  
#     *class*  defines the storage policy specification for a virtual machine
#     template&apos;s configuration and log files. <b>Warning:</b> This  *class*  is
#     available as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'USE_SPECIFIED_POLICY' => ['policy'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{policy} = $args{'policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.create_spec_vm_home_storage_policy');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CreateSpecVmHomeStoragePolicy::Type'));
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Policy type to be used when creating the virtual machine template&apos;s configuration
#     and log files. <b>Warning:</b> This  *field*  is available as technical preview. It
#     may be changed in a future release.
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
# Policy type to be used when creating the virtual machine template&apos;s configuration
#     and log files. <b>Warning:</b> This  *field*  is available as technical preview. It
#     may be changed in a future release.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier for the storage policy to use. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
# optional#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier for the storage policy to use. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy::Type
#
# Policy type for the virtual machine template&apos;s configuration and log files.
#     <b>Warning:</b> This  *enumeration*  is available as technical preview. It may be
#     changed in a future release.
#
#
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy::Type::USE_SPECIFIED_POLICY #
#Use the specified policy. <b>Warning:</b> This  *constant*  is available as technical
# preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy::Type;

use constant {
    USE_SPECIFIED_POLICY =>  'USE_SPECIFIED_POLICY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm_template.library_items.create_spec_vm_home_storage_policy.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStoragePolicy::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStorage
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStorage``  
#     *class*  defines the storage specification for a virtual machine template&apos;s
#     configuration and log files. <b>Warning:</b> This  *class*  is available as technical
#     preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStorage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStorage structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore} = $args{'datastore'};
   $self->{storage_policy} = $args{'storage_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecVmHomeStorage');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.create_spec_vm_home_storage');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CreateSpecVmHomeStoragePolicy')));
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Identifier of the datastore for the virtual machine template&apos;s configuration and
#     log files. <b>Warning:</b> This  *field*  is available as technical preview. It may be
#     changed in a future release.
#
# Optional#
sub get_datastore {
   my ($self, %args) = @_;
   return $self->{'datastore'}; 	
}

## @method set_datastore ()
# Sets the given value for 'datastore' property.
# 
# @param datastore  - New value for the field.
# Identifier of the datastore for the virtual machine template&apos;s configuration and
#     log files. <b>Warning:</b> This  *field*  is available as technical preview. It may be
#     changed in a future release.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}

## @method get_storage_policy ()
# Gets the value of 'storage_policy' property.
#
# @retval storage_policy - The current value of the field.
# Storage policy for the virtual machine template&apos;s configuration and log files.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_storage_policy {
   my ($self, %args) = @_;
   return $self->{'storage_policy'}; 	
}

## @method set_storage_policy ()
# Sets the given value for 'storage_policy' property.
# 
# @param storage_policy  - New value for the field.
# Storage policy for the virtual machine template&apos;s configuration and log files.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_storage_policy {
   my ($self, %args) = @_;
   $self->{'storage_policy'} = $args{'storage_policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy`` 
#     *class*  defines the storage policy specification for a virtual machine
#     template&apos;s disks. <b>Warning:</b> This  *class*  is available as technical
#     preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'USE_SPECIFIED_POLICY' => ['policy'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{policy} = $args{'policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.create_spec_disk_storage_policy');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CreateSpecDiskStoragePolicy::Type'));
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Policy type to be used when creating a virtual machine template&apos;s disk.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
# Policy type to be used when creating a virtual machine template&apos;s disk.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier for the storage policy to use. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
# optional#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier for the storage policy to use. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy::Type
#
# Policy type for a virtual machine template&apos;s disk. <b>Warning:</b> This 
#     *enumeration*  is available as technical preview. It may be changed in a future
#     release.
#
#
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy::Type::USE_SPECIFIED_POLICY #
#Use the specified policy. <b>Warning:</b> This  *constant*  is available as technical
# preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy::Type;

use constant {
    USE_SPECIFIED_POLICY =>  'USE_SPECIFIED_POLICY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm_template.library_items.create_spec_disk_storage_policy.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStoragePolicy::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStorage
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStorage``  
#     *class*  defines the storage specification for a virtual machine template&apos;s
#     disks. <b>Warning:</b> This  *class*  is available as technical preview. It may be
#     changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStorage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStorage structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore} = $args{'datastore'};
   $self->{storage_policy} = $args{'storage_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CreateSpecDiskStorage');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.create_spec_disk_storage');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CreateSpecDiskStoragePolicy')));
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Identifier for the datastore associated with a virtual machine template&apos;s disk.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_datastore {
   my ($self, %args) = @_;
   return $self->{'datastore'}; 	
}

## @method set_datastore ()
# Sets the given value for 'datastore' property.
# 
# @param datastore  - New value for the field.
# Identifier for the datastore associated with a virtual machine template&apos;s disk.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}

## @method get_storage_policy ()
# Gets the value of 'storage_policy' property.
#
# @retval storage_policy - The current value of the field.
# Storage policy for a virtual machine template&apos;s disk. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_storage_policy {
   my ($self, %args) = @_;
   return $self->{'storage_policy'}; 	
}

## @method set_storage_policy ()
# Sets the given value for 'storage_policy' property.
# 
# @param storage_policy  - New value for the field.
# Storage policy for a virtual machine template&apos;s disk. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_storage_policy {
   my ($self, %args) = @_;
   $self->{'storage_policy'} = $args{'storage_policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec``   *class* 
#     defines the deployment parameters that can be specified for the  ``deploy``   *method*
#     . <b>Warning:</b> This  *class*  is available as technical preview. It may be changed
#     in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec structure
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
   $self->{vm_home_storage} = $args{'vm_home_storage'};
   $self->{disk_storage} = $args{'disk_storage'};
   $self->{disk_storage_overrides} = $args{'disk_storage_overrides'};
   $self->{placement} = $args{'placement'};
   $self->{powered_on} = $args{'powered_on'};
   $self->{guest_customization} = $args{'guest_customization'};
   $self->{hardware_customization} = $args{'hardware_customization'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.deploy_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'vm_home_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DeploySpecVmHomeStorage')));
   $self->set_binding_field('key' => 'disk_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DeploySpecDiskStorage')));
   $self->set_binding_field('key' => 'disk_storage_overrides', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DeploySpecDiskStorage')})))));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DeployPlacementSpec')));
   $self->set_binding_field('key' => 'powered_on', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'guest_customization', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::GuestCustomizationSpec')));
   $self->set_binding_field('key' => 'hardware_customization', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::HardwareCustomizationSpec')));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the deployed virtual machine. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# Name of the deployed virtual machine. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
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
# Description of the deployed virtual machine. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
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
# Description of the deployed virtual machine. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_vm_home_storage ()
# Gets the value of 'vm_home_storage' property.
#
# @retval vm_home_storage - The current value of the field.
# Storage location for the deployed virtual machine&apos;s configuration and log files.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_vm_home_storage {
   my ($self, %args) = @_;
   return $self->{'vm_home_storage'}; 	
}

## @method set_vm_home_storage ()
# Sets the given value for 'vm_home_storage' property.
# 
# @param vm_home_storage  - New value for the field.
# Storage location for the deployed virtual machine&apos;s configuration and log files.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_vm_home_storage {
   my ($self, %args) = @_;
   $self->{'vm_home_storage'} = $args{'vm_home_storage'}; 
   return;	
}

## @method get_disk_storage ()
# Gets the value of 'disk_storage' property.
#
# @retval disk_storage - The current value of the field.
# Storage specification for the deployed virtual machine&apos;s disks. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
# Optional#
sub get_disk_storage {
   my ($self, %args) = @_;
   return $self->{'disk_storage'}; 	
}

## @method set_disk_storage ()
# Sets the given value for 'disk_storage' property.
# 
# @param disk_storage  - New value for the field.
# Storage specification for the deployed virtual machine&apos;s disks. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
sub set_disk_storage {
   my ($self, %args) = @_;
   $self->{'disk_storage'} = $args{'disk_storage'}; 
   return;	
}

## @method get_disk_storage_overrides ()
# Gets the value of 'disk_storage_overrides' property.
#
# @retval disk_storage_overrides - The current value of the field.
# Storage specification for individual disks in the deployed virtual machine. This is
#     specified as a mapping between disk identifiers in the source virtual machine template
#     contained in the library item and their storage specifications. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_disk_storage_overrides {
   my ($self, %args) = @_;
   return $self->{'disk_storage_overrides'}; 	
}

## @method set_disk_storage_overrides ()
# Sets the given value for 'disk_storage_overrides' property.
# 
# @param disk_storage_overrides  - New value for the field.
# Storage specification for individual disks in the deployed virtual machine. This is
#     specified as a mapping between disk identifiers in the source virtual machine template
#     contained in the library item and their storage specifications. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_disk_storage_overrides {
   my ($self, %args) = @_;
   $self->{'disk_storage_overrides'} = $args{'disk_storage_overrides'}; 
   return;	
}

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Information used to place the deployed virtual machine. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
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
# Information used to place the deployed virtual machine. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}

## @method get_powered_on ()
# Gets the value of 'powered_on' property.
#
# @retval powered_on - The current value of the field.
# Specifies whether the deployed virtual machine should be powered on after deployment.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_powered_on {
   my ($self, %args) = @_;
   return $self->{'powered_on'}; 	
}

## @method set_powered_on ()
# Sets the given value for 'powered_on' property.
# 
# @param powered_on  - New value for the field.
# Specifies whether the deployed virtual machine should be powered on after deployment.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_powered_on {
   my ($self, %args) = @_;
   $self->{'powered_on'} = $args{'powered_on'}; 
   return;	
}

## @method get_guest_customization ()
# Gets the value of 'guest_customization' property.
#
# @retval guest_customization - The current value of the field.
# Guest customization spec to apply to the deployed virtual machine. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
# Optional#
sub get_guest_customization {
   my ($self, %args) = @_;
   return $self->{'guest_customization'}; 	
}

## @method set_guest_customization ()
# Sets the given value for 'guest_customization' property.
# 
# @param guest_customization  - New value for the field.
# Guest customization spec to apply to the deployed virtual machine. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
sub set_guest_customization {
   my ($self, %args) = @_;
   $self->{'guest_customization'} = $args{'guest_customization'}; 
   return;	
}

## @method get_hardware_customization ()
# Gets the value of 'hardware_customization' property.
#
# @retval hardware_customization - The current value of the field.
# Hardware customization spec which specifies updates to the deployed virtual machine.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_hardware_customization {
   my ($self, %args) = @_;
   return $self->{'hardware_customization'}; 	
}

## @method set_hardware_customization ()
# Sets the given value for 'hardware_customization' property.
# 
# @param hardware_customization  - New value for the field.
# Hardware customization spec which specifies updates to the deployed virtual machine.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_hardware_customization {
   my ($self, %args) = @_;
   $self->{'hardware_customization'} = $args{'hardware_customization'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::HardwareCustomizationSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::HardwareCustomizationSpec``  
#     *class*  defines the hardware customization options that are applied to the deployed
#     virtual machine. <b>Warning:</b> This  *class*  is available as technical preview. It
#     may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::HardwareCustomizationSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::HardwareCustomizationSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{nics} = $args{'nics'};
   $self->{disks_to_remove} = $args{'disks_to_remove'};
   $self->{disks_to_update} = $args{'disks_to_update'};
   $self->{cpu_update} = $args{'cpu_update'};
   $self->{memory_update} = $args{'memory_update'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::HardwareCustomizationSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.hardware_customization_spec');
   $self->set_binding_field('key' => 'nics', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::EthernetUpdateSpec')})))));
   $self->set_binding_field('key' => 'disks_to_remove', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'disks_to_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DiskUpdateSpec')})))));
   $self->set_binding_field('key' => 'cpu_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CpuUpdateSpec')));
   $self->set_binding_field('key' => 'memory_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::MemoryUpdateSpec')));
   bless $self, $class;
   return $self;
}

## @method get_nics ()
# Gets the value of 'nics' property.
#
# @retval nics - The current value of the field.
# Map of Ethernet network adapters to update. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_nics {
   my ($self, %args) = @_;
   return $self->{'nics'}; 	
}

## @method set_nics ()
# Sets the given value for 'nics' property.
# 
# @param nics  - New value for the field.
# Map of Ethernet network adapters to update. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
sub set_nics {
   my ($self, %args) = @_;
   $self->{'nics'} = $args{'nics'}; 
   return;	
}

## @method get_disks_to_remove ()
# Gets the value of 'disks_to_remove' property.
#
# @retval disks_to_remove - The current value of the field.
# Idenfiers of disks to remove from the deployed virtual machine. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_disks_to_remove {
   my ($self, %args) = @_;
   return $self->{'disks_to_remove'}; 	
}

## @method set_disks_to_remove ()
# Sets the given value for 'disks_to_remove' property.
# 
# @param disks_to_remove  - New value for the field.
# Idenfiers of disks to remove from the deployed virtual machine. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_disks_to_remove {
   my ($self, %args) = @_;
   $self->{'disks_to_remove'} = $args{'disks_to_remove'}; 
   return;	
}

## @method get_disks_to_update ()
# Gets the value of 'disks_to_update' property.
#
# @retval disks_to_update - The current value of the field.
# Disk update specification for individual disks in the deployed virtual machine.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_disks_to_update {
   my ($self, %args) = @_;
   return $self->{'disks_to_update'}; 	
}

## @method set_disks_to_update ()
# Sets the given value for 'disks_to_update' property.
# 
# @param disks_to_update  - New value for the field.
# Disk update specification for individual disks in the deployed virtual machine.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_disks_to_update {
   my ($self, %args) = @_;
   $self->{'disks_to_update'} = $args{'disks_to_update'}; 
   return;	
}

## @method get_cpu_update ()
# Gets the value of 'cpu_update' property.
#
# @retval cpu_update - The current value of the field.
# CPU update specification for the deployed virtual machine. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_cpu_update {
   my ($self, %args) = @_;
   return $self->{'cpu_update'}; 	
}

## @method set_cpu_update ()
# Sets the given value for 'cpu_update' property.
# 
# @param cpu_update  - New value for the field.
# CPU update specification for the deployed virtual machine. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_cpu_update {
   my ($self, %args) = @_;
   $self->{'cpu_update'} = $args{'cpu_update'}; 
   return;	
}

## @method get_memory_update ()
# Gets the value of 'memory_update' property.
#
# @retval memory_update - The current value of the field.
# Memory update specification for the deployed virtual machine. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_memory_update {
   my ($self, %args) = @_;
   return $self->{'memory_update'}; 	
}

## @method set_memory_update ()
# Sets the given value for 'memory_update' property.
# 
# @param memory_update  - New value for the field.
# Memory update specification for the deployed virtual machine. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_memory_update {
   my ($self, %args) = @_;
   $self->{'memory_update'} = $args{'memory_update'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskUpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskUpdateSpec``   *class* 
#     describes updates to the configuration of a virtual disk in the deployed virtual
#     machine. <b>Warning:</b> This  *class*  is available as technical preview. It may be
#     changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskUpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskUpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{capacity} = $args{'capacity'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskUpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.disk_update_spec');
   $self->set_binding_field('key' => 'capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_capacity ()
# Gets the value of 'capacity' property.
#
# @retval capacity - The current value of the field.
# Updated capacity of the virtual disk backing in bytes. This value has to be larger
#     than the original capacity of the disk. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
# long#
sub get_capacity {
   my ($self, %args) = @_;
   return $self->{'capacity'}; 	
}

## @method set_capacity ()
# Sets the given value for 'capacity' property.
# 
# @param capacity  - New value for the field.
# Updated capacity of the virtual disk backing in bytes. This value has to be larger
#     than the original capacity of the disk. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_capacity {
   my ($self, %args) = @_;
   $self->{'capacity'} = $args{'capacity'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuUpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuUpdateSpec``   *class* 
#     describes updates to the CPU configuration of the deployed virtual machine.
#     <b>Warning:</b> This  *class*  is available as technical preview. It may be changed in
#     a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuUpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuUpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{num_cpus} = $args{'num_cpus'};
   $self->{num_cores_per_socket} = $args{'num_cores_per_socket'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuUpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.cpu_update_spec');
   $self->set_binding_field('key' => 'num_cpus', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'num_cores_per_socket', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_num_cpus ()
# Gets the value of 'num_cpus' property.
#
# @retval num_cpus - The current value of the field.
# Number of virtual processors in the deployed virtual machine. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_num_cpus {
   my ($self, %args) = @_;
   return $self->{'num_cpus'}; 	
}

## @method set_num_cpus ()
# Sets the given value for 'num_cpus' property.
# 
# @param num_cpus  - New value for the field.
# Number of virtual processors in the deployed virtual machine. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_num_cpus {
   my ($self, %args) = @_;
   $self->{'num_cpus'} = $args{'num_cpus'}; 
   return;	
}

## @method get_num_cores_per_socket ()
# Gets the value of 'num_cores_per_socket' property.
#
# @retval num_cores_per_socket - The current value of the field.
# Number of cores among which to distribute CPUs in the deployed virtual machine.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_num_cores_per_socket {
   my ($self, %args) = @_;
   return $self->{'num_cores_per_socket'}; 	
}

## @method set_num_cores_per_socket ()
# Sets the given value for 'num_cores_per_socket' property.
# 
# @param num_cores_per_socket  - New value for the field.
# Number of cores among which to distribute CPUs in the deployed virtual machine.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_num_cores_per_socket {
   my ($self, %args) = @_;
   $self->{'num_cores_per_socket'} = $args{'num_cores_per_socket'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryUpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryUpdateSpec``   *class* 
#     describes updates to the memory configuration of the deployed virtual machine.
#     <b>Warning:</b> This  *class*  is available as technical preview. It may be changed in
#     a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryUpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryUpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{memory} = $args{'memory'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryUpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.memory_update_spec');
   $self->set_binding_field('key' => 'memory', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_memory ()
# Gets the value of 'memory' property.
#
# @retval memory - The current value of the field.
# Size of a virtual machine&apos;s memory in MB. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_memory {
   my ($self, %args) = @_;
   return $self->{'memory'}; 	
}

## @method set_memory ()
# Sets the given value for 'memory' property.
# 
# @param memory  - New value for the field.
# Size of a virtual machine&apos;s memory in MB. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
sub set_memory {
   my ($self, %args) = @_;
   $self->{'memory'} = $args{'memory'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetUpdateSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetUpdateSpec``   *class*
#     describes the network that the ethernet adapter of the deployed virtual machine should
#     be connected to. <b>Warning:</b> This  *class*  is available as technical preview. It
#     may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetUpdateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetUpdateSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{network} = $args{'network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetUpdateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.ethernet_update_spec');
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Identifier of the network backing the virtual Ethernet adapter. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
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
# Identifier of the network backing the virtual Ethernet adapter. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DeployPlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::DeployPlacementSpec``  
#     *class*  contains information used to place a virtual machine onto resources within
#     the vCenter inventory. <b>Warning:</b> This  *class*  is available as technical
#     preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DeployPlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DeployPlacementSpec structure
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
   $self->{resource_pool} = $args{'resource_pool'};
   $self->{host} = $args{'host'};
   $self->{cluster} = $args{'cluster'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DeployPlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.deploy_placement_spec');
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Virtual machine folder into which the deployed virtual machine should be placed.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
# Virtual machine folder into which the deployed virtual machine should be placed.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}

## @method get_resource_pool ()
# Gets the value of 'resource_pool' property.
#
# @retval resource_pool - The current value of the field.
# Resource pool into which the deployed virtual machine should be placed.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
# Resource pool into which the deployed virtual machine should be placed.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
# Host onto which the virtual machine should be placed. If  ``host``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host`` . If
#     ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . <b>Warning:</b> This  *field*  is available as technical preview. It may
#     be changed in a future release.
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
# Host onto which the virtual machine should be placed. If  ``host``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``host`` . If
#     ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . <b>Warning:</b> This  *field*  is available as technical preview. It may
#     be changed in a future release.
#
sub set_host {
   my ($self, %args) = @_;
   $self->{'host'} = $args{'host'}; 
   return;	
}

## @method get_cluster ()
# Gets the value of 'cluster' property.
#
# @retval cluster - The current value of the field.
# Cluster onto which the deployed virtual machine should be placed. If  ``cluster``  and
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .
#     If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . <b>Warning:</b> This  *field*  is available as technical preview. It may
#     be changed in a future release.
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
# Cluster onto which the deployed virtual machine should be placed. If  ``cluster``  and
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .
#     If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . <b>Warning:</b> This  *field*  is available as technical preview. It may
#     be changed in a future release.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy
#
#
# The 
#     ``Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy``  
#     *class*  defines the storage policy specification for the deployed virtual
#     machine&apos;s configuration and log files. <b>Warning:</b> This  *class*  is
#     available as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'USE_SPECIFIED_POLICY' => ['policy'],
               'USE_SOURCE_POLICY' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{policy} = $args{'policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.deploy_spec_vm_home_storage_policy');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DeploySpecVmHomeStoragePolicy::Type'));
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Policy type to be used when creating the deployed virtual machine&apos;s configuration
#     and log files. <b>Warning:</b> This  *field*  is available as technical preview. It
#     may be changed in a future release.
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
# Policy type to be used when creating the deployed virtual machine&apos;s configuration
#     and log files. <b>Warning:</b> This  *field*  is available as technical preview. It
#     may be changed in a future release.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier for the storage policy to use. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
# optional#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier for the storage policy to use. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy::Type
#
# Policy type for the deployed virtual machine&apos;s configuration and log files.
#     <b>Warning:</b> This  *enumeration*  is available as technical preview. It may be
#     changed in a future release.
#
#
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy::Type::USE_SPECIFIED_POLICY #
#Use the specified policy. <b>Warning:</b> This  *constant*  is available as technical
# preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy::Type::USE_SOURCE_POLICY #
#Use the storage policy that is associated with the source virtual machine template&apos;s
# configuration and log files. <b>Warning:</b> This  *constant*  is available as technical
# preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy::Type;

use constant {
    USE_SPECIFIED_POLICY =>  'USE_SPECIFIED_POLICY',
    USE_SOURCE_POLICY =>  'USE_SOURCE_POLICY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm_template.library_items.deploy_spec_vm_home_storage_policy.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStoragePolicy::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStorage
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStorage``  
#     *class*  defines the storage specification for a deployed virtual machine&apos;s
#     configuration and log files. <b>Warning:</b> This  *class*  is available as technical
#     preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStorage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStorage structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore} = $args{'datastore'};
   $self->{storage_policy} = $args{'storage_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecVmHomeStorage');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.deploy_spec_vm_home_storage');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DeploySpecVmHomeStoragePolicy')));
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Identifier of the datastore for the deployed virtual machine&apos;s configuration and
#     log files. <b>Warning:</b> This  *field*  is available as technical preview. It may be
#     changed in a future release.
#
# Optional#
sub get_datastore {
   my ($self, %args) = @_;
   return $self->{'datastore'}; 	
}

## @method set_datastore ()
# Sets the given value for 'datastore' property.
# 
# @param datastore  - New value for the field.
# Identifier of the datastore for the deployed virtual machine&apos;s configuration and
#     log files. <b>Warning:</b> This  *field*  is available as technical preview. It may be
#     changed in a future release.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}

## @method get_storage_policy ()
# Gets the value of 'storage_policy' property.
#
# @retval storage_policy - The current value of the field.
# Storage policy for the deployed virtual machine&apos;s configuration and log files.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_storage_policy {
   my ($self, %args) = @_;
   return $self->{'storage_policy'}; 	
}

## @method set_storage_policy ()
# Sets the given value for 'storage_policy' property.
# 
# @param storage_policy  - New value for the field.
# Storage policy for the deployed virtual machine&apos;s configuration and log files.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_storage_policy {
   my ($self, %args) = @_;
   $self->{'storage_policy'} = $args{'storage_policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy`` 
#     *class*  describes the storage policy specification for the deployed virtual
#     machine&apos;s disks. <b>Warning:</b> This  *class*  is available as technical
#     preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy structure
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
         'discriminant_name' => 'type',
         'case_map' => {
               'USE_SPECIFIED_POLICY' => ['policy'],
               'USE_SOURCE_POLICY' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{policy} = $args{'policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.deploy_spec_disk_storage_policy');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DeploySpecDiskStoragePolicy::Type'));
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Policy type to be used when creating the deployed virtual machine&apos;s disk.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
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
# Policy type to be used when creating the deployed virtual machine&apos;s disk.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier of the storage policy to use. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
# optional#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier of the storage policy to use. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy::Type
#
# Policy type for the deployed virtual machine&apos;s disk. <b>Warning:</b> This 
#     *enumeration*  is available as technical preview. It may be changed in a future
#     release.
#
#
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy::Type::USE_SPECIFIED_POLICY #
#Use the specified policy. <b>Warning:</b> This  *constant*  is available as technical
# preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy::Type::USE_SOURCE_POLICY #
#Use the storage policy that is associated with the corresponding disk in the source
# virtual machine template. <b>Warning:</b> This  *constant*  is available as technical
# preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy::Type;

use constant {
    USE_SPECIFIED_POLICY =>  'USE_SPECIFIED_POLICY',
    USE_SOURCE_POLICY =>  'USE_SOURCE_POLICY',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm_template.library_items.deploy_spec_disk_storage_policy.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStoragePolicy::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStorage
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStorage``  
#     *class*  contains the storage specification for disks in the virtual machine.
#     <b>Warning:</b> This  *class*  is available as technical preview. It may be changed in
#     a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStorage;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStorage structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore} = $args{'datastore'};
   $self->{storage_policy} = $args{'storage_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DeploySpecDiskStorage');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.deploy_spec_disk_storage');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DeploySpecDiskStoragePolicy')));
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Identifier for the datastore associated the deployed virtual machine&apos;s disk.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Optional#
sub get_datastore {
   my ($self, %args) = @_;
   return $self->{'datastore'}; 	
}

## @method set_datastore ()
# Sets the given value for 'datastore' property.
# 
# @param datastore  - New value for the field.
# Identifier for the datastore associated the deployed virtual machine&apos;s disk.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}

## @method get_storage_policy ()
# Gets the value of 'storage_policy' property.
#
# @retval storage_policy - The current value of the field.
# Storage policy for the deployed virtual machine&apos;s disk. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# Optional#
sub get_storage_policy {
   my ($self, %args) = @_;
   return $self->{'storage_policy'}; 	
}

## @method set_storage_policy ()
# Sets the given value for 'storage_policy' property.
# 
# @param storage_policy  - New value for the field.
# Storage policy for the deployed virtual machine&apos;s disk. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_storage_policy {
   my ($self, %args) = @_;
   $self->{'storage_policy'} = $args{'storage_policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::GuestCustomizationSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::GuestCustomizationSpec``  
#     *class*  contains information required to customize the deployed virtual machine.
#     <b>Warning:</b> This  *class*  is available as technical preview. It may be changed in
#     a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::GuestCustomizationSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::GuestCustomizationSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::GuestCustomizationSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.guest_customization_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the customization specification. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
# Optional#
sub get_name {
   my ($self, %args) = @_;
   return $self->{'name'}; 	
}

## @method set_name ()
# Sets the given value for 'name' property.
# 
# @param name  - New value for the field.
# Name of the customization specification. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::Info``   *class*  contains
#     information about a virtual machine template item in content library. <b>Warning:</b>
#     This  *class*  is available as technical preview. It may be changed in a future
#     release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::Info structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{guest_OS} = $args{'guest_OS'};
   $self->{cpu} = $args{'cpu'};
   $self->{memory} = $args{'memory'};
   $self->{vm_home_storage} = $args{'vm_home_storage'};
   $self->{disks} = $args{'disks'};
   $self->{nics} = $args{'nics'};
   $self->{vm_template} = $args{'vm_template'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.info');
   $self->set_binding_field('key' => 'guest_OS', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'GuestOS'));
   $self->set_binding_field('key' => 'cpu', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::CpuInfo'));
   $self->set_binding_field('key' => 'memory', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::MemoryInfo'));
   $self->set_binding_field('key' => 'vm_home_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::VmHomeStorageInfo'));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DiskInfo')}))));
   $self->set_binding_field('key' => 'nics', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::EthernetInfo')}))));
   $self->set_binding_field('key' => 'vm_template', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_guest_OS ()
# Gets the value of 'guest_OS' property.
#
# @retval guest_OS - The current value of the field.
# Configured guest operating system of the virtual machine template. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
# GuestOS#
sub get_guest_OS {
   my ($self, %args) = @_;
   return $self->{'guest_OS'}; 	
}

## @method set_guest_OS ()
# Sets the given value for 'guest_OS' property.
# 
# @param guest_OS  - New value for the field.
# Configured guest operating system of the virtual machine template. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
sub set_guest_OS {
   my ($self, %args) = @_;
   $self->{'guest_OS'} = $args{'guest_OS'}; 
   return;	
}

## @method get_cpu ()
# Gets the value of 'cpu' property.
#
# @retval cpu - The current value of the field.
# CPU configuration of the virtual machine template. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
# CpuInfo#
sub get_cpu {
   my ($self, %args) = @_;
   return $self->{'cpu'}; 	
}

## @method set_cpu ()
# Sets the given value for 'cpu' property.
# 
# @param cpu  - New value for the field.
# CPU configuration of the virtual machine template. <b>Warning:</b> This  *field*  is
#     available as technical preview. It may be changed in a future release.
#
sub set_cpu {
   my ($self, %args) = @_;
   $self->{'cpu'} = $args{'cpu'}; 
   return;	
}

## @method get_memory ()
# Gets the value of 'memory' property.
#
# @retval memory - The current value of the field.
# Memory configuration of the virtual machine template. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
# MemoryInfo#
sub get_memory {
   my ($self, %args) = @_;
   return $self->{'memory'}; 	
}

## @method set_memory ()
# Sets the given value for 'memory' property.
# 
# @param memory  - New value for the field.
# Memory configuration of the virtual machine template. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
sub set_memory {
   my ($self, %args) = @_;
   $self->{'memory'} = $args{'memory'}; 
   return;	
}

## @method get_vm_home_storage ()
# Gets the value of 'vm_home_storage' property.
#
# @retval vm_home_storage - The current value of the field.
# Storage information about the virtual machine template&apos;s configuration and log
#     files. <b>Warning:</b> This  *field*  is available as technical preview. It may be
#     changed in a future release.
#
# VmHomeStorageInfo#
sub get_vm_home_storage {
   my ($self, %args) = @_;
   return $self->{'vm_home_storage'}; 	
}

## @method set_vm_home_storage ()
# Sets the given value for 'vm_home_storage' property.
# 
# @param vm_home_storage  - New value for the field.
# Storage information about the virtual machine template&apos;s configuration and log
#     files. <b>Warning:</b> This  *field*  is available as technical preview. It may be
#     changed in a future release.
#
sub set_vm_home_storage {
   my ($self, %args) = @_;
   $self->{'vm_home_storage'} = $args{'vm_home_storage'}; 
   return;	
}

## @method get_disks ()
# Gets the value of 'disks' property.
#
# @retval disks - The current value of the field.
# Storage information about the virtual machine template&apos;s virtual disks.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Map#
sub get_disks {
   my ($self, %args) = @_;
   return $self->{'disks'}; 	
}

## @method set_disks ()
# Sets the given value for 'disks' property.
# 
# @param disks  - New value for the field.
# Storage information about the virtual machine template&apos;s virtual disks.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_disks {
   my ($self, %args) = @_;
   $self->{'disks'} = $args{'disks'}; 
   return;	
}

## @method get_nics ()
# Gets the value of 'nics' property.
#
# @retval nics - The current value of the field.
# Information about the virtual machine template&apos;s virtual ethernet adapters.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
# Map#
sub get_nics {
   my ($self, %args) = @_;
   return $self->{'nics'}; 	
}

## @method set_nics ()
# Sets the given value for 'nics' property.
# 
# @param nics  - New value for the field.
# Information about the virtual machine template&apos;s virtual ethernet adapters.
#     <b>Warning:</b> This  *field*  is available as technical preview. It may be changed in
#     a future release.
#
sub set_nics {
   my ($self, %args) = @_;
   $self->{'nics'} = $args{'nics'}; 
   return;	
}

## @method get_vm_template ()
# Gets the value of 'vm_template' property.
#
# @retval vm_template - The current value of the field.
# Identifier of the virtual machine template contained in the library item. This field
#     is used to identify the virtual machine template in legacy APIs. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
# optional#
sub get_vm_template {
   my ($self, %args) = @_;
   return $self->{'vm_template'}; 	
}

## @method set_vm_template ()
# Sets the given value for 'vm_template' property.
# 
# @param vm_template  - New value for the field.
# Identifier of the virtual machine template contained in the library item. This field
#     is used to identify the virtual machine template in legacy APIs. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_vm_template {
   my ($self, %args) = @_;
   $self->{'vm_template'} = $args{'vm_template'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuInfo``   *class*  contains
#     CPU related information about the virtual machine template. <b>Warning:</b> This 
#     *class*  is available as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{count} = $args{'count'};
   $self->{cores_per_socket} = $args{'cores_per_socket'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::CpuInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.cpu_info');
   $self->set_binding_field('key' => 'count', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   $self->set_binding_field('key' => 'cores_per_socket', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_count ()
# Gets the value of 'count' property.
#
# @retval count - The current value of the field.
# Number of CPU cores. <b>Warning:</b> This  *field*  is available as technical preview.
#     It may be changed in a future release.
#
# long#
sub get_count {
   my ($self, %args) = @_;
   return $self->{'count'}; 	
}

## @method set_count ()
# Sets the given value for 'count' property.
# 
# @param count  - New value for the field.
# Number of CPU cores. <b>Warning:</b> This  *field*  is available as technical preview.
#     It may be changed in a future release.
#
sub set_count {
   my ($self, %args) = @_;
   $self->{'count'} = $args{'count'}; 
   return;	
}

## @method get_cores_per_socket ()
# Gets the value of 'cores_per_socket' property.
#
# @retval cores_per_socket - The current value of the field.
# Number of CPU cores per socket. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
# long#
sub get_cores_per_socket {
   my ($self, %args) = @_;
   return $self->{'cores_per_socket'}; 	
}

## @method set_cores_per_socket ()
# Sets the given value for 'cores_per_socket' property.
# 
# @param cores_per_socket  - New value for the field.
# Number of CPU cores per socket. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_cores_per_socket {
   my ($self, %args) = @_;
   $self->{'cores_per_socket'} = $args{'cores_per_socket'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryInfo``   *class* 
#     contains memory related information about the virtual machine template.
#     <b>Warning:</b> This  *class*  is available as technical preview. It may be changed in
#     a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{size_MiB} = $args{'size_MiB'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::MemoryInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.memory_info');
   $self->set_binding_field('key' => 'size_MiB', 'value' => new Com::Vmware::Vapi::Bindings::Type::LongType());
   bless $self, $class;
   return $self;
}

## @method get_size_MiB ()
# Gets the value of 'size_MiB' property.
#
# @retval size_MiB - The current value of the field.
# Memory size in mebibytes. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# long#
sub get_size_MiB {
   my ($self, %args) = @_;
   return $self->{'size_MiB'}; 	
}

## @method set_size_MiB ()
# Sets the given value for 'size_MiB' property.
# 
# @param size_MiB  - New value for the field.
# Memory size in mebibytes. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_size_MiB {
   my ($self, %args) = @_;
   $self->{'size_MiB'} = $args{'size_MiB'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::VmHomeStorageInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::VmHomeStorageInfo``   *class* 
#     contains storage information about the virtual machine template&apos;s configuration
#     and log files. <b>Warning:</b> This  *class*  is available as technical preview. It
#     may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::VmHomeStorageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::VmHomeStorageInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore} = $args{'datastore'};
   $self->{storage_policy} = $args{'storage_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::VmHomeStorageInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.vm_home_storage_info');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Identifier of the datastore where the virtual machine template&apos;s configuration
#     and log files are stored. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# ID#
sub get_datastore {
   my ($self, %args) = @_;
   return $self->{'datastore'}; 	
}

## @method set_datastore ()
# Sets the given value for 'datastore' property.
# 
# @param datastore  - New value for the field.
# Identifier of the datastore where the virtual machine template&apos;s configuration
#     and log files are stored. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}

## @method get_storage_policy ()
# Gets the value of 'storage_policy' property.
#
# @retval storage_policy - The current value of the field.
# Identifier of the storage policy associated with the virtual machine template&apos;s
#     configuration and log files. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
# Optional#
sub get_storage_policy {
   my ($self, %args) = @_;
   return $self->{'storage_policy'}; 	
}

## @method set_storage_policy ()
# Sets the given value for 'storage_policy' property.
# 
# @param storage_policy  - New value for the field.
# Identifier of the storage policy associated with the virtual machine template&apos;s
#     configuration and log files. <b>Warning:</b> This  *field*  is available as technical
#     preview. It may be changed in a future release.
#
sub set_storage_policy {
   my ($self, %args) = @_;
   $self->{'storage_policy'} = $args{'storage_policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskInfo``   *class*  contains
#     information about the virtual machine template&apos;s virtual disk. <b>Warning:</b>
#     This  *class*  is available as technical preview. It may be changed in a future
#     release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{capacity} = $args{'capacity'};
   $self->{disk_storage} = $args{'disk_storage'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.disk_info');
   $self->set_binding_field('key' => 'capacity', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'disk_storage', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::DiskStorageInfo'));
   bless $self, $class;
   return $self;
}

## @method get_capacity ()
# Gets the value of 'capacity' property.
#
# @retval capacity - The current value of the field.
# Capacity of the virtual disk in bytes. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
# Optional#
sub get_capacity {
   my ($self, %args) = @_;
   return $self->{'capacity'}; 	
}

## @method set_capacity ()
# Sets the given value for 'capacity' property.
# 
# @param capacity  - New value for the field.
# Capacity of the virtual disk in bytes. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_capacity {
   my ($self, %args) = @_;
   $self->{'capacity'} = $args{'capacity'}; 
   return;	
}

## @method get_disk_storage ()
# Gets the value of 'disk_storage' property.
#
# @retval disk_storage - The current value of the field.
# Disk storage related information. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
# DiskStorageInfo#
sub get_disk_storage {
   my ($self, %args) = @_;
   return $self->{'disk_storage'}; 	
}

## @method set_disk_storage ()
# Sets the given value for 'disk_storage' property.
# 
# @param disk_storage  - New value for the field.
# Disk storage related information. <b>Warning:</b> This  *field*  is available as
#     technical preview. It may be changed in a future release.
#
sub set_disk_storage {
   my ($self, %args) = @_;
   $self->{'disk_storage'} = $args{'disk_storage'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskStorageInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskStorageInfo``   *class* 
#     contains storage related information about a virtual machine template&apos;s virtual
#     disk. <b>Warning:</b> This  *class*  is available as technical preview. It may be
#     changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskStorageInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskStorageInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{datastore} = $args{'datastore'};
   $self->{storage_policy} = $args{'storage_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::DiskStorageInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.disk_storage_info');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Identifier of the datastore where the disk is stored. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
# ID#
sub get_datastore {
   my ($self, %args) = @_;
   return $self->{'datastore'}; 	
}

## @method set_datastore ()
# Sets the given value for 'datastore' property.
# 
# @param datastore  - New value for the field.
# Identifier of the datastore where the disk is stored. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}

## @method get_storage_policy ()
# Gets the value of 'storage_policy' property.
#
# @retval storage_policy - The current value of the field.
# Identifier of the storage policy associated with the virtual disk. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
# Optional#
sub get_storage_policy {
   my ($self, %args) = @_;
   return $self->{'storage_policy'}; 	
}

## @method set_storage_policy ()
# Sets the given value for 'storage_policy' property.
# 
# @param storage_policy  - New value for the field.
# Identifier of the storage policy associated with the virtual disk. <b>Warning:</b>
#     This  *field*  is available as technical preview. It may be changed in a future
#     release.
#
sub set_storage_policy {
   my ($self, %args) = @_;
   $self->{'storage_policy'} = $args{'storage_policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo``   *class* 
#     contains information about a virtual machine template&apos;s virtual Ethernet adapter.
#     <b>Warning:</b> This  *class*  is available as technical preview. It may be changed in
#     a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{backing_type} = $args{'backing_type'};
   $self->{mac_type} = $args{'mac_type'};
   $self->{network} = $args{'network'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.ethernet_info');
   $self->set_binding_field('key' => 'backing_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::EthernetInfo::NetworkBackingType'));
   $self->set_binding_field('key' => 'mac_type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template', 'type_name' => 'LibraryItems::EthernetInfo::MacAddressType'));
   $self->set_binding_field('key' => 'network', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_backing_type ()
# Gets the value of 'backing_type' property.
#
# @retval backing_type - The current value of the field.
# Network backing type for the virtual Ethernet adapter. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
# NetworkBackingType#
sub get_backing_type {
   my ($self, %args) = @_;
   return $self->{'backing_type'}; 	
}

## @method set_backing_type ()
# Sets the given value for 'backing_type' property.
# 
# @param backing_type  - New value for the field.
# Network backing type for the virtual Ethernet adapter. <b>Warning:</b> This  *field* 
#     is available as technical preview. It may be changed in a future release.
#
sub set_backing_type {
   my ($self, %args) = @_;
   $self->{'backing_type'} = $args{'backing_type'}; 
   return;	
}

## @method get_mac_type ()
# Gets the value of 'mac_type' property.
#
# @retval mac_type - The current value of the field.
# MAC address type of the ethernet adapter. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
# MacAddressType#
sub get_mac_type {
   my ($self, %args) = @_;
   return $self->{'mac_type'}; 	
}

## @method set_mac_type ()
# Sets the given value for 'mac_type' property.
# 
# @param mac_type  - New value for the field.
# MAC address type of the ethernet adapter. <b>Warning:</b> This  *field*  is available
#     as technical preview. It may be changed in a future release.
#
sub set_mac_type {
   my ($self, %args) = @_;
   $self->{'mac_type'} = $args{'mac_type'}; 
   return;	
}

## @method get_network ()
# Gets the value of 'network' property.
#
# @retval network - The current value of the field.
# Identifier of the network backing the virtual Ethernet adapter. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
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
# Identifier of the network backing the virtual Ethernet adapter. <b>Warning:</b> This 
#     *field*  is available as technical preview. It may be changed in a future release.
#
sub set_network {
   my ($self, %args) = @_;
   $self->{'network'} = $args{'network'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::NetworkBackingType
#
# The 
#     ``Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::NetworkBackingType`` 
#     *enumerated type*  defines valid network backing types for a virtual Ethernet adapter.
#     <b>Warning:</b> This  *enumeration*  is available as technical preview. It may be
#     changed in a future release.
#
#
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::NetworkBackingType::STANDARD_PORTGROUP #
#vSphere standard portgroup network backing. <b>Warning:</b> This  *constant*  is available
# as technical preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::NetworkBackingType::HOST_DEVICE #
#Legacy host device network backing. Imported VMs may have virtual Ethernet adapters with
# this type of backing, but this type of backing cannot be used to create or to update a
# virtual Ethernet adapter. <b>Warning:</b> This  *constant*  is available as technical
# preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::NetworkBackingType::DISTRIBUTED_PORTGROUP #
#Distributed virtual switch backing. <b>Warning:</b> This  *constant*  is available as
# technical preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::NetworkBackingType::OPAQUE_NETWORK #
#Opaque network backing. <b>Warning:</b> This  *constant*  is available as technical
# preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::NetworkBackingType;

use constant {
    STANDARD_PORTGROUP =>  'STANDARD_PORTGROUP',
    HOST_DEVICE =>  'HOST_DEVICE',
    DISTRIBUTED_PORTGROUP =>  'DISTRIBUTED_PORTGROUP',
    OPAQUE_NETWORK =>  'OPAQUE_NETWORK',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::NetworkBackingType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm_template.library_items.ethernet_info.network_backing_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::NetworkBackingType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::MacAddressType
#
# The  ``Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::MacAddressType``
#     *enumerated type*  defines the valid MAC address origins for a virtual Ethernet
#     adapter. <b>Warning:</b> This  *enumeration*  is available as technical preview. It
#     may be changed in a future release.
#
#
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::MacAddressType::MANUAL #
#MAC address is assigned statically. <b>Warning:</b> This  *constant*  is available as
# technical preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::MacAddressType::GENERATED #
#MAC address is generated automatically. <b>Warning:</b> This  *constant*  is available as
# technical preview. It may be changed in a future release.
#
# Constant Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::MacAddressType::ASSIGNED #
#MAC address is assigned by vCenter Server. <b>Warning:</b> This  *constant*  is available
# as technical preview. It may be changed in a future release.

package Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::MacAddressType;

use constant {
    MANUAL =>  'MANUAL',
    GENERATED =>  'GENERATED',
    ASSIGNED =>  'ASSIGNED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::MacAddressType enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.vm_template.library_items.ethernet_info.mac_address_type',
                           'binding_class' => 'Com::Vmware::Vcenter::Vm_template::LibraryItems::EthernetInfo::MacAddressType');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm_template::LibraryItems service
#########################################################################################
