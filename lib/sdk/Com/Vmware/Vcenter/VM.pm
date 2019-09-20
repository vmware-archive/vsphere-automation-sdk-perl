########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file VM.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vcenter::Vm;
#use Com::Vmware::Vcenter::Vm::Hardware;
#use Com::Vmware::Vcenter::Vm::Hardware::Boot;
#use Com::Vmware::Vcenter::Vm::Hardware::Adapter;
#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::VM
# The  ``Com::Vmware::Vcenter::VM``   *interface*  provides  *methods*  for managing the
#     lifecycle of a virtual machine.
#
#
# Constant String::RESOURCE_TYPE #
#Resource type for virtual machines.

package Com::Vmware::Vcenter::VM;

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
use Com::Vmware::Vcenter::VMStub;

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
# Creates a virtual machine.
#
# Note:
# Privileges required for this operation are VirtualMachine.Inventory.Create, Resource.AssignVMToPool, Datastore.AllocateSpace, Network.Assign.
#
# @param spec [REQUIRED] Virtual machine specification.
# . The value must be Com::Vmware::Vcenter::VM::CreateSpec.
#
# @retval 
# ID of newly-created virtual machine.
# The value will be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a virtual machine with the specified name already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if any of the resources specified in  *spec*  could not be found
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if a specified resource (eg. host) is not accessible.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInUse 
# if any of the specified storage addresses (eg. IDE, SATA, SCSI) result in a storage
#     address conflict.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if any of the resources needed to create the virtual machine could not be allocated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unsupported 
# if  ``guestOS``  is not supported for the requested virtual hardware version and 
#     *spec*  includes  *null*   *fields*  that default to guest-specific values.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``Folder``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::InventoryPlacementSpec.folder`  requires 
#     ``VirtualMachine.Inventory.Create`` . </li>
# <li> The resource  ``ResourcePool``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::ComputePlacementSpec.resource_pool`  requires 
#     ``Resource.AssignVMToPool`` . </li>
# <li> The resource  ``Datastore``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::StoragePlacementSpec.datastore`  requires 
#     ``Datastore.AllocateSpace`` . </li>
# <li> The resource  ``Network``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec.network`  requires 
#     ``Network.Assign`` . </li>
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


## @method instant_clone ()
# Create an instant clone of an existing virtual machine. This  *method*  was added in
# vSphere API 6.7.1.
#
# Note:
# Privileges required for this operation are VirtualMachine.Provisioning.Clone, VirtualMachine.Inventory.CreateFromExisting, VirtualMachine.Interact.PowerOn, Resource.AssignVMToPool, Datastore.AllocateSpace, Network.Assign.
#
# @param spec [REQUIRED] Virtual machine InstantCloneSpec.
# . The value must be Com::Vmware::Vcenter::VM::InstantCloneSpec.
#
# @retval 
# ID of newly-created virtual machine.
# The value will be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a virtual machine with the specified name already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if any of the resources specified in  *spec*  could not be found
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if a specified resource (eg. host) is not accessible.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if any of the resources needed to create an instant clone could not be allocated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``VirtualMachine``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::InstantCloneSpec.source`  requires 
#     ``VirtualMachine.Provisioning.Clone``  and 
#     ``VirtualMachine.Inventory.CreateFromExisting`` . </li>
# <li> The resource  ``Folder``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::InstantClonePlacementSpec.folder`  requires 
#     ``VirtualMachine.Interact.PowerOn`` . </li>
# <li> The resource  ``ResourcePool``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::InstantClonePlacementSpec.resource_pool`  requires 
#     ``Resource.AssignVMToPool`` . </li>
# <li> The resource  ``Datastore``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::InstantClonePlacementSpec.datastore`  requires 
#     ``Datastore.AllocateSpace`` . </li>
# <li> The resource  ``Network``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Vm::Hardware::Ethernet::BackingSpec.network`  requires 
#     ``Network.Assign`` . </li>
# </ul>
#

sub instant_clone {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'instant_clone',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'instant_clone',
                         method_args => \%args);
}


## @method get ()
# Returns information about a virtual machine.
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @retval 
# Information about the specified virtual machine.
# The return type will be Com::Vmware::Vcenter::VM::Info
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``System.Read`` . </li>
# </ul>
#

sub get {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'get',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'get',
                         method_args => \%args);
}


## @method delete ()
# Deletes a virtual machine.
#
# Note:
# Privileges required for this operation are VirtualMachine.Inventory.Delete.
#
# @param vm [REQUIRED] Virtual machine identifier.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is running (powered on).
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if the virtual machine is not found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is busy performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if the virtual machine&apos;s configuration state cannot be accessed.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``VirtualMachine.Inventory.Delete`` . </li>
# </ul>
#

sub delete {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'delete',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'delete',
                         method_args => \%args);
}


## @method list ()
# Returns information about at most 4000 visible (subject to permission checks) virtual
# machines in vCenter matching the  class Com::Vmware::Vcenter::VM::FilterSpec .
#
# @param filter [OPTIONAL] Specification of matching virtual machines for which information should be returned.
# If  *null* , the behavior is equivalent to a  class
#     Com::Vmware::Vcenter::VM::FilterSpec  with all  *fields*   *null*  which means all
#     virtual machines match the filter.
# . The value must be Com::Vmware::Vcenter::VM::FilterSpec or None.
#
# @retval 
# Commonly used information about the virtual machines matching the  class
#     Com::Vmware::Vcenter::VM::FilterSpec .
# The return type will be Array of Com::Vmware::Vcenter::VM::Summary
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if the  :attr:`Com::Vmware::Vcenter::VM::FilterSpec.power_states`   *field*  contains
#     a value that is not supported by the server.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if more than 4000 virtual machines match the  class
#     Com::Vmware::Vcenter::VM::FilterSpec .
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


## @method register ()
# Creates a virtual machine from existing virtual machine files on storage. This  *method* 
# was added in vSphere API 6.8.7.
#
# Note:
# Privileges required for this operation are System.Read, VirtualMachine.Inventory.Register, Resource.AssignVMToPool.
#
# @param spec [REQUIRED] Specification of the location of the virtual machine files and the placement of the
#     new virtual machine.
# . The value must be Com::Vmware::Vcenter::VM::RegisterSpec.
#
# @retval 
# Identifier of the newly-created virtual machine.
# The value will be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# The return type will be str
#
# @throw Com::Vmware::Vapi::Std::Errors::AlreadyExists 
# if a virtual machine with the specified name already exists or if a virtual machine
#     using the specified virtual machine files already exists.
#
# @throw Com::Vmware::Vapi::Std::Errors::Error 
# if the system reports an error while responding to the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if any of the specified parameters are invalid.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if any of the resources specified in  *spec*  could not be found.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if a specified resource (eg. host) is not accessible.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::UnableToAllocateResource 
# if any of the resources needed to register the virtual machine could not be allocated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user cannot be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``Datastore``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.datastore`  requires  ``System.Read`` .
#     </li>
# <li> The resource  ``Folder``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::InventoryPlacementSpec.folder`  requires 
#     ``VirtualMachine.Inventory.Register`` . </li>
# <li> The resource  ``ResourcePool``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::VM::ComputePlacementSpec.resource_pool`  requires 
#     ``Resource.AssignVMToPool`` . </li>
# </ul>
#

