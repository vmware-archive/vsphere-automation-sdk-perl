########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CheckOuts.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts``   *interface* 
#     provides  *methods*  for managing the checkouts of a library item containing a virtual
#     machine template. This  *interface*  provides operations to check out a library item
#     to update the virtual machine template, and to check in the library item when the
#     virtual machine changes are complete. This  *interface*  was added in vSphere API
#     6.9.1.
#

package Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts;

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
use Com::Vmware::Vcenter::Vm_template::Library_items::CheckOutsStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.vm_template.library_items.check_outs';


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

## @method check_out ()
# Checks out a library item containing a virtual machine template. This  *method*  makes a
# copy of the source virtual machine template contained in the library item as a virtual
# machine. The virtual machine is copied with the same storage specification as the source
# virtual machine template. Changes to the checked out virtual machine do not affect the
# virtual machine template contained in the library item. To save these changes back into
# the library item, 
# :func:`Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts.check_in`  the virtual
# machine. To discard the changes, 
# :func:`Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts.delete`  the virtual
# machine. This  *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are ContentLibrary.CheckOutTemplate.
#
# @param template_library_item [REQUIRED] Identifier of the content library item containing the source virtual machine template
#     to be checked out.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param spec [OPTIONAL] Specification used to check out the source virtual machine template as a virtual
#     machine.
# This  *parameter*  is currently required. In the future, if this  *parameter*  is 
#     *null* , the system will apply suitable defaults.
# . The value must be
# Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckOutSpec or None.
#
# @retval 
# Identifier of the virtual machine that was checked out of the library item.
# The value will be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a virtual machine with the name specified by 
#     :attr:`Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckOutSpec.name`
#     already exists in the folder specified by 
#     :attr:`Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec.folder`
#     .
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if  ``spec``  contains invalid arguments.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the library item is a member of a subscribed library.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item specified by  ``template_library_item``  cannot be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if there is an error accessing the files of the source virtual machine template
#     contained in the library item specified by  ``template_library_item`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if the limit for the number of virtual machines checked out of a library item
#     (currently 1) has been exceeded.
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
#       ``template_library_item``  requires  ``ContentLibrary.CheckOutTemplate`` . </li>
# <li> The resource  ``Folder``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec.folder`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``ResourcePool``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec.resource_pool`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``HostSystem``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec.host`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``ClusterComputeResource``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec.cluster`
#      requires  ``System.Read`` . </li>
# </ul>
#
sub check_out {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_out',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_out',
                         method_args => \%args);
}

## @method check_in ()
# Checks in a virtual machine into the library item. This  *method*  updates the library
# item to contain the virtual machine being checked in as a template. This template becomes
# the latest version of the library item. The previous virtual machine template contained in
# the library item is available as a backup and its information can be queried using the 
# ``Com::Vmware::Vcenter::Vm_template::Library_items::Versions``   *interface* . At most one
# previous version of a virtual machine template is retained in the library item. This 
# *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are ContentLibrary.CheckInTemplate.
#
# @param template_library_item [REQUIRED]  Identifier of the content library item in which the virtual machine is checked in.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param vm [REQUIRED]  Identifier of the virtual machine to check into the library item.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @param spec [OPTIONAL]  Specification used to check in the virtual machine into the library item.
# This  *parameter*  is currently required. In the future, if this  *parameter*  is 
#     *null* , the system will apply suitable defaults.
# . The value must be
# Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckInSpec or None.
#
# @retval 
# The new version of the library item.
# The value will be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.item.Version).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if any of the specified  *parameters*  are invalid.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the virtual machine identified by  ``vm``  was not checked out of the item
#     specified by  ``template_library_item`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the  *method*  cannot be performed because of the virtual machine&apos;s current
#     state. For example, if the virtual machine is not powered off.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the item specified by  ``template_library_item``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the virtual machine specified by  ``vm``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
#  if there is an error accessing a file from the virtual machine.
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
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``System.Read`` . </li>
# </ul>
#
sub check_in {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};
   my $vm = $args {vm};
   my $spec = $args {spec};

   $self->validate_args (method_name => 'check_in',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'check_in',
                         method_args => \%args);
}

## @method list ()
# Returns commonly used information about the virtual machines that are checked out of the
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
# List of commonly used information about the check outs.
# The return type will be Array of
# Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Summary
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
# Returns the information about a checked out virtual machine. This  *method*  was added in
# vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param template_library_item [REQUIRED] Identifier of the VM template library item.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param vm [REQUIRED] Identifier of the checked out virtual machine.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Information about a check out.
# The return type will be Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item or virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the virtual machine is not checked out of the library item.
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
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``System.Read`` . </li>
# </ul>
#
sub get {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};
   my $vm = $args {vm};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}

