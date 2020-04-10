########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LibraryItem.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

## @class Com::Vmware::Vcenter::Ovf::LibraryItem
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem``   *interface*  provides  *methods*  to
#     deploy virtual machines and virtual appliances from library items containing Open
#     Virtualization Format (OVF) packages in content library, as well as  *methods*  to
#     create library items in content library from virtual machines and virtual appliances.
#     <p>
# 
#  To deploy a virtual machine or a virtual appliance from a library item: </p>
# 
# <ol>
# <li> Create a  class Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget  to
#     specify the target deployment type and target deployment designation. </li>
# <li> Create a  class
#     Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec  to specify the
#     parameters for the target deployment. </li>
# <li> Use the  ``deploy``   *method*  with the created target and parameter
#     specifications, along with the identifier of the specified source content library
#     item. See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy` . </li>
#  </ol> <p>
# 
# </p>
# 
#  <p>
# 
# To create a library item in content library from a virtual machine or virtual
#     appliance: </p>
# 
# <ol>
# <li> Create a  class Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity  to
#     specify the source virtual machine or virtual appliance to be used as the OVF template
#     source. </li>
# <li> Create a  class Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget  to specify
#     the target library and library item. </li>
# <li> Create a  class Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec  to specify
#     the settings for the OVF package to be created.</li>
# <li> Use the  ``create``   *method*  with the created target and parameter
#     specifications, along with the specified source entity. See 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.create` . </li>
#  </ol> <p>
# 
# </p>
#
#
# Constant Array of String::DEPLOYABLE #
#The types of resources that can be created by deploying an OVF package and can be captured
# to create a library item using the  ``Com::Vmware::Vcenter::Ovf::LibraryItem``  
# *interface* .

package Com::Vmware::Vcenter::Ovf::LibraryItem;

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
use Com::Vmware::Vcenter::Ovf::LibraryItemStub;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiInterface);

#
# Identifier of the service
#
use constant _VAPI_SERVICE_ID => 'com.vmware.vcenter.ovf.library_item';


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

## @method deploy ()
# Deploys an OVF package stored in content library to a newly created virtual machine or
# virtual appliance. <p>
# 
# This  *method*  deploys an OVF package which is stored in the library item specified by 
# ``ovf_library_item_id`` . It uses the deployment specification in  ``deployment_spec``  to
# deploy the OVF package to the location specified by  ``target`` . </p>
#
# Note:
# Privileges required for this operation are System.Read, VApp.Import.
#
# @param client_token [OPTIONAL] Client-generated token used to retry a request if the client fails to get a response
#     from the server. If the original request succeeded, the result of that request will be
#     returned, otherwise the operation will be retried.
# If  *null* , the server will create a token.
# . The value must be String or None.
#
# @param ovf_library_item_id [REQUIRED]  Identifier of the content library item containing the OVF package to be deployed.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param target [REQUIRED]  Specification of the deployment target.
# . The value must be Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.
#
# @param deployment_spec [REQUIRED]  Specification of how the OVF package should be deployed to the target.
# . The value must be Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.
#
# @retval 
# Information about the success or failure of the  *method* , along with the details of
#     the result or failure.
# The return type will be Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if  ``target``  contains invalid arguments.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
# if  ``deployment_spec``  contains invalid arguments or has  *fields*  that are
#     inconsistent with  ``target`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item specified by  ``ovf_library_item_id``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if any resource specified by a  *field*  of the  class
#     Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget   *class* , specified by 
#     ``target`` , does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if there was an error accessing the OVF package stored in the library item specified
#     by  ``ovf_library_item_id`` .
#
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized 
#  if you do not have all of the privileges described as follows : <ul>
# <li> *Method*  execution requires VirtualMachine.Config.AddNewDisk if the OVF
#     descriptor has a disk drive (type 17) section. </li>
# <li> *Method*  execution requires VirtualMachine.Config.AdvancedConfig if the OVF
#     descriptor has an ExtraConfig section. </li>
# <li> *Method*  execution requires Extension.Register for specified resource group if
#     the OVF descriptor has a vServiceDependency section. </li>
# <li> *Method*  execution requires Network.Assign for target network if specified.
#     </li>
# <li> *Method*  execution requires Datastore.AllocateSpace for target datastore if
#     specified. </li>
#  </ul>
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``ovf_library_item_id``  requires  ``System.Read`` . </li>
# <li> The resource  ``HostSystem``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.host_id`  requires 
#     ``System.Read`` . </li>
# <li> The resource  ``Network``  referenced by the  *map*  value of  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.network_mappings`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``StorageProfile``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.storage_profile_id`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``Datastore``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.default_datastore_id`
#      requires  ``System.Read`` . </li>
# <li> The resource  ``ResourcePool``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.resource_pool_id` 
#     requires  ``VApp.Import`` . </li>
# <li> The resource  ``Folder``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.folder_id`  requires 
#     ``VApp.Import`` . </li>
# </ul>
#
sub deploy {
   my ($self, %args) = @_;
   my $client_token = $args {client_token};
   my $ovf_library_item_id = $args {ovf_library_item_id};
   my $target = $args {target};
   my $deployment_spec = $args {deployment_spec};

   $self->validate_args (method_name => 'deploy',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'deploy',
                         method_args => \%args);
}

