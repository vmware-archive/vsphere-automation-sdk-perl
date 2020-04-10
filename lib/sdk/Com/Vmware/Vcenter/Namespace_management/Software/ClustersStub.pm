########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ClustersStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Vcenter::Namespace_management::Software::ClustersStub;

## @class Com::Vmware::Vcenter::Namespace_management::Software::Clusters
#
#The {@name Clusters} {@term service} provides {@term operations} to
#upgrade the vSphere clusters.
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
   # properties for upgrade operation
   #
   my $upgrade_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'cluster' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::UpgradeSpec'),
      }
   );
   my $upgrade_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.unsupported' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unsupported'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $upgrade_input_validator_list = [
   ];
   my $upgrade_output_validator_list = [];

   #
   # properties for upgrade_multiple operation
   #
   my $upgrade_multiple_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'specs' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::UpgradeSpec')}))),
      }
   );
   my $upgrade_multiple_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $upgrade_multiple_input_validator_list = [
   ];
   my $upgrade_multiple_output_validator_list = [];

   #
   # properties for get operation
   #
   my $get_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'cluster' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $get_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $get_input_validator_list = [
   ];
   my $get_output_validator_list = [];

   #
   # properties for list operation
   #
   my $list_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $list_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $list_input_validator_list = [
   ];
   my $list_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'upgrade' => {
                'input_type'=> $upgrade_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $upgrade_error_dict,
                'input_validator_list'=> $upgrade_input_validator_list,
                'output_validator_list'=> $upgrade_output_validator_list,
            },
      'upgrade_multiple' => {
                'input_type'=> $upgrade_multiple_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::Result')}))),
                'errors'=> $upgrade_multiple_error_dict,
                'input_validator_list'=> $upgrade_multiple_input_validator_list,
                'output_validator_list'=> $upgrade_multiple_output_validator_list,
            },
      'get' => {
                'input_type'=> $get_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::Info'),
                'errors'=> $get_error_dict,
                'input_validator_list'=> $get_input_validator_list,
                'output_validator_list'=> $get_output_validator_list,
            },
      'list' => {
                'input_type'=> $list_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Namespace_management::Software', 'type_name' => 'Clusters::Summary')),
                'errors'=> $list_error_dict,
                'input_validator_list'=> $list_input_validator_list,
                'output_validator_list'=> $list_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vcenter.namespace_management.software.clusters',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
