########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file UpdateSessionStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Content::Library::Item::UpdateSessionStub;

## @class Com::Vmware::Content::Library::Item::UpdateSession
#
#The {@name UpdateSession} {@term service} manipulates sessions that
#are used to upload content into the Content Library Service, and/or to remove
#files from a library item.
#<p>
#An update session is a resource which tracks changes to content. An update
#session is created with a set of files that are intended to be uploaded to a
#specific {@link ItemModel}, or removed from an item. The session object can
#be used to track the uploads and inspect the changes that are being made to
#the item by that upload. It can also serve as a channel to check on the
#result of the upload, and status messages such as errors and warnings for the
#upload.
#<p>
#Modifications are not visible to other clients unless the session is
#completed and all necessary files have been received.
#<p>
#The management of the files within the session is done through the
#{@link com.vmware.content.library.item.updatesession.File} {@term service}.
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
                   'client_token' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()),
                   'create_spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'UpdateSessionModel'),
      }
   );
   my $create_error_dict = {
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.invalid_element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidElementType'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.resource_busy' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceBusy'),

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
                   'update_session_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $get_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),

      };

   my $get_input_validator_list = [
   ];
   my $get_output_validator_list = [];

   #
   # properties for list operation
   #
   my $list_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'library_item_id' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()),
      }
   );
   my $list_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),

      };

   my $list_input_validator_list = [
   ];
   my $list_output_validator_list = [];

   #
   # properties for complete operation
   #
   my $complete_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'update_session_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $complete_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),

      };

   my $complete_input_validator_list = [
   ];
   my $complete_output_validator_list = [];

   #
   # properties for keep_alive operation
   #
   my $keep_alive_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'update_session_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'client_progress' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::LongType()),
      }
   );
   my $keep_alive_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),

      };

   my $keep_alive_input_validator_list = [
   ];
   my $keep_alive_output_validator_list = [];

   #
   # properties for cancel operation
   #
   my $cancel_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'update_session_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $cancel_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),

      };

   my $cancel_input_validator_list = [
   ];
   my $cancel_output_validator_list = [];

   #
   # properties for fail operation
   #
   my $fail_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'update_session_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'client_error_message' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $fail_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),

      };

   my $fail_input_validator_list = [
   ];
   my $fail_output_validator_list = [];

   #
   # properties for delete operation
   #
   my $delete_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'update_session_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $delete_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),

      };

   my $delete_input_validator_list = [
   ];
   my $delete_output_validator_list = [];

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
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content::Library::Item', 'type_name' => 'UpdateSessionModel'),
                'errors'=> $get_error_dict,
                'input_validator_list'=> $get_input_validator_list,
                'output_validator_list'=> $get_output_validator_list,
            },
      'list' => {
                'input_type'=> $list_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()),
                'errors'=> $list_error_dict,
                'input_validator_list'=> $list_input_validator_list,
                'output_validator_list'=> $list_output_validator_list,
            },
      'complete' => {
                'input_type'=> $complete_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $complete_error_dict,
                'input_validator_list'=> $complete_input_validator_list,
                'output_validator_list'=> $complete_output_validator_list,
            },
      'keep_alive' => {
                'input_type'=> $keep_alive_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $keep_alive_error_dict,
                'input_validator_list'=> $keep_alive_input_validator_list,
                'output_validator_list'=> $keep_alive_output_validator_list,
            },
      'cancel' => {
                'input_type'=> $cancel_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $cancel_error_dict,
                'input_validator_list'=> $cancel_input_validator_list,
                'output_validator_list'=> $cancel_output_validator_list,
            },
      'fail' => {
                'input_type'=> $fail_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $fail_error_dict,
                'input_validator_list'=> $fail_input_validator_list,
                'output_validator_list'=> $fail_output_validator_list,
            },
      'delete' => {
                'input_type'=> $delete_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $delete_error_dict,
                'input_validator_list'=> $delete_input_validator_list,
                'output_validator_list'=> $delete_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.content.library.item.update_session',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