## @method filter ()
# Queries an OVF package stored in content library to retrieve information to use when
# deploying the package. See  :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy` . <p>
# 
# This  *method*  retrieves information from the descriptor of the OVF package stored in the
# library item specified by  ``ovf_library_item_id`` . The information returned by the 
# *method*  can be used to populate the deployment specification (see  class
# Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec  when deploying the OVF
# package to the deployment target specified by  ``target`` . </p>
#
# Note:
# Privileges required for this operation are System.Read.
#
# @param ovf_library_item_id [REQUIRED]  Identifier of the content library item containing the OVF package to query.
# The value must be an identifier for the resource type
#     getQualifiedName(com.vmware.content.library.Item).
# . The value must be str.
#
# @param target [REQUIRED]  Specification of the deployment target.
# . The value must be Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.
#
# @retval 
# Information that can be used to populate the deployment specification (see  class
#     Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec ) when deploying
#     the OVF package to the deployment target specified by  ``target`` .
# The return type will be Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if  ``target``  contains invalid arguments.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library item specified by  ``ovf_library_item_id``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
# if any resource specified by a  *field*  of the  class
#     Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget   *class* , specified by 
#     ``target`` , does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if there was an error accessing the OVF package at the specified 
#     ``ovf_library_item_id`` .
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *parameter*
#       ``ovf_library_item_id``  requires  ``System.Read`` . </li>
# <li> The resource  ``ResourcePool``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.resource_pool_id` 
#     requires  ``System.Read`` . </li>
# <li> The resource  ``HostSystem``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.host_id`  requires 
#     ``System.Read`` . </li>
# <li> The resource  ``Folder``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.folder_id`  requires 
#     ``System.Read`` . </li>
# </ul>
#
sub filter {
   my ($self, %args) = @_;
   my $ovf_library_item_id = $args {ovf_library_item_id};
   my $target = $args {target};

   $self->validate_args (method_name => 'filter',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'filter',
                         method_args => \%args);
}

## @method create ()
# Creates a library item in content library from a virtual machine or virtual appliance. <p>
# 
# This  *method*  creates a library item in content library whose content is an OVF package
# derived from a source virtual machine or virtual appliance, using the supplied create
# specification. The OVF package may be stored as in a newly created library item or in an
# in an existing library item. For an existing library item whose content is updated by this
# *method* , the original content is overwritten. Meta data such as name and description is
# not updated for the exisitng library item. </p>
#
# Note:
# Privileges required for this operation are System.Read, VApp.Export, ContentLibrary.AddLibraryItem.
#
# @param client_token [OPTIONAL] Client-generated token used to retry a request if the client fails to get a response
#     from the server. If the original request succeeded, the result of that request will be
#     returned, otherwise the operation will be retried.
# If  *null* , the server will create a token.
# . The value must be String or None.
#
# @param source [REQUIRED]  Identifier of the virtual machine or virtual appliance to use as the source.
# . The value must be Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity.
#
# @param target [REQUIRED]  Specification of the target content library and library item.
# . The value must be Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget.
#
# @param create_spec [REQUIRED] Information used to create the OVF package from the source virtual machine or virtual
#     appliance.
# . The value must be Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec.
#
# @retval 
# Information about the success or failure of the  *method* , along with the details of
#     the result or failure.
# The return type will be Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult
#
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if  ``create_spec``  contains invalid arguments.
# @throw Com::Vmware::Vapi::Std::Errors::InvalidArgument 
#  if  ``source``  describes an unexpected resource type.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the virtual machine or virtual appliance specified by  ``source``  does not exist.
# @throw Com::Vmware::Vapi::Std::Errors::NotFound 
#  if the library or library item specified by  ``target``  does not exist.
#
# @throw Com::Vmware::Vapi::Std::Errors::NotAllowedInCurrentState 
# if the operation cannot be performed because of the specified virtual machine or
#     virtual appliance&apos;s current state. For example, if the virtual machine
#     configuration information is not available, or if the virtual appliance is running.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceInaccessible 
# if there was an error accessing a file from the source virtual machine or virtual
#     appliance.
#
# @throw Com::Vmware::Vapi::Std::Errors::ResourceBusy 
#  if the specified virtual machine or virtual appliance is busy.
# @throw Com::Vmware::Vapi::Std::Errors::Unauthorized
# if you do not have all of the privileges described as follows: <ul>
#  <li>  *Method*  execution requires  ``System.Read`` . </li>
# <li> The resource  ``null``  or  ``null``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity.id`  requires 
#     ``VApp.Export`` . </li>
# <li> The resource  ``com.vmware.content.Library``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget.library_id`  requires 
#     ``ContentLibrary.AddLibraryItem`` . </li>
# <li> The resource  ``com.vmware.content.library.Item``  referenced by the  *field*  
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget.library_item_id`  requires
#      ``System.Read`` . </li>
# </ul>
#
sub create {
   my ($self, %args) = @_;
   my $client_token = $args {client_token};
   my $source = $args {source};
   my $target = $args {target};
   my $create_spec = $args {create_spec};

   $self->validate_args (method_name => 'create',
                         method_args => \%args);
   
   return $self->invoke (method_name => 'create',
                         method_args => \%args);
}

1;

#########################################################################################
# Begins enumerations for the Com::Vmware::Vcenter::Ovf::LibraryItem service
#########################################################################################



#########################################################################################
# Ends enumerations for the Com::Vmware::Vcenter::Ovf::LibraryItem service
#########################################################################################

#########################################################################################
# Begins structures for the Com::Vmware::Vcenter::Ovf::LibraryItem service
#########################################################################################

## @class Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity``   *class* 
#     describes the resource created by a deployment, or the source resource from which
#     library item can be created, by specifying its resource type and resource identifier.

package Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{id} = $args{'id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::DeployableIdentity');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.deployable_identity');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of the deployable resource.
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
# Type of the deployable resource.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_id ()
# Gets the value of 'id' property.
#
# @retval id - The current value of the field.
# Identifier of the deployable resource.
#
# ID#
sub get_id {
   my ($self, %args) = @_;
   return $self->{'id'}; 	
}

## @method set_id ()
# Sets the given value for 'id' property.
# 
# @param id  - New value for the field.
# Identifier of the deployable resource.
#
sub set_id {
   my ($self, %args) = @_;
   $self->{'id'} = $args{'id'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec``   *class* 
#     defines the deployment parameters that can be specified for the  ``deploy``   *method*
#     where the deployment target is a resource pool. See 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy` .

package Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec structure
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
   $self->{annotation} = $args{'annotation'};
   $self->{accept_all_EULA} = $args{'accept_all_EULA'};
   $self->{network_mappings} = $args{'network_mappings'};
   $self->{storage_mappings} = $args{'storage_mappings'};
   $self->{storage_provisioning} = $args{'storage_provisioning'};
   $self->{storage_profile_id} = $args{'storage_profile_id'};
   $self->{locale} = $args{'locale'};
   $self->{flags} = $args{'flags'};
   $self->{additional_parameters} = $args{'additional_parameters'};
   $self->{default_datastore_id} = $args{'default_datastore_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.resource_pool_deployment_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'annotation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'accept_all_EULA', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'network_mappings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::StringType()})))));
   $self->set_binding_field('key' => 'storage_mappings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::StorageGroupMapping')})))));
   $self->set_binding_field('key' => 'storage_provisioning', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'DiskProvisioningType')));
   $self->set_binding_field('key' => 'storage_profile_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'locale', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'flags', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'additional_parameters', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::DynamicStructType())));
   $self->set_binding_field('key' => 'default_datastore_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name assigned to the deployed target virtual machine or virtual appliance.
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
# Name assigned to the deployed target virtual machine or virtual appliance.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_annotation ()
# Gets the value of 'annotation' property.
#
# @retval annotation - The current value of the field.
# Annotation assigned to the deployed target virtual machine or virtual appliance.
#
# Optional#
sub get_annotation {
   my ($self, %args) = @_;
   return $self->{'annotation'}; 	
}

## @method set_annotation ()
# Sets the given value for 'annotation' property.
# 
# @param annotation  - New value for the field.
# Annotation assigned to the deployed target virtual machine or virtual appliance.
#
sub set_annotation {
   my ($self, %args) = @_;
   $self->{'annotation'} = $args{'annotation'}; 
   return;	
}

## @method get_accept_all_EULA ()
# Gets the value of 'accept_all_EULA' property.
#
# @retval accept_all_EULA - The current value of the field.
# Whether to accept all End User License Agreements. See 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary.eulas` .
#
# boolean#
sub get_accept_all_EULA {
   my ($self, %args) = @_;
   return $self->{'accept_all_EULA'}; 	
}

## @method set_accept_all_EULA ()
# Sets the given value for 'accept_all_EULA' property.
# 
# @param accept_all_EULA  - New value for the field.
# Whether to accept all End User License Agreements. See 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary.eulas` .
#
sub set_accept_all_EULA {
   my ($self, %args) = @_;
   $self->{'accept_all_EULA'} = $args{'accept_all_EULA'}; 
   return;	
}

## @method get_network_mappings ()
# Gets the value of 'network_mappings' property.
#
# @retval network_mappings - The current value of the field.
# Specification of the target network to use for sections of type ovf:NetworkSection in
#     the OVF descriptor. The key in the  *map*  is the section identifier of the
#     ovf:NetworkSection section in the OVF descriptor and the value is the target network
#     to be used for deployment.
#
# Optional#
sub get_network_mappings {
   my ($self, %args) = @_;
   return $self->{'network_mappings'}; 	
}

## @method set_network_mappings ()
# Sets the given value for 'network_mappings' property.
# 
# @param network_mappings  - New value for the field.
# Specification of the target network to use for sections of type ovf:NetworkSection in
#     the OVF descriptor. The key in the  *map*  is the section identifier of the
#     ovf:NetworkSection section in the OVF descriptor and the value is the target network
#     to be used for deployment.
#
sub set_network_mappings {
   my ($self, %args) = @_;
   $self->{'network_mappings'} = $args{'network_mappings'}; 
   return;	
}

## @method get_storage_mappings ()
# Gets the value of 'storage_mappings' property.
#
# @retval storage_mappings - The current value of the field.
# Specification of the target storage to use for sections of type
#     vmw:StorageGroupSection in the OVF descriptor. The key in the  *map*  is the section
#     identifier of the ovf:StorageGroupSection section in the OVF descriptor and the value
#     is the target storage specification to be used for deployment. See  class
#     Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping .
#
# Optional#
sub get_storage_mappings {
   my ($self, %args) = @_;
   return $self->{'storage_mappings'}; 	
}

## @method set_storage_mappings ()
# Sets the given value for 'storage_mappings' property.
# 
# @param storage_mappings  - New value for the field.
# Specification of the target storage to use for sections of type
#     vmw:StorageGroupSection in the OVF descriptor. The key in the  *map*  is the section
#     identifier of the ovf:StorageGroupSection section in the OVF descriptor and the value
#     is the target storage specification to be used for deployment. See  class
#     Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping .
#
sub set_storage_mappings {
   my ($self, %args) = @_;
   $self->{'storage_mappings'} = $args{'storage_mappings'}; 
   return;	
}

## @method get_storage_provisioning ()
# Gets the value of 'storage_provisioning' property.
#
# @retval storage_provisioning - The current value of the field.
# Default storage provisioning type to use for all sections of type vmw:StorageSection
#     in the OVF descriptor.
#
# Optional#
sub get_storage_provisioning {
   my ($self, %args) = @_;
   return $self->{'storage_provisioning'}; 	
}

## @method set_storage_provisioning ()
# Sets the given value for 'storage_provisioning' property.
# 
# @param storage_provisioning  - New value for the field.
# Default storage provisioning type to use for all sections of type vmw:StorageSection
#     in the OVF descriptor.
#
sub set_storage_provisioning {
   my ($self, %args) = @_;
   $self->{'storage_provisioning'} = $args{'storage_provisioning'}; 
   return;	
}

## @method get_storage_profile_id ()
# Gets the value of 'storage_profile_id' property.
#
# @retval storage_profile_id - The current value of the field.
# Default storage profile to use for all sections of type vmw:StorageSection in the OVF
#     descriptor.
#
# Optional#
sub get_storage_profile_id {
   my ($self, %args) = @_;
   return $self->{'storage_profile_id'}; 	
}

## @method set_storage_profile_id ()
# Sets the given value for 'storage_profile_id' property.
# 
# @param storage_profile_id  - New value for the field.
# Default storage profile to use for all sections of type vmw:StorageSection in the OVF
#     descriptor.
#
sub set_storage_profile_id {
   my ($self, %args) = @_;
   $self->{'storage_profile_id'} = $args{'storage_profile_id'}; 
   return;	
}

## @method get_locale ()
# Gets the value of 'locale' property.
#
# @retval locale - The current value of the field.
# The locale to use for parsing the OVF descriptor.
#
# Optional#
sub get_locale {
   my ($self, %args) = @_;
   return $self->{'locale'}; 	
}

## @method set_locale ()
# Sets the given value for 'locale' property.
# 
# @param locale  - New value for the field.
# The locale to use for parsing the OVF descriptor.
#
sub set_locale {
   my ($self, %args) = @_;
   $self->{'locale'} = $args{'locale'}; 
   return;	
}

## @method get_flags ()
# Gets the value of 'flags' property.
#
# @retval flags - The current value of the field.
# Flags to be use for deployment. The supported flag values can be obtained using 
#     :func:`Com::Vmware::Vcenter::Ovf::ImportFlag.list` .
#
# Optional#
sub get_flags {
   my ($self, %args) = @_;
   return $self->{'flags'}; 	
}

## @method set_flags ()
# Sets the given value for 'flags' property.
# 
# @param flags  - New value for the field.
# Flags to be use for deployment. The supported flag values can be obtained using 
#     :func:`Com::Vmware::Vcenter::Ovf::ImportFlag.list` .
#
sub set_flags {
   my ($self, %args) = @_;
   $self->{'flags'} = $args{'flags'}; 
   return;	
}

## @method get_additional_parameters ()
# Gets the value of 'additional_parameters' property.
#
# @retval additional_parameters - The current value of the field.
# Additional OVF parameters that may be needed for the deployment. Additional OVF
#     parameters may be required by the OVF descriptor of the OVF package in the library
#     item. Examples of OVF parameters that can be specified through this  *field*  include,
#     but are not limited to: <ul>
#  <li> class Com::Vmware::Vcenter::Ovf::DeploymentOptionParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::ExtraConfigParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::IpAllocationParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::PropertyParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::ScaleOutParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::VcenterExtensionParams </li>
#  </ul>
#
# Optional#
sub get_additional_parameters {
   my ($self, %args) = @_;
   return $self->{'additional_parameters'}; 	
}

## @method set_additional_parameters ()
# Sets the given value for 'additional_parameters' property.
# 
# @param additional_parameters  - New value for the field.
# Additional OVF parameters that may be needed for the deployment. Additional OVF
#     parameters may be required by the OVF descriptor of the OVF package in the library
#     item. Examples of OVF parameters that can be specified through this  *field*  include,
#     but are not limited to: <ul>
#  <li> class Com::Vmware::Vcenter::Ovf::DeploymentOptionParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::ExtraConfigParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::IpAllocationParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::PropertyParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::ScaleOutParams </li>
#  <li> class Com::Vmware::Vcenter::Ovf::VcenterExtensionParams </li>
#  </ul>
#
sub set_additional_parameters {
   my ($self, %args) = @_;
   $self->{'additional_parameters'} = $args{'additional_parameters'}; 
   return;	
}

## @method get_default_datastore_id ()
# Gets the value of 'default_datastore_id' property.
#
# @retval default_datastore_id - The current value of the field.
# Default datastore to use for all sections of type vmw:StorageSection in the OVF
#     descriptor.
#
# Optional#
sub get_default_datastore_id {
   my ($self, %args) = @_;
   return $self->{'default_datastore_id'}; 	
}

## @method set_default_datastore_id ()
# Sets the given value for 'default_datastore_id' property.
# 
# @param default_datastore_id  - New value for the field.
# Default datastore to use for all sections of type vmw:StorageSection in the OVF
#     descriptor.
#
sub set_default_datastore_id {
   my ($self, %args) = @_;
   $self->{'default_datastore_id'} = $args{'default_datastore_id'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping``   *class* 
#     defines the storage deployment target and storage provisioning type for a section of
#     type vmw:StorageGroupSection in the OVF descriptor.

package Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping structure
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
               'DATASTORE' => ['datastore_id'],
               'STORAGE_PROFILE' => ['storage_profile_id'],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{datastore_id} = $args{'datastore_id'};
   $self->{storage_profile_id} = $args{'storage_profile_id'};
   $self->{provisioning} = $args{'provisioning'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.storage_group_mapping');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::StorageGroupMapping::Type'));
   $self->set_binding_field('key' => 'datastore_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'storage_profile_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'provisioning', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'DiskProvisioningType')));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# Type of storage deployment target to use for the vmw:StorageGroupSection section. The
#     specified value must be 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type.DATASTORE` 
#     or 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type.STORAGE_PROFILE`
#     .
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
# Type of storage deployment target to use for the vmw:StorageGroupSection section. The
#     specified value must be 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type.DATASTORE` 
#     or 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type.STORAGE_PROFILE`
#     .
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_datastore_id ()
# Gets the value of 'datastore_id' property.
#
# @retval datastore_id - The current value of the field.
# Target datastore to be used for the storage group.
#
# optional#
sub get_datastore_id {
   my ($self, %args) = @_;
   return $self->{'datastore_id'}; 	
}

## @method set_datastore_id ()
# Sets the given value for 'datastore_id' property.
# 
# @param datastore_id  - New value for the field.
# Target datastore to be used for the storage group.
#
sub set_datastore_id {
   my ($self, %args) = @_;
   $self->{'datastore_id'} = $args{'datastore_id'}; 
   return;	
}

## @method get_storage_profile_id ()
# Gets the value of 'storage_profile_id' property.
#
# @retval storage_profile_id - The current value of the field.
# Target storage profile to be used for the storage group.
#
# optional#
sub get_storage_profile_id {
   my ($self, %args) = @_;
   return $self->{'storage_profile_id'}; 	
}

## @method set_storage_profile_id ()
# Sets the given value for 'storage_profile_id' property.
# 
# @param storage_profile_id  - New value for the field.
# Target storage profile to be used for the storage group.
#
sub set_storage_profile_id {
   my ($self, %args) = @_;
   $self->{'storage_profile_id'} = $args{'storage_profile_id'}; 
   return;	
}

## @method get_provisioning ()
# Gets the value of 'provisioning' property.
#
# @retval provisioning - The current value of the field.
# Target provisioning type to use for the storage group.
#
# Optional#
sub get_provisioning {
   my ($self, %args) = @_;
   return $self->{'provisioning'}; 	
}

## @method set_provisioning ()
# Sets the given value for 'provisioning' property.
# 
# @param provisioning  - New value for the field.
# Target provisioning type to use for the storage group.
#
sub set_provisioning {
   my ($self, %args) = @_;
   $self->{'provisioning'} = $args{'provisioning'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type``  
#     *enumerated type*  defines the supported types of storage targets for sections of type
#     vmw:StorageGroupSection in the OVF descriptor.
#
#
#
# Constant Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type::DATASTORE #
#Storage deployment target is a datastore.
#
# Constant Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type::STORAGE_PROFILE #
#Storage deployment target is a storage profile.

package Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type;

use constant {
    DATASTORE =>  'DATASTORE',
    STORAGE_PROFILE =>  'STORAGE_PROFILE',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.ovf.library_item.storage_group_mapping.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::StorageGroupMapping::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo``   *class*  defines the
#     information returned along with the result of a  ``create``  or  ``deploy``   *method*
#      to describe errors, warnings, and informational messages produced by the server.

package Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{errors} = $args{'errors'};
   $self->{warnings} = $args{'warnings'};
   $self->{information} = $args{'information'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::ResultInfo');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.result_info');
   $self->set_binding_field('key' => 'errors', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'OvfError')));
   $self->set_binding_field('key' => 'warnings', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'OvfWarning')));
   $self->set_binding_field('key' => 'information', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'OvfInfo')));
   bless $self, $class;
   return $self;
}