sub register {
   my ($self, %args) = @_;
   my $spec = $args {spec};

   $self->validate_args (method_name => 'register',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'register',
                         method_args => \%args);
}


## @method unregister ()
# Removes the virtual machine corresponding to  ``vm``  from the vCenter inventory without
# removing any of the virtual machine&apos;s files from storage. All high-level information
# stored with the management server (ESXi or vCenter) is removed, including information such
# as statistics, resource pool association, permissions, and alarms. This  *method*  was
# added in vSphere API 6.8.7.
#
# Note:
# Privileges required for this operation are VirtualMachine.Inventory.Unregister.
#
# @param vm [REQUIRED] Identifier of the virtual machine to be unregistered.
# The value must be an identifier for the resource type
#     getQualifiedName(VirtualMachine).
# . The value must be str.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the virtual machine is running (powered on).
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if there is no virtual machine associated with  ``vm``  in the system.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
# if the virtual machine is busy performing another operation.
#
# @throw Com::Vmware::Vapi::Std::Errors::ServiceUnavailable 
# if the system is unable to communicate with a service to complete the request.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthenticated 
# if the user can not be authenticated.
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
# if the user doesn&apos;t have the required privileges.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
# <li> The resource  ``VirtualMachine``  referenced by the  *parameter*   ``vm`` 
#     requires  ``VirtualMachine.Inventory.Unregister`` . </li>
# </ul>
#

sub unregister {
   my ($self, %args) = @_;
   my $vm = $args {vm};

   $self->validate_args (method_name => 'unregister',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'unregister',
                         method_args => \%args);
}


1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::VM service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::VM service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::VM service
#########################################################################################

## @class Com::Vmware::Vcenter::VM::InventoryPlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::VM::InventoryPlacementSpec``   *class*  contains
#     information used to place a virtual machine in the vCenter inventory.

