########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file LibraryStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Content::LibraryStub;

## @class Com::Vmware::Content::Library
#
#The {@name Library} {@term service} provides {@term operations} to
#manage and find {@link LibraryModel} entities.
#<p>
#The {@name Library} {@term service} provides support for generic
#functionality which can be applied equally to all types of libraries. The
#functionality provided by this {@term service} will not affect the properties
#specific to the type of library. See also {@link LocalLibrary} and
#{@link SubscribedLibrary}.
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
   # properties for get operation
   #
   my $get_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'library_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
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
      'fields' => {}
   );
   my $list_error_dict = {};

   my $list_input_validator_list = [
   ];
   my $list_output_validator_list = [];

   #
   # properties for find operation
   #
   my $find_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content', 'type_name' => 'Library::FindSpec'),
      }
   );
   my $find_error_dict = {
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),

      };

   my $find_input_validator_list = [
   ];
   my $find_output_validator_list = [];

   #
   # properties for update operation
   #
   my $update_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'library_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'update_spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content', 'type_name' => 'LibraryModel'),
      }
   );
   my $update_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),

      };

   my $update_input_validator_list = [
   ];
   my $update_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'get' => {
                'input_type'=> $get_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Content', 'type_name' => 'LibraryModel'),
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
      'find' => {
                'input_type'=> $find_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StringType()),
                'errors'=> $find_error_dict,
                'input_validator_list'=> $find_input_validator_list,
                'output_validator_list'=> $find_output_validator_list,
            },
      'update' => {
                'input_type'=> $update_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $update_error_dict,
                'input_validator_list'=> $update_input_validator_list,
                'output_validator_list'=> $update_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.content.library',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