## @method get_errors ()
# Gets the value of 'errors' property.
#
# @retval errors - The current value of the field.
# Errors reported by the  ``create``  or  ``deploy``   *method* . These errors would
#     have prevented the  ``create``  or  ``deploy``   *method*  from completing
#     successfully.
#
# List#
sub get_errors {
   my ($self, %args) = @_;
   return $self->{'errors'}; 	
}

## @method set_errors ()
# Sets the given value for 'errors' property.
# 
# @param errors  - New value for the field.
# Errors reported by the  ``create``  or  ``deploy``   *method* . These errors would
#     have prevented the  ``create``  or  ``deploy``   *method*  from completing
#     successfully.
#
sub set_errors {
   my ($self, %args) = @_;
   $self->{'errors'} = $args{'errors'}; 
   return;	
}

## @method get_warnings ()
# Gets the value of 'warnings' property.
#
# @retval warnings - The current value of the field.
# Warnings reported by the  ``create``  or  ``deploy``   *method* . These warnings would
#     not have prevented the  ``create``  or  ``deploy``   *method*  from completing
#     successfully, but there might be issues that warrant attention.
#
# List#
sub get_warnings {
   my ($self, %args) = @_;
   return $self->{'warnings'}; 	
}

## @method set_warnings ()
# Sets the given value for 'warnings' property.
# 
# @param warnings  - New value for the field.
# Warnings reported by the  ``create``  or  ``deploy``   *method* . These warnings would
#     not have prevented the  ``create``  or  ``deploy``   *method*  from completing
#     successfully, but there might be issues that warrant attention.
#
sub set_warnings {
   my ($self, %args) = @_;
   $self->{'warnings'} = $args{'warnings'}; 
   return;	
}

