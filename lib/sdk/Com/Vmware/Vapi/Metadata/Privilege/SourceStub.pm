########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file SourceStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Metadata;
#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Vapi::Metadata::Privilege::SourceStub;

## @class Com::Vmware::Vapi::Metadata::Privilege::Source
#
#The {@name Source} {@term service} provides {@term operations} to
#manage the sources of privilege metadata information.
#<p>
#The interface definition language infrastructure provides tools to
#generate various kinds of metadata in JSON format from the interface
#definition files and additional properties files. One of the generated
#files contains privilege information. The generated file can be
#registered as a source of metadata.
#<p>
#The privilege file contains all the data present in the interface
#definition files. Each privilege file contains data about one
#component element. When a privilege file is added as a source,
#each source contributes only one component element's metadata.
#<p>
#Privilege metadata can also be discovered from a remote server that
#supports the privilege metadata {@term services} (see
#{@link com.vmware.vapi.metadata.privilege}). Since multiple components
#can be registered with a single metadata server, when a remote server
#is registered as a source, that source can contribute more than one
#component.
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
                   'source_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Privilege', 'type_name' => 'Source::CreateSpec'),
      }
   );
   my $create_error_dict = {
      'com.vmware.vapi.std.errors.already_exists' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'AlreadyExists'),
      'com.vmware.vapi.std.errors.invalid_argument' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'InvalidArgument'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),

      };

   my $create_input_validator_list = [
   ];
   my $create_output_validator_list = [];

   #
   # properties for delete operation
   #
   my $delete_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'source_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $delete_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),

      };

   my $delete_input_validator_list = [
   ];
   my $delete_output_validator_list = [];

   #
   # properties for get operation
   #
   my $get_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'source_id' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
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
   # properties for reload operation
   #
   my $reload_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'source_id' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()),
      }
   );
   my $reload_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),

      };

   my $reload_input_validator_list = [
   ];
   my $reload_output_validator_list = [];

   #
   # properties for fingerprint operation
   #
   my $fingerprint_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'source_id' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()),
      }
   );
   my $fingerprint_error_dict = {
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),

      };

   my $fingerprint_input_validator_list = [
   ];
   my $fingerprint_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'create' => {
                'input_type'=> $create_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $create_error_dict,
                'input_validator_list'=> $create_input_validator_list,
                'output_validator_list'=> $create_output_validator_list,
            },
      'delete' => {
                'input_type'=> $delete_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $delete_error_dict,
                'input_validator_list'=> $delete_input_validator_list,
                'output_validator_list'=> $delete_output_validator_list,
            },
      'get' => {
                'input_type'=> $get_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Metadata::Privilege', 'type_name' => 'Source::Info'),
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
      'reload' => {
                'input_type'=> $reload_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $reload_error_dict,
                'input_validator_list'=> $reload_input_validator_list,
                'output_validator_list'=> $reload_output_validator_list,
            },
      'fingerprint' => {
                'input_type'=> $fingerprint_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $fingerprint_error_dict,
                'input_validator_list'=> $fingerprint_input_validator_list,
                'output_validator_list'=> $fingerprint_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vapi.metadata.privilege.source',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
