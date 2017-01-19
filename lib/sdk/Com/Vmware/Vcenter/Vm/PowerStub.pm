########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file PowerStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Vcenter::Vm::PowerStub;

## @class Com::Vmware::Vcenter::Vm::Power
#
#The {@name Power} {@term service} provides {@term operations} for
#managing the power state of a virtual machine.
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
                   'vm' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $get_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.resource_inaccessible' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceInaccessible'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $get_input_validator_list = [
   ];
   my $get_output_validator_list = [];

   #
   # properties for start operation
   #
   my $start_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'vm' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $start_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.already_in_desired_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'AlreadyInDesiredState'),
      'com.vmware.vapi.std.errors.unsupported' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unsupported'),
      'com.vmware.vapi.std.errors.unable_to_allocate_resource' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'UnableToAllocateResource'),
      'com.vmware.vapi.std.errors.resource_inaccessible' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceInaccessible'),
      'com.vmware.vapi.std.errors.resource_in_use' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceInUse'),
      'com.vmware.vapi.std.errors.resource_busy' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceBusy'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $start_input_validator_list = [
   ];
   my $start_output_validator_list = [];

   #
   # properties for stop operation
   #
   my $stop_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'vm' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $stop_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.already_in_desired_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'AlreadyInDesiredState'),
      'com.vmware.vapi.std.errors.resource_busy' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceBusy'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $stop_input_validator_list = [
   ];
   my $stop_output_validator_list = [];

   #
   # properties for suspend operation
   #
   my $suspend_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'vm' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $suspend_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.already_in_desired_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'AlreadyInDesiredState'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),
      'com.vmware.vapi.std.errors.resource_busy' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceBusy'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $suspend_input_validator_list = [
   ];
   my $suspend_output_validator_list = [];

   #
   # properties for reset operation
   #
   my $reset_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'vm' => new Com::Vmware::Vapi::Bindings::Type::StringType(),
      }
   );
   my $reset_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),
      'com.vmware.vapi.std.errors.not_found' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotFound'),
      'com.vmware.vapi.std.errors.not_allowed_in_current_state' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'NotAllowedInCurrentState'),
      'com.vmware.vapi.std.errors.resource_busy' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ResourceBusy'),
      'com.vmware.vapi.std.errors.service_unavailable' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'ServiceUnavailable'),
      'com.vmware.vapi.std.errors.unauthenticated' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthenticated'),
      'com.vmware.vapi.std.errors.unauthorized' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Unauthorized'),

      };

   my $reset_input_validator_list = [
   ];
   my $reset_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'get' => {
                'input_type'=> $get_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Vm', 'type_name' => 'Power::Info'),
                'errors'=> $get_error_dict,
                'input_validator_list'=> $get_input_validator_list,
                'output_validator_list'=> $get_output_validator_list,
            },
      'start' => {
                'input_type'=> $start_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $start_error_dict,
                'input_validator_list'=> $start_input_validator_list,
                'output_validator_list'=> $start_output_validator_list,
            },
      'stop' => {
                'input_type'=> $stop_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $stop_error_dict,
                'input_validator_list'=> $stop_input_validator_list,
                'output_validator_list'=> $stop_output_validator_list,
            },
      'suspend' => {
                'input_type'=> $suspend_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $suspend_error_dict,
                'input_validator_list'=> $suspend_input_validator_list,
                'output_validator_list'=> $suspend_output_validator_list,
            },
      'reset' => {
                'input_type'=> $reset_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $reset_error_dict,
                'input_validator_list'=> $reset_input_validator_list,
                'output_validator_list'=> $reset_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.vcenter.vm.power',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