## @method get_information ()
# Gets the value of 'information' property.
#
# @retval information - The current value of the field.
# Information messages reported by the  ``create``  or  ``deploy``   *method* . For
#     example, a non-required parameter was ignored.
#
# List#
sub get_information {
   my ($self, %args) = @_;
   return $self->{'information'}; 	
}

## @method set_information ()
# Sets the given value for 'information' property.
# 
# @param information  - New value for the field.
# Information messages reported by the  ``create``  or  ``deploy``   *method* . For
#     example, a non-required parameter was ignored.
#
sub set_information {
   my ($self, %args) = @_;
   $self->{'information'} = $args{'information'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult``   *class*  defines
#     the result of the  ``deploy``   *method* . See 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy` .

package Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{succeeded} = $args{'succeeded'};
   $self->{resource_id} = $args{'resource_id'};
   $self->{error} = $args{'error'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentResult');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.deployment_result');
   $self->set_binding_field('key' => 'succeeded', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'resource_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::DeployableIdentity')));
   $self->set_binding_field('key' => 'error', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::ResultInfo')));
   bless $self, $class;
   return $self;
}

## @method get_succeeded ()
# Gets the value of 'succeeded' property.
#
# @retval succeeded - The current value of the field.
# Whether the  ``deploy``   *method*  completed successfully.
#
# boolean#
sub get_succeeded {
   my ($self, %args) = @_;
   return $self->{'succeeded'}; 	
}

