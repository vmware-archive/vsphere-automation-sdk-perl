########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LibraryItemStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Vcenter::Ovf::LibraryItemStub;

## @class Com::Vmware::Vcenter::Ovf::LibraryItem
#
#The {@name LibraryItem} {@term service} provides {@term operations} to
#deploy virtual machines and virtual appliances from library items containing
#Open Virtualization Format (OVF) packages in content library, as well as
#{@term operations} to create library items in content library from virtual
#machines and virtual appliances.
#<p>
#To deploy a virtual machine or a virtual appliance from a library item:
#<ol>
#<li> Create a {@link LibraryItem.DeploymentTarget} to specify the
#target deployment type and target deployment designation. </li>
#<li> Create a {@link LibraryItem.ResourcePoolDeploymentSpec} to specify the
#parameters for the target deployment. </li>
#<li> Use the {@name #deploy} {@term operation} with the created target
#and parameter specifications, along with the identifier of the specified
#source content library item. See {@link #deploy}. </li>
#</ol>
#</p>
#<p>
#To create a library item in content library from a virtual machine or virtual
#appliance:
#<ol>
#<li> Create a {@link LibraryItem.DeployableIdentity} to specify the
#source virtual machine or virtual appliance to be used as the OVF
#template source. </li>
#<li> Create a {@link LibraryItem.CreateTarget} to specify the target
#library and library item. </li>
#<li> Create a {@link LibraryItem.CreateSpec} to specify the settings
#for the OVF package to be created.</li>
#<li> Use the {@name #create} {@term operation} with the created target
#and parameter specifications, along with the specified source entity.
#See {@link #create}. </li>
#</ol>
#</p>
#

#
# Core Perl modules
#
use strict;
use warnings;
use Carp;

#
# Vapi Perl modules
#
use Com::Vmware::Vapi::Bindings::Type::BlobType;
use Com::Vmware::Vapi::Bindings::Type::BooleanType;
use Com::Vmware::Vapi::Bindings::Type::DateTimeType;
use Com::Vmware::Vapi::Bindings::Type::DoubleType;
use Com::Vmware::Vapi::Bindings::Type::EnumType;
use Com::Vmware::Vapi::Bindings::Type::ErrorType;
use Com::Vmware::Vapi::Bindings::Type::ListType;
use Com::Vmware::Vapi::Bindings::Type::LongType;
use Com::Vmware::Vapi::Bindings::Type::MapType;
use Com::Vmware::Vapi::Bindings::Type::OpaqueType;
use Com::Vmware::Vapi::Bindings::Type::OptionalType;
use Com::Vmware::Vapi::Bindings::Type::ReferenceType;
use Com::Vmware::Vapi::Bindings::Type::SecretType;
use Com::Vmware::Vapi::Bindings::Type::SetType;
use Com::Vmware::Vapi::Bindings::Type::StringType;
use Com::Vmware::Vapi::Bindings::Type::StructType;
use Com::Vmware::Vapi::Bindings::Type::DynamicStructType;
use Com::Vmware::Vapi::Bindings::Type::URIType;
use Com::Vmware::Vapi::Bindings::Type::VoidType;
use Com::Vmware::Vapi::Data::UnionValidator;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::ApiInterfaceStub);

## @method new
# Constructor to initialize the object
#
# @param ApiProvider - ApiProvider for vAPI stubs
#
# @return
# Blessed object
#
sub new
{
   my ($class, %args) = @_;
   my $api_provider = $args {api_provider};
   $class = ref($class) || $class;
      #
   # properties for deploy operation
   #
   my $deploy_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'client_token' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()),
                   'ovf_library_item_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'target' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::DeploymentTarget'),
                   'deployment_spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::ResourcePoolDeploymentSpec'),
      }
   );
   my $deploy_error_dict = {
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.resource_inaccessible' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceInaccessible'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $deploy_input_validator_list = [
   ];
   my $deploy_output_validator_list = [];

   #
   # properties for filter operation
   #
   my $filter_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'ovf_library_item_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'target' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::DeploymentTarget'),
      }
   );
   my $filter_error_dict = {
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.resource_inaccessible' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceInaccessible'),

      };

   my $filter_input_validator_list = [
   ];
   my $filter_output_validator_list = [];

   #
   # properties for create operation
   #
   my $create_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'client_token' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()),
                   'source' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::DeployableIdentity'),
                   'target' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::CreateTarget'),
                   'create_spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::CreateSpec'),
      }
   );
   my $create_error_dict = {
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),
      'com.vmware.vapi.std.errors.resource_inaccessible' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceInaccessible'),
      'com.vmware.vapi.std.errors.resource_busy' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceBusy'),

      };

   my $create_input_validator_list = [
   ];
   my $create_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'deploy' => {
                'input_type'=> $deploy_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::DeploymentResult'),
                'errors'=> $deploy_error_dict,
                'input_validator_list'=> $deploy_input_validator_list,
                'output_validator_list'=> $deploy_output_validator_list,
            },
      'filter' => {
                'input_type'=> $filter_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::OvfSummary'),
                'errors'=> $filter_error_dict,
                'input_validator_list'=> $filter_input_validator_list,
                'output_validator_list'=> $filter_output_validator_list,
            },
      'create' => {
                'input_type'=> $create_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Ovf', 'type_name' => 'LibraryItem::CreateResult'),
                'errors'=> $create_error_dict,
                'input_validator_list'=> $create_input_validator_list,
                'output_validator_list'=> $create_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vcenter.ovf.library_item',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
