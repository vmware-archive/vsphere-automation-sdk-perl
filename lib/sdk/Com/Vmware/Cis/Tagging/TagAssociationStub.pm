########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file TagAssociationStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std;
#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Cis::Tagging::TagAssociationStub;

## @class Com::Vmware::Cis::Tagging::TagAssociation
#
#The {@name TagAssociation} {@term service} provides {@term operations}
#to attach, detach, and query tags.
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
   # properties for attach operation
   #
   my $attach_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'tag_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'object_id' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID'),
      }
   );
   my $attach_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $attach_input_validator_list = [
   ];
   my $attach_output_validator_list = [];

   #
   # properties for attach_multiple_tags_to_object operation
   #
   my $attach_multiple_tags_to_object_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'object_id' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID'),
                   'tag_ids' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()),
      }
   );
   my $attach_multiple_tags_to_object_error_dict = {
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $attach_multiple_tags_to_object_input_validator_list = [
   ];
   my $attach_multiple_tags_to_object_output_validator_list = [];

   #
   # properties for attach_tag_to_multiple_objects operation
   #
   my $attach_tag_to_multiple_objects_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'tag_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'object_ids' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID')),
      }
   );
   my $attach_tag_to_multiple_objects_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $attach_tag_to_multiple_objects_input_validator_list = [
   ];
   my $attach_tag_to_multiple_objects_output_validator_list = [];

   #
   # properties for detach operation
   #
   my $detach_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'tag_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'object_id' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID'),
      }
   );
   my $detach_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $detach_input_validator_list = [
   ];
   my $detach_output_validator_list = [];

   #
   # properties for detach_multiple_tags_from_object operation
   #
   my $detach_multiple_tags_from_object_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'object_id' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID'),
                   'tag_ids' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()),
      }
   );
   my $detach_multiple_tags_from_object_error_dict = {
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $detach_multiple_tags_from_object_input_validator_list = [
   ];
   my $detach_multiple_tags_from_object_output_validator_list = [];

   #
   # properties for detach_tag_from_multiple_objects operation
   #
   my $detach_tag_from_multiple_objects_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'tag_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'object_ids' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID')),
      }
   );
   my $detach_tag_from_multiple_objects_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $detach_tag_from_multiple_objects_input_validator_list = [
   ];
   my $detach_tag_from_multiple_objects_output_validator_list = [];

   #
   # properties for list_attached_objects operation
   #
   my $list_attached_objects_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'tag_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $list_attached_objects_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $list_attached_objects_input_validator_list = [
   ];
   my $list_attached_objects_output_validator_list = [];

   #
   # properties for list_attached_objects_on_tags operation
   #
   my $list_attached_objects_on_tags_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'tag_ids' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()),
      }
   );
   my $list_attached_objects_on_tags_error_dict = {
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $list_attached_objects_on_tags_input_validator_list = [
   ];
   my $list_attached_objects_on_tags_output_validator_list = [];

   #
   # properties for list_attached_tags operation
   #
   my $list_attached_tags_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'object_id' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID'),
      }
   );
   my $list_attached_tags_error_dict = {
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $list_attached_tags_input_validator_list = [
   ];
   my $list_attached_tags_output_validator_list = [];

   #
   # properties for list_attached_tags_on_objects operation
   #
   my $list_attached_tags_on_objects_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'object_ids' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID')),
      }
   );
   my $list_attached_tags_on_objects_error_dict = {
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $list_attached_tags_on_objects_input_validator_list = [
   ];
   my $list_attached_tags_on_objects_output_validator_list = [];

   #
   # properties for list_attachable_tags operation
   #
   my $list_attachable_tags_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'object_id' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID'),
      }
   );
   my $list_attachable_tags_error_dict = {
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $list_attachable_tags_input_validator_list = [
   ];
   my $list_attachable_tags_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'attach' => {
                'input_type'=> $attach_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $attach_error_dict,
                'input_validator_list'=> $attach_input_validator_list,
                'output_validator_list'=> $attach_output_validator_list,
            },
      'attach_multiple_tags_to_object' => {
                'input_type'=> $attach_multiple_tags_to_object_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'TagAssociation::BatchResult'),
                'errors'=> $attach_multiple_tags_to_object_error_dict,
                'input_validator_list'=> $attach_multiple_tags_to_object_input_validator_list,
                'output_validator_list'=> $attach_multiple_tags_to_object_output_validator_list,
            },
      'attach_tag_to_multiple_objects' => {
                'input_type'=> $attach_tag_to_multiple_objects_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'TagAssociation::BatchResult'),
                'errors'=> $attach_tag_to_multiple_objects_error_dict,
                'input_validator_list'=> $attach_tag_to_multiple_objects_input_validator_list,
                'output_validator_list'=> $attach_tag_to_multiple_objects_output_validator_list,
            },
      'detach' => {
                'input_type'=> $detach_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $detach_error_dict,
                'input_validator_list'=> $detach_input_validator_list,
                'output_validator_list'=> $detach_output_validator_list,
            },
      'detach_multiple_tags_from_object' => {
                'input_type'=> $detach_multiple_tags_from_object_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'TagAssociation::BatchResult'),
                'errors'=> $detach_multiple_tags_from_object_error_dict,
                'input_validator_list'=> $detach_multiple_tags_from_object_input_validator_list,
                'output_validator_list'=> $detach_multiple_tags_from_object_output_validator_list,
            },
      'detach_tag_from_multiple_objects' => {
                'input_type'=> $detach_tag_from_multiple_objects_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'TagAssociation::BatchResult'),
                'errors'=> $detach_tag_from_multiple_objects_error_dict,
                'input_validator_list'=> $detach_tag_from_multiple_objects_input_validator_list,
                'output_validator_list'=> $detach_tag_from_multiple_objects_output_validator_list,
            },
      'list_attached_objects' => {
                'input_type'=> $list_attached_objects_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std', 'type_name' => 'DynamicID')),
                'errors'=> $list_attached_objects_error_dict,
                'input_validator_list'=> $list_attached_objects_input_validator_list,
                'output_validator_list'=> $list_attached_objects_output_validator_list,
            },
      'list_attached_objects_on_tags' => {
                'input_type'=> $list_attached_objects_on_tags_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'TagAssociation::TagToObjects')),
                'errors'=> $list_attached_objects_on_tags_error_dict,
                'input_validator_list'=> $list_attached_objects_on_tags_input_validator_list,
                'output_validator_list'=> $list_attached_objects_on_tags_output_validator_list,
            },
      'list_attached_tags' => {
                'input_type'=> $list_attached_tags_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()),
                'errors'=> $list_attached_tags_error_dict,
                'input_validator_list'=> $list_attached_tags_input_validator_list,
                'output_validator_list'=> $list_attached_tags_output_validator_list,
            },
      'list_attached_tags_on_objects' => {
                'input_type'=> $list_attached_tags_on_objects_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Cis::Tagging', 'type_name' => 'TagAssociation::ObjectToTags')),
                'errors'=> $list_attached_tags_on_objects_error_dict,
                'input_validator_list'=> $list_attached_tags_on_objects_input_validator_list,
                'output_validator_list'=> $list_attached_tags_on_objects_output_validator_list,
            },
      'list_attachable_tags' => {
                'input_type'=> $list_attachable_tags_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()),
                'errors'=> $list_attachable_tags_error_dict,
                'input_validator_list'=> $list_attachable_tags_input_validator_list,
                'output_validator_list'=> $list_attachable_tags_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.cis.tagging.tag_association',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