## @method set_succeeded ()
# Sets the given value for 'succeeded' property.
# 
# @param succeeded  - New value for the field.
# Whether the  ``deploy``   *method*  completed successfully.
#
sub set_succeeded {
   my ($self, %args) = @_;
   $self->{'succeeded'} = $args{'succeeded'}; 
   return;	
}

## @method get_resource_id ()
# Gets the value of 'resource_id' property.
#
# @retval resource_id - The current value of the field.
# Identifier of the deployed resource entity.
#
# Optional#
sub get_resource_id {
   my ($self, %args) = @_;
   return $self->{'resource_id'}; 	
}

## @method set_resource_id ()
# Sets the given value for 'resource_id' property.
# 
# @param resource_id  - New value for the field.
# Identifier of the deployed resource entity.
#
sub set_resource_id {
   my ($self, %args) = @_;
   $self->{'resource_id'} = $args{'resource_id'}; 
   return;	
}

## @method get_error ()
# Gets the value of 'error' property.
#
# @retval error - The current value of the field.
# Errors, warnings, and informational messages produced by the  ``deploy``   *method* .
#
# Optional#
sub get_error {
   my ($self, %args) = @_;
   return $self->{'error'}; 	
}

## @method set_error ()
# Sets the given value for 'error' property.
# 
# @param error  - New value for the field.
# Errors, warnings, and informational messages produced by the  ``deploy``   *method* .
#
sub set_error {
   my ($self, %args) = @_;
   $self->{'error'} = $args{'error'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget``   *class*  describes
#     the location (target) where a virtual machine or virtual appliance should be deployed.
#     It is used in the  ``deploy``  and  ``filter``   *methods* . See 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy`  and 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` .

package Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{resource_pool_id} = $args{'resource_pool_id'};
   $self->{host_id} = $args{'host_id'};
   $self->{folder_id} = $args{'folder_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.deployment_target');
   $self->set_binding_field('key' => 'resource_pool_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::StringType());
   $self->set_binding_field('key' => 'host_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'folder_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_resource_pool_id ()
# Gets the value of 'resource_pool_id' property.
#
# @retval resource_pool_id - The current value of the field.
# Identifier of the resource pool to which the virtual machine or virtual appliance
#     should be attached.
#
# ID#
sub get_resource_pool_id {
   my ($self, %args) = @_;
   return $self->{'resource_pool_id'}; 	
}

## @method set_resource_pool_id ()
# Sets the given value for 'resource_pool_id' property.
# 
# @param resource_pool_id  - New value for the field.
# Identifier of the resource pool to which the virtual machine or virtual appliance
#     should be attached.
#
sub set_resource_pool_id {
   my ($self, %args) = @_;
   $self->{'resource_pool_id'} = $args{'resource_pool_id'}; 
   return;	
}

## @method get_host_id ()
# Gets the value of 'host_id' property.
#
# @retval host_id - The current value of the field.
# Identifier of the target host on which the virtual machine or virtual appliance will
#     run. The target host must be a member of the cluster that contains the resource pool
#     identified by 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.resource_pool_id` .
#
# Optional#
sub get_host_id {
   my ($self, %args) = @_;
   return $self->{'host_id'}; 	
}

## @method set_host_id ()
# Sets the given value for 'host_id' property.
# 
# @param host_id  - New value for the field.
# Identifier of the target host on which the virtual machine or virtual appliance will
#     run. The target host must be a member of the cluster that contains the resource pool
#     identified by 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::DeploymentTarget.resource_pool_id` .
#
sub set_host_id {
   my ($self, %args) = @_;
   $self->{'host_id'} = $args{'host_id'}; 
   return;	
}

## @method get_folder_id ()
# Gets the value of 'folder_id' property.
#
# @retval folder_id - The current value of the field.
# Identifier of the vCenter folder that should contain the virtual machine or virtual
#     appliance. The folder must be virtual machine folder.
#
# Optional#
sub get_folder_id {
   my ($self, %args) = @_;
   return $self->{'folder_id'}; 	
}

## @method set_folder_id ()
# Sets the given value for 'folder_id' property.
# 
# @param folder_id  - New value for the field.
# Identifier of the vCenter folder that should contain the virtual machine or virtual
#     appliance. The folder must be virtual machine folder.
#
sub set_folder_id {
   my ($self, %args) = @_;
   $self->{'folder_id'} = $args{'folder_id'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary``   *class*  defines the
#     result of the  ``filter``   *method* . See 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.filter` . The  *fields*  in the  *class*
#     describe parameterizable information in the OVF descriptor, with respect to a
#     deployment target, for the  ``deploy``   *method* . See 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.deploy` .

package Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary structure
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
   $self->{annotation} = $args{'annotation'};
   $self->{EULAs} = $args{'EULAs'};
   $self->{networks} = $args{'networks'};
   $self->{storage_groups} = $args{'storage_groups'};
   $self->{additional_params} = $args{'additional_params'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::OvfSummary');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.ovf_summary');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'annotation', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'EULAs', 'value' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'networks', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'storage_groups', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   $self->set_binding_field('key' => 'additional_params', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::DynamicStructType())));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Default name for the virtual machine or virtual appliance.
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
# Default name for the virtual machine or virtual appliance.
#
sub set_name {
   my ($self, %args) = @_;
   $self->{'name'} = $args{'name'}; 
   return;	
}

## @method get_annotation ()
# Gets the value of 'annotation' property.
#
# @retval annotation - The current value of the field.
# Default annotation for the virtual machine or virtual appliance.
#
# Optional#
sub get_annotation {
   my ($self, %args) = @_;
   return $self->{'annotation'}; 	
}

## @method set_annotation ()
# Sets the given value for 'annotation' property.
# 
# @param annotation  - New value for the field.
# Default annotation for the virtual machine or virtual appliance.
#
sub set_annotation {
   my ($self, %args) = @_;
   $self->{'annotation'} = $args{'annotation'}; 
   return;	
}

## @method get_EULAs ()
# Gets the value of 'EULAs' property.
#
# @retval EULAs - The current value of the field.
# End User License Agreements specified in the OVF descriptor. All end user license
#     agreements must be accepted in order for the  ``deploy``   *method*  to succeed. See 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.accept_all_eula`
#     .
#
# List#
sub get_EULAs {
   my ($self, %args) = @_;
   return $self->{'EULAs'}; 	
}

## @method set_EULAs ()
# Sets the given value for 'EULAs' property.
# 
# @param EULAs  - New value for the field.
# End User License Agreements specified in the OVF descriptor. All end user license
#     agreements must be accepted in order for the  ``deploy``   *method*  to succeed. See 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.accept_all_eula`
#     .
#
sub set_EULAs {
   my ($self, %args) = @_;
   $self->{'EULAs'} = $args{'EULAs'}; 
   return;	
}

## @method get_networks ()
# Gets the value of 'networks' property.
#
# @retval networks - The current value of the field.
# Section identifiers for sections of type ovf:NetworkSection in the OVF descriptor.
#     These identifiers can be used as keys in 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.network_mappings`
#     .
#
# Optional#
sub get_networks {
   my ($self, %args) = @_;
   return $self->{'networks'}; 	
}

## @method set_networks ()
# Sets the given value for 'networks' property.
# 
# @param networks  - New value for the field.
# Section identifiers for sections of type ovf:NetworkSection in the OVF descriptor.
#     These identifiers can be used as keys in 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.network_mappings`
#     .
#
sub set_networks {
   my ($self, %args) = @_;
   $self->{'networks'} = $args{'networks'}; 
   return;	
}

## @method get_storage_groups ()
# Gets the value of 'storage_groups' property.
#
# @retval storage_groups - The current value of the field.
# Section identifiers for sections of type vmw:StorageGroupSection in the OVF
#     descriptor. These identifiers can be used as keys in 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.storage_mappings`
#     .
#
# Optional#
sub get_storage_groups {
   my ($self, %args) = @_;
   return $self->{'storage_groups'}; 	
}

## @method set_storage_groups ()
# Sets the given value for 'storage_groups' property.
# 
# @param storage_groups  - New value for the field.
# Section identifiers for sections of type vmw:StorageGroupSection in the OVF
#     descriptor. These identifiers can be used as keys in 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.storage_mappings`
#     .
#
sub set_storage_groups {
   my ($self, %args) = @_;
   $self->{'storage_groups'} = $args{'storage_groups'}; 
   return;	
}

## @method get_additional_params ()
# Gets the value of 'additional_params' property.
#
# @retval additional_params - The current value of the field.
# Additional OVF parameters which can be specified for the deployment target. These OVF
#     parameters can be inspected, optionally modified, and used as values in 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.additional_parameters`
#      for the  ``deploy``   *method* .
#
# Optional#
sub get_additional_params {
   my ($self, %args) = @_;
   return $self->{'additional_params'}; 	
}

## @method set_additional_params ()
# Sets the given value for 'additional_params' property.
# 
# @param additional_params  - New value for the field.
# Additional OVF parameters which can be specified for the deployment target. These OVF
#     parameters can be inspected, optionally modified, and used as values in 
#     :attr:`Com::Vmware::Vcenter::Ovf::LibraryItem::ResourcePoolDeploymentSpec.additional_parameters`
#      for the  ``deploy``   *method* .
#
sub set_additional_params {
   my ($self, %args) = @_;
   $self->{'additional_params'} = $args{'additional_params'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget``   *class*  specifies the
#     target library item when capturing a virtual machine or virtual appliance as an OVF
#     package in a library item in a content library. The target can be an existing library
#     item, which will be updated, creating a new version, or it can be a newly created
#     library item in a specified library. See 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.create` .

package Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{library_id} = $args{'library_id'};
   $self->{library_item_id} = $args{'library_item_id'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::CreateTarget');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.create_target');
   $self->set_binding_field('key' => 'library_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'library_item_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_library_id ()
# Gets the value of 'library_id' property.
#
# @retval library_id - The current value of the field.
# Identifier of the library in which a new library item should be created. This  *field*
#      is not used if the  ``libraryItemId``   *field*  is specified.
#
# Optional#
sub get_library_id {
   my ($self, %args) = @_;
   return $self->{'library_id'}; 	
}

## @method set_library_id ()
# Sets the given value for 'library_id' property.
# 
# @param library_id  - New value for the field.
# Identifier of the library in which a new library item should be created. This  *field*
#      is not used if the  ``libraryItemId``   *field*  is specified.
#
sub set_library_id {
   my ($self, %args) = @_;
   $self->{'library_id'} = $args{'library_id'}; 
   return;	
}

## @method get_library_item_id ()
# Gets the value of 'library_item_id' property.
#
# @retval library_item_id - The current value of the field.
# Identifier of the library item that should be should be updated.
#
# Optional#
sub get_library_item_id {
   my ($self, %args) = @_;
   return $self->{'library_item_id'}; 	
}

## @method set_library_item_id ()
# Sets the given value for 'library_item_id' property.
# 
# @param library_item_id  - New value for the field.
# Identifier of the library item that should be should be updated.
#
sub set_library_item_id {
   my ($self, %args) = @_;
   $self->{'library_item_id'} = $args{'library_item_id'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec``   *class*  defines the
#     information used to create or update a library item containing an OVF package.

package Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec structure
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
   $self->{flags} = $args{'flags'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::CreateSpec');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.create_spec');
   $self->set_binding_field('key' => 'name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'description', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'flags', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType())));
   bless $self, $class;
   return $self;
}

## @method get_name ()
# Gets the value of 'name' property.
#
# @retval name - The current value of the field.
# Name to use in the OVF descriptor stored in the library item.
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
# Name to use in the OVF descriptor stored in the library item.
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
# Description to use in the OVF descriptor stored in the library item.
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
# Description to use in the OVF descriptor stored in the library item.
#
sub set_description {
   my ($self, %args) = @_;
   $self->{'description'} = $args{'description'}; 
   return;	
}

## @method get_flags ()
# Gets the value of 'flags' property.
#
# @retval flags - The current value of the field.
# Flags to use for OVF package creation. The supported flags can be obtained using 
#     :func:`Com::Vmware::Vcenter::Ovf::ExportFlag.list` .
#
# Optional#
sub get_flags {
   my ($self, %args) = @_;
   return $self->{'flags'}; 	
}

## @method set_flags ()
# Sets the given value for 'flags' property.
# 
# @param flags  - New value for the field.
# Flags to use for OVF package creation. The supported flags can be obtained using 
#     :func:`Com::Vmware::Vcenter::Ovf::ExportFlag.list` .
#
sub set_flags {
   my ($self, %args) = @_;
   $self->{'flags'} = $args{'flags'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult
#
#
# The  ``Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult``   *class*  defines the
#     result of the  ``create``   *method* . See 
#     :func:`Com::Vmware::Vcenter::Ovf::LibraryItem.create` .

package Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{succeeded} = $args{'succeeded'};
   $self->{ovf_library_item_id} = $args{'ovf_library_item_id'};
   $self->{error} = $args{'error'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Ovf::LibraryItem::CreateResult');
   $self->set_binding_name('name' => 'com.vmware.vcenter.ovf.library_item.create_result');
   $self->set_binding_field('key' => 'succeeded', 'value' => new Com::Vmware::Vapi::Bindings::Type::BooleanType());
   $self->set_binding_field('key' => 'ovf_library_item_id', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'error', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::ResultInfo')));
   bless $self, $class;
   return $self;
}

## @method get_succeeded ()
# Gets the value of 'succeeded' property.
#
# @retval succeeded - The current value of the field.
# Whether the  ``create``   *method*  completed successfully.
#
# boolean#
sub get_succeeded {
   my ($self, %args) = @_;
   return $self->{'succeeded'}; 	
}

## @method set_succeeded ()
# Sets the given value for 'succeeded' property.
# 
# @param succeeded  - New value for the field.
# Whether the  ``create``   *method*  completed successfully.
#
sub set_succeeded {
   my ($self, %args) = @_;
   $self->{'succeeded'} = $args{'succeeded'}; 
   return;	
}

## @method get_ovf_library_item_id ()
# Gets the value of 'ovf_library_item_id' property.
#
# @retval ovf_library_item_id - The current value of the field.
# Identifier of the created or updated library item.
#
# Optional#
sub get_ovf_library_item_id {
   my ($self, %args) = @_;
   return $self->{'ovf_library_item_id'}; 	
}

## @method set_ovf_library_item_id ()
# Sets the given value for 'ovf_library_item_id' property.
# 
# @param ovf_library_item_id  - New value for the field.
# Identifier of the created or updated library item.
#
sub set_ovf_library_item_id {
   my ($self, %args) = @_;
   $self->{'ovf_library_item_id'} = $args{'ovf_library_item_id'}; 
   return;	
}

## @method get_error ()
# Gets the value of 'error' property.
#
# @retval error - The current value of the field.
# Errors, warnings, and informational messages produced by the  ``create``   *method* .
#
# Optional#
sub get_error {
   my ($self, %args) = @_;
   return $self->{'error'}; 	
}

## @method set_error ()
# Sets the given value for 'error' property.
# 
# @param error  - New value for the field.
# Errors, warnings, and informational messages produced by the  ``create``   *method* .
#
sub set_error {
   my ($self, %args) = @_;
   $self->{'error'} = $args{'error'}; 
   return;	
}


1;



#########################################################################################
# Ends structures for the Com::Vmware::Vcenter::Ovf::LibraryItem service
#########################################################################################
