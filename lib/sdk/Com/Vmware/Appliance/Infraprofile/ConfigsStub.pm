########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file ConfigsStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Appliance::Infraprofile::ConfigsStub;

## @class Com::Vmware::Appliance::Infraprofile::Configs
#
#{@name Configs} {@term service} provides {@term operations}
#to manage desired configuration specification of an appliance.
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
   # properties for list operation
   #
   my $list_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $list_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $list_input_validator_list = [
   ];
   my $list_output_validator_list = [];

   #
   # properties for export operation
   #
   my $export_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Infraprofile', 'type_name' => 'Configs::ProfilesSpec')),
      }
   );
   my $export_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $export_input_validator_list = [
   ];
   my $export_output_validator_list = [];

   #
   # properties for validate operation
   #
   my $validate_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Infraprofile', 'type_name' => 'Configs::ImportProfileSpec'),
      }
   );
   my $validate_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $validate_input_validator_list = [
   ];
   my $validate_output_validator_list = [];

   #
   # properties for import_profile operation
   #
   my $import_profile_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'spec' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Infraprofile', 'type_name' => 'Configs::ImportProfileSpec'),
      }
   );
   my $import_profile_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),

      };

   my $import_profile_input_validator_list = [
   ];
   my $import_profile_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'list' => {
                'input_type'=> $list_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Infraprofile', 'type_name' => 'Configs::ProfileInfo')),
                'errors'=> $list_error_dict,
                'input_validator_list'=> $list_input_validator_list,
                'output_validator_list'=> $list_output_validator_list,
            },
      'export' => {
                'input_type'=> $export_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $export_error_dict,
                'input_validator_list'=> $export_input_validator_list,
                'output_validator_list'=> $export_output_validator_list,
            },
      'validate$task' => {
                'input_type'=> $validate_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $validate_error_dict,
                'input_validator_list'=> $validate_input_validator_list,
                'output_validator_list'=> $validate_output_validator_list,
            },
      'import_profile$task' => {
                'input_type'=> $import_profile_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::StringType(),
                'errors'=> $import_profile_error_dict,
                'input_validator_list'=> $import_profile_input_validator_list,
                'output_validator_list'=> $import_profile_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.appliance.infraprofile.configs',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
