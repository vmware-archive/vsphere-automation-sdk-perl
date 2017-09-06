########################################################################
# Copyright (C) 2013 - 2014 VMware, Inc.
########################################################################

## @file SnmpStub.pm
# Auto generated vAPI skeleton file.
# DO NOT MODIFY!
#
#

#use Com::Vmware::Vapi::Std::Errors;

package Com::Vmware::Appliance::Techpreview::Monitoring::SnmpStub;

## @class Com::Vmware::Appliance::Techpreview::Monitoring::Snmp
#
#{@name Snmp} {@term service} provides {@term operations}
#SNMP agent operations.
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
   # properties for reset operation
   #
   my $reset_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $reset_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $reset_input_validator_list = [
   ];
   my $reset_output_validator_list = [];

   #
   # properties for enable operation
   #
   my $enable_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $enable_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $enable_input_validator_list = [
   ];
   my $enable_output_validator_list = [];

   #
   # properties for hash operation
   #
   my $hash_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'config' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPHashConfig'),
      }
   );
   my $hash_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $hash_input_validator_list = [
   ];
   my $hash_output_validator_list = [];

   #
   # properties for limits operation
   #
   my $limits_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $limits_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $limits_input_validator_list = [
   ];
   my $limits_output_validator_list = [];

   #
   # properties for get operation
   #
   my $get_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $get_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $get_input_validator_list = [
   ];
   my $get_output_validator_list = [];

   #
   # properties for disable operation
   #
   my $disable_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $disable_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $disable_input_validator_list = [
   ];
   my $disable_output_validator_list = [];

   #
   # properties for set operation
   #
   my $set_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {
                   'config' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPConfig'),
      }
   );
   my $set_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $set_input_validator_list = [
   ];
   my $set_output_validator_list = [];

   #
   # properties for test operation
   #
   my $test_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $test_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $test_input_validator_list = [
   ];
   my $test_output_validator_list = [];

   #
   # properties for stats operation
   #
   my $stats_input_type = new Com::Vmware::Vapi::Bindings::Type::StructType(
      'name' => 'operation-input',
      'fields' => {}
   );
   my $stats_error_dict = {
      'com.vmware.vapi.std.errors.error' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vapi::Std::Errors', 'type_name' => 'Error'),

      };

   my $stats_input_validator_list = [
   ];
   my $stats_output_validator_list = [];

   #
   # All the methods (operations) info in a hash
   #
   my $operations = {
      'reset' => {
                'input_type'=> $reset_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $reset_error_dict,
                'input_validator_list'=> $reset_input_validator_list,
                'output_validator_list'=> $reset_output_validator_list,
            },
      'enable' => {
                'input_type'=> $enable_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $enable_error_dict,
                'input_validator_list'=> $enable_input_validator_list,
                'output_validator_list'=> $enable_output_validator_list,
            },
      'hash' => {
                'input_type'=> $hash_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPHashResults'),
                'errors'=> $hash_error_dict,
                'input_validator_list'=> $hash_input_validator_list,
                'output_validator_list'=> $hash_output_validator_list,
            },
      'limits' => {
                'input_type'=> $limits_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPLimits'),
                'errors'=> $limits_error_dict,
                'input_validator_list'=> $limits_input_validator_list,
                'output_validator_list'=> $limits_output_validator_list,
            },
      'get' => {
                'input_type'=> $get_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPConfigReadOnly'),
                'errors'=> $get_error_dict,
                'input_validator_list'=> $get_input_validator_list,
                'output_validator_list'=> $get_output_validator_list,
            },
      'disable' => {
                'input_type'=> $disable_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $disable_error_dict,
                'input_validator_list'=> $disable_input_validator_list,
                'output_validator_list'=> $disable_output_validator_list,
            },
      'set' => {
                'input_type'=> $set_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::VoidType(),
                'errors'=> $set_error_dict,
                'input_validator_list'=> $set_input_validator_list,
                'output_validator_list'=> $set_output_validator_list,
            },
      'test' => {
                'input_type'=> $test_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPTestResults'),
                'errors'=> $test_error_dict,
                'input_validator_list'=> $test_input_validator_list,
                'output_validator_list'=> $test_output_validator_list,
            },
      'stats' => {
                'input_type'=> $stats_input_type,
                'output_type'=> new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Appliance::Techpreview::Monitoring', 'type_name' => 'Snmp::SNMPStats'),
                'errors'=> $stats_error_dict,
                'input_validator_list'=> $stats_input_validator_list,
                'output_validator_list'=> $stats_output_validator_list,
            },
   };

   my $self = $class->SUPER::new ('api_provider' => $api_provider,
                                  'iface_name' => 'com.vmware.appliance.techpreview.monitoring.snmp',
                                  'operations' => $operations
                                 );
   bless $self, $class;
   return $self;
}

1;