## @method delete ()
# Deletes the checked out virtual machine. This  *method*  was added in vSphere API 6.9.1.
#
# Note:
# Privileges required for this operation are VirtualMachine.Inventory.Delete.
#
# @param template_library_item [REQUIRED] Identifier of the VM template library item.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param vm [REQUIRED] Identifier of the checked out virtual machine to delete.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item or virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if the virtual machine is not checked out of the library item.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
#  if the virtual machine is running (powered on).
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
#  if the virtual machine is busy performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
#  if the virtual machine&apos;s configuration state cannot be accessed.
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
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``VirtualMachine.Inventory.Delete`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``template_library_item``  requires  ``System.Read`` . </li>
# </ul>
#
sub delete {
   my ($self, %args) = @_;
   my $template_library_item = $args {template_library_item};
   my $vm = $args {vm};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts service
#########################################################################################

## @class Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckOutSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckOutSpec``  
#     *class*  defines the information required to check out a library item containing a
#     virtual machine template. This  *class*  was added in vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckOutSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckOutSpec structure
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
   $self->{placement} = $args{'placement'};
   $self->{powered_on} = $args{'powered_on'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckOutSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.check_outs.check_out_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm_template::Library_items', 'type_name' => 'CheckOuts::PlacementSpec')));
   $self->set_binding_field('key' => 'powered_on', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the virtual machine to check out of the library item. This  *field*  was added
#     in vSphere API 6.9.1.
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
# Name of the virtual machine to check out of the library item. This  *field*  was added
#     in vSphere API 6.9.1.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_placement ()
# Gets the value of 'placement' property.
#
# @retval placement - The current value of the field.
# Information used to place the checked out virtual machine. This  *field*  was added in
#     vSphere API 6.9.1.
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
# Information used to place the checked out virtual machine. This  *field*  was added in
#     vSphere API 6.9.1.
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
# Specifies whether the virtual machine should be powered on after check out. This 
#     *field*  was added in vSphere API 6.9.1.
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
# Specifies whether the virtual machine should be powered on after check out. This 
#     *field*  was added in vSphere API 6.9.1.
#
sub set_powered_on {
   my ($self, %args) = @_;
   $self->{'powered_on'} = $args{'powered_on'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec``  
#     *class*  contains information used to place a checked out virtual machine onto
#     resources within the vCenter inventory. The specified compute resource should have
#     access to the storage associated with the checked out virtual machine. This  *class* 
#     was added in vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::PlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.check_outs.placement_spec');
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
# Virtual machine folder into which the virtual machine should be placed. This  *field* 
#     was added in vSphere API 6.9.1.
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
# Virtual machine folder into which the virtual machine should be placed. This  *field* 
#     was added in vSphere API 6.9.1.
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
# Resource pool into which the virtual machine should be placed. This  *field*  was
#     added in vSphere API 6.9.1.
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
# Resource pool into which the virtual machine should be placed. This  *field*  was
#     added in vSphere API 6.9.1.
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
#     ``cluster`` . This  *field*  was added in vSphere API 6.9.1.
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
#     ``cluster`` . This  *field*  was added in vSphere API 6.9.1.
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
# Cluster onto which the virtual machine should be placed. If  ``cluster``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .
#     If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.9.1.
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
# Cluster onto which the virtual machine should be placed. If  ``cluster``  and 
#     ``resourcePool``  are both specified,  ``resourcePool``  must belong to  ``cluster`` .
#     If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` . This  *field*  was added in vSphere API 6.9.1.
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckInSpec
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckInSpec``  
#     *class*  defines the information required to check in a virtual machine into a library
#     item. This  *class*  was added in vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckInSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckInSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::CheckInSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.check_outs.check_in_spec');
   $self->set_binding_field('key' => 'message', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_message ()
# Gets the value of 'message' property.
#
# @retval message - The current value of the field.
# Message describing the changes made to the virtual machine. This  *field*  was added
#     in vSphere API 6.9.1.
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
# Message describing the changes made to the virtual machine. This  *field*  was added
#     in vSphere API 6.9.1.
#
sub set_message {
   my ($self, %args) = @_;
   $self->{'message'} = $args{'message'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Summary
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Summary``  
#     *class*  contains commonly used information about a checked out virtual machine. This 
#     *class*  was added in vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Summary structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vm} = $args{'vm'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.check_outs.summary');
   $self->set_binding_field('key' => 'vm', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_vm ()
# Gets the value of 'vm' property.
#
# @retval vm - The current value of the field.
# Identifier of the checked out virtual machine. This  *field*  was added in vSphere API
#     6.9.1.
#
# ID#
sub get_vm {
   my ($self, %args) = @_;
   return $self->{'vm'}; 	
}

## @method set_vm ()
# Sets the given value for 'vm' property.
# 
# @param vm  - New value for the field.
# Identifier of the checked out virtual machine. This  *field*  was added in vSphere API
#     6.9.1.
#
sub set_vm {
   my ($self, %args) = @_;
   $self->{'vm'} = $args{'vm'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Info
#
#
# The  ``Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Info``   *class* 
#     contains information about a checked out virtual machine. This  *class*  was added in
#     vSphere API 6.9.1.

package Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Info structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.vm_template.library_items.check_outs.info');
   $self->set_binding_field('key' => 'time', 'value' => new Com::Vmware::Vapi::Bindings::Type::DateTimeType());
   $self->set_binding_field('key' => 'user', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_time ()
# Gets the value of 'time' property.
#
# @retval time - The current value of the field.
# Date and time when the virtual machine was checked out. This  *field*  was added in
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
# Date and time when the virtual machine was checked out. This  *field*  was added in
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
# Name of the user who checked out the virtual machine. This  *field*  was added in
#     vSphere API 6.9.1.
#
# String#
sub get_user {
   my ($self, %args) = @_;
   return $self->{'user'}; 	
}

## @method set_user ()
# Sets the given value for 'user' property.
# 
# @param user  - New value for the field.
# Name of the user who checked out the virtual machine. This  *field*  was added in
#     vSphere API 6.9.1.
#
sub set_user {
   my ($self, %args) = @_;
   $self->{'user'} = $args{'user'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Vm_template::Library_items::CheckOuts service
#########################################################################################