package Com::Vmware::Vcenter::VM::InventoryPlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::InventoryPlacementSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::InventoryPlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.inventory_placement_spec');
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Virtual machine folder into which the virtual machine should be placed.
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
# Virtual machine folder into which the virtual machine should be placed.
#
sub set_folder {
   my ($self, %args) = @_;
   $self->{'folder'} = $args{'folder'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::ComputePlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::VM::ComputePlacementSpec``   *class*  contains
#     information used to place a virtual machine on compute resources.

package Com::Vmware::Vcenter::VM::ComputePlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::ComputePlacementSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{resource_pool} = $args{'resource_pool'};
   $self->{host} = $args{'host'};
   $self->{cluster} = $args{'cluster'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::ComputePlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.compute_placement_spec');
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_resource_pool ()
# Gets the value of 'resource_pool' property.
#
# @retval resource_pool - The current value of the field.
# Resource pool into which the virtual machine should be placed.
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
# Resource pool into which the virtual machine should be placed.
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
# Host onto which the virtual machine should be placed. <p>
# 
# If  ``host``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``host`` . </p>
# 
# <p>
# 
# If  ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
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
# Host onto which the virtual machine should be placed. <p>
# 
# If  ``host``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``host`` . </p>
# 
# <p>
# 
# If  ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
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
# Cluster into which the virtual machine should be placed. <p>
# 
# If  ``cluster``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``cluster`` . </p>
# 
# <p>
# 
# If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
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
# Cluster into which the virtual machine should be placed. <p>
# 
# If  ``cluster``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``cluster`` . </p>
# 
# <p>
# 
# If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::StoragePlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::VM::StoragePlacementSpec``   *class*  contains
#     information used to store a virtual machine&apos;s files.

package Com::Vmware::Vcenter::VM::StoragePlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::StoragePlacementSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::StoragePlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.storage_placement_spec');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Datastore on which the virtual machine&apos;s configuration state should be stored.
#     This datastore will also be used for any virtual disks that are created as part of the
#     virtual machine creation operation.
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
# Datastore on which the virtual machine&apos;s configuration state should be stored.
#     This datastore will also be used for any virtual disks that are created as part of the
#     virtual machine creation operation.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::PlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::VM::PlacementSpec``   *class*  contains information used
#     to place a virtual machine onto resources within the vCenter inventory.

package Com::Vmware::Vcenter::VM::PlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::PlacementSpec structure
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
   $self->{datastore} = $args{'datastore'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::PlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.placement_spec');
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'host', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'cluster', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Virtual machine folder into which the virtual machine should be placed.
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
# Virtual machine folder into which the virtual machine should be placed.
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
# Resource pool into which the virtual machine should be placed.
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
# Resource pool into which the virtual machine should be placed.
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
# Host onto which the virtual machine should be placed. <p>
# 
# If  ``host``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``host`` . </p>
# 
# <p>
# 
# If  ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
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
# Host onto which the virtual machine should be placed. <p>
# 
# If  ``host``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``host`` . </p>
# 
# <p>
# 
# If  ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
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
# Cluster into which the virtual machine should be placed. <p>
# 
# If  ``cluster``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``cluster`` . </p>
# 
# <p>
# 
# If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
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
# Cluster into which the virtual machine should be placed. <p>
# 
# If  ``cluster``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``cluster`` . </p>
# 
# <p>
# 
# If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Datastore on which the virtual machine&apos;s configuration state should be stored.
#     This datastore will also be used for any virtual disks that are created as part of the
#     virtual machine creation operation.
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
# Datastore on which the virtual machine&apos;s configuration state should be stored.
#     This datastore will also be used for any virtual disks that are created as part of the
#     virtual machine creation operation.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::StoragePolicySpec
#
#
# The  ``Com::Vmware::Vcenter::VM::StoragePolicySpec``   *class*  contains information
#     about the storage policy to be associated with a virtual machine object. This  *class*
#      was added in vSphere API 6.7.

package Com::Vmware::Vcenter::VM::StoragePolicySpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::StoragePolicySpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{policy} = $args{'policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::StoragePolicySpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.storage_policy_spec');
   $self->set_binding_field('key' => 'policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_policy ()
# Gets the value of 'policy' property.
#
# @retval policy - The current value of the field.
# Identifier of the storage policy which should be associated with the virtual machine.
#     This  *field*  was added in vSphere API 6.7.
#
# ID#
sub get_policy {
   my ($self, %args) = @_;
   return $self->{'policy'}; 	
}

## @method set_policy ()
# Sets the given value for 'policy' property.
# 
# @param policy  - New value for the field.
# Identifier of the storage policy which should be associated with the virtual machine.
#     This  *field*  was added in vSphere API 6.7.
#
sub set_policy {
   my ($self, %args) = @_;
   $self->{'policy'} = $args{'policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::CreateSpec
#
#
# Document-based creation spec.

package Com::Vmware::Vcenter::VM::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::CreateSpec structure
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
   $self->{name} = $args{'name'};
   $self->{placement} = $args{'placement'};
   $self->{hardware_version} = $args{'hardware_version'};
   $self->{boot} = $args{'boot'};
   $self->{boot_devices} = $args{'boot_devices'};
   $self->{cpu} = $args{'cpu'};
   $self->{memory} = $args{'memory'};
   $self->{disks} = $args{'disks'};
   $self->{nics} = $args{'nics'};
   $self->{cdroms} = $args{'cdroms'};
   $self->{floppies} = $args{'floppies'};
   $self->{parallel_ports} = $args{'parallel_ports'};
   $self->{serial_ports} = $args{'serial_ports'};
   $self->{sata_adapters} = $args{'sata_adapters'};
   $self->{scsi_adapters} = $args{'scsi_adapters'};
   $self->{storage_policy} = $args{'storage_policy'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.create_spec');
   $self->set_binding_field('key' => 'guest_OS', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'GuestOS'));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'VM::PlacementSpec')));
   $self->set_binding_field('key' => 'hardware_version', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Hardware::Version')));
   $self->set_binding_field('key' => 'boot', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Boot::CreateSpec')));
   $self->set_binding_field('key' => 'boot_devices', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot', 'type_name' => 'Device::EntryCreateSpec'))));
   $self->set_binding_field('key' => 'cpu', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cpu::UpdateSpec')));
   $self->set_binding_field('key' => 'memory', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Memory::UpdateSpec')));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::CreateSpec'))));
   $self->set_binding_field('key' => 'nics', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::CreateSpec'))));
   $self->set_binding_field('key' => 'cdroms', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::CreateSpec'))));
   $self->set_binding_field('key' => 'floppies', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Floppy::CreateSpec'))));
   $self->set_binding_field('key' => 'parallel_ports', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Parallel::CreateSpec'))));
   $self->set_binding_field('key' => 'serial_ports', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Serial::CreateSpec'))));
   $self->set_binding_field('key' => 'sata_adapters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Sata::CreateSpec'))));
   $self->set_binding_field('key' => 'scsi_adapters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Scsi::CreateSpec'))));
   $self->set_binding_field('key' => 'storage_policy', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'VM::StoragePolicySpec')));
   bless $self, $class;
   return $self;
}

## @method get_guest_OS ()
# Gets the value of 'guest_OS' property.
#
# @retval guest_OS - The current value of the field.
# Guest OS.
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
# Guest OS.
#
sub set_guest_OS {
   my ($self, %args) = @_;
   $self->{'guest_OS'} = $args{'guest_OS'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Virtual machine name.
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
# Virtual machine name.
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
# Virtual machine placement information.
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
# Virtual machine placement information.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}

## @method get_hardware_version ()
# Gets the value of 'hardware_version' property.
#
# @retval hardware_version - The current value of the field.
# Virtual hardware version.
#
# Optional#
sub get_hardware_version {
   my ($self, %args) = @_;
   return $self->{'hardware_version'}; 	
}

## @method set_hardware_version ()
# Sets the given value for 'hardware_version' property.
# 
# @param hardware_version  - New value for the field.
# Virtual hardware version.
#
sub set_hardware_version {
   my ($self, %args) = @_;
   $self->{'hardware_version'} = $args{'hardware_version'}; 
   return;	
}

## @method get_boot ()
# Gets the value of 'boot' property.
#
# @retval boot - The current value of the field.
# Boot configuration.
#
# Optional#
sub get_boot {
   my ($self, %args) = @_;
   return $self->{'boot'}; 	
}

## @method set_boot ()
# Sets the given value for 'boot' property.
# 
# @param boot  - New value for the field.
# Boot configuration.
#
sub set_boot {
   my ($self, %args) = @_;
   $self->{'boot'} = $args{'boot'}; 
   return;	
}

## @method get_boot_devices ()
# Gets the value of 'boot_devices' property.
#
# @retval boot_devices - The current value of the field.
# Boot device configuration.
#
# Optional#
sub get_boot_devices {
   my ($self, %args) = @_;
   return $self->{'boot_devices'}; 	
}

## @method set_boot_devices ()
# Sets the given value for 'boot_devices' property.
# 
# @param boot_devices  - New value for the field.
# Boot device configuration.
#
sub set_boot_devices {
   my ($self, %args) = @_;
   $self->{'boot_devices'} = $args{'boot_devices'}; 
   return;	
}

## @method get_cpu ()
# Gets the value of 'cpu' property.
#
# @retval cpu - The current value of the field.
# CPU configuration.
#
# Optional#
sub get_cpu {
   my ($self, %args) = @_;
   return $self->{'cpu'}; 	
}

## @method set_cpu ()
# Sets the given value for 'cpu' property.
# 
# @param cpu  - New value for the field.
# CPU configuration.
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
# Memory configuration.
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
# Memory configuration.
#
sub set_memory {
   my ($self, %args) = @_;
   $self->{'memory'} = $args{'memory'}; 
   return;	
}

## @method get_disks ()
# Gets the value of 'disks' property.
#
# @retval disks - The current value of the field.
# List of disks.
#
# Optional#
sub get_disks {
   my ($self, %args) = @_;
   return $self->{'disks'}; 	
}

## @method set_disks ()
# Sets the given value for 'disks' property.
# 
# @param disks  - New value for the field.
# List of disks.
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
# List of Ethernet adapters.
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
# List of Ethernet adapters.
#
sub set_nics {
   my ($self, %args) = @_;
   $self->{'nics'} = $args{'nics'}; 
   return;	
}

## @method get_cdroms ()
# Gets the value of 'cdroms' property.
#
# @retval cdroms - The current value of the field.
# List of CD-ROMs.
#
# Optional#
sub get_cdroms {
   my ($self, %args) = @_;
   return $self->{'cdroms'}; 	
}

## @method set_cdroms ()
# Sets the given value for 'cdroms' property.
# 
# @param cdroms  - New value for the field.
# List of CD-ROMs.
#
sub set_cdroms {
   my ($self, %args) = @_;
   $self->{'cdroms'} = $args{'cdroms'}; 
   return;	
}

## @method get_floppies ()
# Gets the value of 'floppies' property.
#
# @retval floppies - The current value of the field.
# List of floppy drives.
#
# Optional#
sub get_floppies {
   my ($self, %args) = @_;
   return $self->{'floppies'}; 	
}

## @method set_floppies ()
# Sets the given value for 'floppies' property.
# 
# @param floppies  - New value for the field.
# List of floppy drives.
#
sub set_floppies {
   my ($self, %args) = @_;
   $self->{'floppies'} = $args{'floppies'}; 
   return;	
}

## @method get_parallel_ports ()
# Gets the value of 'parallel_ports' property.
#
# @retval parallel_ports - The current value of the field.
# List of parallel ports.
#
# Optional#
sub get_parallel_ports {
   my ($self, %args) = @_;
   return $self->{'parallel_ports'}; 	
}

## @method set_parallel_ports ()
# Sets the given value for 'parallel_ports' property.
# 
# @param parallel_ports  - New value for the field.
# List of parallel ports.
#
sub set_parallel_ports {
   my ($self, %args) = @_;
   $self->{'parallel_ports'} = $args{'parallel_ports'}; 
   return;	
}

## @method get_serial_ports ()
# Gets the value of 'serial_ports' property.
#
# @retval serial_ports - The current value of the field.
# List of serial ports.
#
# Optional#
sub get_serial_ports {
   my ($self, %args) = @_;
   return $self->{'serial_ports'}; 	
}

## @method set_serial_ports ()
# Sets the given value for 'serial_ports' property.
# 
# @param serial_ports  - New value for the field.
# List of serial ports.
#
sub set_serial_ports {
   my ($self, %args) = @_;
   $self->{'serial_ports'} = $args{'serial_ports'}; 
   return;	
}

## @method get_sata_adapters ()
# Gets the value of 'sata_adapters' property.
#
# @retval sata_adapters - The current value of the field.
# List of SATA adapters.
#
# Optional#
sub get_sata_adapters {
   my ($self, %args) = @_;
   return $self->{'sata_adapters'}; 	
}

## @method set_sata_adapters ()
# Sets the given value for 'sata_adapters' property.
# 
# @param sata_adapters  - New value for the field.
# List of SATA adapters.
#
sub set_sata_adapters {
   my ($self, %args) = @_;
   $self->{'sata_adapters'} = $args{'sata_adapters'}; 
   return;	
}

## @method get_scsi_adapters ()
# Gets the value of 'scsi_adapters' property.
#
# @retval scsi_adapters - The current value of the field.
# List of SCSI adapters.
#
# Optional#
sub get_scsi_adapters {
   my ($self, %args) = @_;
   return $self->{'scsi_adapters'}; 	
}

## @method set_scsi_adapters ()
# Sets the given value for 'scsi_adapters' property.
# 
# @param scsi_adapters  - New value for the field.
# List of SCSI adapters.
#
sub set_scsi_adapters {
   my ($self, %args) = @_;
   $self->{'scsi_adapters'} = $args{'scsi_adapters'}; 
   return;	
}

## @method get_storage_policy ()
# Gets the value of 'storage_policy' property.
#
# @retval storage_policy - The current value of the field.
# The  ``Com::Vmware::Vcenter::VM::StoragePolicySpec``   *class*  contains information
#     about the storage policy that is to be associated with the virtual machine home (which
#     contains the configuration and log files). This  *field*  was added in vSphere API
#     6.7.
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
# The  ``Com::Vmware::Vcenter::VM::StoragePolicySpec``   *class*  contains information
#     about the storage policy that is to be associated with the virtual machine home (which
#     contains the configuration and log files). This  *field*  was added in vSphere API
#     6.7.
#
sub set_storage_policy {
   my ($self, %args) = @_;
   $self->{'storage_policy'} = $args{'storage_policy'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::Info
#
#
# Document-based info.

package Com::Vmware::Vcenter::VM::Info;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::Info structure
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
   $self->{name} = $args{'name'};
   $self->{identity} = $args{'identity'};
   $self->{power_state} = $args{'power_state'};
   $self->{instant_clone_frozen} = $args{'instant_clone_frozen'};
   $self->{hardware} = $args{'hardware'};
   $self->{boot} = $args{'boot'};
   $self->{boot_devices} = $args{'boot_devices'};
   $self->{cpu} = $args{'cpu'};
   $self->{memory} = $args{'memory'};
   $self->{disks} = $args{'disks'};
   $self->{nics} = $args{'nics'};
   $self->{cdroms} = $args{'cdroms'};
   $self->{floppies} = $args{'floppies'};
   $self->{parallel_ports} = $args{'parallel_ports'};
   $self->{serial_ports} = $args{'serial_ports'};
   $self->{sata_adapters} = $args{'sata_adapters'};
   $self->{scsi_adapters} = $args{'scsi_adapters'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::Info');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.info');
   $self->set_binding_field('key' => 'guest_OS', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'GuestOS'));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'identity', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Identity::Info')));
   $self->set_binding_field('key' => 'power_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Power::State'));
   $self->set_binding_field('key' => 'instant_clone_frozen', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'hardware', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Hardware::Info'));
   $self->set_binding_field('key' => 'boot', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Boot::Info'));
   $self->set_binding_field('key' => 'boot_devices', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Boot', 'type_name' => 'Device::Entry')));
   $self->set_binding_field('key' => 'cpu', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cpu::Info'));
   $self->set_binding_field('key' => 'memory', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Memory::Info'));
   $self->set_binding_field('key' => 'disks', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Disk::Info')}))));
   $self->set_binding_field('key' => 'nics', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::Info')}))));
   $self->set_binding_field('key' => 'cdroms', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Cdrom::Info')}))));
   $self->set_binding_field('key' => 'floppies', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Floppy::Info')}))));
   $self->set_binding_field('key' => 'parallel_ports', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Parallel::Info')}))));
   $self->set_binding_field('key' => 'serial_ports', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Serial::Info')}))));
   $self->set_binding_field('key' => 'sata_adapters', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Sata::Info')}))));
   $self->set_binding_field('key' => 'scsi_adapters', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware::Adapter', 'type_name' => 'Scsi::Info')}))));
   bless $self, $class;
   return $self;
}

## @method get_guest_OS ()
# Gets the value of 'guest_OS' property.
#
# @retval guest_OS - The current value of the field.
# Guest OS.
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
# Guest OS.
#
sub set_guest_OS {
   my ($self, %args) = @_;
   $self->{'guest_OS'} = $args{'guest_OS'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Virtual machine name.
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
# Virtual machine name.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_identity ()
# Gets the value of 'identity' property.
#
# @retval identity - The current value of the field.
# Identity of the virtual machine. This  *field*  was added in vSphere API 6.7.1.
#
# optional#
sub get_identity {
   my ($self, %args) = @_;
   return $self->{'identity'}; 	
}

## @method set_identity ()
# Sets the given value for 'identity' property.
# 
# @param identity  - New value for the field.
# Identity of the virtual machine. This  *field*  was added in vSphere API 6.7.1.
#
sub set_identity {
   my ($self, %args) = @_;
   $self->{'identity'} = $args{'identity'}; 
   return;	
}

## @method get_power_state ()
# Gets the value of 'power_state' property.
#
# @retval power_state - The current value of the field.
# Power state of the virtual machine.
#
# State#
sub get_power_state {
   my ($self, %args) = @_;
   return $self->{'power_state'}; 	
}

## @method set_power_state ()
# Sets the given value for 'power_state' property.
# 
# @param power_state  - New value for the field.
# Power state of the virtual machine.
#
sub set_power_state {
   my ($self, %args) = @_;
   $self->{'power_state'} = $args{'power_state'}; 
   return;	
}

## @method get_instant_clone_frozen ()
# Gets the value of 'instant_clone_frozen' property.
#
# @retval instant_clone_frozen - The current value of the field.
# Indicates whether the virtual machine is frozen for instant clone, or not. This 
#     *field*  was added in vSphere API 6.7.1.
#
# optional#
sub get_instant_clone_frozen {
   my ($self, %args) = @_;
   return $self->{'instant_clone_frozen'}; 	
}

## @method set_instant_clone_frozen ()
# Sets the given value for 'instant_clone_frozen' property.
# 
# @param instant_clone_frozen  - New value for the field.
# Indicates whether the virtual machine is frozen for instant clone, or not. This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_instant_clone_frozen {
   my ($self, %args) = @_;
   $self->{'instant_clone_frozen'} = $args{'instant_clone_frozen'}; 
   return;	
}

## @method get_hardware ()
# Gets the value of 'hardware' property.
#
# @retval hardware - The current value of the field.
# Virtual hardware version information.
#
# Info#
sub get_hardware {
   my ($self, %args) = @_;
   return $self->{'hardware'}; 	
}

## @method set_hardware ()
# Sets the given value for 'hardware' property.
# 
# @param hardware  - New value for the field.
# Virtual hardware version information.
#
sub set_hardware {
   my ($self, %args) = @_;
   $self->{'hardware'} = $args{'hardware'}; 
   return;	
}

## @method get_boot ()
# Gets the value of 'boot' property.
#
# @retval boot - The current value of the field.
# Boot configuration.
#
# Info#
sub get_boot {
   my ($self, %args) = @_;
   return $self->{'boot'}; 	
}

## @method set_boot ()
# Sets the given value for 'boot' property.
# 
# @param boot  - New value for the field.
# Boot configuration.
#
sub set_boot {
   my ($self, %args) = @_;
   $self->{'boot'} = $args{'boot'}; 
   return;	
}

## @method get_boot_devices ()
# Gets the value of 'boot_devices' property.
#
# @retval boot_devices - The current value of the field.
# Boot device configuration. If the  *list*  has no entries, a server-specific default
#     boot sequence is used.
#
# List#
sub get_boot_devices {
   my ($self, %args) = @_;
   return $self->{'boot_devices'}; 	
}

## @method set_boot_devices ()
# Sets the given value for 'boot_devices' property.
# 
# @param boot_devices  - New value for the field.
# Boot device configuration. If the  *list*  has no entries, a server-specific default
#     boot sequence is used.
#
sub set_boot_devices {
   my ($self, %args) = @_;
   $self->{'boot_devices'} = $args{'boot_devices'}; 
   return;	
}

## @method get_cpu ()
# Gets the value of 'cpu' property.
#
# @retval cpu - The current value of the field.
# CPU configuration.
#
# Info#
sub get_cpu {
   my ($self, %args) = @_;
   return $self->{'cpu'}; 	
}

## @method set_cpu ()
# Sets the given value for 'cpu' property.
# 
# @param cpu  - New value for the field.
# CPU configuration.
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
# Memory configuration.
#
# Info#
sub get_memory {
   my ($self, %args) = @_;
   return $self->{'memory'}; 	
}

## @method set_memory ()
# Sets the given value for 'memory' property.
# 
# @param memory  - New value for the field.
# Memory configuration.
#
sub set_memory {
   my ($self, %args) = @_;
   $self->{'memory'} = $args{'memory'}; 
   return;	
}

## @method get_disks ()
# Gets the value of 'disks' property.
#
# @retval disks - The current value of the field.
# List of disks.
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
# List of disks.
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
# List of Ethernet adapters.
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
# List of Ethernet adapters.
#
sub set_nics {
   my ($self, %args) = @_;
   $self->{'nics'} = $args{'nics'}; 
   return;	
}

## @method get_cdroms ()
# Gets the value of 'cdroms' property.
#
# @retval cdroms - The current value of the field.
# List of CD-ROMs.
#
# Map#
sub get_cdroms {
   my ($self, %args) = @_;
   return $self->{'cdroms'}; 	
}

## @method set_cdroms ()
# Sets the given value for 'cdroms' property.
# 
# @param cdroms  - New value for the field.
# List of CD-ROMs.
#
sub set_cdroms {
   my ($self, %args) = @_;
   $self->{'cdroms'} = $args{'cdroms'}; 
   return;	
}

## @method get_floppies ()
# Gets the value of 'floppies' property.
#
# @retval floppies - The current value of the field.
# List of floppy drives.
#
# Map#
sub get_floppies {
   my ($self, %args) = @_;
   return $self->{'floppies'}; 	
}

## @method set_floppies ()
# Sets the given value for 'floppies' property.
# 
# @param floppies  - New value for the field.
# List of floppy drives.
#
sub set_floppies {
   my ($self, %args) = @_;
   $self->{'floppies'} = $args{'floppies'}; 
   return;	
}

## @method get_parallel_ports ()
# Gets the value of 'parallel_ports' property.
#
# @retval parallel_ports - The current value of the field.
# List of parallel ports.
#
# Map#
sub get_parallel_ports {
   my ($self, %args) = @_;
   return $self->{'parallel_ports'}; 	
}

## @method set_parallel_ports ()
# Sets the given value for 'parallel_ports' property.
# 
# @param parallel_ports  - New value for the field.
# List of parallel ports.
#
sub set_parallel_ports {
   my ($self, %args) = @_;
   $self->{'parallel_ports'} = $args{'parallel_ports'}; 
   return;	
}

## @method get_serial_ports ()
# Gets the value of 'serial_ports' property.
#
# @retval serial_ports - The current value of the field.
# List of serial ports.
#
# Map#
sub get_serial_ports {
   my ($self, %args) = @_;
   return $self->{'serial_ports'}; 	
}

## @method set_serial_ports ()
# Sets the given value for 'serial_ports' property.
# 
# @param serial_ports  - New value for the field.
# List of serial ports.
#
sub set_serial_ports {
   my ($self, %args) = @_;
   $self->{'serial_ports'} = $args{'serial_ports'}; 
   return;	
}

## @method get_sata_adapters ()
# Gets the value of 'sata_adapters' property.
#
# @retval sata_adapters - The current value of the field.
# List of SATA adapters.
#
# Map#
sub get_sata_adapters {
   my ($self, %args) = @_;
   return $self->{'sata_adapters'}; 	
}

## @method set_sata_adapters ()
# Sets the given value for 'sata_adapters' property.
# 
# @param sata_adapters  - New value for the field.
# List of SATA adapters.
#
sub set_sata_adapters {
   my ($self, %args) = @_;
   $self->{'sata_adapters'} = $args{'sata_adapters'}; 
   return;	
}

## @method get_scsi_adapters ()
# Gets the value of 'scsi_adapters' property.
#
# @retval scsi_adapters - The current value of the field.
# List of SCSI adapters.
#
# Map#
sub get_scsi_adapters {
   my ($self, %args) = @_;
   return $self->{'scsi_adapters'}; 	
}

## @method set_scsi_adapters ()
# Sets the given value for 'scsi_adapters' property.
# 
# @param scsi_adapters  - New value for the field.
# List of SCSI adapters.
#
sub set_scsi_adapters {
   my ($self, %args) = @_;
   $self->{'scsi_adapters'} = $args{'scsi_adapters'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::InstantClonePlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::VM::InstantClonePlacementSpec``   *class*  contains
#     information used to place an InstantClone of a virtual machine onto resources within
#     the vCenter inventory. This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::VM::InstantClonePlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::InstantClonePlacementSpec structure
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
   $self->{datastore} = $args{'datastore'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::InstantClonePlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.instant_clone_placement_spec');
   $self->set_binding_field('key' => 'folder', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'resource_pool', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_folder ()
# Gets the value of 'folder' property.
#
# @retval folder - The current value of the field.
# Virtual machine folder into which the InstantCloned virtual machine should be placed.
#     This  *field*  was added in vSphere API 6.7.1.
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
# Virtual machine folder into which the InstantCloned virtual machine should be placed.
#     This  *field*  was added in vSphere API 6.7.1.
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
# Resource pool into which the InstantCloned virtual machine should be placed. This 
#     *field*  was added in vSphere API 6.7.1.
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
# Resource pool into which the InstantCloned virtual machine should be placed. This 
#     *field*  was added in vSphere API 6.7.1.
#
sub set_resource_pool {
   my ($self, %args) = @_;
   $self->{'resource_pool'} = $args{'resource_pool'}; 
   return;	
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Datastore on which the InstantCloned virtual machine&apos;s configuration state should
#     be stored. This datastore will also be used for any virtual disks that are created as
#     part of the virtual machine InstantClone operation. This  *field*  was added in
#     vSphere API 6.7.1.
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
# Datastore on which the InstantCloned virtual machine&apos;s configuration state should
#     be stored. This datastore will also be used for any virtual disks that are created as
#     part of the virtual machine InstantClone operation. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::InstantCloneSpec
#
#
# Document-based InstantClone spec. This  *class*  was added in vSphere API 6.7.1.

package Com::Vmware::Vcenter::VM::InstantCloneSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::InstantCloneSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{source} = $args{'source'};
   $self->{name} = $args{'name'};
   $self->{placement} = $args{'placement'};
   $self->{nics_to_update} = $args{'nics_to_update'};
   $self->{disconnect_all_nics} = $args{'disconnect_all_nics'};
   $self->{parallel_ports_to_update} = $args{'parallel_ports_to_update'};
   $self->{serial_ports_to_update} = $args{'serial_ports_to_update'};
   $self->{bios_uuid} = $args{'bios_uuid'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::InstantCloneSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.instant_clone_spec');
   $self->set_binding_field('key' => 'source', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'VM::InstantClonePlacementSpec')));
   $self->set_binding_field('key' => 'nics_to_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Ethernet::UpdateSpec')})))));
   $self->set_binding_field('key' => 'disconnect_all_nics', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::BooleanType()));
   $self->set_binding_field('key' => 'parallel_ports_to_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Parallel::UpdateSpec')})))));
   $self->set_binding_field('key' => 'serial_ports_to_update', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm::Hardware', 'type_name' => 'Serial::UpdateSpec')})))));
   $self->set_binding_field('key' => 'bios_uuid', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_source ()
# Gets the value of 'source' property.
#
# @retval source - The current value of the field.
# Virtual machine to InstantClone from. This  *field*  was added in vSphere API 6.7.1.
#
# ID#
sub get_source {
   my ($self, %args) = @_;
   return $self->{'source'}; 	
}

## @method set_source ()
# Sets the given value for 'source' property.
# 
# @param source  - New value for the field.
# Virtual machine to InstantClone from. This  *field*  was added in vSphere API 6.7.1.
#
sub set_source {
   my ($self, %args) = @_;
   $self->{'source'} = $args{'source'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the new virtual machine. This  *field*  was added in vSphere API 6.7.1.
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
# Name of the new virtual machine. This  *field*  was added in vSphere API 6.7.1.
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
# Virtual machine placement information. This  *field*  was added in vSphere API 6.7.1.
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
# Virtual machine placement information. This  *field*  was added in vSphere API 6.7.1.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}

## @method get_nics_to_update ()
# Gets the value of 'nics_to_update' property.
#
# @retval nics_to_update - The current value of the field.
# Map of NICs to update. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_nics_to_update {
   my ($self, %args) = @_;
   return $self->{'nics_to_update'}; 	
}

## @method set_nics_to_update ()
# Sets the given value for 'nics_to_update' property.
# 
# @param nics_to_update  - New value for the field.
# Map of NICs to update. This  *field*  was added in vSphere API 6.7.1.
#
sub set_nics_to_update {
   my ($self, %args) = @_;
   $self->{'nics_to_update'} = $args{'nics_to_update'}; 
   return;	
}

## @method get_disconnect_all_nics ()
# Gets the value of 'disconnect_all_nics' property.
#
# @retval disconnect_all_nics - The current value of the field.
# Indicates whether all NICs on the destination virtual machine should be disconnected
#     from the newtwork. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_disconnect_all_nics {
   my ($self, %args) = @_;
   return $self->{'disconnect_all_nics'}; 	
}

## @method set_disconnect_all_nics ()
# Sets the given value for 'disconnect_all_nics' property.
# 
# @param disconnect_all_nics  - New value for the field.
# Indicates whether all NICs on the destination virtual machine should be disconnected
#     from the newtwork. This  *field*  was added in vSphere API 6.7.1.
#
sub set_disconnect_all_nics {
   my ($self, %args) = @_;
   $self->{'disconnect_all_nics'} = $args{'disconnect_all_nics'}; 
   return;	
}

## @method get_parallel_ports_to_update ()
# Gets the value of 'parallel_ports_to_update' property.
#
# @retval parallel_ports_to_update - The current value of the field.
# Map of parallel ports to Update. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_parallel_ports_to_update {
   my ($self, %args) = @_;
   return $self->{'parallel_ports_to_update'}; 	
}

## @method set_parallel_ports_to_update ()
# Sets the given value for 'parallel_ports_to_update' property.
# 
# @param parallel_ports_to_update  - New value for the field.
# Map of parallel ports to Update. This  *field*  was added in vSphere API 6.7.1.
#
sub set_parallel_ports_to_update {
   my ($self, %args) = @_;
   $self->{'parallel_ports_to_update'} = $args{'parallel_ports_to_update'}; 
   return;	
}

## @method get_serial_ports_to_update ()
# Gets the value of 'serial_ports_to_update' property.
#
# @retval serial_ports_to_update - The current value of the field.
# Map of serial ports to Update. This  *field*  was added in vSphere API 6.7.1.
#
# Optional#
sub get_serial_ports_to_update {
   my ($self, %args) = @_;
   return $self->{'serial_ports_to_update'}; 	
}

## @method set_serial_ports_to_update ()
# Sets the given value for 'serial_ports_to_update' property.
# 
# @param serial_ports_to_update  - New value for the field.
# Map of serial ports to Update. This  *field*  was added in vSphere API 6.7.1.
#
sub set_serial_ports_to_update {
   my ($self, %args) = @_;
   $self->{'serial_ports_to_update'} = $args{'serial_ports_to_update'}; 
   return;	
}

## @method get_bios_uuid ()
# Gets the value of 'bios_uuid' property.
#
# @retval bios_uuid - The current value of the field.
# 128-bit SMBIOS UUID of a virtual machine represented as a hexadecimal string in
#     &quot;12345678-abcd-1234-cdef-123456789abc&quot; format. This  *field*  was added in
#     vSphere API 6.7.1.
#
# Optional#
sub get_bios_uuid {
   my ($self, %args) = @_;
   return $self->{'bios_uuid'}; 	
}

## @method set_bios_uuid ()
# Sets the given value for 'bios_uuid' property.
# 
# @param bios_uuid  - New value for the field.
# 128-bit SMBIOS UUID of a virtual machine represented as a hexadecimal string in
#     &quot;12345678-abcd-1234-cdef-123456789abc&quot; format. This  *field*  was added in
#     vSphere API 6.7.1.
#
sub set_bios_uuid {
   my ($self, %args) = @_;
   $self->{'bios_uuid'} = $args{'bios_uuid'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::FilterSpec
#
#
# The  ``Com::Vmware::Vcenter::VM::FilterSpec``   *class*  contains  *fields*  used to
#     filter the results when listing virtual machines (see 
#     :func:`Com::Vmware::Vcenter::VM.list` ). If multiple  *fields*  are specified, only
#     virtual machines matching all of the  *fields*  match the filter.

package Com::Vmware::Vcenter::VM::FilterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::FilterSpec structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{vms} = $args{'vms'};
   $self->{names} = $args{'names'};
   $self->{folders} = $args{'folders'};
   $self->{datacenters} = $args{'datacenters'};
   $self->{hosts} = $args{'hosts'};
   $self->{clusters} = $args{'clusters'};
   $self->{resource_pools} = $args{'resource_pools'};
   $self->{power_states} = $args{'power_states'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::FilterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.filter_spec');
   $self->set_binding_field('key' => 'vms', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'names', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'folders', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'datacenters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'hosts', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'clusters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'resource_pools', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()))));
   $self->set_binding_field('key' => 'power_states', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::SetType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Power::State')))));
   bless $self, $class;
   return $self;
}

## @method get_vms ()
# Gets the value of 'vms' property.
#
# @retval vms - The current value of the field.
# Identifiers of virtual machines that can match the filter.
#
# Optional#
sub get_vms {
   my ($self, %args) = @_;
   return $self->{'vms'}; 	
}

## @method set_vms ()
# Sets the given value for 'vms' property.
# 
# @param vms  - New value for the field.
# Identifiers of virtual machines that can match the filter.
#
sub set_vms {
   my ($self, %args) = @_;
   $self->{'vms'} = $args{'vms'}; 
   return;	
}

## @method get_names ()
# Gets the value of 'names' property.
#
# @retval names - The current value of the field.
# Names that virtual machines must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::VM::Info.name` ).
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
# Names that virtual machines must have to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::VM::Info.name` ).
#
sub set_names {
   my ($self, %args) = @_;
   $self->{'names'} = $args{'names'}; 
   return;	
}

## @method get_folders ()
# Gets the value of 'folders' property.
#
# @retval folders - The current value of the field.
# Folders that must contain the virtual machine for the virtual machine to match the
#     filter.
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
# Folders that must contain the virtual machine for the virtual machine to match the
#     filter.
#
sub set_folders {
   my ($self, %args) = @_;
   $self->{'folders'} = $args{'folders'}; 
   return;	
}

## @method get_datacenters ()
# Gets the value of 'datacenters' property.
#
# @retval datacenters - The current value of the field.
# Datacenters that must contain the virtual machine for the virtual machine to match the
#     filter.
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
# Datacenters that must contain the virtual machine for the virtual machine to match the
#     filter.
#
sub set_datacenters {
   my ($self, %args) = @_;
   $self->{'datacenters'} = $args{'datacenters'}; 
   return;	
}

## @method get_hosts ()
# Gets the value of 'hosts' property.
#
# @retval hosts - The current value of the field.
# Hosts that must contain the virtual machine for the virtual machine to match the
#     filter.
#
# Optional#
sub get_hosts {
   my ($self, %args) = @_;
   return $self->{'hosts'}; 	
}

## @method set_hosts ()
# Sets the given value for 'hosts' property.
# 
# @param hosts  - New value for the field.
# Hosts that must contain the virtual machine for the virtual machine to match the
#     filter.
#
sub set_hosts {
   my ($self, %args) = @_;
   $self->{'hosts'} = $args{'hosts'}; 
   return;	
}

## @method get_clusters ()
# Gets the value of 'clusters' property.
#
# @retval clusters - The current value of the field.
# Clusters that must contain the virtual machine for the virtual machine to match the
#     filter.
#
# Optional#
sub get_clusters {
   my ($self, %args) = @_;
   return $self->{'clusters'}; 	
}

## @method set_clusters ()
# Sets the given value for 'clusters' property.
# 
# @param clusters  - New value for the field.
# Clusters that must contain the virtual machine for the virtual machine to match the
#     filter.
#
sub set_clusters {
   my ($self, %args) = @_;
   $self->{'clusters'} = $args{'clusters'}; 
   return;	
}

## @method get_resource_pools ()
# Gets the value of 'resource_pools' property.
#
# @retval resource_pools - The current value of the field.
# Resource pools that must contain the virtual machine for the virtual machine to match
#     the filter.
#
# Optional#
sub get_resource_pools {
   my ($self, %args) = @_;
   return $self->{'resource_pools'}; 	
}

## @method set_resource_pools ()
# Sets the given value for 'resource_pools' property.
# 
# @param resource_pools  - New value for the field.
# Resource pools that must contain the virtual machine for the virtual machine to match
#     the filter.
#
sub set_resource_pools {
   my ($self, %args) = @_;
   $self->{'resource_pools'} = $args{'resource_pools'}; 
   return;	
}

## @method get_power_states ()
# Gets the value of 'power_states' property.
#
# @retval power_states - The current value of the field.
# Power states that a virtual machine must be in to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Vm::Power::Info.state` .
#
# Optional#
sub get_power_states {
   my ($self, %args) = @_;
   return $self->{'power_states'}; 	
}

## @method set_power_states ()
# Sets the given value for 'power_states' property.
# 
# @param power_states  - New value for the field.
# Power states that a virtual machine must be in to match the filter (see 
#     :attr:`Com::Vmware::Vcenter::Vm::Power::Info.state` .
#
sub set_power_states {
   my ($self, %args) = @_;
   $self->{'power_states'} = $args{'power_states'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::Summary
#
#
# The  ``Com::Vmware::Vcenter::VM::Summary``   *class*  contains commonly used
#     information about a virtual machine.

package Com::Vmware::Vcenter::VM::Summary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::Summary structure
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
   $self->{name} = $args{'name'};
   $self->{power_state} = $args{'power_state'};
   $self->{cpu_count} = $args{'cpu_count'};
   $self->{memory_size_MiB} = $args{'memory_size_MiB'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::Summary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.summary');
   $self->set_binding_field('key' => 'vm', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'power_state', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Power::State'));
   $self->set_binding_field('key' => 'cpu_count', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   $self->set_binding_field('key' => 'memory_size_MiB', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()));
   bless $self, $class;
   return $self;
}

## @method get_vm ()
# Gets the value of 'vm' property.
#
# @retval vm - The current value of the field.
# Identifier of the virtual machine.
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
# Identifier of the virtual machine.
#
sub set_vm {
   my ($self, %args) = @_;
   $self->{'vm'} = $args{'vm'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name of the Virtual machine.
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
# Name of the Virtual machine.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_power_state ()
# Gets the value of 'power_state' property.
#
# @retval power_state - The current value of the field.
# Power state of the virtual machine.
#
# State#
sub get_power_state {
   my ($self, %args) = @_;
   return $self->{'power_state'}; 	
}

## @method set_power_state ()
# Sets the given value for 'power_state' property.
# 
# @param power_state  - New value for the field.
# Power state of the virtual machine.
#
sub set_power_state {
   my ($self, %args) = @_;
   $self->{'power_state'} = $args{'power_state'}; 
   return;	
}

## @method get_cpu_count ()
# Gets the value of 'cpu_count' property.
#
# @retval cpu_count - The current value of the field.
# Number of CPU cores.
#
# Optional#
sub get_cpu_count {
   my ($self, %args) = @_;
   return $self->{'cpu_count'}; 	
}

## @method set_cpu_count ()
# Sets the given value for 'cpu_count' property.
# 
# @param cpu_count  - New value for the field.
# Number of CPU cores.
#
sub set_cpu_count {
   my ($self, %args) = @_;
   $self->{'cpu_count'} = $args{'cpu_count'}; 
   return;	
}

## @method get_memory_size_MiB ()
# Gets the value of 'memory_size_MiB' property.
#
# @retval memory_size_MiB - The current value of the field.
# Memory size in mebibytes.
#
# Optional#
sub get_memory_size_MiB {
   my ($self, %args) = @_;
   return $self->{'memory_size_MiB'}; 	
}

## @method set_memory_size_MiB ()
# Sets the given value for 'memory_size_MiB' property.
# 
# @param memory_size_MiB  - New value for the field.
# Memory size in mebibytes.
#
sub set_memory_size_MiB {
   my ($self, %args) = @_;
   $self->{'memory_size_MiB'} = $args{'memory_size_MiB'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::RegisterPlacementSpec
#
#
# The  ``Com::Vmware::Vcenter::VM::RegisterPlacementSpec``   *class*  contains
#     information used to place a virtual machine, created from existing virtual machine
#     files on storage, onto resources within the vCenter inventory. This  *class*  was
#     added in vSphere API 6.8.7.

package Com::Vmware::Vcenter::VM::RegisterPlacementSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::RegisterPlacementSpec structure
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

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::RegisterPlacementSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.register_placement_spec');
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
# Virtual machine folder into which the virtual machine should be placed.
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
# Virtual machine folder into which the virtual machine should be placed.
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
# Resource pool into which the virtual machine should be placed.
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
# Resource pool into which the virtual machine should be placed.
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
# Host onto which the virtual machine should be placed. <p>
# 
# If  ``host``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``host`` . </p>
# 
# <p>
# 
# If  ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
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
# Host onto which the virtual machine should be placed. <p>
# 
# If  ``host``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``host`` . </p>
# 
# <p>
# 
# If  ``host``  and  ``cluster``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
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
# Cluster into which the virtual machine should be placed. <p>
# 
# If  ``cluster``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``cluster`` . </p>
# 
# <p>
# 
# If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
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
# Cluster into which the virtual machine should be placed. <p>
# 
# If  ``cluster``  and  ``resourcePool``  are both specified,  ``resourcePool``  must
#     belong to  ``cluster`` . </p>
# 
# <p>
# 
# If  ``cluster``  and  ``host``  are both specified,  ``host``  must be a member of 
#     ``cluster`` .</p>
#
sub set_cluster {
   my ($self, %args) = @_;
   $self->{'cluster'} = $args{'cluster'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::VM::RegisterSpec
#
#
# The  ``Com::Vmware::Vcenter::VM::RegisterSpec``   *class*  contains information used
#     to create a virtual machine from existing virtual machine files on storage. <p>
# 
# The location of the virtual machine files on storage must be specified by providing
#     either  :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.datastore`  and 
#     :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.path`  or by providing 
#     :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.datastore_path` . If 
#     :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.datastore`  and 
#     :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.path`  are  *set* , 
#     :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.datastore_path`  must be  *null* , and
#     if  :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.datastore_path`  is  *set* , 
#     :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.datastore`  and 
#     :attr:`Com::Vmware::Vcenter::VM::RegisterSpec.path`  must be  *null* .</p>
# 
# . This  *class*  was added in vSphere API 6.8.7.

package Com::Vmware::Vcenter::VM::RegisterSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::VM::RegisterSpec structure
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
   $self->{path} = $args{'path'};
   $self->{datastore_path} = $args{'datastore_path'};
   $self->{name} = $args{'name'};
   $self->{placement} = $args{'placement'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::VM::RegisterSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.VM.register_spec');
   $self->set_binding_field('key' => 'datastore', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'datastore_path', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'placement', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter', 'type_name' => 'VM::RegisterPlacementSpec')));
   bless $self, $class;
   return $self;
}

## @method get_datastore ()
# Gets the value of 'datastore' property.
#
# @retval datastore - The current value of the field.
# Identifier of the datastore on which the virtual machine&apos;s configuration state is
#     stored. This  *field*  was added in vSphere API 6.8.7.
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
# Identifier of the datastore on which the virtual machine&apos;s configuration state is
#     stored. This  *field*  was added in vSphere API 6.8.7.
#
sub set_datastore {
   my ($self, %args) = @_;
   $self->{'datastore'} = $args{'datastore'}; 
   return;	
}

## @method get_path ()
# Gets the value of 'path' property.
#
# @retval path - The current value of the field.
# Path to the virtual machine&apos;s configuration file on the datastore corresponding
#     to {@link #datastore). This  *field*  was added in vSphere API 6.8.7.
#
# Optional#
sub get_path {
   my ($self, %args) = @_;
   return $self->{'path'}; 	
}

## @method set_path ()
# Sets the given value for 'path' property.
# 
# @param path  - New value for the field.
# Path to the virtual machine&apos;s configuration file on the datastore corresponding
#     to {@link #datastore). This  *field*  was added in vSphere API 6.8.7.
#
sub set_path {
   my ($self, %args) = @_;
   $self->{'path'} = $args{'path'}; 
   return;	
}

## @method get_datastore_path ()
# Gets the value of 'datastore_path' property.
#
# @retval datastore_path - The current value of the field.
# Datastore path for the virtual machine&apos;s configuration file in the format
#     &quot;[datastore name] path&quot;. For example &quot;[storage1]
#     Test-VM/Test-VM.vmx&quot;. This  *field*  was added in vSphere API 6.8.7.
#
# Optional#
sub get_datastore_path {
   my ($self, %args) = @_;
   return $self->{'datastore_path'}; 	
}

## @method set_datastore_path ()
# Sets the given value for 'datastore_path' property.
# 
# @param datastore_path  - New value for the field.
# Datastore path for the virtual machine&apos;s configuration file in the format
#     &quot;[datastore name] path&quot;. For example &quot;[storage1]
#     Test-VM/Test-VM.vmx&quot;. This  *field*  was added in vSphere API 6.8.7.
#
sub set_datastore_path {
   my ($self, %args) = @_;
   $self->{'datastore_path'} = $args{'datastore_path'}; 
   return;	
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Virtual machine name. This  *field*  was added in vSphere API 6.8.7.
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
# Virtual machine name. This  *field*  was added in vSphere API 6.8.7.
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
# Virtual machine placement information. This  *field*  was added in vSphere API 6.8.7.
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
# Virtual machine placement information. This  *field*  was added in vSphere API 6.8.7.
#
sub set_placement {
   my ($self, %args) = @_;
   $self->{'placement'} = $args{'placement'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::VM service
#########################################################################################
