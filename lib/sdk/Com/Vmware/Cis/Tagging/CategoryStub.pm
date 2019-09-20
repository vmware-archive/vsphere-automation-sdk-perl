########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file CategoryStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Cis::Tagging::CategoryStub;

## @class Com::Vmware::Cis::Tagging::Category
#
#The {@name Category} {@term service} provides {@term operations} to
#create, read, update, delete, and enumerate categories.
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
   # properties for create operation
   #
   my $create_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'create_spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'Category::CreateSpec'),
      }
   );
   my $create_error_dict = {
      'com.vmware.vapi.std.errors.already_exists' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'AlreadyExists'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $create_input_validator_list = [
   ];
   my $create_output_validator_list = [];

   #
   # properties for get operation
   #
   my $get_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'category_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $get_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $get_input_validator_list = [
   ];
   my $get_output_validator_list = [];

   #
   # properties for update operation
   #
   my $update_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'category_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'update_spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'Category::UpdateSpec'),
      }
   );
   my $update_error_dict = {
      'com.vmware.vapi.std.errors.already_exists' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'AlreadyExists'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $update_input_validator_list = [
   ];
   my $update_output_validator_list = [];

   #
   # properties for delete operation
   #
   my $delete_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'category_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $delete_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $delete_input_validator_list = [
   ];
   my $delete_output_validator_list = [];

   #
   # properties for list operation
   #
   my $list_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $list_error_dict = {};

   my $list_input_validator_list = [
   ];
   my $list_output_validator_list = [];

   #
   # properties for list_used_categories operation
   #
   my $list_used_categories_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'used_by_entity' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $list_used_categories_error_dict = {};

   my $list_used_categories_input_validator_list = [
   ];
   my $list_used_categories_output_validator_list = [];

   #
   # properties for add_to_used_by operation
   #
   my $add_to_used_by_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'category_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'used_by_entity' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $add_to_used_by_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $add_to_used_by_input_validator_list = [
   ];
   my $add_to_used_by_output_validator_list = [];

   #
   # properties for remove_from_used_by operation
   #
   my $remove_from_used_by_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'category_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'used_by_entity' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $remove_from_used_by_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $remove_from_used_by_input_validator_list = [
   ];
   my $remove_from_used_by_output_validator_list = [];

   #
   # properties for revoke_propagating_permissions operation
   #
   my $revoke_propagating_permissions_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'category_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $revoke_propagating_permissions_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $revoke_propagating_permissions_input_validator_list = [
   ];
   my $revoke_propagating_permissions_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'create' => {
                'input_type'=> $create_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $create_error_dict,
                'input_validator_list'=> $create_input_validator_list,
                'output_validator_list'=> $create_output_validator_list,
            },
      'get' => {
                'input_type'=> $get_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'CategoryModel'),
                'errors'=> $get_error_dict,
                'input_validator_list'=> $get_input_validator_list,
                'output_validator_list'=> $get_output_validator_list,
            },
      'update' => {
                'input_type'=> $update_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $update_error_dict,
                'input_validator_list'=> $update_input_validator_list,
                'output_validator_list'=> $update_output_validator_list,
            },
      'delete' => {
                'input_type'=> $delete_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $delete_error_dict,
                'input_validator_list'=> $delete_input_validator_list,
                'output_validator_list'=> $delete_output_validator_list,
            },
      'list' => {
                'input_type'=> $list_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()),
                'errors'=> $list_error_dict,
                'input_validator_list'=> $list_input_validator_list,
                'output_validator_list'=> $list_output_validator_list,
            },
      'list_used_categories' => {
                'input_type'=> $list_used_categories_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()),
                'errors'=> $list_used_categories_error_dict,
                'input_validator_list'=> $list_used_categories_input_validator_list,
                'output_validator_list'=> $list_used_categories_output_validator_list,
            },
      'add_to_used_by' => {
                'input_type'=> $add_to_used_by_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $add_to_used_by_error_dict,
                'input_validator_list'=> $add_to_used_by_input_validator_list,
                'output_validator_list'=> $add_to_used_by_output_validator_list,
            },
      'remove_from_used_by' => {
                'input_type'=> $remove_from_used_by_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $remove_from_used_by_error_dict,
                'input_validator_list'=> $remove_from_used_by_input_validator_list,
                'output_validator_list'=> $remove_from_used_by_output_validator_list,
            },
      'revoke_propagating_permissions' => {
                'input_type'=> $revoke_propagating_permissions_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $revoke_propagating_permissions_error_dict,
                'input_validator_list'=> $revoke_propagating_permissions_input_validator_list,
                'output_validator_list'=> $revoke_propagating_permissions_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.cis.tagging.category',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
